Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3716E6C7E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 20:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0312310E851;
	Tue, 18 Apr 2023 18:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D4C410E849;
 Tue, 18 Apr 2023 18:58:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44BB4AADE7;
 Tue, 18 Apr 2023 18:58:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 18 Apr 2023 18:58:03 -0000
Message-ID: <168184428324.17886.2916285496844125962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230418181744.3251240-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230418181744.3251240-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_dumping_error_captures_via_kernel_logging_?=
 =?utf-8?b?KHJldjIp?=
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

Series: Add support for dumping error captures via kernel logging (rev2)
URL   : https://patchwork.freedesktop.org/series/116280/
State : warning

== Summary ==

Error: dim checkpatch failed
0fdd3a06a2b6 drm/i915: Dump error capture to kernel log
-:64: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#64: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2262:
+	if (!buf) {
+		drm_err(&i915->drm, "[Capture/%d.%d] Failed to allocate buffer for error capture!\n",

total: 0 errors, 1 warnings, 0 checks, 151 lines checked
adfdeee9f311 drm/i915/guc: Dump error capture to dmesg on CTB error
-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ct' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:29:
+#define CT_DEAD(ct, reason)	\
+	do { \
+		if (!(ct)->dead_ct_reported) { \
+			(ct)->dead_ct_reason |= 1 << CT_DEAD_##reason; \
+			queue_work(system_unbound_wq, &(ct)->dead_ct_worker); \
+		} \
+	} while (0)

total: 0 errors, 0 warnings, 1 checks, 121 lines checked


