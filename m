Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04028B39CFC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE6810E98E;
	Thu, 28 Aug 2025 12:21:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JT0AVYxG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79E9F10E98E;
 Thu, 28 Aug 2025 12:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383684; x=1787919684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e6NlzyFdGjvZbyKFqroeW9tAr7d76FEB1fwNxN5yJj0=;
 b=JT0AVYxGFMyu5vGZoPBLsUsO3sBFxZLLqfzSNrr8GnH7qVTs3Jy2uhNM
 cWo44/f5/xaVlbuqHw7sJS5img4eCIo1b0thQ+P4NeBMOygNmDC17TdcZ
 Hx9AWosfrvjB2wLm5k16mYCeRvXAV30HOzbVSzd/GZrkf9+qOt1Pnc4+e
 DMKhTTzEUv/8kVVWEGJO45OobHanreTpXBro29TvZ4sOCbSbDNLGDfM/+
 4T9EIV59MzFFpnVQMTTDttRDaBWyBf1IwBRcGRa0SqiCUt3A7h3zFdjW+
 jxgTeAG8o8Bd2Y4bbK5QjDisL3R8GC+Vlm/DCrG4e8+zADVjHBO0WVOY+ Q==;
X-CSE-ConnectionGUID: IlIw4vrrTcOkbbHVM05NHQ==
X-CSE-MsgGUID: 6G13GjC6Rza0R9hXUAmTIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58360039"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58360039"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:23 -0700
X-CSE-ConnectionGUID: PfOtrE5pTeut2ZETm583SA==
X-CSE-MsgGUID: cHCtASzCRfarwOptcdzAHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169999576"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 03/20] drm/i915/hdcp: use generic poll_timeout_us() instead of
 wait_for()
Date: Thu, 28 Aug 2025 15:20:45 +0300
Message-ID: <2871a07337401c25ef3df44073c5e78fedc45e8e.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 100 us sleep instead. The timeout remains at 1
ms.

While at it, use the last failing value for debug logging instead of
reading it again.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 0c98e50501a6..d6a105959d26 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -817,6 +817,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	enum port port = dig_port->base.port;
 	unsigned long r0_prime_gen_start;
 	int ret, i, tries = 2;
+	u32 val;
 	union {
 		u32 reg[2];
 		u8 shim[DRM_HDCP_AN_LEN];
@@ -905,8 +906,10 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		       HDCP_CONF_AUTH_AND_ENC);
 
 	/* Wait for R0 ready */
-	if (wait_for(intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
-		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
+	ret = poll_timeout_us(val = intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)),
+			      val & (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC),
+			      100, 1000, false);
+	if (ret) {
 		drm_err(display->drm, "Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
@@ -938,16 +941,16 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 			       ri.reg);
 
 		/* Wait for Ri prime match */
-		if (!wait_for(intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
-			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
+		ret = poll_timeout_us(val = intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)),
+				      val & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC),
+				      100, 1000, false);
+		if (!ret)
 			break;
 	}
 
 	if (i == tries) {
 		drm_dbg_kms(display->drm,
-			    "Timed out waiting for Ri prime match (%x)\n",
-			    intel_de_read(display,
-					  HDCP_STATUS(display, cpu_transcoder, port)));
+			    "Timed out waiting for Ri prime match (%x)\n", val);
 		return -ETIMEDOUT;
 	}
 
-- 
2.47.2

