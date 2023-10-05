Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED107B9B0B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 08:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C1510E1BA;
	Thu,  5 Oct 2023 06:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5477910E1B3;
 Thu,  5 Oct 2023 06:17:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EF93AADD6;
 Thu,  5 Oct 2023 06:17:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Thu, 05 Oct 2023 06:17:43 -0000
Message-ID: <169648666329.7514.17443116874073085645@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231005054500.2053070-1-jouni.hogander@intel.com>
In-Reply-To: <20231005054500.2053070-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Framework_for_display_parameters?=
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

Series: Framework for display parameters
URL   : https://patchwork.freedesktop.org/series/124645/
State : warning

== Summary ==

Error: dim checkpatch failed
1f8018f8b9a9 drm/i915/display: Add framework to add parameters specific to display
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

-:166: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#166: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:83:
+static ssize_t intel_display_param_uint_write(struct file *file,
+				     const char __user *ubuf, size_t len,

-:219: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#219: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:136:
+static ssize_t intel_display_param_charp_write(struct file *file,
+				      const char __user *ubuf, size_t len,

-:261: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#261: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:178:
+intel_display_debugfs_create_int(const char *name, umode_t mode,
+			struct dentry *parent, int *value)

-:270: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#270: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:187:
+intel_display_debugfs_create_uint(const char *name, umode_t mode,
+			 struct dentry *parent, unsigned int *value)

-:279: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#279: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:196:
+intel_display_debugfs_create_charp(const char *name, umode_t mode,
+			  struct dentry *parent, char **value)

-:286: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mode' - possible side-effects?
#286: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:203:
+#define _intel_display_param_create_file(parent, name, mode, valp)	\
+	do {								\
+		if (mode)						\
+			_Generic(valp,					\
+				 bool * : debugfs_create_bool,		\
+				 int * : intel_display_debugfs_create_int, \
+				 unsigned int * : intel_display_debugfs_create_uint, \
+				 unsigned long * : debugfs_create_ulong, \
+				 char ** : intel_display_debugfs_create_charp) \
+				(name, mode, parent, valp);		\
+	} while (0)

-:286: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#286: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:203:
+#define _intel_display_param_create_file(parent, name, mode, valp)	\
+	do {								\
+		if (mode)						\
+			_Generic(valp,					\
+				 bool * : debugfs_create_bool,		\
+				 int * : intel_display_debugfs_create_int, \
+				 unsigned int * : intel_display_debugfs_create_uint, \
+				 unsigned long * : debugfs_create_ulong, \
+				 char ** : intel_display_debugfs_create_charp) \
+				(name, mode, parent, valp);		\
+	} while (0)

-:289: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#289: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:206:
+			_Generic(valp,					\

-:294: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#294: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:211:
+				 char ** : intel_display_debugfs_create_charp) \
 				      ^

-:294: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#294: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:211:
+				 char ** : intel_display_debugfs_create_charp) \
 				       ^

-:319: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#319: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:236:
+#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file(dir, #x, mode, &params->x);

-:319: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#319: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:236:
+#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file(dir, #x, mode, &params->x);

-:319: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#319: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs_params.c:236:
+#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file(dir, #x, mode, &params->x);

-:387: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#387: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:1:
+/*

-:418: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#418: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:32:
+#define intel_display_param_named(name, T, perm, desc) \
+	module_param_named(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)

-:421: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#421: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:35:
+#define intel_display_param_named_unsafe(name, T, perm, desc) \
+	module_param_named_unsafe(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)

-:430: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#430: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:44:
+};
+/*

-:448: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#448: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:62:
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:448: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#448: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:62:
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:450: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#450: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:64:
+		 char ** : _param_dup_charp,		\
 		      ^

-:450: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#450: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:64:
+		 char ** : _param_dup_charp,		\
 		       ^

-:451: WARNING:TABSTOP: Statements should start on a tabstop
#451: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:65:
+		 default : _param_nop)			\

-:451: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#451: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:65:
+		 default : _param_nop)			\

-:455: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#455: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:69:
+void intel_display_params_copy(struct intel_display_params *dest,
+		      const struct intel_display_params *src)

-:458: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#458: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:72:
+#define DUP(T, x, ...) _param_dup(&dest->x);

-:458: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#458: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:72:
+#define DUP(T, x, ...) _param_dup(&dest->x);

-:469: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#469: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:83:
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_free_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:469: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'valp' - possible side-effects?
#469: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:83:
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_free_charp,		\
+		 default : _param_nop)			\
+		(valp)

-:471: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#471: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:85:
+		 char ** : _param_free_charp,		\
 		      ^

-:471: ERROR:SPACING: space prohibited after that '*' (ctx:OxW)
#471: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:85:
+		 char ** : _param_free_charp,		\
 		       ^

-:472: WARNING:TABSTOP: Statements should start on a tabstop
#472: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:86:
+		 default : _param_nop)			\

-:472: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#472: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:86:
+		 default : _param_nop)			\

-:478: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#478: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:92:
+#define FREE(T, x, ...) _param_free(&params->x);

-:478: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#478: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:92:
+#define FREE(T, x, ...) _param_free(&params->x);

-:488: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#488: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:1:
+/*

-:533: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#533: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:46:
+#define MEMBER(T, member, ...) T member;

-:533: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#533: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:46:
+#define MEMBER(T, member, ...) T member;

-:537: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#537: FILE: drivers/gpu/drm/i915/display/intel_display_params.h:50:
+};
+#undef MEMBER

total: 8 errors, 10 warnings, 21 checks, 483 lines checked
fdaa5ba4f3f6 drm/i915/display: Dump also display parameters into GPU error dump
-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#55: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:83:
+#define _param_print(p, driver_name, name, val)			\
+	_Generic(val,						\
+		 bool : _param_print_bool,			\
+		 int : _param_print_int,			\
+		 unsigned int : _param_print_uint,		\
+		 unsigned long : _param_print_ulong,		\
+		 char * : _param_print_charp)(p, driver_name, name, val)

-:56: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#56: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:84:
+	_Generic(val,						\

-:72: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#72: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:100:
+#define PRINT(T, x, ...) _param_print(p, i915->drm.driver->name, #x, i915->display.params.x);

total: 0 errors, 1 warnings, 2 checks, 108 lines checked
a9656c6b8ef2 drm/i915/display: Move enable_fbc module parameter under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:54:
+intel_display_param_named_unsafe(enable_fbc, int, 0400,
+	"Enable frame buffer compression for power savings "

total: 0 errors, 1 warnings, 1 checks, 73 lines checked
fb71d057ede7 drm/i915/display: Move psr related module parameters under display
-:11: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:58:
+intel_display_param_named_unsafe(enable_psr, int, 0400,
+	"Enable PSR "

-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:63:
+intel_display_param_named(psr_safest_params, bool, 0400,
+	"Replace PSR VBT parameters by the safest and not optimal ones. This "

-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:68:
+intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
+	"Enable PSR2 selective fetch "

total: 0 errors, 1 warnings, 3 checks, 112 lines checked


