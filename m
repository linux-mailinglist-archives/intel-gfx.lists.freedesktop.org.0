Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC1E2B2632
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 22:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4414E6E835;
	Fri, 13 Nov 2020 21:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0D4D6E835;
 Fri, 13 Nov 2020 21:05:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E74AFA47DB;
 Fri, 13 Nov 2020 21:05:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 13 Nov 2020 21:05:10 -0000
Message-ID: <160530151091.20637.15429128452091457217@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1605273766.git.jani.nikula@intel.com>
In-Reply-To: <cover.1605273766.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_nuke_remaining_legacy_reg_helpers_=28I915=5FREA?=
 =?utf-8?q?D/WRITE_etc=2E=29_=28rev2=29?=
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

Series: drm/i915: nuke remaining legacy reg helpers (I915_READ/WRITE etc.) (rev2)
URL   : https://patchwork.freedesktop.org/series/83762/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
60a0c55dfe27 drm/i915/debugfs: remove RPS autotuning details from i915_rps_boost_info
162d680cbbab drm/i915: remove last traces of I915_READ_FW() and I915_WRITE_FW()
5f3651b6bf1b drm/i915/cdclk: prefer intel_de_write() over I915_WRITE()
2cc1e5948842 drm/i915/debugfs: remove the i915_cache_sharing debugfs file
12f65d9478f7 drm/i915/debugfs: replace I915_READ() with intel_uncore_read()
-:381: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#381: FILE: drivers/gpu/drm/i915/i915_debugfs.c:879:
+		rpupei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;

-:382: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#382: FILE: drivers/gpu/drm/i915/i915_debugfs.c:880:
+		rpcurup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;

-:383: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#383: FILE: drivers/gpu/drm/i915/i915_debugfs.c:881:
+		rpprevup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;

-:384: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#384: FILE: drivers/gpu/drm/i915/i915_debugfs.c:882:
+		rpdownei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;

-:385: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#385: FILE: drivers/gpu/drm/i915/i915_debugfs.c:883:
+		rpcurdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;

-:386: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#386: FILE: drivers/gpu/drm/i915/i915_debugfs.c:884:
+		rpprevdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;

-:394: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#394: FILE: drivers/gpu/drm/i915/i915_debugfs.c:890:
+			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE);

-:395: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#395: FILE: drivers/gpu/drm/i915/i915_debugfs.c:891:
+			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_MASK);

total: 0 errors, 8 warnings, 0 checks, 397 lines checked
6bc38ebd534e drm/i915/suspend: replace I915_READ()/WRITE() with intel_de_read()/write()
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
f8e17dd5562f drm/i915/pm: replace I915_READ()/WRITE() with intel_uncore_read()/write()
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/intel_pm.c:85:
+		intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
+			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) |

-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/intel_pm.c:91:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);

-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/intel_pm.c:95:
+	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
+		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);

-:46: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/intel_pm.c:101:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:55: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/intel_pm.c:110:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:63: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/intel_pm.c:117:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:71: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/intel_pm.c:124:
+	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |

-:87: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/intel_pm.c:139:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:95: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/intel_pm.c:146:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:104: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#104: FILE: drivers/gpu/drm/i915/intel_pm.c:159:
+	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |

