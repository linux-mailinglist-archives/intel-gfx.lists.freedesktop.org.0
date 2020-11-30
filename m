Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6902C8988
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 17:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900BE6E5A1;
	Mon, 30 Nov 2020 16:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 47B966E5A1;
 Mon, 30 Nov 2020 16:31:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F72EA73C9;
 Mon, 30 Nov 2020 16:31:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 30 Nov 2020 16:31:16 -0000
Message-ID: <160675387625.10642.14674350810025920350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201130111601.2817-1-jani.nikula@intel.com>
In-Reply-To: <20201130111601.2817-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C01/10=5D_drm/i915/debugfs=3A_r?=
 =?utf-8?q?emove_RPS_autotuning_details_from_i915=5Frps=5Fboost=5Finfo?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v3,01/10] drm/i915/debugfs: remove RPS autotuning details from i915_rps_boost_info
URL   : https://patchwork.freedesktop.org/series/84398/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2ee541f7b576 drm/i915/debugfs: remove RPS autotuning details from i915_rps_boost_info
838c19fd0581 drm/i915: remove last traces of I915_READ_FW() and I915_WRITE_FW()
5d1e43fe4e4d drm/i915/cdclk: prefer intel_de_write() over I915_WRITE()
a307b146be3b drm/i915/debugfs: remove the i915_cache_sharing debugfs file
c91553ecbf79 drm/i915/debugfs: replace I915_READ() with intel_uncore_read()
-:381: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#381: FILE: drivers/gpu/drm/i915/i915_debugfs.c:880:
+		rpupei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;

-:382: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#382: FILE: drivers/gpu/drm/i915/i915_debugfs.c:881:
+		rpcurup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;

-:383: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#383: FILE: drivers/gpu/drm/i915/i915_debugfs.c:882:
+		rpprevup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;

-:384: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#384: FILE: drivers/gpu/drm/i915/i915_debugfs.c:883:
+		rpdownei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;

-:385: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#385: FILE: drivers/gpu/drm/i915/i915_debugfs.c:884:
+		rpcurdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;

-:386: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#386: FILE: drivers/gpu/drm/i915/i915_debugfs.c:885:
+		rpprevdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;

-:394: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#394: FILE: drivers/gpu/drm/i915/i915_debugfs.c:891:
+			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE);

-:395: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#395: FILE: drivers/gpu/drm/i915/i915_debugfs.c:892:
+			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_MASK);

total: 0 errors, 8 warnings, 0 checks, 397 lines checked
88c520643f25 drm/i915/suspend: replace I915_READ()/WRITE() with intel_de_read()/write()
-:30: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF0>
#30: FILE: drivers/gpu/drm/i915/i915_suspend.c:43:
+			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));

-:31: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF1>
#31: FILE: drivers/gpu/drm/i915/i915_suspend.c:44:
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));

-:35: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF3>
#35: FILE: drivers/gpu/drm/i915/i915_suspend.c:47:
+			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));

-:87: CHECK:CAMELCASE: Avoid CamelCase: <saveDSPARB>
#87: FILE: drivers/gpu/drm/i915/i915_suspend.c:92:
+		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv, DSPARB);

total: 0 errors, 0 warnings, 4 checks, 79 lines checked
24f58a64069d drm/i915/pm: replace I915_READ()/WRITE() with intel_uncore_read()/write()
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/intel_pm.c:86:
+		intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
+			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) |

-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/intel_pm.c:92:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);

-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/i915/intel_pm.c:96:
+	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
+		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);

-:47: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/intel_pm.c:102:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:56: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/intel_pm.c:111:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:64: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/intel_pm.c:118:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:72: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/intel_pm.c:125:
+	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |

-:88: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/intel_pm.c:140:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:96: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/intel_pm.c:147:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:105: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/intel_pm.c:160:
+	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |

