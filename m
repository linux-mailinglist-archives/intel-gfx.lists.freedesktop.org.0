Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 256E253C840
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 12:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF3810F67A;
	Fri,  3 Jun 2022 10:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2755910F67A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 10:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654251272; x=1685787272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=stBzEHhyB56FVDffEB1FUA8zSnN4jOUVb/Fqt9aMlRI=;
 b=P2h0vS2Y7+cHuhrSnngXJ6N7t3rLRIoRvx0ghMdbUm5NCVZBGlCZ0oiV
 HfutU5igDK02hgqxCwGKX3oan1v3H8/aG/cUUQQ3GSJquEdxDI9vRM3cG
 BWQuYFIlwD9e2nV3B1WW2RyY+OE5YA/S6UGXe536yrsrytxo7A3aAGkT5
 /BfkVq+uRLTLeSFk/fgrJSs8cETHkCdxoBxNYTwtdWZdtSpmHTaBoI6Pz
 AURoA0EFD+WmCKlrmOLHwusmt2Mw9hMNai5n1IYYQEU6pxtJzqozQjPUU
 CsxgURpHYzkLm9oGoVQFeMcvLOUNAc0lDhC7ZnmPLvDZWwSw5/BGO+wE0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="256081997"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="256081997"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 03:14:32 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="721694729"
Received: from kaszymec-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.38.113])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 03:14:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 13:14:11 +0300
Message-Id: <20220603101411.3087789-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220603101411.3087789-1-jouni.hogander@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: do not start connector polling
 when headless sku
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

Connector polling is waking up the polled device. Polling
is unnecessary if our device is known to not have display.

Fix this and Save some power by disabling starting connector
polling when we are having headless sku. Use information from
opregion.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 8204126d17f9..555278ec7667 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -668,7 +668,8 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
  */
 void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(dev_priv) ||
+	    intel_opregion_headless_sku(dev_priv))
 		return;
 
 	WRITE_ONCE(dev_priv->hotplug.poll_enabled, true);
-- 
2.25.1

