Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9024B15D5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 20:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6041B10E2E9;
	Thu, 10 Feb 2022 19:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B3FF10E2E9;
 Thu, 10 Feb 2022 19:07:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39936A7DFB;
 Thu, 10 Feb 2022 19:07:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Thu, 10 Feb 2022 19:07:00 -0000
Message-ID: <164452002021.24641.9366277947405822955@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220210183636.1187973-1-michael.cheng@intel.com>
In-Reply-To: <20220210183636.1187973-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_drm=5Fclflush*_instead_of_clflush_=28rev9=29?=
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

Series: Use drm_clflush* instead of clflush (rev9)
URL   : https://patchwork.freedesktop.org/series/99450/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ea63269ee004 drm: Add arch arm64 for drm_clflush_virt_range
-:40: WARNING:LINE_SPACING: Missing a blank line after declarations
#40: FILE: drivers/gpu/drm/drm_cache.c:181:
+	void *end = addr + length;
+	dcache_clean_inval_poc((unsigned long)addr, (unsigned long)end);

total: 0 errors, 1 warnings, 0 checks, 18 lines checked
e83ef112b20c drm/i915/gt: Re-work intel_write_status_page
3272afe74b53 drm/i915/gt: Drop invalidate_csb_entries
87e71bff36de drm/i915/gt: Re-work reset_csb
4037c1b12325 drm/i915/: Re-work clflush_write32
ea5ae2247f97 drm/i915/gt: replace cache_clflush_range


