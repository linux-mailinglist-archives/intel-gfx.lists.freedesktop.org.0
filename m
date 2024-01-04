Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 559D8823FD1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC03110E423;
	Thu,  4 Jan 2024 10:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B9F10E40E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365376; x=1735901376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bKeXzZOmqDQ7ouhT49TwODZoYB4YLRgvf5mwqkLsPTU=;
 b=RKc//wIN9vn0IVtdREwcYTsKVtiYwqjrgBTSM3190DUPvfdXqwU76fqp
 di7zum/nyyVv3OesnitdTlsuNOrjSCNQjG17jQT4gtrB/jtxYLnHyVglU
 yMzrxfN0lVb5mn7m+x+TAlakRJSFFUfGjuE79X/tvgzClKDHJw85FGaXk
 HQeuJlexqBRIeVPM26vzB9uceiRrMRb2Arah1/qVXArMT25BTkAgctg7+
 3/LVwY9rSA7DIn/cVff3deIz6LN8pB+j1XoQ6qu78LhMG6jHIsEpCBeP5
 QJFNnrvgvDS/F9hs7cu0mqpNGraCst84t2Vs2c/Uym4eR8s/ticiXeV0C w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928115"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928115"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863620"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863620"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:35 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/12] drm/i915/psr: Add some documentation of variables used
 in psr code
Date: Thu,  4 Jan 2024 12:48:15 +0200
Message-Id: <20240104104821.1822988-7-jouni.hogander@intel.com>
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

We are adding more boolean variable into intel_psr and intel_crtc_state
structs. Add some documentation about these for sake of clarity.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 29fe46ae016f..f66fdda7418a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -171,6 +171,22 @@
  *
  * The rest of the bits are more self-explanatory and/or
  * irrelevant for normal operation.
+ *
+ * Description of intel_crtc_state variables. has_psr, has_panel_replay and
+ * has_sel_update:
+ *
+ *  has_psr (alone):			PSR1
+ *  has_psr + has_sel_update:		PSR2
+ *  has_panel_replay:			Panel Replay
+ *  has_panel_replay + has_sel_update:	Panel Replay Selective Update
+ *
+ * Description of some intel_psr enabled, panel_replay_enabled,
+ * sel_update_enabled
+ *
+ *  enabled (alone):						PSR1
+ *  enabled + sel_update_enabled:				PSR2
+ *  enabled + panel_replay_enabled:				Panel Replay
+ *  enabled + panel_replay_enabled + sel_update_enabled:	Panel Replay SU
  */
 
 bool intel_encoder_can_psr(struct intel_encoder *encoder)
-- 
2.34.1

