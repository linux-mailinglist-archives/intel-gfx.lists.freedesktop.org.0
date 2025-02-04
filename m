Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2772A27315
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B361210E61F;
	Tue,  4 Feb 2025 13:43:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhmfgoKz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB0F110E34B;
 Tue,  4 Feb 2025 13:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738676565; x=1770212565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vwWd0GQNYcEcEBcVFgGMrf2+HkhhiKmsAAqV40hQBBo=;
 b=lhmfgoKz0eucsNqKtcJj3u7fBjLR4S2+9BsyYazLcL8qcQ/25vXeboeb
 73vZySd7MhHLWwN1eeDWHwr/L/oZT0kBYb1+zUD0StHtS8uNTxXxyKggf
 ECTl/A2HUtT4nBotRTIdWmM+M0ANo+vsi/xfv3auVAZwIO6Qy9RrqtSIo
 T3HPVl5sIksxiEE8WUfqX0sWdZU7Ha/5D9UIPC06dB3PraVnZkIAj4SfK
 K1fuc4GfjyKyDkz/u+dmbcuxacbjk1QrUcLBik9JX9imQrZH1NIMvrQYo
 Wr8DpU4U4k++TV5TNw+Lb+dH7rTRn0x40/vUWliutqckbIceLffNPyR2O g==;
X-CSE-ConnectionGUID: EfQqZ8QRQaOQvvhQHw8DQA==
X-CSE-MsgGUID: LL4kbn/fTCOt7pisKWio5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50622667"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50622667"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:42:45 -0800
X-CSE-ConnectionGUID: eKYylcQDQP2l1VIWdeCN0w==
X-CSE-MsgGUID: Ve+SMn3yRIGhkI16fIqPpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="111181013"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:42:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/cx0: convert to struct intel_display based
 platform checks
Date: Tue,  4 Feb 2025 15:42:28 +0200
Message-Id: <20250204134228.2934744-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250204134228.2934744-1-jani.nikula@intel.com>
References: <20250204134228.2934744-1-jani.nikula@intel.com>
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

Switch the IS_<PLATFORM>() checks to display->platform.<platform>, and
drop a number of struct drm_i915_private pointers in the process.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 48b0b9755b2b..0ff76ef10d4b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -34,13 +34,13 @@
 
 bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (IS_PANTHERLAKE(i915) && phy == PHY_A)
+	if (display->platform.pantherlake && phy == PHY_A)
 		return true;
 
-	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
+	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
 		return true;
 
 	return false;
@@ -3216,12 +3216,11 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	if (intel_encoder_is_c10phy(encoder))
 		return CX0_P2PG_STATE_DISABLE;
 
-	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
+	if ((display->platform.battlemage && encoder->port == PORT_A) ||
 	    (DISPLAY_VER(display) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
 		return CX0_P2PG_STATE_DISABLE;
 
-- 
2.39.5

