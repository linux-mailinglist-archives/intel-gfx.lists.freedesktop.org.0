Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 147BB1DB3F1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 14:44:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE0B89D7F;
	Wed, 20 May 2020 12:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9427189D7F;
 Wed, 20 May 2020 12:44:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91966A47E6;
 Wed, 20 May 2020 12:44:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 20 May 2020 12:44:33 -0000
Message-ID: <158997867359.30687.3644806176608152046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518164750.11113-1-jani.nikula@intel.com>
In-Reply-To: <20200518164750.11113-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/params=3A_don=27t_e?=
 =?utf-8?q?xpose_inject=5Fprobe=5Ffailure_in_debugfs_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915/params: don't expose inject_probe_failure in debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/77366/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6190d8ce3829 drm/i915/params: don't expose inject_probe_failure in debugfs
a76531f51fca drm/i915/params: fix i915.fake_lmem_start module param sysfs permissions
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/i915_params.c:177:
+i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
 	"Fake LMEM start offset (default: 0)");

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
acab80457ffc drm/i915/params: prevent changing module params runtime
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
