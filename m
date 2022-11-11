Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AE5624FBD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 02:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6452C10E185;
	Fri, 11 Nov 2022 01:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ECA0B10E163;
 Fri, 11 Nov 2022 01:40:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4E0CA66C9;
 Fri, 11 Nov 2022 01:40:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mateusz Kwiatkowski" <kfyatek@gmail.com>
Date: Fri, 11 Nov 2022 01:40:24 -0000
Message-ID: <166813082490.870.11552604103210725587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728-rpi-analog-tv-properties-v8-0-09ce1466967c@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v8-0-09ce1466967c@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Analog_TV_Improvements_=28rev9=29?=
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

Series: drm: Analog TV Improvements (rev9)
URL   : https://patchwork.freedesktop.org/series/107892/
State : warning

== Summary ==

Error: dim checkpatch failed
7592c541f416 drm/tests: Add Kunit Helpers
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
c135545c3f03 drm/connector: Rename legacy TV property
-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: drivers/gpu/drm/i2c/ch7006_drv.c:268:
+	drm_object_attach_property(&connector->base, conf->legacy_tv_mode_property,
 				      priv->norm);

total: 0 errors, 0 warnings, 1 checks, 164 lines checked
28582f6e45ef drm/connector: Only register TV mode property if present
0bcc81d83aa5 drm/connector: Rename drm_mode_create_tv_properties
39a0b97efe22 drm/connector: Add TV standard property
-:79: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#79: FILE: drivers/gpu/drm/drm_connector.c:996:
+};
+DRM_ENUM_NAME_FN(drm_get_tv_mode_name, drm_tv_mode_enum_list)

-:335: WARNING:TYPO_SPELLING: 'Superseeded' may be misspelled - perhaps 'Superseded'?
#335: FILE: include/drm/drm_mode_config.h:720:
+	 * Superseeded by @tv_mode_property
 	   ^^^^^^^^^^^

total: 0 errors, 1 warnings, 1 checks, 291 lines checked
d4e2d66458bc drm/modes: Add a function to generate analog display modes
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

-:664: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#664: FILE: drivers/gpu/drm/tests/drm_modes_test.c:142:
+kunit_test_suites(

-:667: WARNING:MODULE_LICENSE: Prefer "GPL" over "GPL v2" - see commit bf7fbeeae6db ("module: Cure the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity")
#667: FILE: drivers/gpu/drm/tests/drm_modes_test.c:145:
+MODULE_LICENSE("GPL v2");

total: 0 errors, 7 warnings, 1 checks, 654 lines checked
e2a4d98fd520 drm/client: Add some tests for drm_connector_pick_cmdline_mode()
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
2f63c68c62b5 drm/modes: Move named modes parsing to a separate function
e36f3aa1d427 drm/modes: Switch to named mode descriptors
2f422334e718 drm/modes: Fill drm_cmdline mode from named modes
50a19f54f8e0 drm/connector: Add pixel clock to cmdline mode
32251d266eb8 drm/connector: Add a function to lookup a TV mode by its name
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

-:119: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#119: FILE: drivers/gpu/drm/tests/drm_connector_test.c:47:
+}
+KUNIT_ARRAY_PARAM(drm_get_tv_mode_from_name_valid,

-:143: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#143: FILE: drivers/gpu/drm/tests/drm_connector_test.c:71:
+}
+KUNIT_ARRAY_PARAM(drm_get_tv_mode_from_name_invalid,

-:160: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#160: FILE: drivers/gpu/drm/tests/drm_connector_test.c:88:
+kunit_test_suites(

total: 0 errors, 1 warnings, 3 checks, 135 lines checked
517b9b865c61 drm/modes: Introduce the tv_mode property as a command-line option
-:190: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#190: FILE: drivers/gpu/drm/tests/drm_cmdline_parser_test.c:1002:
+}
+KUNIT_ARRAY_PARAM(drm_cmdline_tv_option,

total: 0 errors, 0 warnings, 1 checks, 183 lines checked
2ad4c7094dd5 drm/modes: Properly generate a drm_display_mode from a named mode
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
The heavy lifting will then be done by the drm_mode_create_from_cmdline_mode()

total: 0 errors, 1 warnings, 0 checks, 139 lines checked
25e5243ce095 drm/client: Remove match on mode name
5a7aa6879fec drm/modes: Introduce more named modes
020dbf44389b drm/probe-helper: Provide a TV get_modes helper
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

-:212: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#212: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:83:
+#define _TV_MODE_TEST(_name, _supported, _default, _cmdline, _cmdline_mode, ...) 			\

-:212: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#212: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:83:
+#define _TV_MODE_TEST(_name, _supported, _default, _cmdline, _cmdline_mode, ...) ^I^I^I\$

-:213: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#213: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:84:
+	{												\

-:214: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#214: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:85:
+		.name = _name,										\

-:215: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#215: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:86:
+		.supported_tv_modes = _supported,							\

-:216: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#216: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:87:
+		.default_mode = _default,								\

-:217: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#217: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:88:
+		.cmdline = _cmdline,									\

-:218: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#218: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:89:
+		.cmdline_mode = _cmdline_mode,								\

-:219: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#219: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:90:
+		.expected_modes = (const struct drm_display_mode*[]) { __VA_ARGS__ }, 			\

-:219: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#219: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:90:
+^I^I.expected_modes = (const struct drm_display_mode*[]) { __VA_ARGS__ }, ^I^I^I\$

-:220: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#220: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:91:
+		.num_expected_modes = sizeof((const struct drm_display_mode*[]) { __VA_ARGS__ }) /	\

-:221: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#221: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:92:
+				      (sizeof(const struct drm_display_mode*)),				\

-:221: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#221: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:92:
+				      (sizeof(const struct drm_display_mode*)),				\

-:252: ERROR:CODE_INDENT: code indent should use tabs where possible
#252: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:123:
+^I^I ^I^I   params->default_mode);$

-:252: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#252: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:123:
+^I^I ^I^I   params->default_mode);$

-:320: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#320: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:191:
+}
+KUNIT_ARRAY_PARAM(drm_connector_helper_tv_get_modes,

-:336: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#336: FILE: drivers/gpu/drm/tests/drm_probe_helper_test.c:207:
+kunit_test_suites(

total: 2 errors, 14 warnings, 3 checks, 305 lines checked
0048a6b1c0df drm/atomic-helper: Add a TV properties reset helper
-:39: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#39: FILE: drivers/gpu/drm/drm_atomic_state_helper.c:496:
+	uint64_t val;

total: 0 errors, 0 warnings, 1 checks, 88 lines checked
4eb47a5dfd71 drm/atomic-helper: Add an analog TV atomic_check implementation
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
ebbde19d611e drm/vc4: vec: Use TV Reset implementation
869c89a64fc2 drm/vc4: vec: Check for VEC output constraints
9dbc4d2d0110 drm/vc4: vec: Convert to the new TV mode property
93113ac865fe drm/vc4: vec: Add support for more analog TV standards
35cbb07288d6 drm/sun4i: tv: Convert to the new TV mode property


