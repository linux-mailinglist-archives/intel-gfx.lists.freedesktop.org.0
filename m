Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7AD565B98
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01D610F0C6;
	Mon,  4 Jul 2022 16:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD0B10E00A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 07:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656919452; x=1688455452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9mihaCnM0LoU2O8y7WkUueMYEASAEmEMj9ebrF40k2o=;
 b=OaVNLhVRkqXNQFdPF4HDaHp7oPEvlYCuVUW9TNbvF1bQDqCYlLD7XqEp
 fL3bfLNFc3csWI+pwwTIRu15yt3zgiM5/vCKnDFFFucCf6cj/iObOdZsA
 zQ8MXC1fJkFMMF+r2VZK1CtCKAOeOxGD/ewbOcerWc9qcq9M+jVlbwpjk
 7Jzydc8O9IqOLa4HuGVeIpJW+ZFmgsG+3jq1zsU1DYiNzK5FVL6GLwuAa
 tf3GDwlEEQFYoWdUFeLklKvPGrrvpmLamWUnzXLvSynGbf1Vnf7Dq4c/4
 b9BfO4pfesyGIFKHVi9Wh2lI1S/a12OmACgKxGvIzrETVlJ4KonXXzRdK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="284165849"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="284165849"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 00:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="542481784"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga003.jf.intel.com with ESMTP; 04 Jul 2022 00:24:09 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jul 2022 12:53:52 +0530
Message-Id: <20220704072352.1331682-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220627105939.657782-1-arun.r.murthy@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: tprevite@gmail.com, paulo.r.zanoni@intel.com, jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On linktraining error/timeout before retry need to wait for 400usec as
per the DP CTS spec1.2
Under section 2.7.2 AUX Transaction Response/Reply Time-outs
AUX Replier (the uPacket RX) must start sending the reply back to the AUX
requester (the uPacket TX) within the response period of 300μs. The timer
for Response Time-out starts ticking after the uPacket RX has finished
receiving the AUX STOP condition which ends the AUX Request transaction.
The timer is reset either when the Response Time-out period has elapsed or
when the uPacket RX has started to send the AUX Sync pattern (which follows
10 to 16 active pre-charge pulses) for the Reply transaction. If the
uPacket TX does not receive a reply from the uPacket RX it must wait for a
Reply Time-out period of 400us before initiating the next AUX Request
transaction. The timer for the Reply Time-out starts ticking after the
uPacket TX has finished sending the AUX STOP condition.

The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in Displayport
AUX transactions for compliance testing")
removes this delay mentioning the hardware already meets this requirement,
but as per the spec the delay mentioned in the spec specifies how long to
wait for the receiver response before timeout. So the delay here to wait
for timeout and not a delay after timeout. The DP spec specifies a delay
after timeout and hence adding this delay.

v2: fixed checkpatch warning and error
v3: used proper indentation
v4: added DP CEA 1.2 spec details in patch commit msg

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2bc119374555..722c9f210690 100644
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
+				      DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
 				usleep_range(400, 500);
 				continue;
 			}
-- 
2.25.1

