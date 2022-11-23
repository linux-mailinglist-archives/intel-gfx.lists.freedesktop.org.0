Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9B8636CBE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:06:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA1E10E653;
	Wed, 23 Nov 2022 22:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F12910E246;
 Wed, 23 Nov 2022 22:05:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67E28A00E8;
 Wed, 23 Nov 2022 22:05:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 23 Nov 2022 22:05:55 -0000
Message-ID: <166924115539.15573.18070334487039824172@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221123195123.1525100-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221123195123.1525100-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_module_oriented_dmesg_output_=28rev2=29?=
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

Series: Add module oriented dmesg output (rev2)
URL   : https://patchwork.freedesktop.org/series/111050/
State : warning

== Summary ==

Error: dim checkpatch failed
60fd35ea849f drm/i915/gt: Start adding module oriented dmesg output
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:225: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#225: 
new file mode 100644

-:242: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#242: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:13:
+#define gt_err(_gt, _fmt, ...) \
+	drm_err(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:245: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#245: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:16:
+#define gt_warn(_gt, _fmt, ...) \
+	drm_warn(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:248: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#248: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:19:
+#define gt_notice(_gt, _fmt, ...) \
+	drm_notice(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:251: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#251: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:22:
+#define gt_info(_gt, _fmt, ...) \
+	drm_info(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:254: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#254: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:25:
+#define gt_dbg(_gt, _fmt, ...) \
+	drm_dbg(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:257: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#257: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:28:
+#define gt_err_ratelimited(_gt, _fmt, ...) \
+	drm_err_ratelimited(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:260: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#260: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:260: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_fmt' - possible side-effects?
#260: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:274: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#274: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:45:
+#define gt_WARN(_gt, _condition, _fmt, ...) \
+	drm_WARN(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:277: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#277: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:48:
+#define gt_WARN_ONCE(_gt, _condition, _fmt, ...) \
+	drm_WARN_ONCE(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

total: 0 errors, 1 warnings, 10 checks, 237 lines checked
ea27dc23d9fd drm/i915/huc: Add HuC specific debug print wrappers
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:135: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#135: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 137 lines checked
2dc865e6be6d drm/i915/guc: Add GuC specific debug print wrappers
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:271: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#271: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:622:
 	if (!caplist) {
+		guc_dbg(guc, "capture: Failed to alloc cached caplist\n");

-:288: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#288: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:663:
 	if (!null_header) {
+		guc_dbg(guc, "capture: Failed to alloc cached null list\n");

-:635: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#635: 
new file mode 100644

-:1169: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#1169: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:156:
 	if (!ce) {
+		guc_err(guc, "Context array allocation failed\n");

total: 0 errors, 4 warnings, 0 checks, 1232 lines checked
85aa5097ac2d drm/i915/guc: Add GuC CT specific debug print wrappers
f41189cd9f80 drm/i915/uc: Update the gt/uc code to use gt_err and friends


