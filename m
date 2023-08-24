Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F46E78696E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B95A10E4F8;
	Thu, 24 Aug 2023 08:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AAF510E4EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864326; x=1724400326;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=q5bl72nRZyLfwUj5OyNfHA8hqKJJFFEpowm+fFc2iHE=;
 b=f1pGtySleSBdM+AgUYvYzHhO3S1Qs73yD+NQr+xF1znWBGHBW8tTVJhQ
 eV0RWGOmUo8mIN/S4oaH5270YADOxl80q26Kg3JmomhXThOt2+7VyD7ne
 BR39akRXoWWuhb9R1Zqj2S9psP3518+GRd6HRQKYOjv06/rAe4gieXGI8
 /sErna1BomrarCuhL0E9BlIhLEOkVyCsroXrb+5x5ej7gxczi1nirBzto
 F+Rk+isa6cXGO5R72OmfDRls4SMZtXL+GwmkNcoCY1rWCKV2MnxS6nBiz
 UDwYEn868RKsx3gcKEqMjZWO7RmwdyMpiYBmJWRNSp3EJRefqfHrn03WE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345895"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345895"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710356"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:14 +0300
Message-Id: <20230824080517.693621-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 19/22] drm/i915/dp_mst: Add missing DSC
 compression disabling
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

Add the missing DSC compression disabling step for MST streams,
similarly to how this is done for SST outputs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b6a717566e7c8..5eaf309f852f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -656,6 +656,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
+	intel_dsc_disable(old_crtc_state);
+
 	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_scaler_disable(old_crtc_state);
 	else
-- 
2.37.2

