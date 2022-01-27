Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 775A549DE22
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8489510E64C;
	Thu, 27 Jan 2022 09:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B173C10EDA8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276036; x=1674812036;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I143HRu8bwRPZ/pidiW0N1jTm9zz6IW3u8VqKFuvg0Q=;
 b=E23+35588WQIJUSJS1wizA+O7tpJdQ5T1dxxpgcjzE2o8DCSE+YU2P/D
 pRVy/3lR99Rfz+ZeMVAmnmW8pQ8+u1HuLVYCoupxxHOLcG/l0+vA3gal6
 7AU/A9TxAVbaOPggGigAtly2KPnH0SEkxw49dHvcczheqg5aGSq4PvWr5
 ePUf11YMad88dzSQSQK8J6KV/o4vemg3sEhpDWntDV3fbpkOvGDOxu7l6
 Px/rYtNSUjUGDlBNA2iEH1hQ+wK1ZVsCcKrecOIaw8NIhb65HYzhSIN+i
 gQyoOrLqFV+Ah3EjIr35y8YSnBW5SVzC6AnsFE1cjp9imVfWkQuyYtONT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246746163"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="246746163"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="563723414"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 27 Jan 2022 01:33:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:33:02 +0200
Message-Id: <20220127093303.17309-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/14] drm/i915: Set DP M2/N2 equal to M1/N1
 when not doing DRRS
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make life simpler by always programming DP M2/N2.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c46fcf1e7596..27d0fbf0372e 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -74,10 +74,14 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 			  int output_bpp, bool constant_n)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int pixel_clock;
 
-	if (!can_enable_drrs(connector, pipe_config))
+	if (!can_enable_drrs(connector, pipe_config)) {
+		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
+			pipe_config->dp_m2_n2 = pipe_config->dp_m_n;
 		return;
+	}
 
 	pipe_config->has_drrs = true;
 
-- 
2.34.1

