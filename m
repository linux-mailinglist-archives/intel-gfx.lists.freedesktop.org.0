Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA39597289
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 17:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77B48FA45;
	Wed, 17 Aug 2022 15:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B71709755A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 15:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660749008; x=1692285008;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UtNxsL6D+yZu4oxicOWUe8CvsL9Q6iGiOkWkVygYnzI=;
 b=nwAx8Qy7u9qTNmA3y8XJcgbNxOrbh06/MTm83+f1PJrWYY5TdBVYVTSt
 A1UiL2h5Nm4Nb1xC3MWvsRlOAcXdOKETBzosXuOJ/UQMlaZYZqX/VFWyf
 ZrOYNbt1dy0c9TtUgVkBgD10pDw2CHnsGHUeF9Wn/xP6uwKvcD9zy4RBE
 owVten2le9Pdd+cp/6PRmGQTLvA7p/2T6YOWIH9Y7hARGkOJ+iucQr317
 SabZqsDUdhX3bHfhKubsS5Foc59U+y/CfIXxFdM/zP5ok99TCk3J+JeSN
 cnGH6IaUo0762cxWjpwYC7CLX3fSTzvnMuHIqS0B2JaCLoktshOtVrTQw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="275567449"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="275567449"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 08:09:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="935398563"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 08:09:49 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 20:39:39 +0530
Message-Id: <20220817150941.25447-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] DGFX mmap with rpm
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
Cc: chris@chris-wilson.co.uk, matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per PCIe Spec Section 5.3.1.4.1
When pcie function is in d3hot state, 
Configuration and Message requests are the only TLPs accepted by a 
Function in the D3hot state. All other received Requests must be 
handled as Unsupported Requests, and all received Completions
may optionally be handled as Unexpected Completions.

Therefore when gfx endpoint function is in d3 state, all pcie iomem
transaction requires to transition the pcie function in D0 state.
  
RFC proposal to get community feedback to handle the lmem
mmap memory mappings with runtime suspend.

Anshuman Gupta (2):
  drm/i915/dgfx: Release mmap on rpm suspend
  drm/i915/dgfx: Runtime resume the dgpu on user fault

 drivers/gpu/drm/i915/gem/i915_gem_ttm.c  | 29 +++++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  2 ++
 drivers/gpu/drm/i915/i915_gem.c          |  6 +++++
 4 files changed, 32 insertions(+), 6 deletions(-)

-- 
2.26.2

