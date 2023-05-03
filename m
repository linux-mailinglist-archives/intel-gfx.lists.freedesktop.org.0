Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE076F61D2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E782410E377;
	Wed,  3 May 2023 23:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA9210E360
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155442; x=1714691442;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cYPKk/iIHeQDrQuoDbaIMiXyU8tMZ501YkGrcPf0smI=;
 b=M4q3kfdfVRg+d7P+GAvIcJQvwRMT2Pi3qACGxLCh+B3N/ZVl7qiJVMZz
 vYaG8gkmq7d7bBsyKRlu1WNXhBokfgz0p5UGVCuDTtEzrwnEyGMLeBMLj
 XSf7FMIQZchksARRm9L2oJnrh26t7axBxSIrt2PLWtCB6SgTDaxtpjKTH
 zcs2NJcmvlZSBbIcQ/E8mUQDO7ucfhncNEdtigpDGu/HYYARbqzUsKngu
 l0sx2ZGngJfVQ6SsNm4cswQFBOkYcv6jEfwJUDLcTn4oNdYohdKe+shV5
 nOkDe7SFppLtAKyQCpSnpIy4brrdUVL4C4HQMlt1uNtcl7pQHV0cp7w9G w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607587"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607587"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872147"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872147"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:45 +0300
Message-Id: <20230503231048.432368-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/12] drm/i915/dp: Prevent link training
 fallback on disconnected port
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

Prevent downgrading the link training maximum lane count/rate if the
sink is disconnected - and so the link training failure is expected. In
such cases modeset failures due to the reduced max link params would be
just confusing for user space (instead of which the correct thing it
should act on is the sink disconnect signaled by a hotplug event,
requiring a disabling modeset).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.h               | 1 +
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 488da392fafe5..ca12a1733df6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -102,6 +102,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
 void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       struct intel_crtc_state *crtc_state,
 		       unsigned int type);
+bool intel_dp_is_connected(struct intel_dp *intel_dp);
 bool intel_digital_port_connected(struct intel_encoder *encoder);
 int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 2fe076e2d64b3..fcccf410f7693 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1088,6 +1088,11 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 
+	if (!intel_dp_is_connected(intel_dp)) {
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
+		return;
+	}
+
 	if (intel_dp->hobl_active) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Link Training failed with HOBL active, not enabling it from now on\n");
-- 
2.37.2

