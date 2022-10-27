Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528D160F399
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 11:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B347710E5AE;
	Thu, 27 Oct 2022 09:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44A2910E5B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 09:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666862568; x=1698398568;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TCO5xIp4XXi1aiXeVw8N0UaoHRAAMLbis/CH915jrZM=;
 b=WKTV2NnfaUNQE838e2XUfkLh2YbpQvJ+CqOmS7xZ8kwNKmKc6XsGIuU5
 kuee9opOUFwn+EGmq01crcJ5gywZwQ8+zi11lxvb/T3aXj7hnsUja3Fvj
 tcwtM5IOF5/HG9KrhX0m9OtLcg0yoxeEc+ufodnSO78dU7+AqUylFfOhV
 dYiKtDj2GxWDSScyDTZPEt939vFg9n8hZL9SjlpqAK2PVlIcQForAGD4o
 0RzgVS/ZgDB48COM/FRfTzXbhOgKmRP9YrTkWBuGqL+8mfXvOlIFP3bMv
 ljy6KZbj2qfMpYBrel+8iHjC2qVNPtoWCEIJG15S+jI3ruNm7Af7rwq/A w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394491127"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="394491127"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 02:22:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721596529"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="721596529"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 02:22:46 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Oct 2022 14:52:40 +0530
Message-Id: <20221027092242.1476080-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] drm/i915/dgfx: Grab wakeref at
 i915_ttm_unmap_virtual
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
Cc: matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v3 series rev fixes the nit review comment.

Anshuman Gupta (2):
  drm/i915: Encapsulate lmem rpm stuff in intel_runtime_pm
  drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual

 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 21 +++++-------
 drivers/gpu/drm/i915/gem/i915_gem_pm.c   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c  | 42 ++++++++++++++++--------
 drivers/gpu/drm/i915/gt/intel_gt.c       |  3 --
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 17 ----------
 drivers/gpu/drm/i915/i915_gem.c          |  4 +--
 drivers/gpu/drm/i915/intel_runtime_pm.c  |  5 +++
 drivers/gpu/drm/i915/intel_runtime_pm.h  | 22 +++++++++++++
 8 files changed, 65 insertions(+), 51 deletions(-)

-- 
2.38.0

