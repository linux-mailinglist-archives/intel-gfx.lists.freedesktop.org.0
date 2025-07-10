Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F7BB00CE0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 22:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DBE10E959;
	Thu, 10 Jul 2025 20:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fuMKTQC4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E136910E958;
 Thu, 10 Jul 2025 20:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752178652; x=1783714652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TAQ7dxOMGEj1GEf7GfCGHCWWHR3AZ9q+rMib+yY6Sbc=;
 b=fuMKTQC4P/UleKdExOAgJw37c63uxQjm0XuWK8yCeYXmBTTY188XErmP
 RMeE3tWYWdH4iFJJ3OBk0UorzUXBS0XGmKx+qcSDbp4g7q4R8X6m5gzze
 acrZ031GtgdeOqDzVvfFJItwSCmwIMCOvQpIqacJwY9nquoXG2SA6rt3e
 GKGho5QfM+q76cCefsn4DFkWhMYoNsStw7tG2XMVxZeTyj4hG/kqU4Pia
 nlnRrp0lIj1sklYsfqZHOL+57nM/a7HlHF7TAKcV/I5o3Tr8oTdQPNsvm
 H485T1ZWVPckLmYbQaetMq5fFYQxDm2jN3PgrxfEAPgcI8EU4+o4gn0P/ w==;
X-CSE-ConnectionGUID: sffyrku9RwipuxWEyTTnlQ==
X-CSE-MsgGUID: MKMBztMXRZmIibnI9S7X2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54444554"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54444554"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 13:17:32 -0700
X-CSE-ConnectionGUID: dPNpnGM6S/eb6BSyM36dbg==
X-CSE-MsgGUID: +z1Jt3XVTsWv4MO3zYie3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161877567"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 13:17:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 23:17:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 3/7] drm/i915/dp: Clear DPCD training pattern before
 transmitting the idle pattern
Date: Thu, 10 Jul 2025 23:17:14 +0300
Message-ID: <20250710201718.25310-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

We are supposed to switch off the training pattern in DPCD before
we start transmitting the idle pattern. For LTTPRs we do that
correctly, but for the sink DPRX we only do this correctly
for some platforms.

On pre-HSW (where we don't implement the .set_idle_link_train()
hook), we directly switch from transmitting the training pattern
to normal pixel transmission (the hardware should hopefully
guarantee that the minimum number of required idle patters will
be transmitted during this transition). The DPCD write correctly
precedes the actual switch away from the training pattern.

For HSW+ we start transmitting the idle pattern earlier, and only
switch off the DPCD training pattern after we switch from the idle
pattern to normal pixel transmission. Adjust the code to disable
the DPCD training pattern before we start transmitting the idle
pattern.

v2: Tweak the commit message a bit

Tested-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a479b63112ea..322a26c1910c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1130,7 +1130,9 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	intel_dp->link.active = true;
 
-	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
+	if (!intel_dp->set_idle_link_train)
+		intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
+
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
 					       DP_TRAINING_PATTERN_DISABLE);
 
@@ -1371,8 +1373,10 @@ intel_dp_link_train_all_phys(struct intel_dp *intel_dp,
 	if (ret)
 		ret = intel_dp_link_train_phy(intel_dp, crtc_state, DP_PHY_DPRX);
 
-	if (intel_dp->set_idle_link_train)
+	if (intel_dp->set_idle_link_train) {
+		intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
 		intel_dp->set_idle_link_train(intel_dp, crtc_state);
+	}
 
 	return ret;
 }
-- 
2.49.0

