Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE4zI5CkkmnCwAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 06:01:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25535140EA4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 06:01:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 890DE10E135;
	Mon, 16 Feb 2026 05:01:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7gGdMdT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D39410E13E;
 Mon, 16 Feb 2026 05:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771218060; x=1802754060;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=JXhBYgIys61HPZ61dOi4bYMtMptcLwITA5FR5YQ82fU=;
 b=j7gGdMdTjj+ARo+Es2ln5NQOVc+RR46avB10t/Z+UcQA8eaaDM8nNR0m
 +UrJZ0inJXQXmCARVkPx6RYK3306K4C3OjDkSsAR5U3lDAdYd3JJdvl1r
 ZHsvtwXX6SToyT2zPZC16gFT3VrCMvk37SYF9y7E902ugD2JGNo8ZE/oJ
 6NP4/deid/jgy86Lxz5JM47bxWhL7U4jqme3J+6sTt3vKfOe2CwR9uyVZ
 tHvVNRJBSs2/3kfju2YCEjUJ3q0NxwfgTNtD0xBuur3C4v3B1YC+to3q7
 68p8LbIUj8kJcNrPT/7YFLEKPfZHcqv1mmPLcLka4RHGNAK3WAmG56RQu Q==;
X-CSE-ConnectionGUID: ATkrDqGXRau3WCX0wjLLzQ==
X-CSE-MsgGUID: tFaTmiUtSqqOaKdVF46dLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="94929087"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="94929087"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 21:01:00 -0800
X-CSE-ConnectionGUID: jHvhYCJJRMqD5JZHiUCYsw==
X-CSE-MsgGUID: z0bkoIMZRlON+UM9ro+jQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="212818500"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 15 Feb 2026 21:00:57 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Mon, 16 Feb 2026 10:29:39 +0530
Subject: [PATCH v3 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
 turnaround time
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-timeout-v3-1-055522c22560@intel.com>
References: <20260216-timeout-v3-0-055522c22560@intel.com>
In-Reply-To: <20260216-timeout-v3-0-055522c22560@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, uma.shankar@intel.com, 
 suraj.kandpal@intel.com, ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Arun R Murthy <arun.r.murthy@intel.com>, Cole Leavitt <cole@unwrap.rs>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,unwrap.rs:email,gitlab.freedesktop.org:url,intel.com:mid,intel.com:dkim,intel.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 25535140EA4
X-Rspamd-Action: no action

The port refclk enable timeout and the soc ready timeout value mentioned
in the spec is the PHY timings and doesn't include the turnaround time
from the SoC or OS. So add an overhead timeout value on top of the
recommended timeouts from the PHY spec.
The overhead value is based on the stress test results with multiple
available panels.

Reported-by: Cole Leavitt <cole@unwrap.rs>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14713
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 658890f7351530e5686c23e067deb359b3283d59..152a4e751bdcf216a95714a2bd2d6612cbbd4698 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -78,10 +78,10 @@
 #define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
 #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
-#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
+#define XELPDP_PORT_RESET_START_TIMEOUT_US		10
 #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS		2
 #define XELPDP_PORT_RESET_END_TIMEOUT_MS		15
-#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
+#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			10
 
 #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
 #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104

-- 
2.25.1

