Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1594F9851AB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 05:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B630910E8F1;
	Wed, 25 Sep 2024 03:54:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q12Dw1bu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48FE910E77F;
 Wed, 25 Sep 2024 03:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727236461; x=1758772461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pfDHc0y2wR5gqBFWX4DS7FejSEwsFvibJo2PwwcIP2U=;
 b=Q12Dw1buggaA+PjJBwQSdE81Igv38Iwe6Z/TOf6JUbRVxPbpPpjFo+t3
 Y/NlPZ7OrOxK+zqSExUhnauYWhWzT/iCckWmNVOuAq6Sz1wEzBYlbRFRk
 mte8KNqcBW8Nt9u2meDc0Rqig5C7/H6wRlbK4q4/lfEgTZE3kQV31uzES
 mKta2inYOtplCNMmTOaRZnOHXTUf3OdAT6BSJ1ahzbpbsqroaQQiub42p
 9aYqJV7oJXEoDIHYfXPhW4CRX2JwUhHM1Nhn/Z2tEo5mJIoRNXEp3lpV4
 UrLM3v5dKUUfZ6HfbrTELMO9SO6pXeNKNGrrQrYJOISLO3OoNjsLIQiFX g==;
X-CSE-ConnectionGUID: l9Vnp9rZT3yUSy7eQ3Rj7A==
X-CSE-MsgGUID: cnpEo2FKTrKbS8uaMdnIeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="37640819"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="37640819"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 20:54:21 -0700
X-CSE-ConnectionGUID: lgfzQB8cRjeFnt7CkeXV7A==
X-CSE-MsgGUID: N7CuGbRQT86G/pWO3urIaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71781176"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 24 Sep 2024 20:54:19 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCHv2 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Date: Wed, 25 Sep 2024 09:14:32 +0530
Message-Id: <20240925034432.1777029-4-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240925034432.1777029-1-arun.r.murthy@intel.com>
References: <20240925034432.1777029-1-arun.r.murthy@intel.com>
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

As per DP spec the timeout for LANE_CHANNEL_EQ_DONE is 400ms. But this
timeout value is exclusively for the Aux RD Interval and excludes the
time consumed for the AUX Tx (i.e reading/writing FFE presets). Add
another 50ms for these AUX Tx to the 400ms timeout.
Ref: "Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence" of
DP2.1a spec.

Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1bac00e46533..0dde31f2df20 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1414,7 +1414,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	}
 
 	/* Time budget for the LANEx_EQ_DONE Sequence */
-	deadline = jiffies + msecs_to_jiffies_timeout(400);
+	deadline = jiffies + msecs_to_jiffies_timeout(450);
 
 	for (try = 0; try < max_tries; try++) {
 		fsleep(delay_us);
-- 
2.25.1

