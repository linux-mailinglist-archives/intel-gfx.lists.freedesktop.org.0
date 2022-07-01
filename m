Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABFD563715
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 17:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF00914ADD4;
	Fri,  1 Jul 2022 15:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7415A14ADC9;
 Fri,  1 Jul 2022 15:41:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B6B4A7E03;
 Fri,  1 Jul 2022 15:41:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 01 Jul 2022 15:41:15 -0000
Message-ID: <165669007501.30281.18336574196732488125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220701152231.529511-1-matthew.d.roper@intel.com>
In-Reply-To: <20220701152231.529511-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_Revert_=22topic/core-for-CI?=
 =?utf-8?q?=3A_Add_remaining_DG2_and_ATS-M_device_IDs=22?=
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

Series: series starting with [1/2] Revert "topic/core-for-CI: Add remaining DG2 and ATS-M device IDs"
URL   : https://patchwork.freedesktop.org/series/105870/
State : warning

== Summary ==

Error: dim checkpatch failed
4863bd4151f5 Revert "topic/core-for-CI: Add remaining DG2 and ATS-M device IDs"
576e6bc96bca drm/i915: DG2 and ATS-M device ID updates
-:96: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#96: FILE: include/drm/i915_pciids.h:733:
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)

-:96: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#96: FILE: include/drm/i915_pciids.h:733:
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 71 lines checked


