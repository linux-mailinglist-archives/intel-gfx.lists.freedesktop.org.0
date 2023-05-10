Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ABC6FDBAF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2461A10E477;
	Wed, 10 May 2023 10:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E18710E47B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714669; x=1715250669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kVnCpiZ0Jsy5p34GcYgeZiwJOn4WO/Lbq8lRmEAgEOo=;
 b=HSSJpOV8KDjo3eL1AN8OdIzLvW1JABaGwnId+tgxRQ7I8RkmPOoHxYAl
 E3TNMwXUuFDhl1Uww98x/OjY9QYArAUHg5tF6spCjpl0PwaxyOj4Odsa9
 /47bSGf+UL8mQuK4SNazYp/TRTj5MMd52rj4807mG7nCMGvwqRd999eEI
 GRu8fDFGyi4k13hw5rIrJYoQhdXoWkSXTeZ3NMNc0R+E2X4AZcB0s1Z/r
 c/y4zeLc4DGMUdthzc28ZOr5Gnp3Nnp0jYmqgibHe4cuFznbebU09IWSt
 SiCpd05VL4xsT7JH+Hjuc5GlR8LcWqxMA6E4h2at8x84s0KFNynKIoDwN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214447"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214447"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796755"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796755"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:27 +0300
Message-Id: <20230510103131.1618266-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 10/14] drm/i915/dp: Prevent link training
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

v2:
- Check the actual HPD state to handle the forced connector state case.
  (Vinod)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v1)
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 51d1e4b4b2f19..0952a707358c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1065,6 +1065,11 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 
+	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
+		return;
+	}
+
 	if (intel_dp->hobl_active) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Link Training failed with HOBL active, not enabling it from now on\n");
-- 
2.37.2

