Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB959271A2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2024 10:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856AE10E06F;
	Thu,  4 Jul 2024 08:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dVXTxo5N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E9BA10E06F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2024 08:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720081573; x=1751617573;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n1/JJlHNSELIsiHgkFqXQPxBM/bwX43opCAr52Oqe3w=;
 b=dVXTxo5NKm8XAI1Zf2KMJGj22bbUVxqK2583xBFXWdtT/PnzCje9mZDK
 73vBizeo2yxA1c5dC0NKLBH84kWWIx+RW7dkP9u7ckN303Yq3WXTxhKo1
 rxLkU4yjJED4KZlcj+F+yGmqHFCxJ0lAgCglkTnwqTSdQBjkeh3aYlNAE
 lzTRPcVe8TVs4EiWqr6QZ/CWSWEYxxhku3VIsnkari1gpzGM52hTWFl63
 3FpbBF6wD9EW8afVzzKt8mfh5vDB23DPHfaj2pJMhAC61KwXOFFTQjNdA
 dkcATTbxFafC1rg2FCklRPo0QT3AP15K1W0dTdCPFkdA7Vx1pdP/OrlvW g==;
X-CSE-ConnectionGUID: 60qTuBReTHa5K+X3kKw+iA==
X-CSE-MsgGUID: Mye8R5cdQua6NMXZa/2c/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="17215027"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="17215027"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 01:26:13 -0700
X-CSE-ConnectionGUID: 0jTzZORBSW6Sb3uy5BhA3g==
X-CSE-MsgGUID: Y7Lpjk5dSaaZzzZW4NMg8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46303608"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 04 Jul 2024 01:26:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 0/1] Cache SDP caps during connector detection
Date: Thu,  4 Jul 2024 13:56:37 +0530
Message-ID: <20240704082638.2302092-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Cache connector caps during connector detection instead of reading
capabilities  each time during atomic commit.

-v2:
- Squash both the patches(Jani).

Mitul Golani (1):
  drm/i915/display: Cache adpative sync caps to use it later

 drivers/gpu/drm/i915/display/intel_alpm.c     |  2 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 22 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 -
 drivers/gpu/drm/i915/display/intel_vrr.c      |  3 +--
 5 files changed, 15 insertions(+), 14 deletions(-)

-- 
2.45.2

