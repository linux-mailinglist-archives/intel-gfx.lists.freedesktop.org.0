Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4616562EBDE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 03:24:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F8710E6E4;
	Fri, 18 Nov 2022 02:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E1F710E6E3;
 Fri, 18 Nov 2022 02:24:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46955A00E6;
 Fri, 18 Nov 2022 02:24:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 18 Nov 2022 02:24:05 -0000
Message-ID: <166873824524.25641.18091516461323662276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221118015858.2548106-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221118015858.2548106-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_module_oriented_dmesg_output?=
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

Series: Add module oriented dmesg output
URL   : https://patchwork.freedesktop.org/series/111050/
State : warning

== Summary ==

Error: dim checkpatch failed
910945e13c6a drm/i915/gt: Start adding module oriented dmesg output
-:229: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#229: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:16:
+#define gt_err(_gt, _fmt, ...) \
+	drm_err(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:232: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#232: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:19:
+#define gt_warn(_gt, _fmt, ...) \
+	drm_warn(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:235: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#235: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:22:
+#define gt_notice(_gt, _fmt, ...) \
+	drm_notice(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:238: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#238: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:25:
+#define gt_info(_gt, _fmt, ...) \
+	drm_info(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:241: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#241: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:28:
+#define gt_dbg(_gt, _fmt, ...) \
+	drm_dbg(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_fmt' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:31:
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:45:
+#define gt_WARN(_gt, _condition, _fmt, ...) \
+	drm_WARN(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:261: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#261: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:48:
+#define gt_WARN_ONCE(_gt, _condition, _fmt, ...) \
+	drm_WARN_ONCE(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 9 checks, 227 lines checked
0824d2802a9d drm/i915/huc: Add HuC specific debug print wrappers
-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_huc' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.h:34:
+#define huc_probe_error(_huc, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			huc_dbg(_huc, _fmt, ##__VA_ARGS__); \
+		else \
+			huc_err(_huc, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_fmt' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.h:34:
+#define huc_probe_error(_huc, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			huc_dbg(_huc, _fmt, ##__VA_ARGS__); \
+		else \
+			huc_err(_huc, _fmt, ##__VA_ARGS__); \
+	} while (0)

total: 0 errors, 0 warnings, 2 checks, 129 lines checked
d0ae6abfafaa drm/i915/guc: Add GuC specific debug print wrappers
-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_guc' - possible side-effects?
#149: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:42:
+#define guc_probe_error(_guc, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			guc_dbg(_guc, _fmt, ##__VA_ARGS__); \
+		else \
+			guc_err(_guc, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_fmt' - possible side-effects?
#149: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:42:
+#define guc_probe_error(_guc, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			guc_dbg(_guc, _fmt, ##__VA_ARGS__); \
+		else \
+			guc_err(_guc, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:290: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#290: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:621:
 	if (!caplist) {
+		guc_dbg(guc, "capture: Failed to alloc cached caplist\n");

-:307: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#307: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:662:
 	if (!null_header) {
+		guc_dbg(guc, "capture: Failed to alloc cached null list\n");

-:1097: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#1097: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:156:
 	if (!ce) {
+		guc_err(guc, "Context array allocation failed\n");

total: 0 errors, 3 warnings, 2 checks, 1171 lines checked
1bf39890e43c drm/i915/guc: Add GuC CT specific debug print wrappers
-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ct' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:48:
+#define ct_probe_error(_ct, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			ct_dbg(_ct, _fmt, ##__VA_ARGS__); \
+		else \
+			ct_err(_ct, _fmt, ##__VA_ARGS__); \
+	} while (0)

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_fmt' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:48:
+#define ct_probe_error(_ct, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			ct_dbg(_ct, _fmt, ##__VA_ARGS__); \
+		else \
+			ct_err(_ct, _fmt, ##__VA_ARGS__); \
+	} while (0)

total: 0 errors, 0 warnings, 2 checks, 468 lines checked
8693a06e71a3 drm/i915/uc: Update the gt/uc code to use gt_err and friends


