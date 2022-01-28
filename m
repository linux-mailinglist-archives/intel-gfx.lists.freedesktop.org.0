Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B666349F777
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D520610EF85;
	Fri, 28 Jan 2022 10:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658D410EF84
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366328; x=1674902328;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+CDzcM8L9Yf7Drqf/ZohRJxSNpZYXCgzcyDUQ4GfGGs=;
 b=g3ntle3gzMgvsKsYYoHHH+ZAZlCqS49xuo1YQHSa2hsk5/IBtVZPmz2W
 R/p8/AUUVv4JyUotZpF2/EYx6sXzJjJ78FWCDjG7bXbBvsAMMpzZ7lPsk
 dLutxB8Dsppo8yM8MBzlIuFwg0c8guuazjiJJd3Sk0qzKpdNeaY+uCa+G
 KUE+isxjpsm55VsyPhpz7FTlQnMJE3O1Hbo/r0SXJTtQ3nWshkeWcDcgN
 6fL/e7CNKINl/OiueAehd0hKHJLgEToSh4sq4S8HYSnEISbCs5I+LJb7b
 3YmTrA7HsON6q6neMbejlkvQx1cXSxxqnDWId7s7cfkrjWefnuWLlGJAg g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="244698744"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="244698744"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="536084687"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 28 Jan 2022 02:38:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:56 +0200
Message-Id: <20220128103757.22461-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/17] drm/i915: Always check dp_m2_n2 on
 pre-bdw
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
index 79d110c1f947..6d435c8be8a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6478,13 +6478,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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

