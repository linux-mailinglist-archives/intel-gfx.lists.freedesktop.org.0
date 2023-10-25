Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2387D6B2C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB29110E640;
	Wed, 25 Oct 2023 12:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11FE810E5C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236387; x=1729772387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+GhTTJx8t7YsWzE0rwosfM9b/cPtPyqLqUt3qYTlHF0=;
 b=VanCgzPeTz6UidqBbO85g3jeBRRpRek3b5Vi1L3vtt/CEnoXEA5NuSSW
 gaoxeXrqFRJVm4u1xmywXr1H7TAWn6HrMRGFH0oS0E54PHZyU8/fwLhYq
 MptUcOZjua0AQ48IR8v24F1XL+BV+8IfyVcxhkZ9bWQj350u3g3+oIVra
 +UkVeKrYuNJjAsoVLvzYA8aQHM1fPzNFMpl8eJA4FsEuAF6QpMjbWfYg1
 i/UxheUgI6eokb6Bhxp/moN1MM9ebvvx6oi7AUriuE5CV/F414JeOyUs0
 E+7prWWoxthMN0LISq7NZ08lmNgCwNf49tClpFwI4R0u4AKmBNl6TB1gH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="451520516"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="451520516"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882435989"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882435989"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:19:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 17:43:16 +0530
Message-Id: <20231025121318.2732051-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
References: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
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

