Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBB055B94F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 13:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B83D10FAE0;
	Mon, 27 Jun 2022 11:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1A610FAEF
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 11:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656327603; x=1687863603;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=26KyIcC1qi1gmbffa5RUNbdm9MANu0SQlT7oqcSDhG0=;
 b=irAVPXlL1d0MCxaAdPO9NB7kVHR7W5QRzRpOExV7P9pS+g0SzF3FYmtC
 GvyfcR8QWMRo3hpMXI7DDAXQMqqBiyYK+Ohf5V9EWA30XI/v6/5VYV6tI
 oQZRpg9xMmLyKPX2TiW2MapwveRPPPUd8U/OaGXUJNsElIXEnDKzrSbUo
 HPbvMwWURdq8UnxE8RXYPQQ/xctcdxL0RT4L/idH9FsltvSfeRJPcG7mx
 QgcNNHczfQIxRIG34qwTyNjJC6PHrBmvtMfqJa5ggun52DbhAZdS8Hmv5
 qVGANaz23BaSzHfxrxVr6hTW9EX/Qp/iW89iP5ewIwvzlI7c2aeGY3F2F A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10390"; a="264466661"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="264466661"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 04:00:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="594261671"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2022 04:00:01 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jun 2022 16:29:39 +0530
Message-Id: <20220627105939.657782-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Cc: tprevite@gmail.com, paulo.r.zanoni@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On linktraining error/timeout before retry need to wait for 400usec as
per the DP CTS spec1.2
The patch with commit id
74ebf294a1dd816bdc248ac733009a8915d59eb5
drm/i915: Add a delay in Displayport AUX transactions for
compliance testing
removes this delay mentioning the hardware already meets this
requirement, but as per the spec the delay mentioned in the spec
specifies how long to wait for the receiver response before timeout. So
the delay here to wait for timeout and not a delay after timeout. The DP
spec specifies a delay after timeout and hence adding this delay.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2bc119374555..a1fef1645d6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -286,13 +286,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			/*
 			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
 			 *   400us delay required for errors and timeouts
-			 *   Timeout errors from the HW already meet this
-			 *   requirement so skip to next iteration
 			 */
-			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
-				continue;
-
-			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
+			if (status & (DP_AUX_CH_CTL_RECEIVE_ERROR |
+						DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
 				usleep_range(400, 500);
 				continue;
 			}
-- 
2.25.1

