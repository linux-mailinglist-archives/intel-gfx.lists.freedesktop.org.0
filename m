Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 972A6619F29
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 18:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3C210E97A;
	Fri,  4 Nov 2022 17:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9557F10E979;
 Fri,  4 Nov 2022 17:47:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E9D0AADD2;
 Fri,  4 Nov 2022 17:47:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Fri, 04 Nov 2022 17:47:09 -0000
Message-ID: <166758402958.23023.13519727709023008812@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221104172525.569913-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221104172525.569913-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_GT_oriented_dmesg_output?=
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

Series: Add GT oriented dmesg output
URL   : https://patchwork.freedesktop.org/series/110550/
State : warning

== Summary ==

Error: dim checkpatch failed
3c6bc62f46e5 drm/i915/gt: Add GT oriented dmesg output
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:16:
+#define GT_ERR(_gt, _fmt, ...) \
+	drm_err(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:19:
+#define GT_WARN(_gt, _fmt, ...) \
+	drm_warn(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:22:
+#define GT_NOTICE(_gt, _fmt, ...) \
+	drm_notice(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#31: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:25:
+#define GT_INFO(_gt, _fmt, ...) \
+	drm_info(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:28:
+#define GT_DBG(_gt, _fmt, ...) \
+	drm_dbg(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 5 checks, 21 lines checked
bfd7d8c0cc66 drm/i915/uc: Update the gt/uc code to use GT_ERR and friends


