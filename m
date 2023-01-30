Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CF8681835
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D8E10E0C3;
	Mon, 30 Jan 2023 18:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580BA10E118
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101946; x=1706637946;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LRF503RKfB1OvfovhbkPkB/uRFFe9imaZ5zy7pccAZw=;
 b=CANlMZ0n8OMRYbOkTBtHsbkXgwEB+miKM/lzlxkMkByWWwjltbRP+6mq
 PUxs2XQwBvh07NZC8Rf4XjXK5PpUOCq1GJDtZSmNzze0m3eok2OhbHkmW
 lX0oTKi5DpVbBESF0QDAFlN4tnGjCH7kxEddJSajB8sIhpfLSmWuQ5fKs
 3MDR41zhe4/7AdGhviIGpo+fNlCyQ3UF2R8vdA0UFP12Sn4eQOv6ECgQV
 QnGQNGZtgTGC0yXY2rIRbcOlS+DIoT1QhYy2EjFIkPFC4LIfS3AwV8gzY
 7MobHKvpSnETDVqCNssTplWu+1UyXBfR1QMrPvxlMjNR3MaW0gZ309QSV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742188"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742188"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:05:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918048"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918048"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:05:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:05:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:33 +0200
Message-Id: <20230130180540.8972-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/lvds: Split long lines
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

Split some overly long lines.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index a1557d84ce0a..49b6cddeb67e 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -216,13 +216,17 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, PP_CONTROL(0), val);
 
 	intel_de_write(dev_priv, PP_ON_DELAYS(0),
-		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) | REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) | REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
+		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
+		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
+		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
 
 	intel_de_write(dev_priv, PP_OFF_DELAYS(0),
-		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) | REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
+		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
+		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
 
 	intel_de_write(dev_priv, PP_DIVISOR(0),
-		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));
+		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
+		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));
 }
 
 static void intel_pre_enable_lvds(struct intel_atomic_state *state,
-- 
2.39.1

