Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FF27C43CC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 00:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37FDA10E3E8;
	Tue, 10 Oct 2023 22:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFB8110E3E8;
 Tue, 10 Oct 2023 22:25:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9841AADD1;
 Tue, 10 Oct 2023 22:25:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 10 Oct 2023 22:25:38 -0000
Message-ID: <169697673879.28097.15005575663274002670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Framework_for_display_parameters_=28rev2=29?=
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

Series: Framework for display parameters (rev2)
URL   : https://patchwork.freedesktop.org/series/124645/
State : warning

== Summary ==

Error: dim checkpatch failed
6962346c45e5 drm/i915/display: Add framework to add parameters specific to display
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
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

-:207: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#207: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:124:
+intel_display_debugfs_create_int(const char *name, umode_t mode,
+			struct dentry *parent, int *value)

-:216: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#216: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:133:
+intel_display_debugfs_create_uint(const char *name, umode_t mode,
+			 struct dentry *parent, unsigned int *value)

-:223: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mode' - possible side-effects?
#223: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:140:
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

-:223: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#223: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:140:
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

-:226: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#226: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:143:
+			_Generic(valp,					\

-:231: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#231: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:148:
+				 char ** : debugfs_create_str) \
 				      ^

-:231: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#231: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:148:
+				 char ** : debugfs_create_str) \
 				       ^

-:255: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#255: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:172:
+#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file( \
+		dir, #x, mode, &i915->display.params.x);

-:332: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#332: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:9:
+#define intel_display_param_named(name, T, perm, desc) \
+	module_param_named(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)

-:335: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#335: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:12:
+#define intel_display_param_named_unsafe(name, T, perm, desc) \
+	module_param_named_unsafe(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)