-:289: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#289: FILE: drivers/gpu/drm/i915/intel_pm.c:980:
+	intel_uncore_write(&dev_priv->uncore, DSPFW1,
 		   FW_WM(wm->sr.plane, SR) |

-:295: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#295: FILE: drivers/gpu/drm/i915/intel_pm.c:985:
+	intel_uncore_write(&dev_priv->uncore, DSPFW2,
 		   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |

-:303: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#303: FILE: drivers/gpu/drm/i915/intel_pm.c:992:
+	intel_uncore_write(&dev_priv->uncore, DSPFW3,
 		   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |

-:319: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#319: FILE: drivers/gpu/drm/i915/intel_pm.c:1012:
+		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
 			   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |

-:339: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#339: FILE: drivers/gpu/drm/i915/intel_pm.c:1030:
+	intel_uncore_write(&dev_priv->uncore, DSPFW1,
 		   FW_WM(wm->sr.plane, SR) |

-:345: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#345: FILE: drivers/gpu/drm/i915/intel_pm.c:1035:
+	intel_uncore_write(&dev_priv->uncore, DSPFW2,
 		   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |

-:350: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#350: FILE: drivers/gpu/drm/i915/intel_pm.c:1039:
+	intel_uncore_write(&dev_priv->uncore, DSPFW3,
 		   FW_WM(wm->sr.cursor, CURSOR_SR));

-:355: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#355: FILE: drivers/gpu/drm/i915/intel_pm.c:1043:
+		intel_uncore_write(&dev_priv->uncore, DSPFW7_CHV,
 			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |

-:359: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#359: FILE: drivers/gpu/drm/i915/intel_pm.c:1046:
+		intel_uncore_write(&dev_priv->uncore, DSPFW8_CHV,
 			   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |

-:363: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#363: FILE: drivers/gpu/drm/i915/intel_pm.c:1049:
+		intel_uncore_write(&dev_priv->uncore, DSPFW9_CHV,
 			   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |

-:367: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#367: FILE: drivers/gpu/drm/i915/intel_pm.c:1052:
+		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
 			   FW_WM(wm->sr.plane >> 9, SR_HI) |

-:376: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#376: FILE: drivers/gpu/drm/i915/intel_pm.c:1064:
+		intel_uncore_write(&dev_priv->uncore, DSPFW7,
 			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |

-:380: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#380: FILE: drivers/gpu/drm/i915/intel_pm.c:1067:
+		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
 			   FW_WM(wm->sr.plane >> 9, SR_HI) |

-:416: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#416: FILE: drivers/gpu/drm/i915/intel_pm.c:2451:
+			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF,
 				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));

-:587: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#587: FILE: drivers/gpu/drm/i915/intel_pm.c:6234:
+				val = intel_uncore_read(&dev_priv->uncore, PLANE_WM(pipe, plane_id, level));

-:730: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#730: FILE: drivers/gpu/drm/i915/intel_pm.c:6722:
+	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM1_LP_SR_EN);

-:731: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#731: FILE: drivers/gpu/drm/i915/intel_pm.c:6723:
+	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM1_LP_SR_EN);

-:732: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#732: FILE: drivers/gpu/drm/i915/intel_pm.c:6724:
+	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM1_LP_SR_EN);

-:758: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#758: FILE: drivers/gpu/drm/i915/intel_pm.c:6753:
+		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, WM_MISC) & WM_MISC_DATA_PARTITION_5_6) ?

-:762: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#762: FILE: drivers/gpu/drm/i915/intel_pm.c:6756:
+		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2) & DISP_DATA_PARTITION_5_6) ?

-:804: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#804: FILE: drivers/gpu/drm/i915/intel_pm.c:6862:
+		intel_uncore_write(&dev_priv->uncore, DSPCNTR(pipe),
+			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |

-:809: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#809: FILE: drivers/gpu/drm/i915/intel_pm.c:6865:
+		intel_uncore_write(&dev_priv->uncore, DSPSURF(pipe), intel_uncore_read(&dev_priv->uncore, DSPSURF(pipe)));

-:820: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#820: FILE: drivers/gpu/drm/i915/intel_pm.c:6883:
+	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS0,
 		   MARIUNIT_CLOCK_GATE_DISABLE |

-:824: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#824: FILE: drivers/gpu/drm/i915/intel_pm.c:6886:
+	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS1,
 		   VFMUNIT_CLOCK_GATE_DISABLE);

-:834: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#834: FILE: drivers/gpu/drm/i915/intel_pm.c:6896:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   (intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:840: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#840: FILE: drivers/gpu/drm/i915/intel_pm.c:6900:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL,
+		   (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:851: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#851: FILE: drivers/gpu/drm/i915/intel_pm.c:6913:
+		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
+			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |

-:856: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#856: FILE: drivers/gpu/drm/i915/intel_pm.c:6916:
+		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:866: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#866: FILE: drivers/gpu/drm/i915/intel_pm.c:6923:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:879: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#879: FILE: drivers/gpu/drm/i915/intel_pm.c:6944:
+	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN2, intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN2) |

