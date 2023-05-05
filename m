Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0B06F8A56
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 22:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19AB310E67C;
	Fri,  5 May 2023 20:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B8E110E67B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 20:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683319561; x=1714855561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GwxlW9B90avcqPkIEe+HIHrHMglt1QbXa+U+grj6Vg0=;
 b=YuiZ/BTrObdPiLMQ4y5UVaQHqBB8cV3hUV4uhsoCk/JPSKIh+Xz0Qaal
 09ZRHcfLm8gQBCGqK36vO+DyKALF19KB9AofTaqvLxZPgw6+8wsLwJf1A
 tF+BsqNuNDRr3/43jk+FXS8/fktGTgZluw3q26PbyyCAW8vfihS0YKLRM
 10IK6m5jNUhU73vbH69arKMmMvHgcu9idEUncxgXcm072Spksk8BAB3Pq
 kyYnEC2/qbQyShHQVWbKhEyezaS0Yn6h/BGfdLf083h4hGoyupCXutg5Z
 oOUMxH33boVz/YK2iifwULwxBdJaymukA8bJYz1OCUQTsS+q5WicXJRaG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="346763368"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="346763368"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="821860304"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="821860304"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 23:46:10 +0300
Message-Id: <20230505204611.682946-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-10-imre.deak@intel.com>
References: <20230503231048.432368-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/12] drm/i915/dp: Prevent link training
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

