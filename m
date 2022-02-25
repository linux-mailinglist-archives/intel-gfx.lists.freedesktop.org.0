Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9934C3F05
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 08:28:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553CB10E50F;
	Fri, 25 Feb 2022 07:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE12D10E510;
 Fri, 25 Feb 2022 07:28:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA8D2A9932;
 Fri, 25 Feb 2022 07:28:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Fri, 25 Feb 2022 07:28:22 -0000
Message-ID: <164577410292.6270.2088343646082263285@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225032436.904942-1-michael.cheng@intel.com>
In-Reply-To: <20220225032436.904942-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_drm=5Fclflush*_instead_of_clflush?=
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

Series: Use drm_clflush* instead of clflush
URL   : https://patchwork.freedesktop.org/series/100717/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
86596975e130 drm: Add arch arm64 for drm_clflush_virt_range
-:35: WARNING:LINE_SPACING: Missing a blank line after declarations
#35: FILE: drivers/gpu/drm/drm_cache.c:180:
+	void *end = addr + length;
+	caches_clean_inval_pou((unsigned long)addr, (unsigned long)end);

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
74d1a9bccc41 drm/i915/gt: Re-work intel_write_status_page
08cf76981869 drm/i915/gt: Drop invalidate_csb_entries
5568b6fef0f6 drm/i915/gt: Re-work reset_csb
78a5efb9813c drm/i915/: Re-work clflush_write32
43b085a28892 drm/i915/gt: replace cache_clflush_range


