Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C65E88D2A4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 00:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA59510F4A7;
	Tue, 26 Mar 2024 23:11:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l/Po0Bri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6095D10F4A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 23:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711494666; x=1743030666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I9v3g4F6bf/WEfjVXVZ2/fEnmmlNSP+nSb+tqaSZkQg=;
 b=l/Po0Bri6NXbst494mDQtqcLWA5TYrQnxODuGsP3ukpZvIMp7PZPgPAx
 NxLnZCzMtiwclPawQObxGKLGcYdaEPUFWERNpKiQ7P56lWWy4SejxuSXQ
 iqheU5RlL/0zR4M9+IuKLJWYFs4Smei02Aw4p6GAdL5EwTSFzH1w24WBr
 Ka0R62imjfl1vN4Ooyy9QFBaVuDiAkhogbkOOq+MmKPg4mMakxeReCph0
 Zq8dsQl5mcvNz2zpa/qWQRqYUSVH89XiRtMyZ/IkhINkoSz83SDsBf9d5
 YXFrbbB0bSmigyPazCTEJhhfMMJMyV+mHKYdKEto4wttq8MnYOuBqjJXI w==;
X-CSE-ConnectionGUID: KCKUy5TnSNKj63GxhXzxfQ==
X-CSE-MsgGUID: KD8+M3eoRoqcEu8Lgog6OQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6703016"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6703016"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16101368"
Received: from dfantini-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.33.69])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:11:03 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v9 5/6] drm/i915/display: handle systems with duplicate
 qgv/psf gv points
Date: Wed, 27 Mar 2024 01:10:20 +0200
Message-Id: <20240326231021.281780-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326231021.281780-1-vinod.govindapillai@intel.com>
References: <20240326231021.281780-1-vinod.govindapillai@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

There could be multiple qgv and psf gv points with similar values
In case if we need to set one such QGV or psf gv  point where there
could be duplicate entries, we would have to select all those
points. Otherwise pcode might reject the GV configuration. We do
handle this when we set appropriate qgv and psf gv as part of
intel_bw_atomic_check calls. But during the bw_init force disable
QGV points phase, we need to select all those points corresponding
to the maximum bw as well.

v1: - use the same treatment to qgv points as well (Vinod)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 5f4f93524bef..f6690d545d95 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -847,6 +847,8 @@ static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
 		if (max_data_rate > max_bw) {
 			max_bw_point_mask = BIT(i);
 			max_bw = max_data_rate;
+		} else if (max_data_rate == max_bw) {
+			max_bw_point_mask |= BIT(i);
 		}
 	}
 
@@ -874,6 +876,8 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
 		if (max_data_rate > max_bw) {
 			max_bw_point_mask = BIT(i);
 			max_bw = max_data_rate;
+		} else if (max_data_rate == max_bw) {
+			max_bw_point_mask |= BIT(i);
 		}
 	}
 
-- 
2.34.1

