Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A62A5AC7EC
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 00:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED6710E0A1;
	Sun,  4 Sep 2022 22:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1FD110E0A1;
 Sun,  4 Sep 2022 22:04:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C382AA00A0;
 Sun,  4 Sep 2022 22:04:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Sun, 04 Sep 2022 22:04:44 -0000
Message-ID: <166232908476.28365.14841450734031681012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220904214134.408619-1-jim.cromie@gmail.com>
In-Reply-To: <20220904214134.408619-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DYNDBG=3A_opt-in_class=27d_debug_for_modules=2C_use_in_drm?=
 =?utf-8?b?LiAocmV2NCk=?=
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

Series: DYNDBG: opt-in class'd debug for modules, use in drm. (rev4)
URL   : https://patchwork.freedesktop.org/series/106427/
State : warning

== Summary ==

Error: dim checkpatch failed
d762077fcfcf dyndbg: fix static_branch manipulation
b01666fdf992 dyndbg: fix module.dyndbg handling
b7e22a7b5b85 dyndbg: show both old and new in change-info
87e7c43dd0e8 dyndbg: reverse module walk in cat control
299e5739e64a dyndbg: reverse module.callsite walk in cat control
31b9a67cc2d1 dyndbg: use ESCAPE_SPACE for cat control
0be24934c6e4 dyndbg: let query-modname override actual module name
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit added5fce61e ("ARM: mxs_defconfig: add CONFIG_USB_PHY")'
#10: 
The cited commit added an overriding module modname, taken from the

total: 1 errors, 0 warnings, 0 checks, 23 lines checked
d630c594cc59 dyndbg: add test_dynamic_debug module
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:29: WARNING:MAINTAINERS_STYLE: Misordered MAINTAINERS entry - list 'M:' before 'F:'
#29: FILE: MAINTAINERS:7215:
 F:	lib/dynamic_debug.c
+M:	Jim Cromie <jim.cromie@gmail.com>

-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

-:112: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#112: FILE: lib/test_dynamic_debug.c:40:
+}
+static void do_beta(void)

total: 0 errors, 2 warnings, 1 checks, 101 lines checked
5b907aefd0aa dyndbg: drop EXPORTed dynamic_debug_exec_queries
489cfb872562 dyndbg: cleanup auto vars in dynamic_debug_init
-:48: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#48: FILE: lib/dynamic_debug.c:1077:
+	iter = iter_mod_start = __start___dyndbg;

-:53: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#53: FILE: lib/dynamic_debug.c:1079:
+	i = mod_sites = mod_ct = 0;

