Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 502E2628BE2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 23:16:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD43910E331;
	Mon, 14 Nov 2022 22:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8DE410E32E;
 Mon, 14 Nov 2022 22:16:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A028BA7DFC;
 Mon, 14 Nov 2022 22:16:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mateusz Kwiatkowski" <kfyatek@gmail.com>
Date: Mon, 14 Nov 2022 22:16:51 -0000
Message-ID: <166846421165.32750.1193593124785451784@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728-rpi-analog-tv-properties-v9-0-24b168e5bcd5@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v9-0-24b168e5bcd5@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Analog_TV_Improvements_=28rev10=29?=
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

Series: drm: Analog TV Improvements (rev10)
URL   : https://patchwork.freedesktop.org/series/107892/
State : warning

== Summary ==

Error: dim checkpatch failed
33225d7686a2 docs/fb: Document current named modes
8c65b8e4719a drm/tests: Add Kunit Helpers
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:38: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#38: FILE: drivers/gpu/drm/tests/drm_kunit_helpers.c:1:
+#include <drm/drm_drv.h>

-:108: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#108: FILE: drivers/gpu/drm/tests/drm_kunit_helpers.h:1:
+#ifndef DRM_KUNIT_HELPERS_H_

total: 0 errors, 3 warnings, 0 checks, 80 lines checked
a3be5ddeda07 drm/connector: Rename legacy TV property
-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: drivers/gpu/drm/i2c/ch7006_drv.c:268:
+	drm_object_attach_property(&connector->base, conf->legacy_tv_mode_property,
 				      priv->norm);

total: 0 errors, 0 warnings, 1 checks, 164 lines checked
f6e78b240441 drm/connector: Only register TV mode property if present
d25e87b44429 drm/connector: Rename drm_mode_create_tv_properties
2d384f3cc11f drm/connector: Add TV standard property
-:79: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#79: FILE: drivers/gpu/drm/drm_connector.c:996:
+};
+DRM_ENUM_NAME_FN(drm_get_tv_mode_name, drm_tv_mode_enum_list)

-:335: WARNING:TYPO_SPELLING: 'Superseeded' may be misspelled - perhaps 'Superseded'?
#335: FILE: include/drm/drm_mode_config.h:720:
+	 * Superseeded by @tv_mode_property
 	   ^^^^^^^^^^^

total: 0 errors, 1 warnings, 1 checks, 291 lines checked
854c15ba16a0 drm/modes: Add a function to generate analog display modes
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:122: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#122: FILE: drivers/gpu/drm/drm_modes.c:212:
+#define TV_MODE_PARAMETER(_mode, _lines, _line_dur, _hact, _hfp, _hslen, _hbp, _hblk, _bt601_hfp, _vfp, _vslen, _vbp) \

-:137: WARNING:STATIC_CONST: Move const after static - use 'static const struct analog_parameters '
#137: FILE: drivers/gpu/drm/drm_modes.c:227:
+const static struct analog_parameters tv_modes_parameters[] = {

-:330: WARNING:TABSTOP: Statements should start on a tabstop
#330: FILE: drivers/gpu/drm/drm_modes.c:420:
+		 int porches_rem = porches - hfp_min - hbp_min;

-:377: WARNING:TYPO_SPELLING: 'asymetric' may be misspelled - perhaps 'asymmetric'?
#377: FILE: drivers/gpu/drm/drm_modes.c:467:
+		 * PAL systems also have asymetric timings between the
 		                         ^^^^^^^^^

-:378: WARNING:TYPO_SPELLING: 'symetric' may be misspelled - perhaps 'symmetric'?
#378: FILE: drivers/gpu/drm/drm_modes.c:468:
+		 * even and odd field, while NTSC is symetric.
 		                                     ^^^^^^^^

-:518: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#518: 
new file mode 100644

total: 0 errors, 6 warnings, 0 checks, 651 lines checked
fc9a4d8ce45b drm/client: Add some tests for drm_connector_pick_cmdline_mode()
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:34: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#34: 
new file mode 100644

-:95: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#95: FILE: drivers/gpu/drm/tests/drm_client_modeset_test.c:57:
+
+}

-:126: CHECK:LINE_SPACING: Please don't use multiple blank lines
#126: FILE: drivers/gpu/drm/tests/drm_client_modeset_test.c:88:
+
+

