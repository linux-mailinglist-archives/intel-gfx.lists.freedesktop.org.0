Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B06A25FB2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A340210E103;
	Mon,  3 Feb 2025 16:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kt+oVWSz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8676F10E103
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738599467; x=1770135467;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mEOG79FKoJlEaYvjK2NIS2XHjviYecFM7HCKFWCQryk=;
 b=kt+oVWSzxqnR7ob9SA0hatBJ7W0Mw8qZCTl1u2DFI38nQ7XriAW9MZL8
 F9b8bB4I3rl/OhFibLjUaBvOJx7pZv+hfJ3GKMxo7srv15y5L4kIlqDzg
 6HucJkJxWXjQ2PbafY/KNVekC8MWtwjQAaqO280qSAySIoYRPna4lK/Za
 rrvGsk6ACfnmekRrHl6cEt1XERuDMhibJoaJtjHBDJBJAIJTTmMLQb7S8
 BwasPKkG06cSs3J9gD+KIGSvE3ivGSuwW6KntmmFSmEqeyjbkuZ/Mk495
 pLWTEQSdmDkpng9uT4q7daVK9FsqWSdld5Hwo6zvw5449DJaOaMrFp5lW Q==;
X-CSE-ConnectionGUID: 8GdVNEFtQ/KM7gjx2FTpkA==
X-CSE-MsgGUID: AKJKM/A8QEeTkO4INoF1/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50511924"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50511924"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:17:47 -0800
X-CSE-ConnectionGUID: 0ln9JFtHTO+UtndTzVCIiQ==
X-CSE-MsgGUID: 8Ux6KTeMRl+u+JQxJ15fSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110286937"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2025 08:17:46 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 0/2] Compute as_sdp when vrr is enabled
Date: Mon,  3 Feb 2025 21:44:45 +0530
Message-ID: <20250203161447.2643039-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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

Compute as sdp when vrr.enable is set, also Skip
infoframe.enable check to avoid full modeset during
as_sdp toggle.

Mitul Golani (2):
  drm/i915/display: Skip state checker for AS SDP infoframe enable
  drm/i915/dp: Compute AS SDP only when vrr.enable is set

 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

-- 
2.48.1

