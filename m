Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNFJAclrw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD7931FC40
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515ED10E75F;
	Wed, 25 Mar 2026 04:59:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9f66Jrp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7D810E75F;
 Wed, 25 Mar 2026 04:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414790; x=1805950790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eFu4AL2BFRvz8hnbbwfTG9x4lp49l7SKGjT4S4Rq1WE=;
 b=C9f66JrpSB25k2ig0u+FWEpJ1HtzSlA1lm/8NqW3arYC8IqKSAqqN87U
 3uwUTyDva73Ed+Z7744x1i9lDkHAJK9AWjltFXjr8ytlUI4ct+iXpqiyk
 ce7tdPDGVrlFG5+xF+I++N90QeU3K1Te+8UoU1t/+z/vPnIugYFgoN0Tl
 Qv3r2EbCzl5aHuq5YeTHG70tmsiKW1cCxZdV7rEALavNgI9JNrO8jMeSJ
 9YxUYPbazpEN6jH9D3DAZfgohWn4C0lKYouWziFH9R9dl91VkRiln+3AC
 MyPNF3czbkA2T/cbWMegKftjNhoy4Ht0FNTVlui7yni4pZ02JiOPRoPCU A==;
X-CSE-ConnectionGUID: wPTAckBMQPiYf1WCKwDrGw==
X-CSE-MsgGUID: LKRXjLVGTiChzKkLbvaDKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922272"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922272"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:41 -0700
X-CSE-ConnectionGUID: /FGq9QPPSZKxy/3rdmKOhg==
X-CSE-MsgGUID: ofQR7nRMQMGHr8aa1+ULQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580498"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 06/26] drm/i915/writeback: Add function to get modes
Date: Wed, 25 Mar 2026 10:28:56 +0530
Message-Id: <20260325045916.984243-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CDD7931FC40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a function that get modes for writeback connector.
Since we have a restriction on supporting only 3840x2160 60Hz modes
at max we will create modes only up until that point.

Bspec: 49275
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 73101ee17d74..852951933348 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -10,6 +10,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_encoder.h>
+#include <drm/drm_edid.h>
 
 #include "intel_atomic.h"
 #include "intel_connector.h"
@@ -58,6 +59,11 @@ intel_writeback_connector_alloc(struct intel_connector *connector)
 	return 0;
 }
 
+static int intel_writeback_get_modes(struct drm_connector *connector)
+{
+	return drm_add_modes_noedid(connector, 3840, 2160);
+}
+
 static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
@@ -69,6 +75,7 @@ const struct drm_connector_funcs conn_funcs = {
 };
 
 static const struct drm_connector_helper_funcs conn_helper_funcs = {
+	.get_modes = intel_writeback_get_modes,
 };
 
 int intel_writeback_init(struct intel_display *display)
-- 
2.34.1

