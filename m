Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC783F4E39
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DA989BAB;
	Mon, 23 Aug 2021 16:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40E189BAB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:19:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="197384040"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="197384040"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="454858214"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
Date: Mon, 23 Aug 2021 19:18:11 +0300
Message-Id: <8f82b7eb76f20f1c4ddd2cc7d1bb31e2173c55a6.1629735412.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629735412.git.jani.nikula@intel.com>
References: <cover.1629735412.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/19] drm/i915/dg2: add DG2 UHBR source rates
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

DG2 supports DP 2.0 UHBR and 128b/132b channel encoding.

Bspec: 53657, 54034
Acked-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3a701728e47e..1a0eb4c4d666 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -242,6 +242,11 @@ bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
 		 encoder->port != PORT_A);
 }
 
+static int dg2_max_source_rate(struct intel_dp *intel_dp)
+{
+	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
+}
+
 static int icl_max_source_rate(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -268,7 +273,8 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
 	/* The values must be in increasing order */
 	static const int icl_rates[] = {
-		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
+		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
+		1000000, 1350000,
 	};
 	static const int bxt_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000
@@ -295,6 +301,8 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
+		if (IS_DG2(dev_priv))
+			max_rate = dg2_max_source_rate(intel_dp);
 		if (IS_JSL_EHL(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
 		else
-- 
2.20.1