-:344: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#344: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:21:
+};
+/*

-:362: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#362: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:39:
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:362: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#362: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:39:
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:364: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#364: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:41:
+		 char ** : _param_dup_charp,		\
 		      ^

-:364: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#364: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:41:
+		 char ** : _param_dup_charp,		\
 		       ^

-:365: WARNING:TABSTOP: Statements should start on a tabstop
#365: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:42:
+		 default : _param_nop)			\

-:365: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#365: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:42:
+		 default : _param_nop)			\

-:371: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#371: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:48:
+#define DUP(T, x, ...) _param_dup(&dest->x);

-:371: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#371: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:48:
+#define DUP(T, x, ...) _param_dup(&dest->x);

-:382: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#382: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:59:
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_free_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:382: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#382: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:59:
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_free_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:384: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#384: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:61:
+		 char ** : _param_free_charp,		\
 		      ^

-:384: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#384: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:61:
+		 char ** : _param_free_charp,		\
 		       ^

-:385: WARNING:TABSTOP: Statements should start on a tabstop
#385: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:62:
+		 default : _param_nop)			\

-:385: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#385: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:62:
+		 default : _param_nop)			\

-:391: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#391: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:68:
+#define FREE(T, x, ...) _param_free(&params->x);

-:391: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#391: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:68:
+#define FREE(T, x, ...) _param_free(&params->x);

-:401: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_display_params.h', please use '/*' instead
#401: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:1:
+// SPDX-License-Identifier: MIT

-:401: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#401: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:1:
+// SPDX-License-Identifier: MIT

-:425: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#425: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:25:
+#define MEMBER(T, member, ...) T member;

-:425: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#425: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:25:
+#define MEMBER(T, member, ...) T member;

-:429: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#429: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:29:
+};
+#undef MEMBER

total: 8 errors, 9 warnings, 16 checks, 372 lines checked
eadc755ac674 drm/i915/display: Dump also display parameters into GPU error dump
-:60: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#60: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:65:
+#define _param_print(p, driver_name, name, val)			\
+	_Generic(val,						\
+		 bool : _param_print_bool,			\
+		 int : _param_print_int,			\
+		 unsigned int : _param_print_uint,		\
+		 unsigned long : _param_print_ulong,		\
+		 char * : _param_print_charp)(p, driver_name, name, val)

-:61: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#61: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:66:
+	_Generic(val,						\

-:77: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#77: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:82:
+#define PRINT(T, x, ...) _param_print(p, i915->drm.driver->name, #x, i915->display.params.x);

total: 0 errors, 1 warnings, 2 checks, 113 lines checked
3004b0e58402 drm/i915/display: Move enable_fbc module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:31:
+intel_display_param_named_unsafe(enable_fbc, int, 0400,
+	"Enable frame buffer compression for power savings "

total: 0 errors, 1 warnings, 1 checks, 73 lines checked
eba15aca4365 drm/i915/display: Move psr related module parameters under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:35:
+intel_display_param_named_unsafe(enable_psr, int, 0400,
+	"Enable PSR "

-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:40:
+intel_display_param_named(psr_safest_params, bool, 0400,
+	"Replace PSR VBT parameters by the safest and not optimal ones. This "

-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:45:
+intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
+	"Enable PSR2 selective fetch "

total: 0 errors, 1 warnings, 3 checks, 120 lines checked
7b05e602efed drm/i915/display: Move vbt_firmware module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:31:
+intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
+	"Load VBT from specified file under /lib/firmware");

total: 0 errors, 1 warnings, 1 checks, 40 lines checked
7352539ebab1 drm/i915/display: Move lvds_channel_mode module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:34:
+intel_display_param_named_unsafe(lvds_channel_mode, int, 0400,
+	 "Specify LVDS channel mode "

total: 0 errors, 1 warnings, 1 checks, 46 lines checked
bea5cce9a06d drm/i915/display: Move panel_use_ssc module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:38:
+intel_display_param_named_unsafe(panel_use_ssc, int, 0400,
+	"Use Spread Spectrum Clock with panels [LVDS/eDP] "

total: 0 errors, 1 warnings, 1 checks, 44 lines checked
0e2a6cbc4806 drm/i915/display: Move vbt_sdvo_panel_type module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:42:
+intel_display_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
+	"Override/Ignore selection of SDVO panel mode in the VBT "

total: 0 errors, 1 warnings, 1 checks, 42 lines checked
642ec0936cae drm/i915/display: Move enable_dc module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:46:
+intel_display_param_named_unsafe(enable_dc, int, 0400,
+	"Enable power-saving display C-states. "

total: 0 errors, 1 warnings, 1 checks, 44 lines checked
2f98ecfefbc6 drm/i915/display: Move enable_dpt module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:51:
+intel_display_param_named_unsafe(enable_dpt, bool, 0400,
+	"Enable display page table (DPT) (default: true)");

total: 0 errors, 1 warnings, 1 checks, 63 lines checked
f93ab31d4062 drm/i915/display: Move enable_sagv module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:54:
+intel_display_param_named_unsafe(enable_sagv, bool, 0600,
+	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");

total: 0 errors, 1 warnings, 1 checks, 49 lines checked
fd45b400858b drm/i915/display: Move disable_power_well module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:57:
+intel_display_param_named_unsafe(disable_power_well, int, 0400,
+	"Disable display power wells when possible "

total: 0 errors, 1 warnings, 1 checks, 77 lines checked
4446105a42ad drm/i915/display: Move enable_ips module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 46 lines checked
0b39c8387642 drm/i915/display: Move invert_brightness module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:53: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#53: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:63:
+intel_display_param_named_unsafe(invert_brightness, int, 0400,
+	"Invert backlight brightness "

total: 0 errors, 1 warnings, 1 checks, 65 lines checked
3724ca3759b9 drm/i915/display: Move edp_vswing module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:71:
+intel_display_param_named_unsafe(edp_vswing, int, 0400,
+	"Ignore/Override vswing pre-emph table selection from VBT "

total: 0 errors, 1 warnings, 1 checks, 49 lines checked
8f3e7d2a9d84 drm/i915/display: Move fastboot module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:76:
+intel_display_param_named(fastboot, int, 0400,
+	"Try to skip unnecessary mode sets at boot time "

total: 0 errors, 1 warnings, 1 checks, 46 lines checked
60f94dfe0b82 drm/i915/display: Move enable_dpcd_backlightmodule parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:81:
+intel_display_param_named(enable_dpcd_backlight, int, 0400,
+	"Enable support for DPCD backlight control"

total: 0 errors, 1 warnings, 1 checks, 50 lines checked
3aa435dd7933 drm/i915/display: Move load_detect_test parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:43: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#43: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:85:
+intel_display_param_named_unsafe(load_detect_test, bool, 0400,
+	"Force-enable the VGA load detect code for testing (default:false). "

total: 0 errors, 1 warnings, 1 checks, 50 lines checked
37102149903f drm/i915/display: Move force_reset_modeset_test parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:89:
+intel_display_param_named_unsafe(force_reset_modeset_test, bool, 0400,
+	"Force a modeset during gpu reset for testing (default:false). "

total: 0 errors, 1 warnings, 1 checks, 43 lines checked
0478ab0cbce6 drm/i915/display: Move disable_display parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:93:
+intel_display_param_named(disable_display, bool, 0400,
+	"Disable display (default: false)");

total: 0 errors, 1 warnings, 1 checks, 41 lines checked
5d5627069e4d drm/i915/display: Use device parameters instead of module in I915_STATE_WARN
-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/i915_params.c:97:
+i915_param_named(verbose_state_checks, bool, 0400,
 	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");

total: 0 errors, 0 warnings, 1 checks, 17 lines checked
9394a4e765db drm/i915/display: Move verbose_state_checks under display
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:96:
+intel_display_param_named(verbose_state_checks, bool, 0400,
+	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");

total: 0 errors, 1 warnings, 1 checks, 40 lines checked
45195f68a8d6 drm/i915/display: Move nuclear_pageflip under display
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:99:
+intel_display_param_named_unsafe(nuclear_pageflip, bool, 0400,
+	"Force enable atomic functionality on platforms that don't have full support yet.");

total: 0 errors, 1 warnings, 1 checks, 40 lines checked
12ab149e5352 drm/i915/display: Move enable_dp_mst under display
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:20: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#20: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:102:
+intel_display_param_named_unsafe(enable_dp_mst, bool, 0400,
+	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");

total: 0 errors, 1 warnings, 1 checks, 55 lines checked
084994f178ae drm/i915/display: Use same permissions for enable_sagv as for rest
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:54:
+intel_display_param_named_unsafe(enable_sagv, bool, 0400,
 	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");

total: 0 errors, 0 warnings, 1 checks, 8 lines checked


