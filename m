Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB84A823FD3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5708E10E424;
	Thu,  4 Jan 2024 10:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C817A10E424
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365380; x=1735901380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u/kKTlZcQN2OeUZZxc708jR23LQg3NMsUtvN8PVYmWU=;
 b=FXRHRNL8EcV8kx4cqM1G6xjywNmWIdwrscnKFjpMdxNExizqhtpNfb+w
 3Bbsy7hZ6Y1ZBSdn5B8j/HhXz4aDJVXzJIA8GA/KVIPpr25ZoMj8NaQRo
 iJ/ZfNHp4coDZLoP+ZkxJ9poTyWB9zf9MEwA8zPNKZYt1dOi9kxaE2/gE
 uFktgsZv6VZI4u9EF598nxWdVvts+8Ck6rVVQ6aPN0nsSmyoYE0JdsGjm
 XzmrSMGvlJF0x0R9tCIcN05TfajEaHP3UMach5KBcyQxFgDkpM4NwtS59
 cwH36iNbF5HTdDbl54q7ht5Mx07y2JOp1DbD0QBwS1qBmlLONz6lR+06G w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928121"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928121"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863630"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863630"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915/psr: Detect panel replay selective update
 support
Date: Thu,  4 Jan 2024 12:48:17 +0200
Message-Id: <20240104104821.1822988-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Detect panel replay selective update support and store it into
intel_psr->sink_panel_replay_su_support.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f66fdda7418a..d311eed72be5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -519,9 +519,15 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 		return;
 	}
 
-	drm_dbg_kms(&i915->drm,
-		    "Panel replay is supported by panel\n");
 	intel_dp->psr.sink_panel_replay_support = true;
+
+	if (pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
+		intel_dp->psr.sink_panel_replay_su_support = true;
+
+	drm_dbg_kms(&i915->drm,
+		    "Panel replay %sis supported by panel\n",
+		    intel_dp->psr.sink_panel_replay_su_support ?
+		    "selective_update " : "");
 }
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
-- 
2.34.1

