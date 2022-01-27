Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E7149DE21
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:34:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC4710EDA8;
	Thu, 27 Jan 2022 09:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813F310EFC7
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276040; x=1674812040;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZZ+QrcEZqgJ3hzJBS98VnWsOxZFoKHo4SQXeeJnLAQs=;
 b=R6KjGRROPvyCkdXkFAU4hJDqI6DLOnWWAKzhwwARVxZ3xhI3m0UReKlw
 ZcmrqlG585mkVSqAgsKn5tE/vzGTPKezsAYAqz+s3lXLupBCPXOZsm+s3
 u+TkzXDSbPWKwlsT88CdXGSJ9YEQwetKzKwac84hRqF8JTHVsJBVQiXwW
 WUh3P1Mjwl+s4Ce8SqYZoAY2H5LlzF9ZVTvHdptqLunR39SyFqqAeZHBs
 OPGQ5xVhkjlzdujN6K70VW+axRjpCRFoGPH0N+DgT/eYu9m9041yMhMrv
 3y8t3t36SFgDw8Z6if31y1wVh86K8kHc0BSb5Ze4StYvyb6QmAO6S/sC4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="230374910"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="230374910"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="495669287"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 27 Jan 2022 01:33:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:33:03 +0200
Message-Id: <20220127093303.17309-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/14] drm/i915: Always check dp_m2_n2 on pre-bdw
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

No point in special casing the check of dp_m2_n2 on pre-bdw platforms.
Either the transcoder has M2/N2 in which case the values should be
set to something sensible, or it doesn't in which case dp_m2_n2 is
always zeroed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 93bb4f577960..4464beb2ce68 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6477,13 +6477,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
-	if (DISPLAY_VER(dev_priv) < 8) {
-		PIPE_CONF_CHECK_M_N(dp_m_n);
-
-		if (current_config->has_drrs)
-			PIPE_CONF_CHECK_M_N(dp_m2_n2);
-	} else
+	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
 		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
+	} else {
+		PIPE_CONF_CHECK_M_N(dp_m_n);
+		PIPE_CONF_CHECK_M_N(dp_m2_n2);
+	}
 
 	PIPE_CONF_CHECK_X(output_types);
 
-- 
2.34.1

