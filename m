Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB3D666521
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 21:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0C110E81D;
	Wed, 11 Jan 2023 20:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DC9110E81D;
 Wed, 11 Jan 2023 20:55:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71B8AAA917;
 Wed, 11 Jan 2023 20:55:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 11 Jan 2023 20:55:59 -0000
Message-ID: <167347055943.20081.2438736104729816366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230111200429.2139084-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230111200429.2139084-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_module_oriented_dmesg_output_=28rev4=29?=
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

Series: Add module oriented dmesg output (rev4)
URL   : https://patchwork.freedesktop.org/series/111050/
State : warning

== Summary ==

Error: dim checkpatch failed
78c5a1428bb1 drm/i915/gt: Start adding module oriented dmesg output
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:363: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#363: 
new file mode 100644

-:380: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#380: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:13:
+#define gt_err(_gt, _fmt, ...) \
+	drm_err(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:383: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#383: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:16:
+#define gt_warn(_gt, _fmt, ...) \
+	drm_warn(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:386: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#386: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:19:
+#define gt_notice(_gt, _fmt, ...) \
+	drm_notice(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#389: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:22:
+#define gt_info(_gt, _fmt, ...) \
+	drm_info(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:392: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#392: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:25:
+#define gt_dbg(_gt, _fmt, ...) \
+	drm_dbg(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:395: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#395: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:28:
+#define gt_err_ratelimited(_gt, _fmt, ...) \
+	drm_err_ratelimited(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:398: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#398: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:398: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_fmt' - possible side-effects?
#398: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:406: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#406: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:39:
+#define gt_WARN(_gt, _condition, _fmt, ...) \
+	drm_WARN(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:409: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#409: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:42:
+#define gt_WARN_ONCE(_gt, _condition, _fmt, ...) \
+	drm_WARN_ONCE(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

total: 0 errors, 1 warnings, 10 checks, 459 lines checked