-:900: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#900: FILE: drivers/gpu/drm/i915/intel_pm.c:6962:
+		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(pipe),
 			   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);

-:922: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#922: FILE: drivers/gpu/drm/i915/intel_pm.c:6984:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:928: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#928: FILE: drivers/gpu/drm/i915/intel_pm.c:6988:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
+		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |

-:938: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#938: FILE: drivers/gpu/drm/i915/intel_pm.c:7006:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
 		   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |

-:948: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#948: FILE: drivers/gpu/drm/i915/intel_pm.c:7021:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |

-:953: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#953: FILE: drivers/gpu/drm/i915/intel_pm.c:7024:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:958: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#958: FILE: drivers/gpu/drm/i915/intel_pm.c:7027:
+	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DSPCLK_GATE_D) |

-:969: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#969: FILE: drivers/gpu/drm/i915/intel_pm.c:7046:
+		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
+			   intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |

-:976: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#976: FILE: drivers/gpu/drm/i915/intel_pm.c:7051:
+	intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
+		   intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A)) |

-:999: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#999: FILE: drivers/gpu/drm/i915/intel_pm.c:7074:
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);

-:1025: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1025: FILE: drivers/gpu/drm/i915/intel_pm.c:7095:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
 		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);

-:1031: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1031: FILE: drivers/gpu/drm/i915/intel_pm.c:7099:
+		   intel_uncore_read(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);

-:1031: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1031: FILE: drivers/gpu/drm/i915/intel_pm.c:7099:
+	intel_uncore_write(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
+		   intel_uncore_read(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);

-:1041: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1041: FILE: drivers/gpu/drm/i915/intel_pm.c:7110:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
 		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);

-:1046: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1046: FILE: drivers/gpu/drm/i915/intel_pm.c:7114:
+		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |

-:1055: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1055: FILE: drivers/gpu/drm/i915/intel_pm.c:7126:
+		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |

-:1064: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1064: FILE: drivers/gpu/drm/i915/intel_pm.c:7136:
+	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |

-:1074: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1074: FILE: drivers/gpu/drm/i915/intel_pm.c:7147:
+	intel_uncore_write(&dev_priv->uncore, _3D_CHICKEN3,
 		   _MASKED_BIT_ENABLE(_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE));

-:1080: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1080: FILE: drivers/gpu/drm/i915/intel_pm.c:7151:
+	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
+		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);

-:1087: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1087: FILE: drivers/gpu/drm/i915/intel_pm.c:7157:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1119: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1119: FILE: drivers/gpu/drm/i915/intel_pm.c:7183:
+	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |

-:1127: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1127: FILE: drivers/gpu/drm/i915/intel_pm.c:7190:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1135: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1135: FILE: drivers/gpu/drm/i915/intel_pm.c:7197:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1144: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1144: FILE: drivers/gpu/drm/i915/intel_pm.c:7206:
+	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |

-:1150: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1150: FILE: drivers/gpu/drm/i915/intel_pm.c:7211:
+		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:1156: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1156: FILE: drivers/gpu/drm/i915/intel_pm.c:7216:
+		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |

-:1164: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1164: FILE: drivers/gpu/drm/i915/intel_pm.c:7223:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1172: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1172: FILE: drivers/gpu/drm/i915/intel_pm.c:7230:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1181: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1181: FILE: drivers/gpu/drm/i915/intel_pm.c:7239:
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL) &

-:1186: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1186: FILE: drivers/gpu/drm/i915/intel_pm.c:7243:
+	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |

-:1194: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1194: FILE: drivers/gpu/drm/i915/intel_pm.c:7250:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1202: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1202: FILE: drivers/gpu/drm/i915/intel_pm.c:7257:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1210: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1210: FILE: drivers/gpu/drm/i915/intel_pm.c:7264:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1221: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1221: FILE: drivers/gpu/drm/i915/intel_pm.c:7274:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |

-:1226: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1226: FILE: drivers/gpu/drm/i915/intel_pm.c:7278:
+	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);

-:1232: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1232: FILE: drivers/gpu/drm/i915/intel_pm.c:7282:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | DPA_MASK_VBLANK_SRD);

-:1239: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1239: FILE: drivers/gpu/drm/i915/intel_pm.c:7287:
+		intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
+			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe)) |

