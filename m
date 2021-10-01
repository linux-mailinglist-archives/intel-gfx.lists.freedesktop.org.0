Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1641EE14
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CA66ECE6;
	Fri,  1 Oct 2021 13:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D976ECE5
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:02:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="205581073"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="205581073"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="480439445"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 01 Oct 2021 06:01:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Fri,  1 Oct 2021 16:01:07 +0300
Message-Id: <20211001130107.1746-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/10] drm/i915: Allow per-lane drive
 settings with LTTPRs
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

LTTPRs should support per-lane drive settings I think, and even if
they don't they should implement their own fallback logic to determine
suitable common drive settings to use for all the lanes.

v2: Actually check the correct thing

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6e9232126788..e9e22f1b043b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -304,7 +304,7 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
 static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
 				       enum drm_dp_phy dp_phy)
 {
-	return false;
+	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy);
 }
 
 static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
-- 
2.32.0

