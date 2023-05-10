Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA44F6FDBAE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 165D910E47D;
	Wed, 10 May 2023 10:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8947A10E47B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714667; x=1715250667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BJvzakGdmKMtJko9BRT2dJi8cujFmdt1O4PRJpKTQf4=;
 b=N4Wmm8clud1CzStfGYgjKxOsn7rH+8QsHlXNdp7UUtNgil0pqnRsTsBE
 gAd9YVOQA1Aryx/v2cWBA3EKPQn/Yo0EMAP0kBfB0asB2I4vzlw14EQXf
 O7uYI59B6TYDhO48RyGechljgKjaDrnQfks2vH4e0d+7mT7ZNL8l6Hs2K
 RAtInUP4MohdC2QsXPUUF4Rp42FUXmrlB5iRULu5LnKfvWf/n1Jfl383g
 jd3BaCvAcm6uOd6UrekQeu7SqE6OqpJcEaR4Zya88uU8dUwIgXCCVgNwg
 wYAb2aUDKZkdhA7c0DODMCN9pI9qIQFs+Dkg6jffMNJwuTvFo6PCCpkGC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214440"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214440"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796749"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796749"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:26 +0300
Message-Id: <20230510103131.1618266-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/14] drm/i915/dp: Convert link training
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
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
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

