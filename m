Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB9C986D6F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A1010EAB2;
	Thu, 26 Sep 2024 07:24:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T2J4hNn/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48B310EAA9;
 Thu, 26 Sep 2024 07:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335486; x=1758871486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3r+9AZCEG+iNnbCIojzijJB1HboTGnWbHdNyk8L6WwE=;
 b=T2J4hNn/GKE8aJ/BX55eNZvLFuMk64oSEtzYyVAGuqO+4/WGyXfElKrl
 mCl5wohic4tPuJueYffmptRgs1EI85RT0QC+GLASAMXaXLX+1+AORd86M
 qLRW4UzVedgh8qd7yV3suiHn7WzcBlxtfdKtWT0zc0PPX8vR8RX/vVcpb
 nxLmiE0P8siW0M3VamD5pRminVhsDvXkcwbH8v7V0Way9PL/PIHFV7IMT
 L9vWefbl9g7NExgz4gkg0oNxyhj+16T/INr7zSJmQ7qQlWq+qQwiEN1vz
 8t0uIjHnw39u6Y7OEN/X6MJEDjgyKsnxc8m+rnq1JfDExfgOcsziIYpjm Q==;
X-CSE-ConnectionGUID: DugmyBLhRDWD903jzl2COA==
X-CSE-MsgGUID: A4+CXq2uTa2xMcUReNCdmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829438"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829438"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:46 -0700
X-CSE-ConnectionGUID: 2nP229e6Qyu3yiDkLvH7qg==
X-CSE-MsgGUID: Vzm6AICdQeGDmReloXtfnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334387"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 01/15] drm/i915/display_device: Add Check HAS_DSC for bigjoiner
Date: Thu, 26 Sep 2024 12:56:24 +0530
Message-ID: <20240926072638.3689367-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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

Bigjoiner needs DSC, but DSC might be disabled on some platforms.
The platform check itself is not sufficient, so add a check for
DSC to reflect that.

v2: Modify the commit message to address the DSC fuse case.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 5306bbd13e59..6a5bee59e6aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -118,7 +118,7 @@ enum intel_display_subplatform {
 
 #define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
-#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11)
+#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11 && HAS_DSC(i915))
 #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
 #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
-- 
2.45.2

