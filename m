Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89E156321D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 13:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991ED11ADC6;
	Fri,  1 Jul 2022 11:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65EE111ADC7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 11:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656673417; x=1688209417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=baCssLcJpwX+BZp95+AC5ZWrPL8s8dO0ov2e2B3FCRA=;
 b=O1tl8Hi+B6wiw491Ukc6RmzTVwyT5R7LDEsgT1IQCu2JwpRSnijn38P2
 unFsiqZ/OYeraLdNS6qsQe51MGWAcvVyo/vUnnDHEmQ4/tvrA312mk6j6
 Rgn84PvefTVmahkAfKhtA/jxe1MYV+ZMIRE0NRKBfdLkPeGJbNG1a59h5
 H+kgqUOCjwFSnrSqYN7lLU6XGTKJtUkes6kB3THbD+EfpIbHIutZsUWpW
 nUqN9BR9KoJEos9LQnhjEbLB64+2Z/fk6Mh0H0Ak4NLYMhnTVqIuM37MX
 kVXycEiZ8AY23rKj7CZ+Z1d5Dl5472N706uNyz7H3/7qpDVt5/GxdesE1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="282656478"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="282656478"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 04:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="718590667"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2022 04:03:34 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Jul 2022 16:33:09 +0530
Message-Id: <20220701110309.1237002-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220627105939.657782-1-arun.r.murthy@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915/dp: wait on timeout before retry
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

v2: fixed checkpatch warning and error
v3: used proper indentation

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
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