-:288: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#288: FILE: drivers/gpu/drm/i915/intel_pm.c:979:
+	intel_uncore_write(&dev_priv->uncore, DSPFW1,
 		   FW_WM(wm->sr.plane, SR) |

-:294: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#294: FILE: drivers/gpu/drm/i915/intel_pm.c:984:
+	intel_uncore_write(&dev_priv->uncore, DSPFW2,
 		   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |

-:302: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#302: FILE: drivers/gpu/drm/i915/intel_pm.c:991:
+	intel_uncore_write(&dev_priv->uncore, DSPFW3,
 		   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |

-:318: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#318: FILE: drivers/gpu/drm/i915/intel_pm.c:1011:
+		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
 			   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/intel_pm.c:1029:
+	intel_uncore_write(&dev_priv->uncore, DSPFW1,
 		   FW_WM(wm->sr.plane, SR) |

-:344: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#344: FILE: drivers/gpu/drm/i915/intel_pm.c:1034:
+	intel_uncore_write(&dev_priv->uncore, DSPFW2,
 		   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |

-:349: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#349: FILE: drivers/gpu/drm/i915/intel_pm.c:1038:
+	intel_uncore_write(&dev_priv->uncore, DSPFW3,
 		   FW_WM(wm->sr.cursor, CURSOR_SR));

-:354: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#354: FILE: drivers/gpu/drm/i915/intel_pm.c:1042:
+		intel_uncore_write(&dev_priv->uncore, DSPFW7_CHV,
 			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |

-:358: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#358: FILE: drivers/gpu/drm/i915/intel_pm.c:1045:
+		intel_uncore_write(&dev_priv->uncore, DSPFW8_CHV,
 			   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |

-:362: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#362: FILE: drivers/gpu/drm/i915/intel_pm.c:1048:
+		intel_uncore_write(&dev_priv->uncore, DSPFW9_CHV,
 			   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |

-:366: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#366: FILE: drivers/gpu/drm/i915/intel_pm.c:1051:
+		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
 			   FW_WM(wm->sr.plane >> 9, SR_HI) |

-:375: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#375: FILE: drivers/gpu/drm/i915/intel_pm.c:1063:
+		intel_uncore_write(&dev_priv->uncore, DSPFW7,
 			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |

-:379: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#379: FILE: drivers/gpu/drm/i915/intel_pm.c:1066:
+		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
 			   FW_WM(wm->sr.plane >> 9, SR_HI) |

-:415: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#415: FILE: drivers/gpu/drm/i915/intel_pm.c:2450:
+			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF,
 				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));

-:586: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#586: FILE: drivers/gpu/drm/i915/intel_pm.c:6243:
+				val = intel_uncore_read(&dev_priv->uncore, PLANE_WM(pipe, plane_id, level));

-:729: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#729: FILE: drivers/gpu/drm/i915/intel_pm.c:6730:
+	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM1_LP_SR_EN);

-:730: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#730: FILE: drivers/gpu/drm/i915/intel_pm.c:6731:
+	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM1_LP_SR_EN);

-:731: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#731: FILE: drivers/gpu/drm/i915/intel_pm.c:6732:
+	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM1_LP_SR_EN);

-:757: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#757: FILE: drivers/gpu/drm/i915/intel_pm.c:6761:
+		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, WM_MISC) & WM_MISC_DATA_PARTITION_5_6) ?

-:761: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#761: FILE: drivers/gpu/drm/i915/intel_pm.c:6764:
+		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2) & DISP_DATA_PARTITION_5_6) ?

-:803: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#803: FILE: drivers/gpu/drm/i915/intel_pm.c:6870:
+		intel_uncore_write(&dev_priv->uncore, DSPCNTR(pipe),
+			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |

-:808: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#808: FILE: drivers/gpu/drm/i915/intel_pm.c:6873:
+		intel_uncore_write(&dev_priv->uncore, DSPSURF(pipe), intel_uncore_read(&dev_priv->uncore, DSPSURF(pipe)));

-:819: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#819: FILE: drivers/gpu/drm/i915/intel_pm.c:6891:
+	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS0,
 		   MARIUNIT_CLOCK_GATE_DISABLE |

-:823: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#823: FILE: drivers/gpu/drm/i915/intel_pm.c:6894:
+	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS1,
 		   VFMUNIT_CLOCK_GATE_DISABLE);

-:833: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#833: FILE: drivers/gpu/drm/i915/intel_pm.c:6904:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   (intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:839: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#839: FILE: drivers/gpu/drm/i915/intel_pm.c:6908:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL,
+		   (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:850: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#850: FILE: drivers/gpu/drm/i915/intel_pm.c:6921:
+		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
+			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |

-:855: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#855: FILE: drivers/gpu/drm/i915/intel_pm.c:6924:
+		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:865: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#865: FILE: drivers/gpu/drm/i915/intel_pm.c:6931:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:878: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#878: FILE: drivers/gpu/drm/i915/intel_pm.c:6952:
+	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN2, intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN2) |

-:899: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#899: FILE: drivers/gpu/drm/i915/intel_pm.c:6970:
+		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(pipe),
 			   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);

-:921: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#921: FILE: drivers/gpu/drm/i915/intel_pm.c:6992:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:927: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#927: FILE: drivers/gpu/drm/i915/intel_pm.c:6996:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
+		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |

