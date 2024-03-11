Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0592877A49
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 05:16:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851F110E00C;
	Mon, 11 Mar 2024 04:16:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5NMgJ4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F36510E00C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 04:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710130560; x=1741666560;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mUu42Z27C9Dbhn2pTDs4dxwg0gF/QNq9NBCdccQjEC0=;
 b=F5NMgJ4tBHzCO+S+BM8zcDEA8g+QLtvAePB2tR7zUjM1BrKyDqSRVsLe
 62t4NrwBrEj2EPAOE/2nec/YuqDvWQCE2OrZTXFPIXzH7Ebb++1r9sPjW
 MU11J9Fr6+SMSeSuIczI4kQpx66puCxOb9v1Y05BNPEt/jAwrglgOQT0/
 SMNsBTzqWvsadBJcZ9mLF0vA2dwgQ+Kez+5nCB5lrCk4rS3KQMog67/Kg
 OErtchoOU/uSlldIwToNFsOY2/etjkO/VO6m9eyNkF3MdYlAEKWt03Vi0
 fFWRM/wT2PftGI9uTZouE4LNTWo+AJ08XqFh2uYdYLioLfNIvNP6IlanT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="4943159"
X-IronPort-AV: E=Sophos;i="6.07,115,1708416000"; 
   d="scan'208";a="4943159"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2024 21:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,115,1708416000"; d="scan'208";a="15602220"
Received: from shekharc-ms-7d25.iind.intel.com ([10.190.239.16])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2024 21:15:57 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, matthew.d.roper@intel.com,
 clinton.a.taylor@intel.com, shekhar.chauhan@intel.com
Subject: [PATCH v5] drm/i915/dp: Increase idle pattern wait timeout to 2ms
Date: Mon, 11 Mar 2024 09:45:04 +0530
Message-Id: <20240311041504.806058-1-shekhar.chauhan@intel.com>
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
but for Xe2LPD and possibly future display IPs,
it requires a 1640us (rounded up to 2ms) timeout
whilst waiting for idle patterns for MST streams.

To simplify the code, the timeout is uniformly
increased by 1ms across all platforms/display IPs.

v1: Introduced the 2ms wait timeout.
v2: Segregated the wait timeout for platforms before & after LNL.
v3: Fixed 2 cosmetic changes.
v4: Revert to v2 design with commit message enhancements.
v5: Minor cosmetic changes to the commit message.

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

