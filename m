Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 557956CA43D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E6710E5A0;
	Mon, 27 Mar 2023 12:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C57110E5A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679920788; x=1711456788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1oxFwAL98X+52CK9VIEbR6WQ/L1MADj4uUO8GCwTUaA=;
 b=RzhS10RzOvn6Z4i6G3mNJwPninD/DTQfc107sADIUBq4T2ZD/sWtj9tl
 9kQK61xlYI/3sWXXa0GG1kUUBaTwePFCBLZlxDvqlnFZTKDiXzTU0MVf0
 +sA3LYUerRAa3ufeKCjCm0SAYQGDwJCez1hfntcBF5uRloNyKmD6841bx
 LeO2jlNJHt3neYHg+ISzG2qI04c4SgK6uXyLzdGdu+AH/k2Q8607glA2x
 VIvg9ZRJliKT1wiW7j1/pOgeQLqBFUcLyBAZWWMdh8meGfaztebMt+6LT
 Xvgquq8JdPGn/cQUHRoSZPy3cEZe2Zy0vzTGzO+Ppe/fx7qA5wKcyyQpN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="402847798"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="402847798"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:39:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="747984742"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="747984742"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 05:39:46 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 15:34:28 +0300
Message-Id: <20230327123433.896216-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230327123433.896216-1-mika.kahola@intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/mtl: Add DP rates
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

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index da1c00ee92fb..4927aeb64f23 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -420,6 +420,11 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
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
@@ -444,6 +449,10 @@ static void
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
@@ -469,7 +478,11 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
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