-:1248: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1248: FILE: drivers/gpu/drm/i915/intel_pm.c:7294:
+	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &

-:1253: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1253: FILE: drivers/gpu/drm/i915/intel_pm.c:7298:
+	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

-:1257: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1257: FILE: drivers/gpu/drm/i915/intel_pm.c:7301:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:1265: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#1265: FILE: drivers/gpu/drm/i915/intel_pm.c:7308:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR2_1, intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR2_1)

-:1276: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1276: FILE: drivers/gpu/drm/i915/intel_pm.c:7319:
+		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);

-:1276: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1276: FILE: drivers/gpu/drm/i915/intel_pm.c:7319:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
+		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);

-:1285: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1285: FILE: drivers/gpu/drm/i915/intel_pm.c:7326:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |

-:1292: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1292: FILE: drivers/gpu/drm/i915/intel_pm.c:7331:
+	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |

-:1297: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1297: FILE: drivers/gpu/drm/i915/intel_pm.c:7335:
+	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);

-:1312: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1312: FILE: drivers/gpu/drm/i915/intel_pm.c:7348:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |

-:1318: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1318: FILE: drivers/gpu/drm/i915/intel_pm.c:7353:
+	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
 		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |

-:1324: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1324: FILE: drivers/gpu/drm/i915/intel_pm.c:7358:
+		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1329: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1329: FILE: drivers/gpu/drm/i915/intel_pm.c:7362:
+		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1332: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1332: FILE: drivers/gpu/drm/i915/intel_pm.c:7364:
+		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2_GT2,
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1341: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1341: FILE: drivers/gpu/drm/i915/intel_pm.c:7372:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
 		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);

-:1347: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1347: FILE: drivers/gpu/drm/i915/intel_pm.c:7376:
+	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+			intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |

-:1367: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1367: FILE: drivers/gpu/drm/i915/intel_pm.c:7396:
+	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
 		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |

-:1373: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1373: FILE: drivers/gpu/drm/i915/intel_pm.c:7401:
+	intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
 		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1379: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1379: FILE: drivers/gpu/drm/i915/intel_pm.c:7405:
+	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |

-:1388: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1388: FILE: drivers/gpu/drm/i915/intel_pm.c:7413:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
 		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);

-:1396: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1396: FILE: drivers/gpu/drm/i915/intel_pm.c:7419:
+		   intel_uncore_read(&dev_priv->uncore, GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);

-:1396: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1396: FILE: drivers/gpu/drm/i915/intel_pm.c:7419:
+	intel_uncore_write(&dev_priv->uncore, GEN7_UCGCTL4,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);

-:1414: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1414: FILE: drivers/gpu/drm/i915/intel_pm.c:7434:
+	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &

-:1420: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1420: FILE: drivers/gpu/drm/i915/intel_pm.c:7439:
+	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

-:1424: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1424: FILE: drivers/gpu/drm/i915/intel_pm.c:7442:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |

-:1429: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1429: FILE: drivers/gpu/drm/i915/intel_pm.c:7446:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:1469: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1469: FILE: drivers/gpu/drm/i915/intel_pm.c:7499:
+	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
 		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));

-:1484: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1484: FILE: drivers/gpu/drm/i915/intel_pm.c:7511:
+		intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));

-:1496: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1496: FILE: drivers/gpu/drm/i915/intel_pm.c:7520:
+	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE, _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));

-:1500: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1500: FILE: drivers/gpu/drm/i915/intel_pm.c:7523:
+	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
 		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));

-:1515: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1515: FILE: drivers/gpu/drm/i915/intel_pm.c:7535:
+	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
 		   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));

-:1524: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1524: FILE: drivers/gpu/drm/i915/intel_pm.c:7545:
+	intel_uncore_write(&dev_priv->uncore, SCPD0,
 		   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));

-:1531: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1531: FILE: drivers/gpu/drm/i915/intel_pm.c:7551:
+	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
 		   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |

total: 0 errors, 44 warnings, 66 checks, 1449 lines checked
1c5cd37d586b drm/i915/irq: replace I915_READ()/WRITE() with intel_uncore_read()/write()
-:68: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/i915_irq.c:425:
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);

-:132: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#132: FILE: drivers/gpu/drm/i915/i915_irq.c:990:
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);

-:149: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/i915_irq.c:1010:
+		intel_uncore_write(&dev_priv->uncore, reg, GE


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