-:937: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#937: FILE: drivers/gpu/drm/i915/intel_pm.c:7014:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
 		   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |

-:947: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#947: FILE: drivers/gpu/drm/i915/intel_pm.c:7029:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |

-:952: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#952: FILE: drivers/gpu/drm/i915/intel_pm.c:7032:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |

-:957: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#957: FILE: drivers/gpu/drm/i915/intel_pm.c:7035:
+	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DSPCLK_GATE_D) |

-:968: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#968: FILE: drivers/gpu/drm/i915/intel_pm.c:7054:
+		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
+			   intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |

-:975: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#975: FILE: drivers/gpu/drm/i915/intel_pm.c:7059:
+	intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
+		   intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A)) |

-:998: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#998: FILE: drivers/gpu/drm/i915/intel_pm.c:7082:
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);

-:1024: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1024: FILE: drivers/gpu/drm/i915/intel_pm.c:7103:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
 		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);

-:1030: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1030: FILE: drivers/gpu/drm/i915/intel_pm.c:7107:
+		   intel_uncore_read(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);

-:1030: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1030: FILE: drivers/gpu/drm/i915/intel_pm.c:7107:
+	intel_uncore_write(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
+		   intel_uncore_read(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);

-:1040: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1040: FILE: drivers/gpu/drm/i915/intel_pm.c:7118:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
 		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);

-:1045: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1045: FILE: drivers/gpu/drm/i915/intel_pm.c:7122:
+		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |

-:1054: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1054: FILE: drivers/gpu/drm/i915/intel_pm.c:7134:
+		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |

-:1063: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1063: FILE: drivers/gpu/drm/i915/intel_pm.c:7144:
+	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |

-:1073: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1073: FILE: drivers/gpu/drm/i915/intel_pm.c:7155:
+	intel_uncore_write(&dev_priv->uncore, _3D_CHICKEN3,
 		   _MASKED_BIT_ENABLE(_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE));

-:1079: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1079: FILE: drivers/gpu/drm/i915/intel_pm.c:7159:
+	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
+		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);

-:1086: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1086: FILE: drivers/gpu/drm/i915/intel_pm.c:7165:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1118: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1118: FILE: drivers/gpu/drm/i915/intel_pm.c:7191:
+	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |

-:1126: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1126: FILE: drivers/gpu/drm/i915/intel_pm.c:7198:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1134: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1134: FILE: drivers/gpu/drm/i915/intel_pm.c:7205:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1143: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1143: FILE: drivers/gpu/drm/i915/intel_pm.c:7214:
+	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |

-:1149: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1149: FILE: drivers/gpu/drm/i915/intel_pm.c:7219:
+		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:1155: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1155: FILE: drivers/gpu/drm/i915/intel_pm.c:7224:
+		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |

-:1163: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1163: FILE: drivers/gpu/drm/i915/intel_pm.c:7231:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1171: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1171: FILE: drivers/gpu/drm/i915/intel_pm.c:7238:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1180: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1180: FILE: drivers/gpu/drm/i915/intel_pm.c:7247:
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL) &

-:1185: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1185: FILE: drivers/gpu/drm/i915/intel_pm.c:7251:
+	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |

-:1193: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1193: FILE: drivers/gpu/drm/i915/intel_pm.c:7258:
+	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |

-:1201: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1201: FILE: drivers/gpu/drm/i915/intel_pm.c:7265:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1209: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1209: FILE: drivers/gpu/drm/i915/intel_pm.c:7272:
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |

-:1220: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1220: FILE: drivers/gpu/drm/i915/intel_pm.c:7282:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |

-:1225: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1225: FILE: drivers/gpu/drm/i915/intel_pm.c:7286:
+	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);

-:1231: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1231: FILE: drivers/gpu/drm/i915/intel_pm.c:7290:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | DPA_MASK_VBLANK_SRD);

-:1238: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1238: FILE: drivers/gpu/drm/i915/intel_pm.c:7295:
+		intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
+			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe)) |

-:1247: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1247: FILE: drivers/gpu/drm/i915/intel_pm.c:7302:
+	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &

-:1252: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1252: FILE: drivers/gpu/drm/i915/intel_pm.c:7306:
+	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

