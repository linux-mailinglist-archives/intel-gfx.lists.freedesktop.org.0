Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDdwDfLdp2kMkwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 08:23:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA661FB8F3
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 08:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A5E10E660;
	Wed,  4 Mar 2026 07:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U3Z9E1BG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8545310E138;
 Wed,  4 Mar 2026 07:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772609007; x=1804145007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G5vlQjfftmoGyVQ90i64ILbH++7Jqez8nUv5o92OiOg=;
 b=U3Z9E1BGEXj7f26xQX3DhvBpefZKptywAg0yk/hGB8ppXEGbd0Qaqgjb
 4gWBETKkRSS7rutIPYCRliliQGM6SshH7tvSE+LhYzkXZ/4XvcRLlXqpO
 dQTCu/f66C1NEfEvT7r54WAM/WcZzdEtvXClPLw4uHN7+c82dXrf5Sjoq
 42ZR8glrUeKAMWuq43lc1jR1Dv2WUIXXr7i20VJPDikX0aNJZAHGnRkFr
 4li1FSMx5Bad4gXuXqD6NGlpefEAWDPpM+ZIkmBjxsSHlWlmgqZ1cLDlS
 re+/Q2WWqAxT4D2VUTyb7tJF1Y6RTlv7UGwWKek+S3yaLEdvEfWpCoHGf w==;
X-CSE-ConnectionGUID: gDQDYx0QRGqCEKqzy6ekIA==
X-CSE-MsgGUID: nXm5vS7dQAi1DYEBG4C3hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="91053895"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="91053895"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 23:23:26 -0800
X-CSE-ConnectionGUID: 8z/PAUJnSxWM1c+xLNLbaQ==
X-CSE-MsgGUID: jb8PMHYCSEWoo+977jOLPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="223249149"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa005.jf.intel.com with ESMTP; 03 Mar 2026 23:23:23 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 jouni.hogander@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv6] drm/i915/dp: Read ALPM caps after DPCD init
Date: Wed,  4 Mar 2026 12:51:57 +0530
Message-Id: <20260304072157.1123283-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260302033630.428913-1-arun.r.murthy@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: 8EA661FB8F3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

For eDP read the ALPM DPCD caps after DPCD initalization and just before
the PSR init.

v2: Move intel_alpm_init to intel_edp_init_dpcd (Jouni)
v3: Add Fixes with commit-id (Jouni)
v4: Separated the alpm dpcd read caps from alpm_init and moved to
intel_edp_init_dpcd.
v5: Read alpm_caps always for eDP irrespective of the eDP version (Jouni)
v6: replace drm_dp_dpcd_readb with drm_dp_dpcd_read_byte (Jouni)

Fixes: 15438b325987 ("drm/i915/alpm: Add compute config for lobf")
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 6 ------
 drivers/gpu/drm/i915/display/intel_dp.c   | 7 +++++++
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index b3334bc4d0f9..a7350ce8e716 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -44,12 +44,6 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
 
 void intel_alpm_init(struct intel_dp *intel_dp)
 {
-	u8 dpcd;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP, &dpcd) < 0)
-		return;
-
-	intel_dp->alpm_dpcd = dpcd;
 	mutex_init(&intel_dp->alpm.lock);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 025e906b63a9..d6a7ccbc9932 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4709,6 +4709,7 @@ static bool
 intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int ret;
 
 	/* this function is meant to be called only once */
 	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
@@ -4748,6 +4749,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	 */
 	intel_dp_init_source_oui(intel_dp);
 
+	/* Read the ALPM DPCD caps */
+	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
+				    &intel_dp->alpm_dpcd);
+	if (ret < 0)
+		return false;
+
 	/*
 	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
 	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
-- 
2.25.1

