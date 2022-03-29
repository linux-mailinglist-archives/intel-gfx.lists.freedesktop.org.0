Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2CF4EA593
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 04:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3352010E144;
	Tue, 29 Mar 2022 02:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC0F110E133;
 Tue, 29 Mar 2022 02:54:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8F0BA77A5;
 Tue, 29 Mar 2022 02:54:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 29 Mar 2022 02:54:56 -0000
Message-ID: <164852249679.5797.15781583602724935365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220329000822.1323195-1-matthew.d.roper@intel.com>
In-Reply-To: <20220329000822.1323195-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/ats-m=3A_add_ATS-M_?=
 =?utf-8?q?platform_info?=
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

Series: series starting with [1/2] drm/i915/ats-m: add ATS-M platform info
URL   : https://patchwork.freedesktop.org/series/101907/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c04b9a2f4ad0 drm/i915/ats-m: add ATS-M platform info
aa5b9f1e5976 topic/core-for-CI: Add ATS-M PCI IDs
-:63: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#63: FILE: include/drm/i915_pciids.h:717:
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#63: FILE: include/drm/i915_pciids.h:717:
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 40 lines checked


