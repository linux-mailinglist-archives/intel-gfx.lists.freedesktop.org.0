Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCIUAuBrw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FDD31FC75
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1561F10E77F;
	Wed, 25 Mar 2026 05:00:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5IUaTwT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6024310E777;
 Wed, 25 Mar 2026 05:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414803; x=1805950803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JvY8s2jz1OIsQl/wOX8hPswLAxP6xMf3M5W7eo/Wnuw=;
 b=j5IUaTwTH2SL2DhYmYZd7FTOiPA+/OoBPfCbv3UArmJEjkOuFVz7f+oA
 VeY1BrC1bE1cLEFUrf2gMkDR/fLw4OV6mrp3B7Nn14T/AfLQ0M5Fx/Zct
 9CRY+Ix5B74UCBUI63wbXqXsJFliECBqlO/lKKIHR1ZqCT+fxrE6cdjox
 kB/UmtsJfIVO2f8Phw2lIRuL3PBvRi+s95gFJH6bsUCNsRmSCP1O7pimy
 Fn2Na6rFJY05qKRsLejMvTysOWliibyIOYpBRhNK28ES39s02N+5eewJ8
 vAOPPsT0ww/OQc8SR5lQblQv56J2zNTIAh+59GLQES6HtB7WPuGqBZkzb Q==;
X-CSE-ConnectionGUID: q3v42v2yQkiuHZK8/9DW7Q==
X-CSE-MsgGUID: z4myW9r9SH2GOgYPJaEbFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922325"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922325"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:00:03 -0700
X-CSE-ConnectionGUID: yP5ey+NWQrGdfDuOFIQIjg==
X-CSE-MsgGUID: GBcjEcmuRoy8Q0eJ5nWv/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580609"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 22:00:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 14/26] drm/i915/writeback: Define function to destroy
 writeback connector
Date: Wed, 25 Mar 2026 10:29:04 +0530
Message-Id: <20260325045916.984243-15-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: B1FDD31FC75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define function to destroy the drm_writbeack_connector and
drm_connector associated with it.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 77b1ec19d3a0..a2a924edee52 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -160,6 +160,12 @@ intel_writeback_detect(struct drm_connector *connector,
 	return connector_status_connected;
 }
 
+static void intel_writeback_connector_destroy(struct drm_connector *connector)
+{
+	drm_connector_cleanup(connector);
+	kfree(connector);
+}
+
 static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
@@ -169,6 +175,7 @@ const struct drm_connector_funcs conn_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.destroy = intel_writeback_connector_destroy,
 };
 
 static const struct drm_connector_helper_funcs conn_helper_funcs = {
-- 
2.34.1

