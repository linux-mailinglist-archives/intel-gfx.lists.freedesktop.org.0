Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B68C2610F82
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 13:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C2110E7F3;
	Fri, 28 Oct 2022 11:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ACD110E7F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666955896; x=1698491896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MzkWnHWXk0PhBOrs9wAOBJpQLafQ22GbzBxZUo9DCyY=;
 b=KrpUW/KSzxZyJqXmjLiuKdmDubZ1s0BZPZmxCI2DXU4ZRNOUhrIAvMqn
 7+Lb/l0cVdq36lYVmrwDJ7OXkqdXcB3fBY84Cgo2NITFPgVELxvTW1ioa
 BbmMS+mtIYesRiaC4ctHqssqeX3CYdmnYV9sFk3aRx1tNu1VgZdBDX+R+
 azt1OTXPCn8Pluz7w1SHsWy8UVbW/kBqlNeMjH7VAHFE3FoupJz98j9QX
 0A+xrW4yL4WDJK077igmePIgFY/iLPW9LGUVnxYuZDOeCmEelcqlyxqqJ
 n6Ner65uaOifB3GDbXzwx678OMXDOpHzPfJ3o7LTwpPal+LgoNJxODtHu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370534659"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370534659"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701701496"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="701701496"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:15 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:49:46 +0530
Message-Id: <20221028111953.12552-2-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028111953.12552-1-swati2.sharma@intel.com>
References: <20221028111953.12552-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/dp_helper: Add helper to check if the
 sink supports given format with DSC
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Add helper function to check if the DP sink supports DSC with the given
output format.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 include/drm/display/drm_dp_helper.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index ab55453f2d2c..6c1706280746 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -193,6 +193,12 @@ drm_dp_dsc_sink_max_slice_width(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 	return dsc_dpcd[DP_DSC_MAX_SLICE_WIDTH - DP_DSC_SUPPORT] *
 		DP_DSC_SLICE_WIDTH_MULTIPLIER;
 }
+/* Check if sink supports DSC with given output format */
+static inline bool
+drm_dp_dsc_sink_supports_format(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE], u8 output_format)
+{
+	return dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] & output_format;
+}
 
 /* Forward Error Correction Support on DP 1.4 */
 static inline bool
-- 
2.25.1

