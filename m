Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DDA8D5EDF
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E12910E628;
	Fri, 31 May 2024 09:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E4WPD1xF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA5710E5C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149045; x=1748685045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HK20Xf1Cco2A7EfjpIJrKRNBvgdJwkUhsAqNkW+ZCB4=;
 b=E4WPD1xFZL0E5cAPGSVN+wS0QXio/kURi6WV1Or074yEB3em43cnOUQT
 W6ud+X0bTdXKSCrgSq4SVOhN5wlk6kk7LXUfgXmDWa8nkgrUBjv6zy0vT
 Trs8nx6NvFx9cV83qZCY/HWRIFLIpNqI1caIvXxEF6FWXsFr+UK2bft+W
 b4n3x4iRKDYnCNEJkxguZ4im0ZVhoj7MGLu3tEdGQyq5zgeA0NztQ0r7a
 oLm644sVFXWwcVrXzm3FmY1cm5a2Sf23cAuo7x4CUlMvZiZVsHIIzVsPq
 K61ywx7hun7+tTMKIG7AC7wyRcgHYCk+VhMGe7VJcA4uELKbqUJrWYuMr g==;
X-CSE-ConnectionGUID: b4TWgxkzT1SfXngfZcCbSA==
X-CSE-MsgGUID: 7p8JAR32RKWtl6z6ru49Iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446588"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446588"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:45 -0700
X-CSE-ConnectionGUID: 9VA2qAB4SVKoHJ8ZgIQOvw==
X-CSE-MsgGUID: OYKG8YDOQeK/ze8aQSLcVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189289"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 17/19] drm/i915/psr: Modify dg2_activate_panel_replay to
 support eDP
Date: Fri, 31 May 2024 12:49:51 +0300
Message-Id: <20240531094953.1797508-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There are couple of bits in PSR2_CTL which needs to be written in case of
eDP Panel Replay

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 81e29223c026..0a5f0481c6ad 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -926,6 +926,18 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+
+	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
+		u32 val = LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
+
+		if (intel_dp->psr.req_psr2_sdp_prior_scanline)
+			val |= EDP_PSR2_SU_SDP_SCANLINE;
+
+		intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder),
+			       val);
+	}
 
 	intel_de_rmw(dev_priv,
 		     PSR2_MAN_TRK_CTL(dev_priv, intel_dp->psr.transcoder),
-- 
2.34.1

