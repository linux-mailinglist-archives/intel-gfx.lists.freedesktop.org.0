Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C323E663626
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 01:21:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B250910E0DB;
	Tue, 10 Jan 2023 00:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB88F10E0DB;
 Tue, 10 Jan 2023 00:21:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4344AADDC;
 Tue, 10 Jan 2023 00:21:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 10 Jan 2023 00:21:09 -0000
Message-ID: <167331006970.5203.6572030955085951942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230109234824.1198769-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230109234824.1198769-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_module_oriented_dmesg_output_=28rev3=29?=
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

Series: Add module oriented dmesg output (rev3)
URL   : https://patchwork.freedesktop.org/series/111050/
State : warning

== Summary ==

Error: dim checkpatch failed
77fe0b8dbc3f drm/i915/gt: Start adding module oriented dmesg output
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:361: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#361: 
new file mode 100644

-:378: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#378: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:13:
+#define gt_err(_gt, _fmt, ...) \
+	drm_err(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:381: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#381: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:16:
+#define gt_warn(_gt, _fmt, ...) \
+	drm_warn(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:384: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#384: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:19:
+#define gt_notice(_gt, _fmt, ...) \
+	drm_notice(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:387: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#387: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:22:
+#define gt_info(_gt, _fmt, ...) \
+	drm_info(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:390: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#390: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:25:
+#define gt_dbg(_gt, _fmt, ...) \
+	drm_dbg(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:393: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#393: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:28:
+#define gt_err_ratelimited(_gt, _fmt, ...) \
+	drm_err_ratelimited(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:396: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#396: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:396: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_fmt' - possible side-effects?
#396: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:410: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#410: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:45:
+#define gt_WARN(_gt, _condition, _fmt, ...) \
+	drm_WARN(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:413: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#413: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:48:
+#define gt_WARN_ONCE(_gt, _condition, _fmt, ...) \
+	drm_WARN_ONCE(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

total: 0 errors, 1 warnings, 10 checks, 459 lines checked


