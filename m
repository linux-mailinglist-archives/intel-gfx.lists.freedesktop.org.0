Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B47D9D3874
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34A710E6E6;
	Wed, 20 Nov 2024 10:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hfB469T7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50D010E6EA;
 Wed, 20 Nov 2024 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098934; x=1763634934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QJRmuOoX7ks4vFCpzf+5/OJgVh+mhMv8d9HckHhbv8U=;
 b=hfB469T786Twarf5OBhbOwqnYlVzzrg7bjgOGx0hs9ZXQvx2/AvSSAfV
 RQTuM34Eg7RJqvFdkXK60uI9D/ezsvs+hcahlrj3FtIJwIKSyWIYecdpX
 deUtDSVrVH4O7LfUHiOvjOIqz0yHslMmVZSysn0n5UFrUqULJrnOgXbRp
 aT+LlZBtoClQyGny5mET2cduiW02dS+OHY8tYT/tb9FLVpOxST6W8Dej1
 68YanLTYdcy1aYySIOqvp14MD/+CZJ2DKfow0TCfrGuM4Ua8DOi5znwKX
 hhx18hmt3yUC+2CarqBtvXeMwuuxZL2UIihucAW1Nx12Jr3+FYuLnmjLr w==;
X-CSE-ConnectionGUID: Deg2WTSRSCWg2w7cX2D0ww==
X-CSE-MsgGUID: yCqnzTd1TWSmib4SPJWGmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520053"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520053"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:33 -0800
X-CSE-ConnectionGUID: LTGUM3F2RBuP1LdAIDb0tQ==
X-CSE-MsgGUID: Flo4qRndQyKiEQ1FtMwQJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674079"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 04/12] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
Date: Wed, 20 Nov 2024 16:07:54 +0530
Message-ID: <20241120103802.134295-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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

DSC support is already checked before the helper
intel_dp_dsc_max_src_input_bpc is called.
Remove the check from the helper.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d82e25d0dc5a..dd60ca532ae3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2195,7 +2195,7 @@ static
 u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
-	return HAS_DSC(i915) ? 8 : 0;
+	return 8;
 }
 
 static
-- 
2.45.2

