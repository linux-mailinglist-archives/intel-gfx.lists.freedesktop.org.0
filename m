Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F674A05FCF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 16:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A28710E8E3;
	Wed,  8 Jan 2025 15:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KgNJe+Qi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF5710E8E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 15:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736349507; x=1767885507;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1DUkkenpuA5nQNK5W8L7C1CzGgHtzyvb1t3VvHrndSI=;
 b=KgNJe+QiLxKUiqFvPWPQJV1V3FiLnPS9/RVQHda9FfmyzjLb5tMngf+b
 RIseZk+BPbWAWLLo+Bn3JZFquBP1fkEeLZk/Mr7w18UvylVN497X6Icm4
 qQoZ9/3E5XM9cr47VlxMoZ66T8qEEryVNur/rPrbfAy6d6U2nJYrSw0+H
 BDMbf1tzTZpHy7fD8fXKWYyOrqcJm6SjDTPTKvEf7/0PSSKdLh135fRNj
 3/x5D+AFb4iW+/g2IGbCQ6FlYm27uSVZthHtQAZWU7lZFzTWkIEowbCUk
 YbQBFKQXxGPDel5gPqvJxcKZvn+czKTfGs6CLobPFaosEN9AyMRO96eMV A==;
X-CSE-ConnectionGUID: jD1lxqXRQOCzb2AByEuR6w==
X-CSE-MsgGUID: wewf12f4RLKzBj5QALpYkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36694385"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36694385"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:27 -0800
X-CSE-ConnectionGUID: 3Btcy4s5R7273RbnE3CK1A==
X-CSE-MsgGUID: UE+zOYrUTwOMZmgUw80jpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103626806"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:26 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 0/4] drm/i915/dp_mst: Fix error handling/clean up pointer use
Date: Wed,  8 Jan 2025 17:19:11 +0200
Message-ID: <20250108151916.491113-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
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

This patchset contains unapplied changes from [1], fixing an error
handling path while adding an MST connector and cleaning up the
intel_connector vs. drm_connector pointer use in intel_dp_mst.c,
addressing the review comments from Jani.

It also uses the driver's standard intel_display::platform.alderlake_p
instead of IS_ALDERLAKE_P(); the latter I noticed while rebasing the
patchset.

Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20241211230328.4012496-1-imre.deak@intel.com

Imre Deak (5):
  drm/i915/dp_mst: Fix error handling while adding a connector
  drm/i915/dp_mst: Use intel_connector vs. drm_connector pointer in
    intel_dp_mst.c
  drm/i915/dp_mst: Simplify using to_intel_display() passing it an
    intel_connector pointer
  drm/i915/dp_mst: Simplify getting a drm_device pointer needed by
    to_i915()
  drm/i915/dp_mst: Use intel_display::platform.alderlake_p instead of
    IS_ALDERLAKE_P()

 drivers/gpu/drm/i915/display/intel_dp_mst.c | 202 ++++++++++----------
 1 file changed, 99 insertions(+), 103 deletions(-)

-- 
2.44.2