-:1256: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1256: FILE: drivers/gpu/drm/i915/intel_pm.c:7309:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:1264: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#1264: FILE: drivers/gpu/drm/i915/intel_pm.c:7316:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR2_1, intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR2_1)

-:1275: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1275: FILE: drivers/gpu/drm/i915/intel_pm.c:7327:
+		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);

-:1275: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1275: FILE: drivers/gpu/drm/i915/intel_pm.c:7327:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
+		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);

-:1284: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1284: FILE: drivers/gpu/drm/i915/intel_pm.c:7334:
+	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
+		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |

-:1291: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1291: FILE: drivers/gpu/drm/i915/intel_pm.c:7339:
+	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |

-:1296: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1296: FILE: drivers/gpu/drm/i915/intel_pm.c:7343:
+	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);

-:1311: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1311: FILE: drivers/gpu/drm/i915/intel_pm.c:7356:
+	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
+		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |

-:1317: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1317: FILE: drivers/gpu/drm/i915/intel_pm.c:7361:
+	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
 		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |

-:1323: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1323: FILE: drivers/gpu/drm/i915/intel_pm.c:7366:
+		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1328: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1328: FILE: drivers/gpu/drm/i915/intel_pm.c:7370:
+		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1331: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1331: FILE: drivers/gpu/drm/i915/intel_pm.c:7372:
+		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2_GT2,
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1340: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1340: FILE: drivers/gpu/drm/i915/intel_pm.c:7380:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
 		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);

-:1346: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1346: FILE: drivers/gpu/drm/i915/intel_pm.c:7384:
+	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+			intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |

-:1366: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1366: FILE: drivers/gpu/drm/i915/intel_pm.c:7404:
+	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
 		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |

-:1372: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1372: FILE: drivers/gpu/drm/i915/intel_pm.c:7409:
+	intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
 		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));

-:1378: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1378: FILE: drivers/gpu/drm/i915/intel_pm.c:7413:
+	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |

-:1387: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1387: FILE: drivers/gpu/drm/i915/intel_pm.c:7421:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
 		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);

-:1395: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1395: FILE: drivers/gpu/drm/i915/intel_pm.c:7427:
+		   intel_uncore_read(&dev_priv->uncore, GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);

-:1395: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1395: FILE: drivers/gpu/drm/i915/intel_pm.c:7427:
+	intel_uncore_write(&dev_priv->uncore, GEN7_UCGCTL4,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);

-:1413: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1413: FILE: drivers/gpu/drm/i915/intel_pm.c:7442:
+	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &

-:1419: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1419: FILE: drivers/gpu/drm/i915/intel_pm.c:7447:
+	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

-:1423: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1423: FILE: drivers/gpu/drm/i915/intel_pm.c:7450:
+	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |

-:1428: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1428: FILE: drivers/gpu/drm/i915/intel_pm.c:7454:
+	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |

-:1468: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1468: FILE: drivers/gpu/drm/i915/intel_pm.c:7507:
+	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
 		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));

-:1483: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1483: FILE: drivers/gpu/drm/i915/intel_pm.c:7519:
+		intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));

-:1495: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1495: FILE: drivers/gpu/drm/i915/intel_pm.c:7528:
+	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE, _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));

-:1499: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1499: FILE: drivers/gpu/drm/i915/intel_pm.c:7531:
+	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
 		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));

-:1514: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1514: FILE: drivers/gpu/drm/i915/intel_pm.c:7543:
+	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
 		   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));

-:1523: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1523: FILE: drivers/gpu/drm/i915/intel_pm.c:7553:
+	intel_uncore_write(&dev_priv->uncore, SCPD0,
 		   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));

-:1530: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1530: FILE: drivers/gpu/drm/i915/intel_pm.c:7559:
+	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
 		   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |

total: 0 errors, 44 warnings, 66 checks, 1449 lines checked
2214a7d222dd drm/i915/irq: replace I915_READ()/WRITE() with intel_uncore_read()/write()
-:67: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#67: FILE: drivers/gpu/drm/i915/i915_irq.c:425:
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);

-:131: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/i915_irq.c:990:
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);

-:148: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#148: FILE: drivers/gpu/drm/i915/i915_irq.c:1010:
+		intel_uncore_write(&dev_priv->uncore, reg, GE


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
