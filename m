Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBrON7XJzGn5WgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 09:31:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7429E375EB7
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 09:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF93710EC77;
	Wed,  1 Apr 2026 07:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fx2UYAMO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390A310EC73;
 Wed,  1 Apr 2026 07:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775028658; x=1806564658;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q/vF4hy/6vFd0j8mmcCjnBpayOJln7TD15/DTLDliGc=;
 b=fx2UYAMOcdIMkTEX8jASI4NEsZk+gYaEMGEGyf3NmaAThzicBg0htIpG
 tWfhfzSMEHW03hbB5J2Zy8J3wqYkgP2emAh73miTza5MxwyStip9cvU7k
 WGEPkuG/+/4FryTu8qGfTRNYpAz5McAX+ipe5/N2HP7V9xBBUYyorM08b
 01zPnrTsPccXW71s+d3wgu8FZVINmFNx2UNYP2AGWApOBTB389YeNBkw3
 hNn9yAQO5yD+DEt3EJABDdf+uzMxJJ9dZ7kW8XNZq27xGfB+YxnSiE+aN
 hmSHNy3eIh7u0nfClJ7hcT8GEohCc9/ox32lJ91zdkWtuG6B5O7ytJLjz Q==;
X-CSE-ConnectionGUID: JSZDMhgyS666ewvFlTPE5w==
X-CSE-MsgGUID: K/kcGZ30TU+6hzY5tbNrNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="79945685"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="79945685"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:30:58 -0700
X-CSE-ConnectionGUID: Uek4mlqnRSC++QRLMqrUdg==
X-CSE-MsgGUID: oGuoVyvyTZK2Skcc4cCAGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="226581904"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:30:55 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com,
	luciano.coelho@intel.com,
	imre.deak@intel.com
Subject: [PATCH] drm/i915/dmc: Reduce wakelock hold time
Date: Wed,  1 Apr 2026 13:01:59 +0530
Message-ID: <20260401073159.3227703-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 7429E375EB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

__intel_dmc_wl_release() schedules delayed work which releases the DMC
wakelock after a fixed timeout of 50 ms. Until the delayed work runs,
the wakelock remains held and prevents entry into deeper DC states.

The delayed work mechanism addresses two separate concerns:

1. Avoid blocking the MMIO caller context: The actual wakelock release
clears DMC_WAKELOCK_CTL_REQ and then waits for DMC_WAKELOCK_CTL_ACK
to deassert via __intel_de_wait_for_register_atomic_nowl(), with a
timeout of DMC_WAKELOCK_CTL_TIMEOUT_US (up to 5 ms). Deferring this
sequence to a workqueue avoids potentially long polling from the
intel_dmc_wl_put() / intel_de_*() call paths.

2. Provide a debounce/guard window: DMC_WAKELOCK_HOLD_TIME adds a
delay before scheduling the release work, effectively keeping the
wakelock held for a period after the last MMIO access. This likely
helps avoid unnecessary DC state entry/exit attempts between closely
spaced accesses.

Reducing DMC_WAKELOCK_HOLD_TIME from 50 ms to 5 ms only shortens the
debounce/guard window in (2), while the deferred release
mechanism in (1)remains unchanged.This should allow the system to
enter deeper DC states sooner once MMIO activity settles down.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---

Notes:
    RFC: https://patchwork.freedesktop.org/patch/711634/

 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 73a3101514f3..ddf1a1f1ebc3 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -46,7 +46,7 @@
  * atomic variant of waiting MMIO.
  */
 #define DMC_WAKELOCK_CTL_TIMEOUT_US 5000
-#define DMC_WAKELOCK_HOLD_TIME 50
+#define DMC_WAKELOCK_HOLD_TIME 5
 
 /*
  * Possible non-negative values for the enable_dmc_wl param.
-- 
2.43.0

