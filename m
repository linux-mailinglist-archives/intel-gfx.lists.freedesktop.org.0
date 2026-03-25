Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELQsFCDRw2lBuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:12:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FAD32490A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364D610E88F;
	Wed, 25 Mar 2026 12:12:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gs8UZF6l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A3C10E88C;
 Wed, 25 Mar 2026 12:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774440732; x=1805976732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4RBRwJole89laTZmJoErrNK6m2AEytWyqS65YDyyamI=;
 b=gs8UZF6lb+u6pNBpyGrYsMs9eKbKwiCKrcyT/SNj1UmH0PR5s69KnNva
 aaKZeWyBhjABeBn9pNNRyRgIlZOfZb9o2SQ5dy5W2/GMrxpGhshaShdHe
 dkrRtaTnTXB2B+GSxOJ7bTxWtLaLILMXk5ovo6NydVXGVUte126+D3dXb
 vXTy27nZRycc6getTlDA56+evKbjqQggLsbwtCLCVugSo9lt9kvOVmgrt
 lguD97jMFm3IRZbcqUmxdWiaF7JT1LysLR4N0j8a4AQpOry1VHzzM7b65
 DUL0pPdF6MtB3erHuJlEWi88qTCpLCha389FeErScywHELQ8hrtqKB9yK w==;
X-CSE-ConnectionGUID: /+DknGTiT7ucMfxSNxJCkQ==
X-CSE-MsgGUID: iIn0VwWSRYqMymKZeaN3+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="63022415"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="63022415"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:12:11 -0700
X-CSE-ConnectionGUID: 7Zjvl9UqTqekOqFMTXNYtQ==
X-CSE-MsgGUID: J/0uaDmIQMKm1Jh46By4CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="224673448"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 25 Mar 2026 05:12:10 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jouni.hogander@intel.com, imre.deak@intel.com, jani.nikula@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 2/3] drm/i915/display: Add hook to check optimization
 support for Intel platforms
Date: Wed, 25 Mar 2026 17:11:53 +0530
Message-Id: <20260325114154.3688550-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260325114154.3688550-1-animesh.manna@intel.com>
References: <20260325114154.3688550-1-animesh.manna@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E2FAD32490A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a hook that uses the drm core tunneling function to check
whether panel replay bandwidth optimization support is present.

v2: Move DISPLAY_VER() check to
intel_dp_tunnel_pr_optimization_supported(). [Jouni]

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  6 ++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 1fd1ac8d556d..b81ac9a2d727 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -296,6 +296,24 @@ bool intel_dp_tunnel_bw_alloc_is_enabled(struct intel_dp *intel_dp)
 	return drm_dp_tunnel_bw_alloc_is_enabled(intel_dp->tunnel);
 }
 
+/**
+ * intel_dp_tunnel_pr_optimization_supported - Query the PR BW optimization support
+ * @intel_dp: DP port object
+ *
+ * Query whether a DP tunnel supports the PR BW optimization.
+ *
+ * Returns %true if the BW allocation mode is supported on @intel_dp.
+ */
+bool intel_dp_tunnel_pr_optimization_supported(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (DISPLAY_VER(display) < 35)
+		return false;
+
+	return drm_dp_tunnel_pr_optimization_supported(intel_dp->tunnel);
+}
+
 /**
  * intel_dp_tunnel_suspend - Suspend a DP tunnel connected on a port
  * @intel_dp: DP port object
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
index 7f0f720e8dca..03e147736b65 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
@@ -32,6 +32,7 @@ void intel_dp_tunnel_resume(struct intel_dp *intel_dp,
 void intel_dp_tunnel_suspend(struct intel_dp *intel_dp);
 
 bool intel_dp_tunnel_bw_alloc_is_enabled(struct intel_dp *intel_dp);
+bool intel_dp_tunnel_pr_optimization_supported(struct intel_dp *intel_dp);
 
 void
 intel_dp_tunnel_atomic_cleanup_inherited_state(struct intel_atomic_state *state);
@@ -76,6 +77,11 @@ static inline bool intel_dp_tunnel_bw_alloc_is_enabled(struct intel_dp *intel_dp
 	return false;
 }
 
+static inline bool intel_dp_tunnel_pr_optimization_supported(struct intel_dp *intel_dp)
+{
+	return false;
+}
+
 static inline void
 intel_dp_tunnel_atomic_cleanup_inherited_state(struct intel_atomic_state *state) {}
 
-- 
2.29.0

