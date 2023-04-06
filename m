Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B97306D984F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 15:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BDD10EBC1;
	Thu,  6 Apr 2023 13:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9AD10EBB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 13:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680787966; x=1712323966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TGqr0MHhWM+KQ5jzFVlKLXDn0UpkOr/ZBPkiPmkRuXw=;
 b=IABDN8g91GbKFADKlTdP7DwhWMLY28+oHPVjxMrTcLji12BY+hRoFH7s
 LiTDX3Xuv4r9KI8inDsD8bn4mWPdmB4FB2SnNwvJg2geZHp8qWJR3Cef1
 /Eq+KktXHGRkRJI78I8M2cws9DeMQs8ycKkwv2d8zYPQEI5FnSFhnmCxI
 IXPYd3u8g2fEGfc3NZBlSCVZj1yxbNIQ9rApesLfsBCeZf0d8SYMeCqbE
 StGwJjT7rqSLYyh1k94C/vXRQIxSC29TmIayv7a83rY4WFDN/F88yxupS
 YaVbji2gj9SObIv/LrU3SUZ4zWEpaFZUz6jw9EprMCyDFQ+9RGIVkyc3i A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="345352303"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="345352303"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 06:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="751641650"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="751641650"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 06 Apr 2023 06:07:31 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 16:02:15 +0300
Message-Id: <20230406130221.2998457-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230406130221.2998457-1-mika.kahola@intel.com>
References: <20230406130221.2998457-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/8] drm/i915/mtl: Add DP rates
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

Add DP rates for Meteorlake.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0bace9d98a1..3367ae98c2bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -421,6 +421,11 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 	return 810000;
 }
 
+static int mtl_max_source_rate(struct intel_dp *intel_dp)
+{
+	return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
+}
+
 static int vbt_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
@@ -445,6 +450,10 @@ static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
 	/* The values must be in increasing order */
+	static const int mtl_rates[] = {
+		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
+		810000,
+	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
 		1000000, 1350000,
@@ -470,7 +479,11 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		source_rates = mtl_rates;
+		size = ARRAY_SIZE(mtl_rates);
+		max_rate = mtl_max_source_rate(intel_dp);
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
 		if (IS_DG2(dev_priv))
-- 
2.34.1

