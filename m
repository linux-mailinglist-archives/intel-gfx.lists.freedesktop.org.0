Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0339043FC9D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 14:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB566E10B;
	Fri, 29 Oct 2021 12:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F73D6E11A;
 Fri, 29 Oct 2021 12:49:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1798FA7525;
 Fri, 29 Oct 2021 12:49:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Oct 2021 12:49:04 -0000
Message-ID: <163551174406.1909.17109818365317710671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211029104026.3472621-1-matthew.auld@intel.com>
In-Reply-To: <20211029104026.3472621-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/8=5D_drm/i915=3A_Remove_gen6?=
 =?utf-8?q?=5Fppgtt=5Funpin=5Fall?=
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

Series: series starting with [v3,1/8] drm/i915: Remove gen6_ppgtt_unpin_all
URL   : https://patchwork.freedesktop.org/series/96421/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
65fcc4f52c2d drm/i915: Remove gen6_ppgtt_unpin_all
49a476ed0c79 drm/i915: Create a dummy object for gen6 ppgtt
f8bc06a91369 drm/i915: Create a full object for mock_ring, v2.
8faa0f27a2d9 drm/i915: vma is always backed by an object.
9d5e0459c949 drm/i915: Remove resv from i915_vma
9b52bf9d86f7 drm/i915: Rework context handling in hugepages selftests
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
  - Make hugepage_ctx static. Reported-by: kernel test robot <lkp@intel.com>

total: 0 errors, 1 warnings, 0 checks, 258 lines checked
9add17f0f272 drm/i915: Drain the ttm delayed workqueue too
e6f95abf3ac6 drm/i915: Require object lock when freeing pages during destruction


