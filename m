Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E5F6F1F3C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 22:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA7F10EDEC;
	Fri, 28 Apr 2023 20:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7CDDA10EDEC;
 Fri, 28 Apr 2023 20:22:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75258A41FB;
 Fri, 28 Apr 2023 20:22:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 28 Apr 2023 20:22:14 -0000
Message-ID: <168271333447.32438.16061881671540312696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230428185636.457407-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230428185636.457407-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Improvements_to_GuC_error_capture?=
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

Series: Improvements to GuC error capture
URL   : https://patchwork.freedesktop.org/series/117120/
State : warning

== Summary ==

Error: dim checkpatch failed
2a554128572f drm/i915/guc: Don't capture Gen8 regs on Xe devices
-:36: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#36: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:38:
+#define GEN9_GLOBAL \
+	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
+	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }

total: 1 errors, 0 warnings, 0 checks, 23 lines checked
1aec011e7466 drm/i915/guc: Consolidate duplicated capture list code
265a61afba27 drm/i915/guc: Capture list naming clean up
-:31: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#31: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:33:
+#define COMMON_GEN8BASE_GLOBAL \
 	{ ERROR_GEN6,               0,      0, "ERROR_GEN6" }, \
 	{ DONE_REG,                 0,      0, "DONE_REG" }, \
 	{ HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN" }

-:37: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#37: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:38:
+#define GEN8_GLOBAL \
 	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
 	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }

total: 2 errors, 0 warnings, 0 checks, 174 lines checked
0dddb3302a00 drm/i915/guc: Fix error capture for virtual engines


