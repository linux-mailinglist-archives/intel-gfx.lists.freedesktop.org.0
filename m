Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD254264597
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 13:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52056E914;
	Thu, 10 Sep 2020 11:59:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A2F6E914
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 11:59:11 +0000 (UTC)
IronPort-SDR: +JS1tCArWjzlmJop1kWjfUlGERUNhuJZc2kIv+v+wgXNTL0jAR76q8juhjVfuRVYNjW5TkUUMK
 NAwSBzhsyQaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="146219265"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="146219265"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 04:59:10 -0700
IronPort-SDR: QRWcKedXMXJnOS5/TV1nNIxbHR+kOzEY7ydwVoMglGbSAAmUcV0dH5g9y8WjhURaU62mzmUsek
 ueALyf047pKA==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449573069"
Received: from rstossel-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.254.148.251])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 04:59:09 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 12:58:58 +0100
Message-Id: <20200910115900.407686-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Fixes for incoming smarter IOMMU
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

There are incoming improvements to Intel IOMMU code to allow sg table
coalescing on map operations. We do not handle that well (we assume 1:1 between
backing store and DMA mapped entries) so this series is an attempt to improve
this area and get ready for those changes.

Tvrtko Ursulin (2):
  drm/i915: Fix DMA mapped scatterlist walks
  drm/i915: Fix DMA mapped scatterlist lookup

 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 20 +++++++++++++++++-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  | 17 ++++++++-------
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 21 ++++++++++++-------
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  6 +++---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 17 ++++++++-------
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  2 +-
 drivers/gpu/drm/i915/i915_scatterlist.h       | 17 +++++++++++----
 9 files changed, 73 insertions(+), 33 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
