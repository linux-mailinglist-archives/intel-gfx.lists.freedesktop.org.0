Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A29499F4641
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 09:43:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434D710E874;
	Tue, 17 Dec 2024 08:43:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhAWzNcC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CA910E874;
 Tue, 17 Dec 2024 08:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734424995; x=1765960995;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/ZfA80rkXlIOtVjOnGqoohc1DafU9pVUkmjbMeSF4C4=;
 b=lhAWzNcCbP/2IThlh3m/IMOWiFypC+wU92Cohr3ySAcIsNt7J+aXA8zk
 WfbHGLObmKl6kWrewE3EsQ3BNdAKiAwPA6bqnoeN3qmY+LHLJYUKfcaCl
 UzseqiLSQUqmnlP+uPCOoZ43sVpqbx5nKqyRkjmMM4KGw3Z/rrkD4cDi+
 VhBR62ZOupZnex77Dfuq3yGCyvdhY/DtoqeeWSMFoONjWYxiFfPaVKn67
 3piKtiTA8EWiMDqYC6Nnga1IPaQR4VHatQGs8FY3GI0hunEANYS8XEQYX
 qkoRc/av0hrPubdUrp26Bs+UVcsyZtvlTf8w38CYN0wXIyTsiIWgctGd/ g==;
X-CSE-ConnectionGUID: mwfQgTzYTPm/rLGuq4rvxg==
X-CSE-MsgGUID: lc2DIDyxRwqRYaAev7HVoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="38614956"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="38614956"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 00:43:14 -0800
X-CSE-ConnectionGUID: 415+MYasTjWxLZIpjW4ynQ==
X-CSE-MsgGUID: fGPvczEYRzSPPcpNykowbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="97703937"
Received: from ettammin-desk.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.122])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 00:43:12 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2 0/3] drm/i915/xe3: FBC Dirty rect feature support
Date: Tue, 17 Dec 2024 10:42:42 +0200
Message-Id: <20241217084245.246218-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Dirty rect support for FBC in xe3 onwards based on the comments after the
initial RFC series.

v2: Dirty rect related compute and storage moved to fbc state (Ville)

Vinod Govindapillai (3):
  drm/i915/xe: add register definitions for fbc dirty rect support
  drm/i915/xe3: add dirty rect support for FBC
  drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled

 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 105 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h      |   4 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |   9 ++
 4 files changed, 119 insertions(+), 3 deletions(-)

-- 
2.34.1

