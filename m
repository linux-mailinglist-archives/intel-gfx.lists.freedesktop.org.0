Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 573FB7E3482
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 05:23:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5BF10E142;
	Tue,  7 Nov 2023 04:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3934310E142
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 04:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699331023; x=1730867023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+GhTTJx8t7YsWzE0rwosfM9b/cPtPyqLqUt3qYTlHF0=;
 b=PBzJWeLnuexlpeVZ7a+5DSemiQP3hm7hnVUnbngHaLowYfnu7vwEKLm9
 PeqUq+yGxZ+rJP6dQqauX3mReTLtpAVLwwoMYOS/nO5vKLzGBTUf22c7o
 WF12NAZQ8T2rbmpJ56dlDRo/5vkj/N8kiE7wMeXfcTwZcT3HKBP+6t98R
 00FemyZ2V1u0mcSt/19QJXQqib3G2A+TV8Gv5GbDPH7rjwmT2JHHuf0I+
 FCcpxo+Rqpfnua40WR51bF/33SwMzqlNdYnHNGjNx5fJ//SfKhBxfm/gF
 uokU5TyywmE0Y0TFDvWSiOKzORHmN+6q7xHa4YfVonUxkO7TgVf9/vV9m g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="475667575"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="475667575"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="712435790"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="712435790"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 09:47:38 +0530
Message-Id: <20231107041740.3718419-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix the max DSC bpc supported
 by source
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use correct helper for getting max DSC bpc supported by the source.

Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best compressed bpp")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d9e1d15a386e..5adab761f2e8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2022,7 +2022,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	dsc_max_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-- 
2.40.1

