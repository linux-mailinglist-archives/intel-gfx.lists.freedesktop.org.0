Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AB45003B3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 03:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA0510E242;
	Thu, 14 Apr 2022 01:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FEAE10E25C;
 Thu, 14 Apr 2022 01:40:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EB07A0118;
 Thu, 14 Apr 2022 01:40:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 14 Apr 2022 01:40:36 -0000
Message-ID: <164990043655.1347.10675660549099616206@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_compute_and_related_WAs_for_DG2?=
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

Series: Enable compute and related WAs for DG2
URL   : https://patchwork.freedesktop.org/series/102667/
State : warning

== Summary ==

Error: dim checkpatch failed
e449143c2530 drm/i915/guc: Update context registration to new GuC API
-:419: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#419: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2194:
+#if 0

total: 0 errors, 1 warnings, 0 checks, 492 lines checked
7d00a3489714 drm/i915/guc: Update scheduling policies to new GuC API
d476780adbbe drm/i915/guc: Update to GuC version 70.1.1
9be440cddd2c drm/i915/xehp: Add compute engine ABI
df16d39d09ae drm/i915: Xe_HP SDV and DG2 have 4 CCS engines
d22706dcd7f6 drm/i915: Add Wa_22011802037 force cs halt
69f8895e82df drm/i915/guc: Enable GuC based workarounds for DG2
-:241: WARNING:TYPO_SPELLING: 'Occassionally' may be misspelled - perhaps 'Occasionally'?
#241: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1613:
+	 * TODO: Occassionally trying to stop the cs times out, but does not
 	         ^^^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 193 lines checked
fdefd71ed98e drm/i915/guc: Apply Wa_16011777198
4690e3f7ff95 drm/i915/dg2: Enable Wa_14014475959 - RCS / CCS context exit
3f4b7f566f11 drm/i915/dg2: Enable Wa_22012727170/Wa_22012727685


