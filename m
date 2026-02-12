Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGXDI/hTjWlz1AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:15:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D4812A494
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D833710E6D5;
	Thu, 12 Feb 2026 04:15:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N+1x/cQI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD28310E6D4;
 Thu, 12 Feb 2026 04:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770869750; x=1802405750;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=0QCtpGoBjg8KzKYshd9mvfy7nkNZ1yuuOgf+G2dzDOE=;
 b=N+1x/cQIQzgjsLr7WoB/cg/ooELG6oSxS6gA1Y1TKuloLIVHb332pY5t
 QJ3fiQzoT/rbW29dCxHiP3PNXyvzd1SXIFdCfCjkzjbsfhEUnbxOzXGqS
 IF1F0AZJ2+kisPyj1cPs9abQBQc3V3rsdYE/LnUqRM+SNxicvFqeBMvjx
 8R5aQPGmcbkckC91dx1P3V0qni4x49bjuQCbHTDH5n/IiysIeDEa7+mH+
 F9j15VAdAbEKelQrQk+YzouM/lL6SIpdLIcPaTo8j0Tq4GTx9DfceTMV8
 aXdObBx23DLEegPjCD2jmm0XPi0VOrTWAPS+R9CVS6Nj1XjSwr3b9y190 A==;
X-CSE-ConnectionGUID: /YVum55gRt28tSsoZ+D4sQ==
X-CSE-MsgGUID: idhh606JRmCIqQz007PAHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="75881026"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="75881026"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:15:49 -0800
X-CSE-ConnectionGUID: Mx8yP6leTWWgeYE04kyrqQ==
X-CSE-MsgGUID: oUpVdNriQ46w+8bHlwHV9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="235437109"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa002.fm.intel.com with ESMTP; 11 Feb 2026 20:15:48 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Thu, 12 Feb 2026 09:44:20 +0530
Subject: [PATCH 2/2] drm/i915/display/lt_phy_regs: Add SoC/OS turnaround time
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-timeout-v1-2-591fa766e8a1@intel.com>
References: <20260212-timeout-v1-0-591fa766e8a1@intel.com>
In-Reply-To: <20260212-timeout-v1-0-591fa766e8a1@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, uma.shankar@intel.com, 
 suraj.kandpal@intel.com, ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Arun R Murthy <arun.r.murthy@intel.com>
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
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 66D4812A494
X-Rspamd-Action: no action

On top the timeouts mentioned in the spec which includes only the PHY
timeouts include the SoC and the OS turnaround time.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 37e46fb9abde4156ebd7ad1eb6cbbc12e7026b23..ff6d7829dbb9c50b2001d079b435b894faf9659e 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -6,12 +6,12 @@
 #ifndef __INTEL_LT_PHY_REGS_H__
 #define __INTEL_LT_PHY_REGS_H__
 
-#define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
+#define XE3PLPD_MSGBUS_TIMEOUT_FAST_US		500
 #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	2
-#define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
+#define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	10
 #define XE3PLPD_RATE_CALIB_DONE_LATENCY_MS	1
-#define XE3PLPD_RESET_START_LATENCY_US	10
-#define XE3PLPD_PWRDN_TO_RDY_LATENCY_US	4
+#define XE3PLPD_RESET_START_LATENCY_US		10
+#define XE3PLPD_PWRDN_TO_RDY_LATENCY_US		10
 #define XE3PLPD_RESET_END_LATENCY_MS		2
 
 /* LT Phy MAC Register */

-- 
2.25.1

