Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B827D5E99
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 01:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C4810E4EE;
	Tue, 24 Oct 2023 23:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C376A10E4EE;
 Tue, 24 Oct 2023 23:19:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7B42AADD5;
 Tue, 24 Oct 2023 23:19:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 24 Oct 2023 23:19:11 -0000
Message-ID: <169818955172.18362.6891671610674820967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024124109.384973-1-jouni.hogander@intel.com>
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Framework_for_display_parameters_=28rev5=29?=
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

Series: Framework for display parameters (rev5)
URL   : https://patchwork.freedesktop.org/series/124645/
State : warning

== Summary ==

Error: dim checkpatch failed
51b8349c8a4e drm/i915/display: Add framework to add parameters specific to display
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:84: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#84: 
new file mode 100644

-:212: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#212: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:124:
+intel_display_debugfs_create_int(const char *name, umode_t mode,
+			struct dentry *parent, int *value)

-:221: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#221: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:133:
+intel_display_debugfs_create_uint(const char *name, umode_t mode,
+			 struct dentry *parent, unsigned int *value)

-:228: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mode' - possible side-effects?
#228: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:140:
+#define _intel_display_param_create_file(parent, name, mode, valp)	\
+	do {								\
+		if (mode)						\
+			_Generic(valp,					\
+				 bool * : debugfs_create_bool,		\
+				 int * : intel_display_debugfs_create_int, \
+				 unsigned int * : intel_display_debugfs_create_uint, \
+				 unsigned long * : debugfs_create_ulong, \
+				 char ** : debugfs_create_str) \
+				(name, mode, parent, valp);		\
+	} while (0)

-:228: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#228: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:140:
+#define _intel_display_param_create_file(parent, name, mode, valp)	\
+	do {								\
+		if (mode)						\
+			_Generic(valp,					\
+				 bool * : debugfs_create_bool,		\
+				 int * : intel_display_debugfs_create_int, \
+				 unsigned int * : intel_display_debugfs_create_uint, \
+				 unsigned long * : debugfs_create_ulong, \
+				 char ** : debugfs_create_str) \
+				(name, mode, parent, valp);		\
+	} while (0)

-:231: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#231: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:143:
+			_Generic(valp,					\

-:236: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#236: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:148:
+				 char ** : debugfs_create_str) \
 				      ^

-:236: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#236: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:148:
+				 char ** : debugfs_create_str) \
 				       ^

-:260: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#260: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:172:
+#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file( \
+		dir, #x, mode, &i915->display.params.x);

-:336: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#336: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:9:
+#define intel_display_param_named(name, T, perm, desc) \
+	module_param_named(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)

-:339: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#339: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:12:
+#define intel_display_param_named_unsafe(name, T, perm, desc) \
+	module_param_named_unsafe(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)

