Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1A67DBD31
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F5810E32A;
	Mon, 30 Oct 2023 15:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E72510E324
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681532; x=1730217532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ajndlBesGnd1ULHTc92afDWMKAwU3fOc/jtwff73CRI=;
 b=e7tZWzVvV86erNRWTdIm23tIgJHdk9QLBpPgCEaKOAbBuXPKWrB/qQYO
 Egtqg5ZLxXqfTjnN+HYoSlSgv+wMzxeZQvYnctgGVdWGPZJ3Jovs+FKqD
 WzXkoiG841UOeDMra8ScOauHzuSMY7OwdStI0KStDjd7CG5owW4kRm9NU
 JCTrrocK5oQE5JQgJ6ZZHNRwVWHuP7qLiZGyTjdgnPLSMXMFo24U0xhDs
 AIGxakFS/1eX6s/lZw85zwvtU3vy4y5/RHmVC4StIvVqrhqKAPsaykwYt
 FyeNhNYigGoy/saydJgB2YeCm4lk8Upp7y1M3d8xYMi+cIR5ga5EoJ70W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974517"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974517"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494043"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494043"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:37 +0200
Message-Id: <20231030155843.2251023-25-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 24/30] drm/i915/dp_mst: Enable DSC passthrough
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

Enable passing through DSC streams to the sink in last branch devices.

v2:
- Fix the DPCD register address while setting/clearing the passthrough
  flag.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0cdb4d176a8f9..8bc4faa142a62 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2968,6 +2968,24 @@ intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
 			    str_enable_disable(enable));
 }
 
+static void
+intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
+				  bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_dp_aux *aux = connector->port ?
+				 connector->port->passthrough_aux : NULL;
+
+	if (!aux)
+		return;
+
+	if (write_dsc_decompression_flag(aux,
+					 DP_DSC_PASSTHROUGH_EN, enable) < 0)
+		drm_dbg_kms(&i915->drm,
+			    "Failed to %s sink compression passthrough state\n",
+			    str_enable_disable(enable));
+}
+
 /**
  * intel_dp_sink_enable_decompression - Enable DSC decompression in sink/last branch device
  * @state: atomic state
@@ -2994,7 +3012,7 @@ void intel_dp_sink_enable_decompression(struct intel_atomic_state *state,
 			!connector->dp.dsc_decompression_aux))
 		return;
 
-	/* TODO: Enable passthrough in the MST last branch device if needed. */
+	intel_dp_sink_set_dsc_passthrough(connector, true);
 	intel_dp_sink_set_dsc_decompression(connector, true);
 }
 
@@ -3022,7 +3040,7 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
 		return;
 
 	intel_dp_sink_set_dsc_decompression(connector, false);
-	/* TODO: Disable passthrough in the MST last branch device if needed. */
+	intel_dp_sink_set_dsc_passthrough(connector, false);
 }
 
 static void
-- 
2.39.2