-:56: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#56: FILE: lib/dynamic_debug.c:1082:
+	for (; iter < __stop___dyndbg; iter++, i++, mod_sites++) {
+

total: 0 errors, 0 warnings, 3 checks, 58 lines checked
80874827e83e dyndbg: gather __dyndbg[] state into struct _ddebug_info
-:148: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#148: FILE: kernel/module/main.c:2115:
+	info->dyndbg.descs = section_objs(info, "__dyndbg",
+					sizeof(*info->dyndbg.descs), &info->dyndbg.num_descs);

-:194: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#194: FILE: lib/dynamic_debug.c:939:
 	if (dt == NULL) {
+		pr_err("error adding module: %s\n", modname);

total: 0 errors, 1 warnings, 1 checks, 174 lines checked
a90a44a6f2e4 dyndbg: add class_id to pr_debug callsites
-:101: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#101: FILE: include/linux/dynamic_debug.h:154:
+#define __dynamic_func_call_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);	\
 	if (DYNAMIC_DEBUG_BRANCH(id))				\
+		func(&id, ##__VA_ARGS__);			\
 } while (0)

-:111: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#111: FILE: include/linux/dynamic_debug.h:163:
+#define __dynamic_func_call_cls_no_desc(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);		\
+	if (DYNAMIC_DEBUG_BRANCH(id))					\
+		func(__VA_ARGS__);					\
+} while (0)

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#146: FILE: include/linux/dynamic_debug.h:197:
+#define dynamic_pr_debug_cls(cls, fmt, ...)				\
+	_dynamic_func_call_cls(cls, fmt, __dynamic_pr_debug,		\
+			   pr_fmt(fmt), ##__VA_ARGS__)

-:157: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#157: FILE: include/linux/dynamic_debug.h:206:
+^I_dynamic_func_call(fmt, __dynamic_dev_dbg, ^I^I\$

total: 0 errors, 1 warnings, 3 checks, 121 lines checked
84d5108a264a dyndbg: add __pr_debug_cls for testing
6a8fca479ab9 dyndbg: add DECLARE_DYNDBG_CLASSMAP macro
-:181: ERROR:CODE_INDENT: code indent should use tabs where possible
#181: FILE: include/linux/dynamic_debug.h:112:
+        (sizeof((eltype[]){__VA_ARGS__}) / sizeof(eltype))$

-:181: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#181: FILE: include/linux/dynamic_debug.h:112:
+        (sizeof((eltype[]){__VA_ARGS__}) / sizeof(eltype))$

-:181: ERROR:SPACING: space required before the open brace '{'
#181: FILE: include/linux/dynamic_debug.h:112:
+        (sizeof((eltype[]){__VA_ARGS__}) / sizeof(eltype))

total: 2 errors, 1 warnings, 0 checks, 61 lines checked
7cef35995c29 kernel/module: add __dyndbg_classes section
-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: kernel/module/main.c:2117:
+	info->dyndbg.classes = section_objs(info, "__dyndbg_classes",
+					sizeof(*info->dyndbg.classes), &info->dyndbg.num_classes);

-:81: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#81: FILE: lib/dynamic_debug.c:44:
+extern struct ddebug_class_map __start___dyndbg_classes[];

-:82: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#82: FILE: lib/dynamic_debug.c:45:
+extern struct ddebug_class_map __stop___dyndbg_classes[];

total: 0 errors, 2 warnings, 1 checks, 52 lines checked
9e24dddd44c6 dyndbg: add ddebug_attach_module_classes
-:62: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#62: FILE: lib/dynamic_debug.c:932:
+	for (cm = classes, i = 0; i < num_classes; i++, cm++) {
+

-:64: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#64: FILE: lib/dynamic_debug.c:934:
+		if (!strcmp(cm->mod_name, dt->mod_name)) {
+

total: 0 errors, 0 warnings, 2 checks, 50 lines checked
33588f9178e1 dyndbg: validate class FOO by checking with module
-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: lib/dynamic_debug.c:150:
+static struct ddebug_class_map *ddebug_find_valid_class(struct ddebug_table const *dt,
+							  const char *class_string, int *class_id)

-:97: WARNING:LINE_SPACING: Missing a blank line after declarations
#97: FILE: lib/dynamic_debug.c:182:
+	struct ddebug_class_map *map = NULL;
+	int __outvar valid_class;

-:137: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'class_id' - possible side-effects?
#137: FILE: lib/dynamic_debug.c:893:
+#define class_in_range(class_id, map)					\
+	(class_id >= map->base && class_id < map->base + map->length)

-:137: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'class_id' may be better as '(class_id)' to avoid precedence issues
#137: FILE: lib/dynamic_debug.c:893:
+#define class_in_range(class_id, map)					\
+	(class_id >= map->base && class_id < map->base + map->length)

-:137: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map' - possible side-effects?
#137: FILE: lib/dynamic_debug.c:893:
+#define class_in_range(class_id, map)					\
+	(class_id >= map->base && class_id < map->base + map->length)

-:137: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'map' may be better as '(map)' to avoid precedence issues
#137: FILE: lib/dynamic_debug.c:893:
+#define class_in_range(class_id, map)					\
+	(class_id >= map->base && class_id < map->base + map->length)

total: 0 errors, 1 warnings, 5 checks, 129 lines checked
a74759fefd80 doc-dyndbg: describe "class CLASS_NAME" query support
8657440bde09 doc-dyndbg: edit dynamic-debug-howto for brevity, audience
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
   its *always* there (when dyndbg is config'd), even when <debugfs> is not.

total: 0 errors, 1 warnings, 0 checks, 324 lines checked
7dd609a18975 dyndbg: add drm.debug style (drm/parameters/debug) bitmap support
-:40: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#40: 
  DD_CLASS_TYPE_DISJOINT_BITS	integer input, independent bits. ie: drm.debug

-:216: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'kp' may be better as '(kp)' to avoid precedence issues
#216: FILE: lib/dynamic_debug.c:628:
+#define KP_NAME(kp)	kp->name

-:230: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#230: FILE: lib/dynamic_debug.c:642:
+	cl_str = tmp = kstrdup(instr, GFP_KERNEL);

-:236: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#236: FILE: lib/dynamic_debug.c:648:
+	curr_bits = old_bits = *dcp->bits;

-:275: ERROR:SPACING: space prohibited before that close parenthesis ')'
#275: FILE: lib/dynamic_debug.c:687:
+			curr_bits = CLASSMAP_BITMASK(cls_id + (wanted ? 1 : 0 ));

-:310: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#310: FILE: lib/dynamic_debug.c:722:
+	switch (map->map_type) {
+

-:318: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#318: FILE: lib/dynamic_debug.c:730:
+		/* numeric input, accept and fall-thru */

-:379: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#379: FILE: lib/dynamic_debug.c:791:
+	switch (map->map_type) {
+

total: 1 errors, 2 warnings, 5 checks, 257 lines checked
c5942ce3de5a dyndbg: test DECLARE_DYNDBG_CLASSMAP, sysfs nodes
-:139: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#139: FILE: lib/test_dynamic_debug.c:87:
+DECLARE_DYNDBG_CLASSMAP(map_level_num, DD_CLASS_TYPE_LEVEL_NUM, 14,
+		       "V0", "V1", "V2", "V3", "V4", "V5", "V6", "V7");

total: 0 errors, 0 warnings, 1 checks, 167 lines checked
60281f27897a drm_print: condense enum drm_debug_category
ae1a8031e466 drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.
eb7a9a09524d drm_print: interpose drm_*dbg with forwarding macros
-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: include/drm/drm_print.h:339:
+void __drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
 		 const char *format, ...);

total: 0 errors, 0 warnings, 1 checks, 59 lines checked
0a5759bca5bc drm_print: wrap drm_*_dbg in dyndbg descriptor factory macro
-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#69: FILE: include/drm/drm_print.h:391:
+#define drm_dev_dbg(dev, cat, fmt, ...)				\
+	_dynamic_func_call_no_desc(fmt, __drm_dev_dbg,			\
+				   dev, cat, fmt, ##__VA_ARGS__)

-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#83: FILE: include/drm/drm_print.h:504:
+#define __drm_dbg(cat, fmt, ...)					\
+	_dynamic_func_call_no_desc(fmt, ___drm_dbg,			\
+				   cat, fmt, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 2 checks, 53 lines checked
09930c0e547c drm-print.h: include dyndbg header
5913303d1269 drm-print: add drm_dbg_driver to improve namespace symmetry
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#29: FILE: include/drm/drm_print.h:471:
+#define drm_dbg_driver(drm, fmt, ...)						\
 	drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 1 checks, 15 lines checked
ecf97c237a3a drm_print: refine drm_debug_enabled for jump-label
ca644b3c68b7 drm_print: prefer bare printk KERN_DEBUG on generic fn
-:49: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#49: FILE: drivers/gpu/drm/drm_print.c:187:
+	printk(KERN_DEBUG "%s %pV", p->prefix, vaf);

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
bebf9e06ddcc drm_print: add _ddebug descriptor to drm_*dbg prototypes
8ee6f82a1cab nouveau: change nvkm_debug/trace to use dev_dbg POC
-:63: ERROR:SPACING: space required after that ',' (ctx:VxV)
#63: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:62:
+#define nvkm_debug(s,f,a...) nvkm_printk((s), DEBUG,    dbg, f, ##a)
                     ^

-:63: ERROR:SPACING: space required after that ',' (ctx:VxV)
#63: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:62:
+#define nvkm_debug(s,f,a...) nvkm_printk((s), DEBUG,    dbg, f, ##a)
                       ^

-:64: ERROR:SPACING: space required after that ',' (ctx:VxV)
#64: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:63:
+#define nvkm_trace(s,f,a...) nvkm_printk((s), TRACE,    dbg, f, ##a)
                     ^

-:64: ERROR:SPACING: space required after that ',' (ctx:VxV)
#64: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:63:
+#define nvkm_trace(s,f,a...) nvkm_printk((s), TRACE,    dbg, f, ##a)
                       ^

total: 4 errors, 0 warnings, 0 checks, 10 lines checked
a3d3d162e565 nouveau: adapt NV_DEBUG, NV_ATOMIC to use DRM.debug
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
:#> grep nouveau /proc/dynamic_debug/control | grep class | grep DRIVER | wc

-:43: ERROR:SPACING: space required after that ',' (ctx:VxV)
#43: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:267:
+#define NV_DRMDBG(cat,c,f,a...) do {				\
                      ^

-:43: ERROR:SPACING: space required after that ',' (ctx:VxV)
#43: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:267:
+#define NV_DRMDBG(cat,c,f,a...) do {				\
                        ^

-:43: ERROR:SPACING: space required after that ',' (ctx:VxV)
#43: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:267:
+#define NV_DRMDBG(cat,c,f,a...) do {				\
                          ^

-:51: ERROR:SPACING: space required after that ',' (ctx:VxV)
#51: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:272:
+#define NV_DEBUG(drm,f,a...) do {					\
                     ^

-:51: ERROR:SPACING: space required after that ',' (ctx:VxV)
#51: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:272:
+#define NV_DEBUG(drm,f,a...) do {					\
                       ^

-:51: WARNING:SINGLE_STATEMENT_DO_WHILE_MACRO: Single statement macros should not use a do {} while (0) loop
#51: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:272:
+#define NV_DEBUG(drm,f,a...) do {					\
+	NV_DRMDBG(driver, &(drm)->client, f, ##a);			\
+} while(0)

-:53: ERROR:SPACING: space required before the open parenthesis '('
#53: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:274:
+} while(0)

-:54: ERROR:SPACING: space required after that ',' (ctx:VxV)
#54: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:275:
+#define NV_ATOMIC(drm,f,a...) do {					\
                      ^

-:54: ERROR:SPACING: space required after that ',' (ctx:VxV)
#54: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:275:
+#define NV_ATOMIC(drm,f,a...) do {					\
                        ^

-:54: WARNING:SINGLE_STATEMENT_DO_WHILE_MACRO: Single statement macros should not use a do {} while (0) loop
#54: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:275:
+#define NV_ATOMIC(drm,f,a...) do {					\
+	NV_DRMDBG(atomic, &(drm)->client, f, ##a);			\
 } while(0)

total: 8 errors, 3 warnings, 0 checks, 29 lines checked
88387f82eece nouveau: WIP add 2 LEVEL_NUM classmaps for CLI, SUBDEV
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
                dev_dbg(_subdev->device->dev, "%s: "f, _subdev->name, ##a); \

-:26: WARNING:TYPO_SPELLING: 'minumum' may be misspelled - perhaps 'minimum'?
#26: 
that trace is minumum recommended, theres not that many callsites
              ^^^^^^^

-:29: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#29: 
doesnt do much when DRM_USE_DYNAMIC_DEBUG=y.
^^^^^^

-:122: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#122: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/debug.h:20:
+};
+enum nv_subdev_dbg_verbose {

-:160: ERROR:SPACING: space required after that ',' (ctx:VxV)
#160: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:64:
+#define nvkm_drmdbg__(s,l,p,f,a...) do {				\
                        ^

-:160: ERROR:SPACING: space required after that ',' (ctx:VxV)
#160: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:64:
+#define nvkm_drmdbg__(s,l,p,f,a...) do {				\
                          ^

-:160: ERROR:SPACING: space required after that ',' (ctx:VxV)
#160: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:64:
+#define nvkm_drmdbg__(s,l,p,f,a...) do {				\
                            ^

-:160: ERROR:SPACING: space required after that ',' (ctx:VxV)
#160: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:64:
+#define nvkm_drmdbg__(s,l,p,f,a...) do {				\
                              ^

-:160: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#160: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:64:
+#define nvkm_drmdbg__(s,l,p,f,a...) do {				\
+	const struct nvkm_subdev *_subdev = (s);			\
+	if (CONFIG_NOUVEAU_DEBUG >= (l) && _subdev->debug >= (l))	\
+		dev_dbg(_subdev->device->dev, "%s: "f, _subdev->name, ##a); \
+} while(0)

-:164: ERROR:SPACING: space required before the open parenthesis '('
#164: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:68:
+} while(0)

-:165: ERROR:SPACING: space required after that ',' (ctx:VxV)
#165: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:69:
+#define nvkm_drmdbg_(s,l,f,a...) nvkm_drmdbg__((s), NV_SUBDEV_DBG_##l, dbg, f, ##a)
                       ^

-:165: ERROR:SPACING: space required after that ',' (ctx:VxV)
#165: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:69:
+#define nvkm_drmdbg_(s,l,f,a...) nvkm_drmdbg__((s), NV_SUBDEV_DBG_##l, dbg, f, ##a)
                         ^

-:165: ERROR:SPACING: space required after that ',' (ctx:VxV)
#165: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:69:
+#define nvkm_drmdbg_(s,l,f,a...) nvkm_drmdbg__((s), NV_SUBDEV_DBG_##l, dbg, f, ##a)
                           ^

-:166: ERROR:SPACING: space required after that ',' (ctx:VxV)
#166: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:70:
+#define nvkm_debug(s,f,a...) nvkm_drmdbg_((s), DEBUG, f, ##a)
                     ^

-:166: ERROR:SPACING: space required after that ',' (ctx:VxV)
#166: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:70:
+#define nvkm_debug(s,f,a...) nvkm_drmdbg_((s), DEBUG, f, ##a)
                       ^

-:167: ERROR:SPACING: space required after that ',' (ctx:VxV)
#167: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:71:
+#define nvkm_trace(s,f,a...) nvkm_drmdbg_((s), TRACE, f, ##a)
                     ^

-:167: ERROR:SPACING: space required after that ',' (ctx:VxV)
#167: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:71:
+#define nvkm_trace(s,f,a...) nvkm_drmdbg_((s), TRACE, f, ##a)
                       ^

-:168: ERROR:SPACING: space required after that ',' (ctx:VxV)
#168: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:72:
+#define nvkm_spam(s,f,a...)  nvkm_drmdbg_((s),  SPAM, f, ##a)
                    ^

-:168: ERROR:SPACING: space required after that ',' (ctx:VxV)
#168: FILE: drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:72:
+#define nvkm_spam(s,f,a...)  nvkm_drmdbg_((s),  SPAM, f, ##a)
                      ^

-:218: CHECK:LINE_SPACING: Please don't use multiple blank lines
#218: FILE: drivers/gpu/drm/nouveau/nvkm/core/subdev.c:48:
+
+

-:228: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#228: FILE: drivers/gpu/drm/nouveau/nvkm/core/subdev.c:205:
+	pr_debug("updated bitmap: %px\n", &nv_subdev_verbose.bits);

total: 14 errors, 4 warnings, 3 checks, 103 lines checked
42c3b97d63de dyndbg: add _DPRINTK_FLAGS_ENABLED
9f603bf01acd dyndbg: add _DPRINTK_FLAGS_TRACE
0b84953b873f dyndbg: add write-events-to-tracefs code
-:28: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#28: 
  https://lore.kernel.org/lkml/20200825153338.17061-1-vincent.whitchurch@axis.com/

-:154: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#154: FILE: lib/dynamic_debug.c:933:
+{
+

-:245: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#245: FILE: lib/dynamic_debug.c:1026:
+		ddebug_dev_printk(flags, dev->dev.parent,
+				   "%s%s %s %s%s: %pV",

-:255: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#255: FILE: lib/dynamic_debug.c:1034:
+		ddebug_printk(flags, KERN_DEBUG "%s%s: %pV",
+			       netdev_name(dev), netdev_reg_state(dev), &vaf);

-:259: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#259: FILE: lib/dynamic_debug.c:1037:
+		ddebug_printk(flags, KERN_DEBUG "(NULL net_device): %pV",
+			       &vaf);

total: 0 errors, 1 warnings, 4 checks, 245 lines checked
f46ccd49a4a2 dyndbg: add 2 trace-events: drm_debug, drm_devdbg
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:49: WARNING:PREFER_DEV_LEVEL: Prefer dev_dbg(... to dev_printk(KERN_DEBUG, ...
#49: FILE: drivers/gpu/drm/drm_print.c:301:
+			dev_printk(KERN_DEBUG, dev, "[" DRM_NAME ":%ps] %pV",

-:55: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#55: FILE: drivers/gpu/drm/drm_print.c:307:
+			printk(KERN_DEBUG "[" DRM_NAME ":%ps] %pV",

-:73: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#73: 
new file mode 100644

-:93: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#93: FILE: include/trace/events/drm.h:16:
+	    TP_STRUCT__entry(

-:98: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#98: FILE: include/trace/events/drm.h:21:
+	    TP_fast_assign(

-:112: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#112: FILE: include/trace/events/drm.h:35:
+	    TP_STRUCT__entry(

-:118: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#118: FILE: include/trace/events/drm.h:41:
+	    TP_fast_assign(

total: 0 errors, 3 warnings, 4 checks, 97 lines checked
b8cff9bd48e2 dyndbg: add 2 more trace-events: pr_debug, dev_dbg
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:42: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#42: 
new file mode 100644

-:62: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#62: FILE: include/trace/events/dyndbg.h:16:
+	    TP_STRUCT__entry(

-:67: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#67: FILE: include/trace/events/dyndbg.h:21:
+	    TP_fast_assign(

-:74: WARNING:TABSTOP: Statements should start on a tabstop
#74: FILE: include/trace/events/dyndbg.h:28:
+		    if (len > 0 && (text[len - 1] == '\n'))

-:74: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (20, 28)
#74: FILE: include/trace/events/dyndbg.h:28:
+		    if (len > 0 && (text[len - 1] == '\n'))
+			    len -= 1;

-:92: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#92: FILE: include/trace/events/dyndbg.h:46:
+	    TP_STRUCT__entry(

-:98: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#98: FILE: include/trace/events/dyndbg.h:52:
+	    TP_fast_assign(

-:100: CHECK:SPACING: No space is necessary after a cast
#100: FILE: include/trace/events/dyndbg.h:54:
+		    __entry->dev = (struct device *) dev;

-:106: WARNING:TABSTOP: Statements should start on a tabstop
#106: FILE: include/trace/events/dyndbg.h:60:
+		    if (len > 0 && (text[len - 1] == '\n'))

-:106: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (20, 28)
#106: FILE: include/trace/events/dyndbg.h:60:
+		    if (len > 0 && (text[len - 1] == '\n'))
+			    len -= 1;

-:237: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#237: FILE: lib/dynamic_debug.c:996:
+		ddebug_printk(descriptor, KERN_DEBUG "(NULL device *): %pV",
+			       &vaf);

total: 0 errors, 5 warnings, 6 checks, 259 lines checked
d5c97ae69e91 dyndbg/drm: POC add tracebits sysfs-knob
a398f87237cb dyndbg: abstraction macros for modname, function, filename fields
-:127: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#127: FILE: lib/dynamic_debug.c:170:
+static inline struct _ddebug_site * _ddebug_map_site(const struct _ddebug *desc)

-:131: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#131: FILE: lib/dynamic_debug.c:174:
+}
+#define _desc_field(desc, _fld)	(desc ? (_ddebug_map_site(desc)->_fld) : "_na_")

-:131: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'desc' - possible side-effects?
#131: FILE: lib/dynamic_debug.c:174:
+#define _desc_field(desc, _fld)	(desc ? (_ddebug_map_site(desc)->_fld) : "_na_")

-:131: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_fld' may be better as '(_fld)' to avoid precedence issues
#131: FILE: lib/dynamic_debug.c:174:
+#define _desc_field(desc, _fld)	(desc ? (_ddebug_map_site(desc)->_fld) : "_na_")

total: 1 errors, 0 warnings, 3 checks, 140 lines checked
ac3d3d55bbaf dyndbg: split repeating columns to new struct _ddebug_site
-:233: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#233: FILE: kernel/module/main.c:2117:
+	info->dyndbg.sites = section_objs(info, "__dyndbg_sites",
+					sizeof(*info->dyndbg.sites), &info->dyndbg.num_sites);

-:245: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#245: FILE: lib/dynamic_debug.c:47:
+extern struct _ddebug_site __start___dyndbg_sites[];

-:246: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#246: FILE: lib/dynamic_debug.c:48:
+extern struct _ddebug_site __stop___dyndbg_sites[];

-:294: WARNING:TYPO_SPELLING: 'cant' may be misspelled - perhaps 'can't'?
#294: FILE: lib/dynamic_debug.c:1525:
+		/* cant happen, unless site section has __used, desc does not */
 		   ^^^^

-:300: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#300: FILE: lib/dynamic_debug.c:1530:
+	site = site_mod_start = __start___dyndbg_sites;

-:306: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#306: FILE: lib/dynamic_debug.c:1535:
+	for (; iter < __stop___dyndbg; iter++, site++, i++, mod_sites++) {
+

-:308: WARNING:TYPO_SPELLING: 'cant' may be misspelled - perhaps 'can't'?
#308: FILE: lib/dynamic_debug.c:1537:
+			/* XXX: also cant happen, but lets see how it plays */
 			             ^^^^

total: 0 errors, 4 warnings, 3 checks, 187 lines checked
061fbe378f21 dyndbg: shrink lineno field by 2 bits
37f0375ea3f7 dyndbg: add _index, _map to struct _ddebug
-:48: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#48: 
__dyndbg_sites : ALIGN(8) { *(.gnu.linkonce.dyndbg_site) *(__dyndbg_sites) }

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
70d746181797 dyndbg: extend __ddebug_add_module proto to allow packing sites
-:50: WARNING:LINE_SPACING: Missing a blank line after declarations
#50: FILE: lib/dynamic_debug.c:1395:
+	unsigned int packed_base = 0;
+	return __ddebug_add_module(di, 0, modname, di->sites, &packed_base);

total: 0 errors, 1 warnings, 0 checks, 49 lines checked
6ad19c796635 dyndbg: de-duplicate sites
-:38: CHECK:SPACING: No space is necessary after a cast
#38: FILE: lib/dynamic_debug.c:1381:
+			memcpy((void *) &packed_sites[++(*packed_base)],

-:39: CHECK:SPACING: No space is necessary after a cast
#39: FILE: lib/dynamic_debug.c:1382:
+			       (void *) di->descs[i].site, sizeof(struct _ddebug_site));

-:57: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#57: FILE: lib/dynamic_debug.c:1550:
+	i = mod_sites = mod_ct = site_base = 0;

total: 0 errors, 0 warnings, 3 checks, 39 lines checked
a1bb6ccd85eb dyndbg: drop site-> in add-module, more needed
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:16: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#16: FILE: lib/dynamic_debug.c:1350:
+	v3pr_info("add-module: %s %d/%d sites, start: %d\n", modname, di->num_descs, di->num_sites, base);

-:35: CHECK:SPACING: No space is necessary after a cast
#35: FILE: lib/dynamic_debug.c:1385:
+			       (void *) &di->sites[i], sizeof(struct _ddebug_site));

-:46: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 2 warnings, 1 checks, 34 lines checked
79a33a14ba12 dyndbg: demote iter->site in _init
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:19: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
68128b817dc7 dyndbg: add .gnu.linkonce slot in vmlinux.lds.h KEEPs
7b8818f4ac46 dyndbg: add structs _ddebug_hdr, _ddebug_site_hdr
-:50: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#50: FILE: include/linux/dynamic_debug.h:134:
+			struct _ddebug_info * _uplink;

-:55: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#55: FILE: include/linux/dynamic_debug.h:139:
+};
+/* here for symmetry, extra storage */

-:60: ERROR:POINTER_LOCATION: "foo  * bar" should be "foo  *bar"
#60: FILE: include/linux/dynamic_debug.h:144:
+			struct _ddebug_info  * _uplink;

-:79: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#79: FILE: lib/dynamic_debug.c:52:
+extern struct _ddebug_hdr __dyndbg_header[];

-:80: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#80: FILE: lib/dynamic_debug.c:53:
+extern struct _ddebug_site_hdr __dyndbg_site_header[];

-:99: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#99: FILE: lib/dynamic_debug.c:1554:
+	v2pr_info("%px %px \n", __dyndbg_header, __dyndbg_site_header);

-:100: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#100: FILE: lib/dynamic_debug.c:1555:
+	v2pr_info("%px %px \n", di.descs, di.sites);

-:100: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#100: FILE: lib/dynamic_debug.c:1555:
+	v2pr_info("%px %px \n", di.descs, di.sites);

total: 2 errors, 5 warnings, 1 checks, 57 lines checked
37c153850c08 dyndbg: count unique callsites
-:46: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#46: FILE: lib/dynamic_debug.c:1399:
+	vpr_info("%3u debug prints in %d functions, in module %s\n", di->num_descs, num_funcs, modname);

total: 0 errors, 1 warnings, 0 checks, 31 lines checked
68da156eb72e dyndbg: prevent build bugs via -DNO_DYNAMIC_DEBUG_TABLE
3c811f66017c dyndbg: add DEFINE_DYNAMIC_DEBUG_TABLE, use it tacitly RFC
-:26: WARNING:TYPO_SPELLING: 'cant' may be misspelled - perhaps 'can't'?
#26: 
some "linker cant compute" error.  Ive initialized it in
             ^^^^

-:57: CHECK:SPACING: No space is necessary after a cast
#57: FILE: include/linux/dynamic_debug.h:241:
+		._uplink = (void *) &_LINKONCE_dyndbg_header		\

-:62: CHECK:SPACING: No space is necessary after a cast
#62: FILE: include/linux/dynamic_debug.h:246:
+		._uplink = (void *) &_LINKONCE_dyndbg_site_header	\

-:73: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#73: FILE: include/linux/dynamic_debug.h:420:
+      (defined(CONFIG_DYNAMIC_DEBUG_CORE) && defined(DYNAMIC_DEBUG_MODULE))) \$

-:74: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#74: FILE: include/linux/dynamic_debug.h:421:
+      (defined(CONFIG_DYNAMIC_DEBUG_CORE) && defined(DYNAMIC_DEBUG_MODULE))) \
+     && defined(KBUILD_MODNAME) && !defined(NO_DYNAMIC_DEBUG_TABLE))

-:74: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#74: FILE: include/linux/dynamic_debug.h:421:
+     && defined(KBUILD_MODNAME) && !defined(NO_DYNAMIC_DEBUG_TABLE))$

total: 0 errors, 3 warnings, 3 checks, 44 lines checked
034ae8b5ad8a dyndbg: add/use is_dyndbg_header then set _uplink
-:55: CHECK:SPACING: No space is necessary after a cast
#55: FILE: lib/dynamic_debug.c:1356:
+	sp = (struct _ddebug_site_hdr *) ((struct _ddebug_hdr *)hdr)->_uplink;

-:70: CHECK:SPACING: No space is necessary after a cast
#70: FILE: lib/dynamic_debug.c:1376:
+		di->hdr = (struct _ddebug_hdr *) di->descs;

-:94: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#94: FILE: lib/dynamic_debug.c:1581:
+	v2pr_info("%px %px \n", di.hdr, __dyndbg_site_header);

-:105: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 2 checks, 72 lines checked
7a89b5d8acbd dyndbg: add .gnu.linkonce. & __dyndbg* sections in module.lds.h
-:49: CHECK:SPACING: spaces preferred around that '*' (ctx:WxV)
#49: FILE: include/asm-generic/module.lds.h:16:
+__dyndbg_sites	: ALIGN(8) { *(.gnu.linkonce.dyndbg_site) *(__dyndbg_sites) }
               	                                          ^

-:50: CHECK:SPACING: spaces preferred around that '*' (ctx:WxV)
#50: FILE: include/asm-generic/module.lds.h:17:
+__dyndbg	: ALIGN(8) { *(.gnu.linkonce.dyndbg)	  *(__dyndbg) }
         	                                    	  ^

total: 0 errors, 0 warnings, 2 checks, 18 lines checked
c7159cb3fced dyndbg: dynamic_debug_sites_reclaim() using free_reserved_page() WAG
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
 dyndbg: freeing range: ffffea00000c5500-ffffea00000c5700, ffffffff83154668-ffffffff8315c480

-:64: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#64: FILE: lib/dynamic_debug.c:1631:
+		 (int)((i * sizeof(struct _ddebug)) >> 10), (int)((site_base * sizeof(struct _ddebug_site)) >> 10));

-:84: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#84: FILE: lib/dynamic_debug.c:1669:
+	vpr_info("full    range: %px-%px, %lx-%lx\n",
+		 virt_to_page(start), virt_to_page(end), start, end);

-:87: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#87: FILE: lib/dynamic_debug.c:1672:
+	vpr_info("freeing range: %px-%px, %lx-%lx\n",
+		 virt_to_page(addr), virt_to_page(end), addr, end);

-:95: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#95: FILE: lib/dynamic_debug.c:1680:
+	vpr_info("ie      range: %px-%px, %lx-%lx\n",
+		 virt_to_page(addr), virt_to_page(end), addr, end);

-:103: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#103: FILE: lib/dynamic_debug.c:1688:
+		vpr_info("freeing page: %px, %lx\n", virt_to_page(addr), addr);

-:108: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#108: FILE: lib/dynamic_debug.c:1693:
+}
+//late_initcall(dynamic_debug_sites_reclaim);

total: 0 errors, 6 warnings, 1 checks, 62 lines checked
715826282575 dyndbg: work ddebug_map_site
-:31: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#31: FILE: lib/dynamic_debug.c:183:
+static struct _ddebug_site * _ddebug_map_site(const struct _ddebug *desc)

-:36: CHECK:SPACING: No space is necessary after a cast
#36: FILE: lib/dynamic_debug.c:188:
+	di = (struct _ddebug_info *) d0;

-:38: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#38: FILE: lib/dynamic_debug.c:190:
+	v3pr_info("map_site idx:%d map:%d %s.%s  di:%px site:%px ds:%px\n",
+		  desc->_index, desc->_map,
+		  desc->site->_modname, desc->site->_function,
+		  di, desc->site, &di->sites[desc->_map]);

-:54: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 1 warnings, 1 checks, 34 lines checked
1bfd90ef9797 dyndbg: fiddle with readback value on LEVEL_NAMES types


