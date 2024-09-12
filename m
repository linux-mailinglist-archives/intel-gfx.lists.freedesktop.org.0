Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E889976044
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 07:15:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0BA10E9A3;
	Thu, 12 Sep 2024 05:15:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ju27IZP0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B7810E9A3;
 Thu, 12 Sep 2024 05:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726118144; x=1757654144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XXJY3SlhdFlS17ylCS+OgBUVIH8/dhQI/nJ6xA9jBRY=;
 b=ju27IZP0bpSI0PhnvUTvfz45NDkL/aDzKKS22wejCXYxPk7QP/h2PCoM
 /d46MkzeZtG76ydKmAnzHYZ6fv72k6qPMQJlhFBII90D1u4/Ma26gG/J+
 H6aHSLwzWtrIDLuH09IYJ/DJ0+76fiQgKLTyp0yH6mY+iL0oOnhsCuxhn
 Q05Uqnd2rnILoRb8OCpNrX4V9KHdY19mJvX089shoVAyRbudqyWuZ3Iiz
 MitfSrzb+eJ8PjPIvzBBITP8tLnItHO+yJID4lyV9RNSlEt+afY6tblvl
 SqPhMaNKXlsUWpSTE4JQnliQJrHpCfg2FFQ5MGlhywPJE7EOPYDOnBtGj g==;
X-CSE-ConnectionGUID: V6c9Zla+TXiDeOQnAMGYig==
X-CSE-MsgGUID: IBGmH5SDSfWZKw87wShRhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35613924"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="35613924"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 22:15:44 -0700
X-CSE-ConnectionGUID: fCKIMAc2T+KS6jYNIvPLng==
X-CSE-MsgGUID: 6NExZf+VSm2vWyUNhhmemg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72388856"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa005.jf.intel.com with ESMTP; 11 Sep 2024 22:15:43 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Subject: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
Date: Thu, 12 Sep 2024 10:35:50 +0530
Message-Id: <20240912050552.779356-2-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240912050552.779356-1-arun.r.murthy@intel.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
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

Aux RD Interval value depends on the value read from the dpcd register
which is updated from the sink device use flseep thereby we adhere to
the Documentation/timers/timers-howto.rst

Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 397cc4ebae52..f41b69840ad9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -898,7 +898,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 
 	voltage_tries = 1;
 	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
-		usleep_range(delay_us, 2 * delay_us);
+		fsleep(delay_us);
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
@@ -1040,7 +1040,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	}
 
 	for (tries = 0; tries < 5; tries++) {
-		usleep_range(delay_us, 2 * delay_us);
+		fsleep(delay_us);
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
@@ -1417,7 +1417,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	deadline = jiffies + msecs_to_jiffies_timeout(400);
 
 	for (try = 0; try < max_tries; try++) {
-		usleep_range(delay_us, 2 * delay_us);
+		fsleep(delay_us);
 
 		/*
 		 * The delay may get updated. The transmitter shall read the
-- 
2.25.1

