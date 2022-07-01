Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 807325631E2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 12:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F267D10E4C0;
	Fri,  1 Jul 2022 10:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDB310E9E4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 10:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656672560; x=1688208560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3KS21XVmgXZGlSEtdkLFgaDbFX5wvUHRvTzuFs3DOBs=;
 b=byReZ1wXbKGcDQWzfpdfj2J2Qm0C8kGc89JIZ+f6MbnqoZiV9CaBp6kz
 97J36shCk0bHHy2n9FcijI4K2d7wUPEkkisnbrnSKpEgPHXqFhAQmGZxM
 UpFQyFJjN7zGa50aCUO3oV5aJwy5o9i+4yJ7jtwh6h/2K7tYeZKpBzc+h
 Qm1Ax4xiq7OF27MgfFqC4rEA7n35Y0mAqUvoIL+nzjqV0+GDI3yns8li7
 Yc0Rfa1LzrhFUrm4QBqvAOTTBXyXt/bVPvUz0b5x7xXuk22+gEA4A1yd5
 nhxmrpKlArb0YyWGwf68620YoAiRQN5eahHBrYTTaGGElvFexrjuzB2tp w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="281386932"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="281386932"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="541699256"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga003.jf.intel.com with ESMTP; 01 Jul 2022 03:49:17 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Jul 2022 16:18:59 +0530
Message-Id: <20220701104859.1236585-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220627105939.657782-1-arun.r.murthy@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2] drm/i915/dp: wait on timeout before retry
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
Cc: tprevite@gmail.com, paulo.r.zanoni@intel.com, jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On linktraining error/timeout before retry need to wait for 400usec as
per the DP CTS spec1.2

The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in Displayport
AUX transactions for compliance testing")
removes this delay mentioning the hardware already meets this requirement,
but as per the spec the delay mentioned in the spec specifies how long to
wait for the receiver response before timeout. So the delay here to wait
for timeout and not a delay after timeout. The DP spec specifies a delay
after timeout and hence adding this delay.

v2: fixed checkpatch errors and warnings

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2bc119374555..3fcff3995009 100644
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
+				DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
 				usleep_range(400, 500);
 				continue;
 			}
-- 
2.25.1

