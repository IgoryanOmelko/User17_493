
namespace SportInvent
{
        partial class FormTemplate
        {
                /// <summary>
                /// Обязательная переменная конструктора.
                /// </summary>
                private System.ComponentModel.IContainer components = null;

                /// <summary>
                /// Освободить все используемые ресурсы.
                /// </summary>
                /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
                protected override void Dispose(bool disposing)
                {
                        if (disposing && (components != null))
                        {
                                components.Dispose();
                        }
                        base.Dispose(disposing);
                }

                #region Код, автоматически созданный конструктором форм Windows

                /// <summary>
                /// Требуемый метод для поддержки конструктора — не изменяйте 
                /// содержимое этого метода с помощью редактора кода.
                /// </summary>
                private void InitializeComponent()
                {
                        this.tableLayoutPanelBody = new System.Windows.Forms.TableLayoutPanel();
                        this.tableLayoutPanelHeader = new System.Windows.Forms.TableLayoutPanel();
                        this.tableLayoutPanelControl = new System.Windows.Forms.TableLayoutPanel();
                        this.pictureBoxLogo = new System.Windows.Forms.PictureBox();
                        this.tableLayoutPanelFooter = new System.Windows.Forms.TableLayoutPanel();
                        this.tableLayoutPanelBody.SuspendLayout();
                        this.tableLayoutPanelHeader.SuspendLayout();
                        ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).BeginInit();
                        this.SuspendLayout();
                        // 
                        // tableLayoutPanelBody
                        // 
                        this.tableLayoutPanelBody.ColumnCount = 1;
                        this.tableLayoutPanelBody.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
                        this.tableLayoutPanelBody.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 23F));
                        this.tableLayoutPanelBody.Controls.Add(this.tableLayoutPanelHeader, 0, 0);
                        this.tableLayoutPanelBody.Controls.Add(this.tableLayoutPanelFooter, 0, 2);
                        this.tableLayoutPanelBody.Dock = System.Windows.Forms.DockStyle.Fill;
                        this.tableLayoutPanelBody.Location = new System.Drawing.Point(0, 0);
                        this.tableLayoutPanelBody.Name = "tableLayoutPanelBody";
                        this.tableLayoutPanelBody.RowCount = 3;
                        this.tableLayoutPanelBody.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 18.18182F));
                        this.tableLayoutPanelBody.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 72.72727F));
                        this.tableLayoutPanelBody.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 9.090909F));
                        this.tableLayoutPanelBody.Size = new System.Drawing.Size(933, 519);
                        this.tableLayoutPanelBody.TabIndex = 0;
                        // 
                        // tableLayoutPanelHeader
                        // 
                        this.tableLayoutPanelHeader.ColumnCount = 3;
                        this.tableLayoutPanelHeader.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 58F));
                        this.tableLayoutPanelHeader.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 80F));
                        this.tableLayoutPanelHeader.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20F));
                        this.tableLayoutPanelHeader.Controls.Add(this.tableLayoutPanelControl, 2, 0);
                        this.tableLayoutPanelHeader.Controls.Add(this.pictureBoxLogo, 0, 0);
                        this.tableLayoutPanelHeader.Dock = System.Windows.Forms.DockStyle.Fill;
                        this.tableLayoutPanelHeader.Location = new System.Drawing.Point(3, 3);
                        this.tableLayoutPanelHeader.Name = "tableLayoutPanelHeader";
                        this.tableLayoutPanelHeader.RowCount = 1;
                        this.tableLayoutPanelHeader.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
                        this.tableLayoutPanelHeader.Size = new System.Drawing.Size(927, 88);
                        this.tableLayoutPanelHeader.TabIndex = 0;
                        // 
                        // tableLayoutPanelControl
                        // 
                        this.tableLayoutPanelControl.ColumnCount = 1;
                        this.tableLayoutPanelControl.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
                        this.tableLayoutPanelControl.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 23F));
                        this.tableLayoutPanelControl.Dock = System.Windows.Forms.DockStyle.Fill;
                        this.tableLayoutPanelControl.Location = new System.Drawing.Point(756, 3);
                        this.tableLayoutPanelControl.Name = "tableLayoutPanelControl";
                        this.tableLayoutPanelControl.RowCount = 2;
                        this.tableLayoutPanelControl.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
                        this.tableLayoutPanelControl.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
                        this.tableLayoutPanelControl.Size = new System.Drawing.Size(168, 82);
                        this.tableLayoutPanelControl.TabIndex = 0;
                        // 
                        // pictureBoxLogo
                        // 
                        this.pictureBoxLogo.BackgroundImage = global::SportInvent.Properties.Resources.logo;
                        this.pictureBoxLogo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
                        this.pictureBoxLogo.Dock = System.Windows.Forms.DockStyle.Fill;
                        this.pictureBoxLogo.Location = new System.Drawing.Point(3, 3);
                        this.pictureBoxLogo.Name = "pictureBoxLogo";
                        this.pictureBoxLogo.Size = new System.Drawing.Size(52, 82);
                        this.pictureBoxLogo.TabIndex = 1;
                        this.pictureBoxLogo.TabStop = false;
                        // 
                        // tableLayoutPanelFooter
                        // 
                        this.tableLayoutPanelFooter.ColumnCount = 3;
                        this.tableLayoutPanelFooter.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 16.66667F));
                        this.tableLayoutPanelFooter.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 66.66666F));
                        this.tableLayoutPanelFooter.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 16.66667F));
                        this.tableLayoutPanelFooter.Dock = System.Windows.Forms.DockStyle.Fill;
                        this.tableLayoutPanelFooter.Location = new System.Drawing.Point(3, 474);
                        this.tableLayoutPanelFooter.Name = "tableLayoutPanelFooter";
                        this.tableLayoutPanelFooter.RowCount = 1;
                        this.tableLayoutPanelFooter.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
                        this.tableLayoutPanelFooter.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 42F));
                        this.tableLayoutPanelFooter.Size = new System.Drawing.Size(927, 42);
                        this.tableLayoutPanelFooter.TabIndex = 1;
                        // 
                        // FormTemplate
                        // 
                        this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
                        this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
                        this.BackColor = System.Drawing.Color.White;
                        this.ClientSize = new System.Drawing.Size(933, 519);
                        this.Controls.Add(this.tableLayoutPanelBody);
                        this.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
                        this.Name = "FormTemplate";
                        this.Text = "FormTemlate";
                        this.Load += new System.EventHandler(this.FormTemplate_Load);
                        this.tableLayoutPanelBody.ResumeLayout(false);
                        this.tableLayoutPanelHeader.ResumeLayout(false);
                        ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).EndInit();
                        this.ResumeLayout(false);

                }

                #endregion

                private System.Windows.Forms.TableLayoutPanel tableLayoutPanelBody;
                private System.Windows.Forms.TableLayoutPanel tableLayoutPanelHeader;
                private System.Windows.Forms.TableLayoutPanel tableLayoutPanelControl;
                private System.Windows.Forms.PictureBox pictureBoxLogo;
                private System.Windows.Forms.TableLayoutPanel tableLayoutPanelFooter;
        }
}

