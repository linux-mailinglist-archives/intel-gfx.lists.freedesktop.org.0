Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C1C302CA1
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 21:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0CEF6E25B;
	Mon, 25 Jan 2021 20:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CB496E252;
 Mon, 25 Jan 2021 20:36:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45705A882F;
 Mon, 25 Jan 2021 20:36:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Mon, 25 Jan 2021 20:36:26 -0000
Message-ID: <161160698625.3416.14919573817981525823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2Cv6=5D_drm/i915/display/vrr=3A_?=
 =?utf-8?q?Create_VRR_file_and_add_VRR_capability_check_=28rev2=29?=
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

Series: series starting with [CI,v6] drm/i915/display/vrr: Create VRR file and add VRR capability check (rev2)
URL   : https://patchwork.freedesktop.org/series/86200/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
62a318f6e2ec drm/i915/display/vrr: Create VRR file and add VRR capability check
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
f52206f4d61d drm/i915/display/dp: Attach and set drm connector VRR property
215e991209ec drm/i915: Store framestart_delay in dev_priv
-:104: CHECK:SPACING: spaces preferred around that '-' (ctx:WxV)
#104: FILE: drivers/gpu/drm/i915/display/intel_display.c:15189:
+		val |= HSW_FRAME_START_DELAY(dev_priv->framestart_delay -1);
 		                                                        ^

total: 0 errors, 0 warnings, 1 checks, 102 lines checked
b6d69ba3c3f2 drm/i915: Extract intel_mode_vblank_start()
e09f65af8a5b drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()
d042de272b5c drm/i915/display/dp: Compute VRR state in atomic_check
348ab07c113b drm/i915/display/dp: Do not enable PSR if VRR is enabled
48ea525edcf8 drm/i915/display: VRR + DRRS cannot be enabled together
9b63d63f6613 drm/i915: Rename VRR_CTL reg fields
7fafcbdaedbf drm/i915/display/vrr: Configure and enable VRR in modeset enable
9afbc5d3d2c7 drm/i915/display/vrr: Send VRR push to flip the frame
f58744d7fa53 drm/i915/display/vrr: Disable VRR in modeset disable path
fd521ea70cf2 drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink
fccf4001ed51 drm/i915/display: Add HW state readout for VRR
-:59: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:164:
+		crtc_state->vrr.pipeline_full = REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);

-:61: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:166:
+		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;

total: 0 errors, 2 warnings, 0 checks, 46 lines checked
7422bf611bda drm/i915/display: Helpers for VRR vblank min and max start
e4b1a4ab29b6 drm/i915: Add vrr state dump
58b14daa2aa2 drm/i915: Fix vblank timestamps with VRR
-:11: WARNING:TYPO_SPELLING: 'minumum' may be misspelled - perhaps 'minimum'?
#11: 
off the scanline counter when it exceeds the minumum vtotal.
                                             ^^^^^^^

-:87: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#87: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:697:
+#define I915_MODE_FLAG_VRR (1<<6)
                              ^

total: 0 errors, 1 warnings, 1 checks, 81 lines checked
e6f1e331f995 drm/i915: Fix vblank evasion with vrr


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
