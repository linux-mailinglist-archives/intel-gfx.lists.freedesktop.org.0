Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B6BB39D1E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D4B10E9A7;
	Thu, 28 Aug 2025 12:22:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JWulkEpy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B575F10E9B1;
 Thu, 28 Aug 2025 12:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383758; x=1787919758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oHhKv0N789X9C25XK5phkcCzpJHPE77wHXlikpvhYA8=;
 b=JWulkEpyNYnF74fUcIV+HTCPVfhWhHpPsUJCHQayxpx6Ild9o81V7kvE
 RG3RZwesoDY6nhxgAT/UC2p9KjhOmT2nZqNU1Q1dpF2mEUlAeOhsYGUgm
 G9YWS6Owe1Sm+z2WbOz5qgfOVm2Acjs7jQzERPoDR6SUmjShUuN6jZOy0
 Mr/GcB4JQLyWoFmxA+TKhRwUcOB4CmGGeQlwimwMS5k3HEt7HUoQqtpX3
 EG/mXrF7xSDSo/4x3u4u/cciFde2jg9MKokTRwC3H2/86j8XMPwqOvRhS
 JgKZumw3+qKHQWzSCaOAba/8BsbrF9aee/XDZKOZ6uVOOKMz4PWLYQZKm A==;
X-CSE-ConnectionGUID: XK+BdDwURNCSjtBLcq8unA==
X-CSE-MsgGUID: nBvnPdMXSJG+tTcwPL5X/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053290"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053290"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:37 -0700
X-CSE-ConnectionGUID: Nw18NrtFTzGisK97UbmRSA==
X-CSE-MsgGUID: HH0RVxDSTli7/4Qb5ujNUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271303"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH 19/20] drm/i915/ddi: prefer poll_timeout_us() over
 readx_poll_timeout()
Date: Thu, 28 Aug 2025 15:21:01 +0300
Message-ID: <63b10a36c7ab545c640b24bc8fc007ce2ea74623.1756383233.git.jani.nikula@intel.com>
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

Unify on using poll_timeout_us() throughout instead of mixing with
readx_poll_timeout(). While the latter can be ever so slightly simpler,
they are both complicated enough that it's better to unify on one
approach only.

While at it, better separate the handling of error returns from
drm_dp_dpcd_readb() and the actual status byte. This is best achieved by
inlining the read_fec_detected_status() function, and switching to
drm_dp_dpcd_read_byte().

v2: Use drm_dp_dpcd_read_byte() (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 32 ++++++++----------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4e4ea3a0ff83..46017091bb0b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2340,34 +2340,24 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
 		drm_dbg_kms(display->drm, "Failed to clear FEC detected flags\n");
 }
 
-static int read_fec_detected_status(struct drm_dp_aux *aux)
-{
-	int ret;
-	u8 status;
-
-	ret = drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status);
-	if (ret < 0)
-		return ret;
-
-	return status;
-}
-
 static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
 {
 	struct intel_display *display = to_intel_display(aux->drm_dev);
 	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
-	int status;
-	int err;
+	u8 status = 0;
+	int ret, err;
 
-	err = readx_poll_timeout(read_fec_detected_status, aux, status,
-				 status & mask || status < 0,
-				 10000, 200000);
+	ret = poll_timeout_us(err = drm_dp_dpcd_read_byte(aux, DP_FEC_STATUS, &status),
+			      err || (status & mask),
+			      10 * 1000, 200 * 1000, false);
 
-	if (err || status < 0) {
+	/* Either can be non-zero, but not both */
+	ret = ret ?: err;
+	if (ret) {
 		drm_dbg_kms(display->drm,
-			    "Failed waiting for FEC %s to get detected: %d (status %d)\n",
-			    str_enabled_disabled(enabled), err, status);
-		return err ? err : status;
+			    "Failed waiting for FEC %s to get detected: %d (status 0x%02x)\n",
+			    str_enabled_disabled(enabled), ret, status);
+		return ret;
 	}
 
 	return 0;
-- 
2.47.2

