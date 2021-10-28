Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 473FE43E584
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 17:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A606E05A;
	Thu, 28 Oct 2021 15:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C0156E05A;
 Thu, 28 Oct 2021 15:54:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 047B9AA01E;
 Thu, 28 Oct 2021 15:54:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Oct 2021 15:54:28 -0000
Message-ID: <163543646801.4340.6523329152294519945@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211028125855.3281674-1-matthew.auld@intel.com>
In-Reply-To: <20211028125855.3281674-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/11=5D_drm/i915=3A_Remove_unused_?=
 =?utf-8?q?bits_of_i915=5Fvma/active_api?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/11] drm/i915: Remove unused bits of i915_vma/active api
URL   : https://patchwork.freedesktop.org/series/96388/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
519f1b79715b drm/i915: Remove unused bits of i915_vma/active api
859ebdaed34f drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling, v2.
2cc880ac8715 drm/i915: Remove gen6_ppgtt_unpin_all
f628515bdd18 drm/i915: Create a dummy object for gen6 ppgtt
-:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#183: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:375:
+static void pd_dummy_obj_put_pages(struct drm_i915_gem_object *obj,
+				     struct sg_table *pages)

total: 0 errors, 0 warnings, 1 checks, 257 lines checked
235d744f7802 drm/i915: Create a full object for mock_ring, v2.
8f45390b0673 drm/i915: vma is always backed by an object.
e5995e0bc118 drm/i915/pm: Move CONTEXT_VALID_BIT check
b0ecd3b6fd29 drm/i915: Remove resv from i915_vma
b456d8359429 drm/i915: Rework context handling in hugepages selftests
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
  - Make hugepage_ctx static. Reported-by: kernel test robot <lkp@intel.com>

total: 0 errors, 1 warnings, 0 checks, 258 lines checked
3efce6d7a223 drm/i915: Drain the ttm delayed workqueue too
78ee5be15b08 drm/i915: Require object lock when freeing pages during destruction


