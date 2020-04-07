Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 885561A0D89
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B52F89DA8;
	Tue,  7 Apr 2020 12:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9265589DA8;
 Tue,  7 Apr 2020 12:26:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BAC4A00E7;
 Tue,  7 Apr 2020 12:26:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 07 Apr 2020 12:26:38 -0000
Message-ID: <158626239854.26325.13723967481398371880@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1586252867.git.jani.nikula@intel.com>
In-Reply-To: <cover.1586252867.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_from_module_params_to_device_params_=28rev2=29?=
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

Series: drm/i915: from module params to device params (rev2)
URL   : https://patchwork.freedesktop.org/series/54414/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f9135c748581 drm/i915/params: don't expose inject_probe_failure in debugfs
9870a0bf570a drm/i915/params: prevent changing module params runtime
-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/i915_params.c:62:
+i915_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "

-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/i915/i915_params.c:70:
+i915_param_named_unsafe(panel_use_ssc, int, 0400,
 	"Use Spread Spectrum Clock with panels [LVDS/eDP] "

-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/drm/i915/i915_params.c:78:
+i915_param_named_unsafe(reset, int, 0400,
 	"Attempt GPU resets (0=disabled, 1=full gpu reset, 2=engine reset [default])");

-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/gpu/drm/i915/i915_params.c:85:
+i915_param_named(error_capture, bool, 0400,
 	"Record the GPU state following a hang. "

-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/i915/i915_params.c:91:
+i915_param_named_unsafe(enable_hangcheck, bool, 0400,
 	"Periodically check GPU activity for detecting hangs. "

-:96: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#96: FILE: drivers/gpu/drm/i915/i915_params.c:96:
+i915_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "

-:108: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#108: FILE: drivers/gpu/drm/i915/i915_params.c:111:
+i915_param_named(fastboot, int, 0400,
 	"Try to skip unnecessary mode sets at boot time "

-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/gpu/drm/i915/i915_params.c:116:
+i915_param_named_unsafe(load_detect_test, bool, 0400,
 	"Force-enable the VGA load detect code for testing (default:false). "

-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/i915/i915_params.c:120:
+i915_param_named_unsafe(force_reset_modeset_test, bool, 0400,
 	"Force a modeset during gpu reset for testing (default:false). "

-:124: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#124: FILE: drivers/gpu/drm/i915/i915_params.c:124:
+i915_param_named_unsafe(invert_brightness, int, 0400,
 	"Invert backlight brightness "

-:133: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#133: FILE: drivers/gpu/drm/i915/i915_params.c:134:
+i915_param_named(mmio_debug, int, 0400,
 	"Enable the MMIO debug code for the first N failures (default: off). "

-:146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#146: FILE: drivers/gpu/drm/i915/i915_params.c:169:
+i915_param_named_unsafe(enable_dp_mst, bool, 0400,
 	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");

-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/i915/i915_params.c:177:
+i915_param_named(enable_dpcd_backlight, int, 0400,
 	"Enable support for DPCD backlight control"

-:164: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#164: FILE: drivers/gpu/drm/i915/i915_params.c:187:
+i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
 	"Fake LMEM start offset (default: 0)");

total: 0 errors, 0 warnings, 14 checks, 123 lines checked
6fb0bc4cf092 drm/i915/params: switch to device specific parameters
-:734: WARNING:LONG_LINE: line over 100 characters
#734: FILE: drivers/gpu/drm/i915/i915_drv.h:1653:
+#define INTEL_DISPLAY_ENABLED(dev_priv) (WARN_ON(!HAS_DISPLAY(dev_priv)), !dev_priv->params.disable_display)

-:734: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#734: FILE: drivers/gpu/drm/i915/i915_drv.h:1653:
+#define INTEL_DISPLAY_ENABLED(dev_priv) (WARN_ON(!HAS_DISPLAY(dev_priv)), !dev_priv->params.disable_display)

total: 0 errors, 1 warnings, 1 checks, 662 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
