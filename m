Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A986D871477
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 04:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5353210F709;
	Tue,  5 Mar 2024 03:58:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNPqgPgA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD0E10F709
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 03:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709611129; x=1741147129;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4m26TKrTHaZoMv2hgivhKHOxx2iRYiPimZ+Cc4dZzD4=;
 b=XNPqgPgAWk1cZLUt96KLMdQpUu6jF37dznfm5et5LE5F0PGwX+AeY84+
 RsPBtiei5L81X1dlz2EeNwBKlubYGqDitVL+3xlwTPofCFOjznD3lVi7G
 A1igDq+z/uYde2jwxXfPw/qNkB7XvRxTwNSc4PzVZ78R+VhvoXTmn+pRJ
 8N8EcK8YrhyFLEBG8hiu8H6RXbR8IhdS7k4CekWaT3jzbFRpiaEPNtvMq
 bvijDHnijx8dUH2drJ78ieHSQMJeJK5h3IF6DJbsBqZ0GK/Auu47n4TFx
 /dIXwGtA+JX66H70XtZUB2QHsCTyaTqpEAc8MMr0joYyg0lW2SC/oxCkt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3996524"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="3996524"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 19:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9404730"
Received: from shekharc-ms-7d25.iind.intel.com ([10.190.239.16])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 19:58:44 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, matthew.d.roper@intel.com,
 clinton.a.taylor@intel.com, shekhar.chauhan@intel.com
Subject: [PATCH v4] drm/i915/dp: Increase idle pattern wait timeout to 2ms
Date: Tue,  5 Mar 2024 09:28:00 +0530
Message-Id: <20240305035800.779916-1-shekhar.chauhan@intel.com>
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

The driver currently waits 1ms for idle patterns,
but for LNL and later platforms, it requires a
1640us (rounded up to 2ms) timeout whilst waiting
for idle patterns for MST streams.

To simplify the code, the timeout is uniformly
increased by 1ms across all platforms.

v1: Introduced the 2ms wait timeout.
v2: Segregated the wait timeout for platforms before & after LNL.
v3: Fixed 2 cosmetic changes.
v4: Revert to v2 design with commit message enhancements.

BSpec: 68849
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bea441590204..05ba3642d486 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3680,7 +3680,7 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 
 	if (intel_de_wait_for_set(dev_priv,
 				  dp_tp_status_reg(encoder, crtc_state),
-				  DP_TP_STATUS_IDLE_DONE, 1))
+				  DP_TP_STATUS_IDLE_DONE, 2))
 		drm_err(&dev_priv->drm,
 			"Timed out waiting for DP idle patterns\n");
 }
-- 
2.34.1

