Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A08BD65B142
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 12:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0134B10E32F;
	Mon,  2 Jan 2023 11:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC70E10E32F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 11:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672659580; x=1704195580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BETFG3T7aKQitc2BXqmvl5XwsU3MG0eWxA9avu9QJ1M=;
 b=O6Y57LHqEfkuHrXUmkzmX7+7HEkzcPYH2ExF+TQg6eqOjd2AG0Yl8/Ib
 cMqsKOuLVsWF4tKBqtV1RGvXZcK5lAOuD0oeyCglycbX8tOFhkleLdS7O
 Fj78PnjCi1jesKfUQJzMkcNVPwUwUMalKKqDgdgPIhuBEfa1MqQFnAzh9
 7AYAztG49PcOG/ck2BNh7uqfo/Ie8z3I+ey2NeUWOmYKP/FhUVfCUmN6u
 macuUJqm9oQeDSlzb/PSz639q3+38ufsK69w7dIU4dHPrN47HNGC1/lRj
 2NRHvAh9aCMucfoSyydVlbz26xPeoWBNuZBbkD9bYx3e0IopDjPqQOZ++ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="407729765"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="407729765"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 03:39:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="796849490"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="796849490"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jan 2023 03:39:38 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 13:39:37 +0200
Message-Id: <20230102113937.9263-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement workaround for DP2 UHBR
 bandwidth check
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to spec, we should check if output_bpp * pixel_rate is less
than DDI clock * 72, if UHBR is used.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bf80f296a8fdb..13baf3cb5f934 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1582,6 +1582,17 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "DSC: compressed bpp %d slice count %d\n",
 			    pipe_config->dsc.compressed_bpp,
 			    pipe_config->dsc.slice_count);
+
+		/* wa1406899791 */
+		if (intel_dp_is_uhbr(pipe_config)) {
+			int output_bpp = pipe_config->dsc.compressed_bpp;
+
+			if (output_bpp * adjusted_mode->crtc_clock >=
+			    pipe_config->port_clock * 72) {
+				drm_dbg_kms(&dev_priv->drm, "DP2 UHBR check failed\n");
+				return -EINVAL;
+			}
+		}
 	}
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
-- 
2.37.3

