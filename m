Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E88A1324C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 06:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF92B10E551;
	Thu, 16 Jan 2025 05:20:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUDfmoFM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835F810E551;
 Thu, 16 Jan 2025 05:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737004846; x=1768540846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tNCFREaKW+BWeQUvXxiolRxV3mUBko5vborvvmF22AA=;
 b=hUDfmoFM6qRaVGI07whfVGgWOXScDM+L4Pz3J2cAoqaIxkx6Z5dAylUV
 1yCMKOmRkaNG+RQBQkt1XXgoYjvdU094FLrqQOt7WPp06mQ3uXRb9mV0S
 ABWdeNZc1YyKZYKwUexDeJEU6g02XjsOs5Ia3ByPVzRTpLQ6HAgBw5lw0
 U1kEKnokT+NN3SFwWqKE+Le67VauwC3mrDSzxfDf35ZjWda6rSe1SbW7Q
 VEVltRZhMa0wyLSwHDecQSU3sDF8uFk5dGK1F2ojCxzX2lY6cNNSCpiYT
 d9z3Dy3XagCJrykLV9XI0hMDSOlWee55/mwd/3rzaN097fvOkRR5rNXn7 Q==;
X-CSE-ConnectionGUID: H72ajLwwTba86Lai1t2xDQ==
X-CSE-MsgGUID: 3nmuy8KsSUabRhRB6Ve37g==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="54914914"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="54914914"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 21:20:40 -0800
X-CSE-ConnectionGUID: NqyqIJZ3Rf+Wn4QS9yVO6A==
X-CSE-MsgGUID: //pbSK/pSh2TH6mbIjN73g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105959195"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 15 Jan 2025 21:20:38 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Use correct function to check if encoder is
 HDMI
Date: Thu, 16 Jan 2025 10:50:23 +0530
Message-Id: <20250116052023.981666-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Use intel_encoder_is_hdmi function which was recently introduced to
see if encoder is HDMI or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7464b44c8bb3..91d5629cd9f9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -41,7 +41,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
 	u32 rekey_bit = 0;
 
 	/* Here we assume HDMI is in TMDS mode of operation */
-	if (encoder->type != INTEL_OUTPUT_HDMI)
+	if (!intel_encoder_is_hdmi(encoder))
 		return;
 
 	if (DISPLAY_VER(display) >= 30) {
-- 
2.34.1

