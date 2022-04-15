Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949575031F0
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 01:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98D910E51F;
	Fri, 15 Apr 2022 23:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F69210E4F2;
 Fri, 15 Apr 2022 23:55:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 812F8AADD7;
 Fri, 15 Apr 2022 23:55:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 15 Apr 2022 23:55:57 -0000
Message-ID: <165006695751.6516.17879133833299599605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_WAs_related_to_DG2?=
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

Series: Enable WAs related to DG2
URL   : https://patchwork.freedesktop.org/series/102745/
State : warning

== Summary ==

Error: dim checkpatch failed
a2294a0f7061 drm/i915: Add Wa_22011802037 force cs halt
aa0a5cf41d1b drm/i915/guc: Enable Wa_22011802037 for gen12 GuC based platforms
-:211: WARNING:TYPO_SPELLING: 'Occassionally' may be misspelled - perhaps 'Occasionally'?
#211: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1613:
+	 * TODO: Occassionally trying to stop the cs times out, but does not
 	         ^^^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 177 lines checked
3ce8deac12b9 drm/i915/guc: Enable GuC based workarounds for DG2
d186afb68580 drm/i915/guc: Apply Wa_16011777198
bd3b93449d59 drm/i915/dg2: Enable Wa_14014475959 - RCS / CCS context exit
0ff3947e3b70 drm/i915/dg2: Enable Wa_22012727170/Wa_22012727685


