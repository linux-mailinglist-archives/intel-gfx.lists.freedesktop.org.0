Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4E0B2ECBB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 06:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5642410E2C7;
	Thu, 21 Aug 2025 04:26:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TB/oXH6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C7710E2C7;
 Thu, 21 Aug 2025 04:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755750418; x=1787286418;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/AJ5phEGRaAANEqBubygiuN0zPuctQcCoEVqJ/tC+9I=;
 b=TB/oXH6jPuBC80g2LyOCGnfAwj4ozgXxE/JcxGxq32CGrjffTyRUkWU2
 tQax8uNs2DTyHyRBQoTby1xXDTcMZk+m4q8wOm1IIghhp19Zjffm3gb5d
 j1/j8EhA9B1t/zONMo0BtHsLikEgFZhDbYth8LHbs+X+vuKf6UupR7viy
 0jpzAnHfWKQK6coUoXUTg7LusImuA+HsLxxOO7JjQVFV5TyUuJzuTtX5d
 tCIZ5dGMGS2w81qBy/1WoRQaa4U9v3kjBG/HYuxTGuNzFSOBLFtASN6mM
 oEbbVegs1YJzFAfsnNKu0pAKqipejSDPCgaREO3uG8mdcf4N+nHExjPB8 Q==;
X-CSE-ConnectionGUID: P1dTzXAZR8yahHQ6Uexdkw==
X-CSE-MsgGUID: iTvLtn7ZQjGFdvNrTpY78g==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57054902"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="57054902"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:26:57 -0700
X-CSE-ConnectionGUID: YjAMV/sATX6Fjqp0DS1A6w==
X-CSE-MsgGUID: MM+VEkUOTAuZoWTW9QlQfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="168667688"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 20 Aug 2025 21:26:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 0/3] eDP Data Override
Date: Thu, 21 Aug 2025 09:56:50 +0530
Message-Id: <20250821042653.269227-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

When using link rates 2.43 and 6.75 causes a strong noise for WIFI
bands. Its recommended we use 2.7 and 8.1 Gbps instead.
The solution proposed was a static vbt field that provides us with a
mask of rates which need to be skipped in favor of the next higher link
rate.

--v2
-Optimize looping

--v3
-Break 2nd patch to two parts
-Rename intel bios parse function
-Create seprate function for setting rates

-v5
-Fix VBT definition
-Rename intel bios function
-Make the function only return mask
-Protect against broken VBT

--v5
-Fix function naming
-Define macro for num of rates

--v6
-check broken vbt inside the reject rate function itself
-no need to use hweight

HSD:14022096069
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/vbt: Add eDP Data rate overrride field in VBT
  drm/i915/bios: Add function to check if edp data override is needed
  drm/i915/edp: eDP Data Overrride

 drivers/gpu/drm/i915/display/intel_bios.c     | 36 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 19 ++++++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 18 ++++++++++
 4 files changed, 74 insertions(+), 1 deletion(-)

-- 
2.34.1