-:348: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#348: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:21:
+};
+/*

-:366: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#366: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:39:
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:366: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#366: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:39:
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:368: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#368: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:41:
+		 char ** : _param_dup_charp,		\
 		      ^

-:368: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#368: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:41:
+		 char ** : _param_dup_charp,		\
 		       ^

-:369: WARNING:TABSTOP: Statements should start on a tabstop
#369: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:42:
+		 default : _param_nop)			\

-:369: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#369: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:42:
+		 default : _param_nop)			\

-:375: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#375: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:48:
+#define DUP(T, x, ...) _param_dup(&dest->x);

-:375: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#375: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:48:
+#define DUP(T, x, ...) _param_dup(&dest->x);

-:386: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#386: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:59:
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_free_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:386: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#386: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:59:
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_free_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:388: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#388: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:61:
+		 char ** : _param_free_charp,		\
 		      ^

-:388: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#388: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:61:
+		 char ** : _param_free_charp,		\
 		       ^

-:389: WARNING:TABSTOP: Statements should start on a tabstop
#389: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:62:
+		 default : _param_nop)			\

-:389: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#389: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:62:
+		 default : _param_nop)			\

-:395: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#395: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:68:
+#define FREE(T, x, ...) _param_free(&params->x);

-:395: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#395: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:68:
+#define FREE(T, x, ...) _param_free(&params->x);

-:405: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_display_params.h', please use '/*' instead
#405: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:1:
+// SPDX-License-Identifier: MIT

-:405: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#405: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:1:
+// SPDX-License-Identifier: MIT

-:429: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#429: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:25:
+#define MEMBER(T, member, ...) T member;

-:429: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#429: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:25:
+#define MEMBER(T, member, ...) T member;

-:433: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#433: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:29:
+};
+#undef MEMBER

total: 8 errors, 9 warnings, 16 checks, 371 lines checked
f681b8707b68 drm/i915/display: Dump also display parameters
-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:65:
+#define _param_print(p, driver_name, name, val)			\
+	_Generic(val,						\
+		 bool : _param_print_bool,			\
+		 int : _param_print_int,			\
+		 unsigned int : _param_print_uint,		\
+		 unsigned long : _param_print_ulong,		\
+		 char * : _param_print_charp)(p, driver_name, name, val)

-:64: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#64: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:66:
+	_Generic(val,						\

-:80: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#80: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:82:
+#define PRINT(T, x, ...) _param_print(p, i915->drm.driver->name, #x, i915->display.params.x);

total: 0 errors, 1 warnings, 2 checks, 128 lines checked
18d2515acc3a drm/i915/display: Move enable_fbc module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:31:
+intel_display_param_named_unsafe(enable_fbc, int, 0400,
+	"Enable frame buffer compression for power savings "

total: 0 errors, 1 warnings, 1 checks, 73 lines checked
d36a39153e1d drm/i915/display: Move psr related module parameters under display
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:35:
+intel_display_param_named_unsafe(enable_psr, int, 0400,
+	"Enable PSR "

-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:40:
+intel_display_param_named(psr_safest_params, bool, 0400,
+	"Replace PSR VBT parameters by the safest and not optimal ones. This "

-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:46:
+intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
+	"Enable PSR2 selective fetch "

total: 0 errors, 0 warnings, 3 checks, 121 lines checked
96c394895b05 drm/i915/display: Move vbt_firmware module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:31:
+intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
+	"Load VBT from specified file under /lib/firmware");

total: 0 errors, 1 warnings, 1 checks, 40 lines checked
43fd7d137fe2 drm/i915/display: Move lvds_channel_mode module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:34:
+intel_display_param_named_unsafe(lvds_channel_mode, int, 0400,
+	 "Specify LVDS channel mode "

total: 0 errors, 1 warnings, 1 checks, 44 lines checked
779bd28f38c8 drm/i915/display: Move panel_use_ssc module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:38:
+intel_display_param_named_unsafe(panel_use_ssc, int, 0400,
+	"Use Spread Spectrum Clock with panels [LVDS/eDP] "

total: 0 errors, 1 warnings, 1 checks, 44 lines checked
1fd6bcc76c73 drm/i915/display: Move vbt_sdvo_panel_type module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:42:
+intel_display_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
+	"Override/Ignore selection of SDVO panel mode in the VBT "

total: 0 errors, 1 warnings, 1 checks, 42 lines checked
5a66e55632de drm/i915/display: Move enable_dc module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:46:
+intel_display_param_named_unsafe(enable_dc, int, 0400,
+	"Enable power-saving display C-states. "

total: 0 errors, 1 warnings, 1 checks, 44 lines checked
2149e6dea801 drm/i915/display: Move enable_dpt module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:51:
+intel_display_param_named_unsafe(enable_dpt, bool, 0400,
+	"Enable display page table (DPT) (default: true)");

total: 0 errors, 1 warnings, 1 checks, 63 lines checked
00d6789e49a6 drm/i915/display: Move enable_sagv module parameter under display
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:54:
+intel_display_param_named_unsafe(enable_sagv, bool, 0400,
+	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");

total: 0 errors, 0 warnings, 1 checks, 49 lines checked
0fcada580df6 drm/i915/display: Move disable_power_well module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:57:
+intel_display_param_named_unsafe(disable_power_well, int, 0400,
+	"Disable display power wells when possible "

total: 0 errors, 1 warnings, 1 checks, 77 lines checked
8a3c883eec93 drm/i915/display: Move enable_ips module parameter under display
a42f20d149e6 drm/i915/display: Move invert_brightness module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:63:
+intel_display_param_named_unsafe(invert_brightness, int, 0400,
+	"Invert backlight brightness "

total: 0 errors, 1 warnings, 1 checks, 63 lines checked
0e758909b0b4 drm/i915/display: Move edp_vswing module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:71:
+intel_display_param_named_unsafe(edp_vswing, int, 0400,
+	"Ignore/Override vswing pre-emph table selection from VBT "

total: 0 errors, 1 warnings, 1 checks, 49 lines checked
030357d959cc drm/i915/display: Move enable_dpcd_backlight module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:76:
+intel_display_param_named(enable_dpcd_backlight, int, 0400,
+	"Enable support for DPCD backlight control"

total: 0 errors, 1 warnings, 1 checks, 50 lines checked
bf9300450fe8 drm/i915/display: Move load_detect_test parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:80:
+intel_display_param_named_unsafe(load_detect_test, bool, 0400,
+	"Force-enable the VGA load detect code for testing (default:false). "

total: 0 errors, 1 warnings, 1 checks, 50 lines checked
8fbea4186f54 drm/i915/display: Move force_reset_modeset_test parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:84:
+intel_display_param_named_unsafe(force_reset_modeset_test, bool, 0400,
+	"Force a modeset during gpu reset for testing (default:false). "

total: 0 errors, 1 warnings, 1 checks, 42 lines checked
5a31563df212 drm/i915/display: Move disable_display parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:88:
+intel_display_param_named(disable_display, bool, 0400,
+	"Disable display (default: false)");

total: 0 errors, 1 warnings, 1 checks, 39 lines checked
9e2b3fd83bdc drm/i915/display: Use device parameters instead of module in I915_STATE_WARN
-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/i915_params.c:97:
+i915_param_named(verbose_state_checks, bool, 0400,
 	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");

total: 0 errors, 0 warnings, 1 checks, 17 lines checked
370113bbbf29 drm/i915/display: Move verbose_state_checks under display
-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:91:
+intel_display_param_named(verbose_state_checks, bool, 0400,
+	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
f9b79d55beb5 drm/i915/display: Move nuclear_pageflip under display
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:94:
+intel_display_param_named_unsafe(nuclear_pageflip, bool, 0400,
+	"Force enable atomic functionality on platforms that don't have full support yet.");

total: 0 errors, 1 warnings, 1 checks, 40 lines checked
600423803c05 drm/i915/display: Move enable_dp_mst under display
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:97:
+intel_display_param_named_unsafe(enable_dp_mst, bool, 0400,
+	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");

total: 0 errors, 1 warnings, 1 checks, 55 lines checked