total: 0 errors, 1 warnings, 2 checks, 107 lines checked
aba284fb3fe8 drm/modes: Move named modes parsing to a separate function
d0f98f4732dc drm/modes: Switch to named mode descriptors
201515db7ab8 drm/modes: Fill drm_cmdline mode from named modes
cd37dfced952 drm/connector: Add pixel clock to cmdline mode
214ea6d758e3 drm/connector: Add a function to lookup a TV mode by its name
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 118 lines checked
75d731d5d5c0 drm/modes: Introduce the tv_mode property as a command-line option
-:190: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#190: FILE: drivers/gpu/drm/tests/drm_cmdline_parser_test.c:1002:
+}
+KUNIT_ARRAY_PARAM(drm_cmdline_tv_option,

total: 0 errors, 0 warnings, 1 checks, 183 lines checked
5af1ddd5a7ba drm/modes: Properly generate a drm_display_mode from a named mode
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
The heavy lifting will then be done by the drm_mode_create_from_cmdline_mode()

-:123: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_device *' should also have an identifier name
#123: FILE: drivers/gpu/drm/tests/drm_client_modeset_test.c:112:
+	struct drm_display_mode *(*func)(struct drm_device *);

total: 0 errors, 2 warnings, 0 checks, 145 lines checked
276a55b9d757 drm/client: Remove match on mode name
4886256f6b12 drm/modes: Introduce more named modes
98ea566f07da drm/probe-helper: Provide a TV get_modes helper
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:70: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#70: FILE: drivers/gpu/drm/drm_probe_helper.c:1187:
+		uint64_t default_mode;

-:125: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#125: 
new file mode 100644

-:200: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#200: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:71:
+#define _TV_MODE_TEST(_name, _supported, _default, _cmdline, _cmdline_mode, ...) ^I^I\$

-:207: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#207: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:78:
+^I^I.expected_modes = (expected_mode_func_t[]) { __VA_ARGS__ }, ^I^I^I\$

-:240: ERROR:CODE_INDENT: code indent should use tabs where possible
#240: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:111:
+^I^I ^I^I   params->default_mode);$

-:240: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#240: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:111:
+^I^I ^I^I   params->default_mode);$

total: 1 errors, 4 warnings, 1 checks, 298 lines checked
7dc3a779f14c drm/atomic-helper: Add a TV properties reset helper
-:39: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#39: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:496:
+	uint64_t val;

total: 0 errors, 0 warnings, 1 checks, 88 lines checked
4dd71065ac97 drm/atomic-helper: Add an analog TV atomic_check implementation
-:11: WARNING:REPEATED_WORD: Possible repeated word: 'be'
#11: 
TV standard property have created some boilerplate that can be be shared

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.margins.left != new_conn_state->tv.margins.left'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.margins.right != new_conn_state->tv.margins.right'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.margins.top != new_conn_state->tv.margins.top'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.mode != new_conn_state->tv.mode'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.brightness != new_conn_state->tv.brightness'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.contrast != new_conn_state->tv.contrast'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.overscan != new_conn_state->tv.overscan'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.saturation != new_conn_state->tv.saturation'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_conn_state->tv.hue != new_conn_state->tv.hue'
#60: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:591:
+	if ((old_conn_state->tv.margins.left != new_conn_state->tv.margins.left) ||
+	    (old_conn_state->tv.margins.right != new_conn_state->tv.margins.right) ||
+	    (old_conn_state->tv.margins.top != new_conn_state->tv.margins.top) ||
+	    (old_conn_state->tv.margins.bottom != new_conn_state->tv.margins.bottom) ||
+	    (old_conn_state->tv.mode != new_conn_state->tv.mode) ||
+	    (old_conn_state->tv.brightness != new_conn_state->tv.brightness) ||
+	    (old_conn_state->tv.contrast != new_conn_state->tv.contrast) ||
+	    (old_conn_state->tv.flicker_reduction != new_conn_state->tv.flicker_reduction) ||
+	    (old_conn_state->tv.overscan != new_conn_state->tv.overscan) ||
+	    (old_conn_state->tv.saturation != new_conn_state->tv.saturation) ||
+	    (old_conn_state->tv.hue != new_conn_state->tv.hue))

total: 0 errors, 1 warnings, 11 checks, 70 lines checked
93bf8a59d0a4 drm/vc4: vec: Use TV Reset implementation
d7a50c3601fd drm/vc4: vec: Check for VEC output constraints
337c7d4641a0 drm/vc4: vec: Convert to the new TV mode property
3da84187042b drm/vc4: vec: Add support for more analog TV standards
032c31f8673a drm/sun4i: tv: Convert to the new TV mode property


