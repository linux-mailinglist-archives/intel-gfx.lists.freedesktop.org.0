Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C90176F8A55
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 22:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0609D10E67B;
	Fri,  5 May 2023 20:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E6BB10E67B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 20:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683319560; x=1714855560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sTrdMvsKHjDjDj/ieWwk9yhYpEMRoepcm1UoHEZwIeU=;
 b=cqP/77kb+OuSjSe6X5Q/8lCdfc4tupzbDLziqMiBPiteVVodYoPH1+Pk
 x6CkF5Zg8OpjTV4LozfogG5aRqiaGNpvosXKaumFuqplF16So7HzBDqBv
 IabuXpQqetF01bVfs6WS72PXzMpl5C7QsfcgRZtJ/Pi21Vs0tMb7HBvDO
 wqy5OS9WE2dBLDTxLrUHU5nW5YtB78YK+nRu0plkxTY02z9Fx0SjAR8mY
 1+20Lf/ilc2atUVCj9O/lNoZjugMjy8GeWjqLeXyo2TyS9BYJQDbREHG5
 YGH6tgAK6FxSg+rUVl/Sq7mEIQFAxPQ99kSMELDNlLLEsn8WHmQUxUVai w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="346763364"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="346763364"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="821860292"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="821860292"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 23:46:09 +0300
Message-Id: <20230505204611.682946-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-9-imre.deak@intel.com>
References: <20230503231048.432368-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/12] drm/i915/dp: Convert link training
 error to debug message on disconnected sink
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

If a sink is disconnected it's expected that link training actions will
fail on it, so downgrade the error messages about such actions to be a
debug message. Such - expected - link training failures are more
frequent after a follow up patch, after which an active TypeC link is
reset after the sink is disconnected which also involves a link
training.

v2:
- Check the actual HPD state to handle the forced connector state case.
  (Vinod)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 4f33b79b23db0..51d1e4b4b2f19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -38,10 +38,14 @@
 		    LT_MSG_PREFIX _format, \
 		    LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__)
 
-#define lt_err(_intel_dp, _dp_phy, _format, ...) \
-	drm_err(&dp_to_i915(_intel_dp)->drm, \
-		LT_MSG_PREFIX _format, \
-		LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__)
+#define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
+	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
+		drm_err(&dp_to_i915(_intel_dp)->drm, \
+			LT_MSG_PREFIX _format, \
+			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
+	else \
+		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
+} while (0)
 
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
-- 
2.37.2

