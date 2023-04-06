Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEB06DA613
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Apr 2023 01:09:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B671710E0F7;
	Thu,  6 Apr 2023 23:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A68310E0F7;
 Thu,  6 Apr 2023 23:09:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C80AAADE4;
 Thu,  6 Apr 2023 23:09:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 06 Apr 2023 23:09:06 -0000
Message-ID: <168082254648.9550.1063564834711616254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230406222617.790484-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230406222617.790484-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Improvements_to_GuC_error_capture_list_processing?=
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

Series: Improvements to GuC error capture list processing
URL   : https://patchwork.freedesktop.org/series/116219/
State : warning

== Summary ==

Error: dim checkpatch failed
71d5e265121d drm/i915/guc: Don't capture Gen8 regs on Xe devices
-:35: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:38:
+#define GEN9_GLOBAL \
+	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
+	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }

total: 1 errors, 0 warnings, 0 checks, 23 lines checked
63e97480c431 drm/i915/guc: Capture list clean up - 1
0ff5accf4a26 drm/i915/guc: Capture list clean up - 2
2baa2c852173 drm/i915/guc: Capture list clean up - 3
096c1408d373 drm/i915/guc: Capture list clean up - 4
-:20: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#20: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:33:
+#define COMMON_GEN8BASE_GLOBAL \
 	{ ERROR_GEN6,               0,      0, "ERROR_GEN6" }, \
 	{ DONE_REG,                 0,      0, "DONE_REG" }, \
 	{ HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN" }

-:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#26: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:38:
+#define GEN8_GLOBAL \
 	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
 	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }

total: 2 errors, 0 warnings, 0 checks, 36 lines checked


