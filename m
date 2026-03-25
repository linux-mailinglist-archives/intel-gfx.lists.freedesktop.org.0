Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMDxNhrCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC65323893
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AFDE10E859;
	Wed, 25 Mar 2026 11:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+e2e0XO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDCCC10E84E;
 Wed, 25 Mar 2026 11:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436886; x=1805972886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eFu4AL2BFRvz8hnbbwfTG9x4lp49l7SKGjT4S4Rq1WE=;
 b=E+e2e0XOH4fNdOZyfLMdfVda7qu4eIKAJf7ocfYopDw7TNjXH/FedT5/
 6p0ht//jf04qwHOUvoDZlUZ+ToZ6Itske2y/qtVI70xrrg5B1UbqRSnD4
 9co39SHdPn5ye8mygdLUshC1WKB7guC2BEiNtcU2R2uH9JsSMDqE07Xy6
 U+9EhIDnBq5O6gTV98ukgJLHaco2WvTSCK7XsIjrJ/+oztrXJFRjCqy7J
 066eJfkl70dJWoUpNR0S4krHPcNlT7b18HqjfgSXznv2XrMubqe3dCbgd
 I371SBQy9+8bI9nGimZDTOQ4hboDOJ8COh6k/x5MDTrZg+zmuYNHfVaF9 g==;
X-CSE-ConnectionGUID: +Oct0FrlSZCUzhiS4JV2oQ==
X-CSE-MsgGUID: rynLN6VpRJ+R7p9ySzGN8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047504"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047504"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:06 -0700
X-CSE-ConnectionGUID: JR+aTIsdS5GPVU0MVxgskw==
X-CSE-MsgGUID: i6rlEU6AQ2ipTOQAiG4sTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798337"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 06/26] drm/i915/writeback: Add function to get modes
Date: Wed, 25 Mar 2026 16:37:24 +0530
Message-Id: <20260325110744.1096786-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: AFC65323893
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

