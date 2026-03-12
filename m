Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKaKOnxPsmmLLgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:30:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F61826D62B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B6D10E960;
	Thu, 12 Mar 2026 05:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUgCd9I9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F76910E961;
 Thu, 12 Mar 2026 05:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773293433; x=1804829433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L05sByg7Y1PInJIjo06nFnOGFEAbeR5+RE2QLClG4vA=;
 b=UUgCd9I93mkGSrhWQHltnkUoPkAaI952m8YXoADWnoadQBJBrqavVDeN
 pqXT7RVk+e1UdXAGYBC93348Co0Pk+MA3i/58gkUXkuFSoZexlB0Ttqf1
 6XXLuUm9jiee8Z8rTZGe9qt2Ex7W7dtXRQUpYBBRY1+K3n+6iu/fxYVTm
 ndqe7TvzBi4RTbRqdBO++y+xWkVcyO4MlNATQi2LvvebtRUO82eaZNOrN
 nQQBwLDSSV43Hi2AAFZmaPTnkKjyrCuDL2XGJadBpAeAfuyDIY3YswptO
 e5h9h7Zpt0zTSyhbIutfN/mc90ogZzvi/eFSLiy3Dx4DyoS/zaGwKvd1x w==;
X-CSE-ConnectionGUID: wbhho9koSQGKKN6T04dO3w==
X-CSE-MsgGUID: kMMh734BTmmsN2BqNZVC1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74253898"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74253898"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 22:30:33 -0700
X-CSE-ConnectionGUID: 4rR0v9+QTvuJKmT7oi9Ulw==
X-CSE-MsgGUID: VPX3IWOWTx+zzu/GqjIWkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="258611039"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 11 Mar 2026 22:30:30 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jouni.hogander@intel.com, imre.deak@intel.com, jani.nikula@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 1/3] drm/i915/display: Add drm helper to check pr
 optimization support
Date: Thu, 12 Mar 2026 10:30:33 +0530
Message-Id: <20260312050035.3493690-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260312050035.3493690-1-animesh.manna@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9F61826D62B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add api to check panel replay optimization supported or not to
drm-core DP tunneling framework which can be used by other driver
as well.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c        | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  6 ++++++
 include/drm/display/drm_dp_tunnel.h            |  6 ++++++
 4 files changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index f442430d8de7..39c07cb4123b 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -149,6 +149,7 @@ struct drm_dp_tunnel {
 	bool bw_alloc_enabled:1;
 	bool has_io_error:1;
 	bool destroyed:1;
+	bool pr_optimization_support:1;
 };
 
 struct drm_dp_tunnel_group_state;
@@ -508,6 +509,8 @@ create_tunnel(struct drm_dp_tunnel_mgr *mgr,
 
 	tunnel->bw_alloc_supported = tunnel_reg_bw_alloc_supported(regs);
 	tunnel->bw_alloc_enabled = tunnel_reg_bw_alloc_enabled(regs);
+	tunnel->pr_optimization_support = tunnel_reg(regs, DP_TUNNELING_CAPABILITIES) &
+					  DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT;
 
 	if (!add_tunnel_to_group(mgr, drv_group_id, tunnel)) {
 		kfree(tunnel);
@@ -1036,6 +1039,20 @@ bool drm_dp_tunnel_bw_alloc_is_enabled(const struct drm_dp_tunnel *tunnel)
 }
 EXPORT_SYMBOL(drm_dp_tunnel_bw_alloc_is_enabled);
 
+/**
+ * drm_dp_tunnel_pr_optimization_supported - Query the PR BW optimization support
+ * @tunnel: Tunnel object
+ *
+ * Query if the PR BW optimization is supported for @tunnel.
+ *
+ * Returns %true if the PR BW optimiation is supported for @tunnel.
+ */
+bool drm_dp_tunnel_pr_optimization_supported(const struct drm_dp_tunnel *tunnel)
+{
+	return tunnel && tunnel->pr_optimization_support;
+}
+EXPORT_SYMBOL(drm_dp_tunnel_pr_optimization_supported);
+
 static int clear_bw_req_state(struct drm_dp_aux *aux)
 {
 	u8 bw_req_mask = DP_BW_REQUEST_SUCCEEDED | DP_BW_REQUEST_FAILED;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 1fd1ac8d556d..075aea9d6ede 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -296,6 +296,20 @@ bool intel_dp_tunnel_bw_alloc_is_enabled(struct intel_dp *intel_dp)
 	return drm_dp_tunnel_bw_alloc_is_enabled(intel_dp->tunnel);
 }
 
+/**
+ * intel_dp_tunnel_pr_optimization_supported - Query the PR BW optimization support
+ * @intel_dp: DP port object
+ *
+ * Query whether a DP tunnel is connected on @intel_dp and the tunnel supports
+ * the PR BW optimization.
+ *
+ * Returns %true if the BW allocation mode is supported on @intel_dp.
+ */
+bool intel_dp_tunnel_pr_optimization_supported(struct intel_dp *intel_dp)
+{
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
 
diff --git a/include/drm/display/drm_dp_tunnel.h b/include/drm/display/drm_dp_tunnel.h
index 87212c847915..4aa3ce9fd829 100644
--- a/include/drm/display/drm_dp_tunnel.h
+++ b/include/drm/display/drm_dp_tunnel.h
@@ -53,6 +53,7 @@ int drm_dp_tunnel_destroy(struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_enable_bw_alloc(struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_disable_bw_alloc(struct drm_dp_tunnel *tunnel);
 bool drm_dp_tunnel_bw_alloc_is_enabled(const struct drm_dp_tunnel *tunnel);
+bool drm_dp_tunnel_pr_optimization_supported(const struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_alloc_bw(struct drm_dp_tunnel *tunnel, int bw);
 int drm_dp_tunnel_get_allocated_bw(struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_update_state(struct drm_dp_tunnel *tunnel);
@@ -140,6 +141,11 @@ static inline bool drm_dp_tunnel_bw_alloc_is_enabled(const struct drm_dp_tunnel
 	return false;
 }
 
+static inline bool drm_dp_tunnel_pr_optimization_supported(const struct drm_dp_tunnel *tunnel)
+{
+	return false;
+}
+
 static inline int
 drm_dp_tunnel_alloc_bw(struct drm_dp_tunnel *tunnel, int bw)
 {
-- 
2.29.0

