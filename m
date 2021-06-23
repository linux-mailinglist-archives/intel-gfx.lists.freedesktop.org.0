Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD9C3B1E26
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 17:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CDF6E944;
	Wed, 23 Jun 2021 15:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0A956E8A8;
 Wed, 23 Jun 2021 15:55:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8578A47E1;
 Wed, 23 Jun 2021 15:55:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 23 Jun 2021 15:55:31 -0000
Message-ID: <162446373166.30472.17398052227693481671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210623141615.291391-1-matthew.auld@intel.com>
In-Reply-To: <20210623141615.291391-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_support_for?=
 =?utf-8?q?cing_the_page_size_with_lmem?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,1/2] drm/i915: support forcing the page size with lmem
URL   : https://patchwork.freedesktop.org/series/91820/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
870ae7fc4949 drm/i915: support forcing the page size with lmem
-:323: WARNING:TYPO_SPELLING: 'overriden' may be misspelled - perhaps 'overridden'?
#323: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:142:
+ * this must be at least as large as @chunk_size, and can be overriden by
                                                              ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 379 lines checked
76e7f8a71458 drm/i915/gtt: ignore min_page_size for paging structures


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
