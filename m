Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28004B2ECBE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 06:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3BC10E871;
	Thu, 21 Aug 2025 04:27:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iaf6L5Na";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE2810E871;
 Thu, 21 Aug 2025 04:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755750426; x=1787286426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ty68ua6pF2Qvg6YI456+4lA0VJxCxTW/d+nOwE8+Keo=;
 b=iaf6L5Na8Xu1oomK7eUA/1B7TTq7AnmijFs6NsT3g+2iiVlq3h04Z8c6
 Bhkz+BmsWLgJ7A+pYp/THhH7eW6MHhcFI8WqniaHnwQp8GkSUXg+htu6T
 gMuFZBF6XHCegMtO/bHdhAQ7AD7Us1Add9YuVOt5xlf7Z9AdgTT5+iejL
 rSVCwLRIlNbm0tU2rl5uf9azjrOWRRBfOrY4WTA92+mnac8wQzA2LZrds
 ufWsA8Gi6y6wx4ORlQ2TVnNbB3zSb62q6JbJBd11ioVfET7Xd8W1fjetn
 txmN52BoifYwaTv5PQxS+Oy+hi+C6KKEDtyWO1VXbRukoq06vrBVibyZ3 g==;
X-CSE-ConnectionGUID: WKXsiSs1S2CantPMrZGGGw==
X-CSE-MsgGUID: zvkbxxI9TxWdqn6/VqlSuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57054910"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="57054910"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:27:06 -0700
X-CSE-ConnectionGUID: QK8rAIH0Srmsh9sFFbZuEw==
X-CSE-MsgGUID: 11DA8v7pRLWuJJf71rGM2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="168667734"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 20 Aug 2025 21:27:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 3/3] drm/i915/edp: eDP Data Overrride
Date: Thu, 21 Aug 2025 09:56:53 +0530
Message-Id: <20250821042653.269227-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250821042653.269227-1-suraj.kandpal@intel.com>
References: <20250821042653.269227-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

We need override certain link rates in favour of the next available
higher link rate. The Link rates that need to be overridden are
indicated by a mask in VBT. To make sure these modes are skipped we
don't add them in them in the sink rates array.

--v2
-Update the link rates after we have a final set of link rates [Ankit]
-Break this patch up [Ankit]
-Optimize the assingment during loop [Ankit]

--v3
-Add protection against broken VBTs [Jani]

--v4
-Fix build errors
-Create a seprate function to check if edp data override is selected
and using the correct vbt

--v5
-Use correct number to check the num of edp rates [Ankit]

--v6
-No seprate function check if vbt is broken in the reject rate function
[Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b689..12c8f0d80c95 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4277,6 +4277,23 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
 }
 
+static void
+intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int *sink_rates = intel_dp->sink_rates;
+	int i, j = 0;
+
+	for (i = 0; i < intel_dp->num_sink_rates; i++) {
+		if (intel_bios_encoder_reject_edp_rate(encoder->devdata,
+						       intel_dp->sink_rates[i]))
+			continue;
+
+		sink_rates[j++] = intel_dp->sink_rates[i];
+	}
+	intel_dp->num_sink_rates = j;
+}
+
 static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
@@ -4327,6 +4344,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 		intel_dp->use_rate_select = true;
 	else
 		intel_dp_set_sink_rates(intel_dp);
+
+	intel_edp_set_data_override_rates(intel_dp);
 }
 
 static bool
-- 
2.34.1

