Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B88416C85AE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 20:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20C1710EC57;
	Fri, 24 Mar 2023 19:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36D7710EC53;
 Fri, 24 Mar 2023 19:16:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F437AA917;
 Fri, 24 Mar 2023 19:16:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Fri, 24 Mar 2023 19:16:21 -0000
Message-ID: <167968538116.30851.2624843082089657708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
In-Reply-To: <20230308165859.235520-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display=3A_Restore_?=
 =?utf-8?q?dsparb=5Flock=2E_=28rev4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/display: Restore dsparb_lock. (rev4)
URL   : https://patchwork.freedesktop.org/series/114868/
State : warning

== Summary ==

Error: dim checkpatch failed
4a0ced9e598f drm/i915/display: Restore dsparb_lock.
6ac1060f9408 drm/i915/i9xx_wm: Prefer intel_de functions over intel_uncore.
-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:670:
+		intel_de_rmw(dev_priv, DSPFW3, DSPFW_CURSOR_SR_MASK,
 				 FW_WM(wm, CURSOR_SR));

-:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#183: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:720:
+	intel_de_write(dev_priv, DSPFW1,
 			   FW_WM(wm->sr.plane, SR) |

-:189: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#189: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:725:
+	intel_de_write(dev_priv, DSPFW2,
 			   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |

-:197: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#197: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:732:
+	intel_de_write(dev_priv, DSPFW3,
 			   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |

-:213: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#213: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:752:
+		intel_de_write(dev_priv, VLV_DDL(pipe),
 				   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |

-:233: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#233: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:770:
+	intel_de_write(dev_priv, DSPFW1,
 			   FW_WM(wm->sr.plane, SR) |

-:239: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#239: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:775:
+	intel_de_write(dev_priv, DSPFW2,
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |

-:244: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#244: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:779:
+	intel_de_write(dev_priv, DSPFW3,
 			   FW_WM(wm->sr.cursor, CURSOR_SR));

-:249: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#249: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:783:
+		intel_de_write(dev_priv, DSPFW7_CHV,
 				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |

-:253: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#253: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:786:
+		intel_de_write(dev_priv, DSPFW8_CHV,
 				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |

-:257: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#257: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:789:
+		intel_de_write(dev_priv, DSPFW9_CHV,
 				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |

-:261: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#261: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:792:
+		intel_de_write(dev_priv, DSPHOWM,
 				   FW_WM(wm->sr.plane >> 9, SR_HI) |

-:270: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#270: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:804:
+		intel_de_write(dev_priv, DSPFW7,
 				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |

-:274: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#274: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:807:
+		intel_de_write(dev_priv, DSPHOWM,
 				   FW_WM(wm->sr.plane >> 9, SR_HI) |

-:381: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#381: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2205:
+			intel_de_write(dev_priv, FW_BLC_SELF,
 				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));

-:480: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#480: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:3214:
+			intel_de_rmw(dev_priv, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
 					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :

-:485: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#485: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:3218:
+			intel_de_rmw(dev_priv, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
 					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :

-:492: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#492: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:3224:
+		intel_de_rmw(dev_priv, DISP_ARB_CTL, DISP_FBC_WM_DIS,
 				 results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);

total: 0 errors, 0 warnings, 18 checks, 655 lines checked


