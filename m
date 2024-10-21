Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E269A6879
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F74C10E4D2;
	Mon, 21 Oct 2024 12:32:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NPJAfhnM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C51A10E4CC;
 Mon, 21 Oct 2024 12:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513932; x=1761049932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r8mtgb51M2/QElH0HY1syEsluMAO2gpDyEBidV2W7xY=;
 b=NPJAfhnMUKLw1f6ExVetOwxr89vBysYd9QxhDxtpLnPk7OOdzy6GboYo
 ixrzUKL8SeF01nnAtUAG+4FHgN0bZv4QSST5Bm9UYGxZjmwBOYfZV9h4Y
 czzIw2boa/+bZW2O9wS3NgRqueLpOmp7Rl64mwGQsVicijL2aAnnmhlqu
 MyBAIQ6wZX/sArypH8vn0Vzj1wAKTWy5nYdk/cI5k/TIm4POk5K89JE7V
 GO2Zb99n2Xocm/pQd4cfDqWc6bEg2OBqSD2wi0Lul7w9txQQay/WH1zxT
 m0UHw+Vm56O/TdshcLbwrkPNfM1eLuThB5mXJ95OAClOAjojELPsv801+ A==;
X-CSE-ConnectionGUID: edfCxyOGTgm7wg8uBdkr1A==
X-CSE-MsgGUID: Z8amsSBuSSmOKpuvKZ0VfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459640"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459640"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:12 -0700
X-CSE-ConnectionGUID: WB6Pn9oQQSax2OKfMP0UGw==
X-CSE-MsgGUID: RrVCs4Z3QMew+kEsFVh/cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866081"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 08/16] drm/i915/display: Add macro HAS_PIXEL_REPLICATION
Date: Mon, 21 Oct 2024 18:04:06 +0530
Message-ID: <20241021123414.3993899-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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

Add macro for Pixel replication support with DSC.
Bspec: 49259, 68912.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 071a36b51f79..a21b910879df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -149,6 +149,9 @@ enum intel_display_subplatform {
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
+#define HAS_PIXEL_REPLICATION(i915)	(HAS_DSC(i915) && \
+					 (DISPLAY_VER(i915) >= 20 || \
+					  DISPLAY_VER_FULL(i915) == IP_VER(14, 1)))
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
 #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
-- 
2.45.2

