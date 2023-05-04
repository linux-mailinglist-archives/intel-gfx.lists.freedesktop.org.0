Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACEB6F6256
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 02:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0986810E0AC;
	Thu,  4 May 2023 00:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 466A010E0AC;
 Thu,  4 May 2023 00:21:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40805AADE3;
 Thu,  4 May 2023 00:21:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 04 May 2023 00:21:02 -0000
Message-ID: <168315966223.11435.4388911478040085918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230503231048.432368-1-imre.deak@intel.com>
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Add_a_workaround_for_an_IOM/TCSS_firmware_ha?=
 =?utf-8?q?ng_issue_=28rev2=29?=
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

Series: drm/i915/tc: Add a workaround for an IOM/TCSS firmware hang issue (rev2)
URL   : https://patchwork.freedesktop.org/series/117004/
State : warning

== Summary ==

Error: dim checkpatch failed
c0e23e703186 drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
6288bedac45a drm/i915: Make the CRTC state consistent during sanitize-disabling
9d06ba0378f5 drm/i915: Update connector atomic state before crtc sanitize-disabling
911d807fe5cb drm/i915: Separate intel_crtc_disable_noatomic_begin/complete()
27a7a66bf8ad drm/i915: Factor out set_encoder_for_connector()
30ef074e0f77 drm/i915: Add support for disabling any CRTCs during HW readout/sanitization
16c5654f45a5 drm/i915/dp: Add link training debug and error printing helpers
-:269: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#269: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:725:
+		lt_dbg(intel_dp, DP_PHY_DPRX,
+			    "Using LINK_RATE_SET value %02x\n",

total: 0 errors, 0 warnings, 1 checks, 778 lines checked
04bb39f61ef4 drm/i915/dp: Convert link training error to debug message on disconnected sink
78e39d21dd0a drm/i915/dp: Prevent link training fallback on disconnected port
501ae18f29b3 drm/i915/dp: Factor out intel_dp_get_active_pipes()
d43245ee5705 drm/i915: Factor out a helper for handling atomic modeset locks/state
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
https://lore.kernel.org/all/20210715184954.7794-2-ville.syrjala@linux.intel.com/

-:85: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#85: 
new file mode 100644

-:173: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ctx' - possible side-effects?
#173: FILE: drivers/gpu/drm/i915/display/intel_modeset_lock.h:28:
+#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
+	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
+	     _intel_modeset_lock_loop(&(ret)); \
+	     _intel_modeset_lock_end((ctx), (state), &(ret)))

-:173: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#173: FILE: drivers/gpu/drm/i915/display/intel_modeset_lock.h:28:
+#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
+	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
+	     _intel_modeset_lock_loop(&(ret)); \
+	     _intel_modeset_lock_end((ctx), (state), &(ret)))

-:173: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ret' - possible side-effects?
#173: FILE: drivers/gpu/drm/i915/display/intel_modeset_lock.h:28:
+#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
+	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
+	     _intel_modeset_lock_loop(&(ret)); \
+	     _intel_modeset_lock_end((ctx), (state), &(ret)))

total: 0 errors, 2 warnings, 3 checks, 125 lines checked
edd95b07db89 drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the sink disconnects
-:48: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Closes:', use 'Link:' instead
#48: 
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5860

total: 0 errors, 1 warnings, 0 checks, 370 lines checked


