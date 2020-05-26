Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6334B1E23AA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 16:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0966E1E8;
	Tue, 26 May 2020 14:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 168436E1E8;
 Tue, 26 May 2020 14:06:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11BB8A0BCB;
 Tue, 26 May 2020 14:06:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 26 May 2020 14:06:14 -0000
Message-ID: <159050197406.28042.17732064498556502614@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526124156.29319-1-jani.nikula@intel.com>
In-Reply-To: <20200526124156.29319-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915/params=3A_don?=
 =?utf-8?q?=27t_expose_inject=5Fprobe=5Ffailure_in_debugfs?=
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

Series: series starting with [CI,1/4] drm/i915/params: don't expose inject_probe_failure in debugfs
URL   : https://patchwork.freedesktop.org/series/77661/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8685c3c6d218 drm/i915/params: don't expose inject_probe_failure in debugfs
4d8a197e487c drm/i915/params: fix i915.fake_lmem_start module param sysfs permissions
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/i915_params.c:177:
+i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
 	"Fake LMEM start offset (default: 0)");

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
af9a802b3b26 drm/i915/params: prevent changing module params runtime
-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/i915_params.c:62:
+i915_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "

-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/i915_params.c:70:
+i915_param_named_unsafe(panel_use_ssc, int, 0400,
 	"Use Spread Spectrum Clock with panels [LVDS/eDP] "

-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/i915/i915_params.c:78:
+i915_param_named_unsafe(reset, int, 0400,
 	"Attempt GPU resets (0=disabled, 1=full gpu reset, 2=engine reset [default])");

-:74: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#74: FILE: drivers/gpu/drm/i915/i915_params.c:85:
+i915_param_named(error_capture, bool, 0400,
 	"Record the GPU state following a hang. "

-:81: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#81: FILE: drivers/gpu/drm/i915/i915_params.c:91:
+i915_param_named_unsafe(enable_hangcheck, bool, 0400,
 	"Periodically check GPU activity for detecting hangs. "

-:87: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#87: FILE: drivers/gpu/drm/i915/i915_params.c:96:
+i915_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "

-:99: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#99: FILE: drivers/gpu/drm/i915/i915_params.c:111:
+i915_param_named(fastboot, int, 0400,
 	"Try to skip unnecessary mode sets at boot time "

-:105: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#105: FILE: drivers/gpu/drm/i915/i915_params.c:116:
+i915_param_named_unsafe(load_detect_test, bool, 0400,
 	"Force-enable the VGA load detect code for testing (default:false). "

-:110: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#110: FILE: drivers/gpu/drm/i915/i915_params.c:120:
+i915_param_named_unsafe(force_reset_modeset_test, bool, 0400,
 	"Force a modeset during gpu reset for testing (default:false). "

-:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#115: FILE: drivers/gpu/drm/i915/i915_params.c:124:
+i915_param_named_unsafe(invert_brightness, int, 0400,
 	"Invert backlight brightness "

-:124: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#124: FILE: drivers/gpu/drm/i915/i915_params.c:134:
+i915_param_named(mmio_debug, int, 0400,
 	"Enable the MMIO debug code for the first N failures (default: off). "

-:137: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#137: FILE: drivers/gpu/drm/i915/i915_params.c:169:
+i915_param_named_unsafe(enable_dp_mst, bool, 0400,
 	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");

-:146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#146: FILE: drivers/gpu/drm/i915/i915_params.c:177:
+i915_param_named(enable_dpcd_backlight, int, 0400,
 	"Enable support for DPCD backlight control"

total: 0 errors, 0 warnings, 13 checks, 115 lines checked
92adebe0d92e drm/i915/params: switch to device specific parameters

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
