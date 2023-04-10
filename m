Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E83BE6DCBCA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 21:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C395E10E0C1;
	Mon, 10 Apr 2023 19:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B57E10E0C1;
 Mon, 10 Apr 2023 19:50:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E595AA917;
 Mon, 10 Apr 2023 19:50:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Mon, 10 Apr 2023 19:50:51 -0000
Message-ID: <168115625128.22959.5274553519313645183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230410192523.2020049-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230410192523.2020049-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_dumping_error_captures_via_kernel_logging?=
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

Series: Add support for dumping error captures via kernel logging
URL   : https://patchwork.freedesktop.org/series/116280/
State : warning

== Summary ==

Error: dim checkpatch failed
28aef43095be drm/i915: Dump error capture to kernel log
-:61: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#61: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2261:
+	if (!buf) {
+		drm_err(&i915->drm, "[Capture/%d.%d] Failed to allocate buffer for error capture!\n",

total: 0 errors, 1 warnings, 0 checks, 153 lines checked
fcba0a3c2b99 drm/i915/guc: Dump error capture to dmesg on CTB error
-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ct' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:29:
+#define CT_DEAD(ct, reason)	\
+	do { \
+		if (!(ct)->dead_ct_reported) { \
+			(ct)->dead_ct_reason |= 1 << CT_DEAD_##reason; \
+			queue_work(system_unbound_wq, &(ct)->dead_ct_worker); \
+		} \
+	} while (0)

total: 0 errors, 0 warnings, 1 checks, 121 lines checked


