Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15992424B0B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 02:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653736F384;
	Thu,  7 Oct 2021 00:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0D7E6F384;
 Thu,  7 Oct 2021 00:18:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECB97AA914;
 Thu,  7 Oct 2021 00:18:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 00:18:42 -0000
Message-ID: <163356592296.5189.11097062371955385905@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DP_per-lane_drive_settings_for_icl+?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: DP per-lane drive settings for icl+
URL   : https://patchwork.freedesktop.org/series/95535/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
284e669a57b2 drm/i915: Remove pointless extra namespace from dkl/snps buf trans structs
0f71d656b29b drm/i915: Shrink {icl_mg, tgl_dkl}_phy_ddi_buf_trans
04357f3b75ae drm/i915: Use standard form terminating condition for lane for loops
b82774efb2b1 drm/i915: Add all per-lane register definitions for icl combo phy
1d228306b7da drm/i915: Remove dead DKL_TX_LOADGEN_SHARING_PMD_DISABLE stuff
47e546461be6 drm/i915: Extract icl_combo_phy_loadgen_select()
7af002c94e9e drm/i915: Stop using group access when progrmming icl combo phy TX
d97a7168e4e8 drm/i915: Query the vswing levels per-lane for icl combo phy
ef435d41c784 drm/i915: Query the vswing levels per-lane for icl mg phy
-:35: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#35: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1192:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 		                                              ^

-:35: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#35: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1192:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 		                                                 ^

-:43: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#43: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1200:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 		                                              ^

-:43: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#43: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1200:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 		                                                 ^

-:54: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#54: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1213:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 		                                              ^

-:54: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#54: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1213:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 		                                                 ^

-:63: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1225:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 		                                              ^

-:63: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1225:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 		                                                 ^

total: 0 errors, 0 warnings, 8 checks, 43 lines checked
bf9f565f3d25 drm/i915: Query the vswing levels per-lane for tgl dkl phy
-:55: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#55: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1317:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 		                                              ^

-:55: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#55: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1317:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 		                                                 ^

-:68: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#68: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1328:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 		                                              ^

-:68: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#68: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1328:
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 		                                                 ^

total: 0 errors, 0 warnings, 4 checks, 56 lines checked
ae736094e5c7 drm/i915: Query the vswing levels per-lane for snps phy
026b4eacb6c2 drm/i915: Enable per-lane drive settings for icl+
720aa864e834 drm/i915: Use intel_de_rmw() for tgl dkl phy programming
c09c9f245da1 drm/i915: Use intel_de_rmw() for icl mg phy programming
-:56: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1191:
+			     CRI_TXDEEMPH_OVERRIDE_17_12(trans->entries[level].mg.cri_txdeemph_override_17_12));

-:67: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#67: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1197:
+			     CRI_TXDEEMPH_OVERRIDE_17_12(trans->entries[level].mg.cri_txdeemph_override_17_12));

-:87: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1209:
+			     CRI_TXDEEMPH_OVERRIDE_5_0(trans->entries[level].mg.cri_txdeemph_override_5_0) |

-:88: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1210:
+			     CRI_TXDEEMPH_OVERRIDE_11_6(trans->entries[level].mg.cri_txdeemph_override_11_6) |

-:105: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1218:
+			     CRI_TXDEEMPH_OVERRIDE_5_0(trans->entries[level].mg.cri_txdeemph_override_5_0) |

-:106: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1219:
+			     CRI_TXDEEMPH_OVERRIDE_11_6(trans->entries[level].mg.cri_txdeemph_override_11_6) |

total: 0 errors, 6 warnings, 0 checks, 158 lines checked
b6b8bd4a06e4 drm/i915: Use intel_de_rmw() for icl combo phy programming
9c1b9c51ad06 drm/i915: Fix icl+ combo phy static lane power down setup


