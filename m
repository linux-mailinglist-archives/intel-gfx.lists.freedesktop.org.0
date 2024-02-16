Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2D4857D72
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 14:14:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D1A10E8D4;
	Fri, 16 Feb 2024 13:14:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MuCwUb/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA4310E8D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 13:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708089296; x=1739625296;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=za6dwamLYFvS+h15elZ3UIcxd7EpsGHZCih5L0xsXSk=;
 b=MuCwUb/+ChgaRuJB7tmce8R/OabEoikeZK9MdMgfxbmSuYdP9EvpIApf
 S2aJILIlrNlwFqB90pCfAXq8HAZA/uUKjZmeu3ny5kiQHZJCBUio0nySj
 mgGR1pNPCCleauB1BKJ6J0HD6RyXKUjV75YcliAQ44GK5tvB8mQ4IqgkM
 Q4ehoWdiuecwERAXIhN/30DnO3iLtu+eypjNYHhoH8oBRBojqBpH/KEye
 qlQ5ZibLaOKPEb0jgIPtwxl6I7dyhWjPGLEshvQTl2iHeUZjFV/BrCr4j
 xwqgwVWJnABjYC9UThrh3EMYVSPjnKSve1oFz3rE6odDD1/0bBm1oupU7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="5993487"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="5993487"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 05:14:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="8438703"
Received: from lapeders-mobl1.ger.corp.intel.com (HELO fedora..)
 ([10.249.254.121])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 05:14:55 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] TTM unlockable restartable LRU list iteration
Date: Fri, 16 Feb 2024 14:14:42 +0100
Message-ID: <20240216131446.101961-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch-set is a prerequisite for a standalone TTM shrinker
and for exhaustive TTM eviction using sleeping dma_resv locks,
which is the motivation it.

Currently when unlocking the TTM lru list lock, iteration needs
to be restarted from the beginning, rather from the next LRU list
node. This can potentially be a big problem, because if eviction
or shrinking fails for whatever reason after unlock, restarting
is likely to cause the same failure over and over again.

There are various schemes to be able to continue the list
iteration from where we left off. One such scheme used by the
GEM LRU list traversal is to pull items already considered off
the LRU list and reinsert them when iteration is done.
This has the drawback that concurrent list iteration doesn't see
the complete list (which is bad for exhaustive eviction) and also
doesn't lend itself well to bulk-move sublists since these will
be split in the process where items from those lists are
temporarily pulled from the list and moved to the list tail.

The approach taken here is that list iterators insert themselves
into the list next position using a special list node. Iteration
is then using that list node as starting point when restarting.
Concurrent iterators just skip over the special list nodes.

This is implemented in patch 1 and 2.

For bulk move sublist the approach is the same, but when a bulk
move sublist is moved to the tail, the iterator is also moved,
causing us to skip parts of the list. That is undesirable.
Patch 3 deals with that, and when iterator detects it is
traversing a sublist, it inserts a second restarting point just
after the sublist and if the sublist is moved to the tail,
it just uses the second restarting point instead.

This is implemented in patch 3.

The restartable property is used in patch 4 to restart swapout if
needed, but the main purpose is this paves the way for
shrinker- and exhaustive eviction.

Cc: Christian König <christian.koenig@amd.com>
Cc: <dri-devel@lists.freedesktop.org>

Thomas Hellström (4):
  drm/ttm: Allow TTM LRU list nodes of different types
  drm/ttm: Use LRU hitches
  drm/ttm: Consider hitch moves within bulk sublist moves
  drm/ttm: Allow continued swapout after -ENOSPC falure

 drivers/gpu/drm/ttm/ttm_bo.c       |   1 +
 drivers/gpu/drm/ttm/ttm_device.c   |  33 +++--
 drivers/gpu/drm/ttm/ttm_resource.c | 202 +++++++++++++++++++++++------
 include/drm/ttm/ttm_resource.h     |  91 +++++++++++--
 4 files changed, 267 insertions(+), 60 deletions(-)

-- 
2.43.0

