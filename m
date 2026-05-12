Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PQxDnEvA2qN1QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB2E52194E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843AA10EAF5;
	Tue, 12 May 2026 13:47:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWHMbfcO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A68910EAB4;
 Tue, 12 May 2026 13:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778593647; x=1810129647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6B2v6imba8T8h/nUiYymnvUXO3P+U9MN+8gK0Cpz6Xs=;
 b=jWHMbfcOIQ1YS5YEDob2Y+8W/ckysSGytgzi+puzmZdIMUu2yAsUgseo
 DsYJzVU2CE0PGjFopcmcZfJa+u/tNiWQ1Yis+DVoXNBmEpt8H77ORnsdN
 XDga0o4yixdCFTTkSJNzesqWctm4hk4oGa5CU645oHqLPcOrhXQu7e+/8
 yD6ykzgxcO4iigc9hJVk0an7tB9+i/zd2YIAb8lsIyKT7NixPFstNftTn
 T3+yOFoGLx9XM5gIV+x/2954SYsAo0VIYRSc4njUic+WfQM7OuI1iuulk
 jhdWhr7MBh8lkIeUAFn2vg40UPFD0JN0IXpRfT9PCIN1D8Uzurbuq9d7p A==;
X-CSE-ConnectionGUID: XW84b1vqSu6IOeQJhLdl6A==
X-CSE-MsgGUID: TMxJhRcbRH6ZsyfC89IpsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90604328"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90604328"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:26 -0700
X-CSE-ConnectionGUID: qt1GU9/XSvWdYMsCA0HJaQ==
X-CSE-MsgGUID: eatWZgj9SJeV34QgJ95uIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261257382"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/6] drm/i915/intel_panel: Add a helper to get the highest
 refresh rate mode
Date: Tue, 12 May 2026 19:02:46 +0530
Message-ID: <20260512133249.2475882-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
References: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 0CB2E52194E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Introduce a helper intel_panel_highest_vrefresh_mode() to get the
highest refresh rate mode from the list of fixed modes for a connector.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 14c7eea8ccb1..6577c6bf5a88 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -158,6 +158,21 @@ intel_panel_highest_mode(struct intel_connector *connector,
 	return best_mode;
 }
 
+const struct drm_display_mode *
+intel_panel_highest_vrefresh_mode(struct intel_connector *connector)
+{
+	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
+
+	/* pick the fixed_mode that has the highest vrefresh */
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+		if (!best_mode ||
+		    drm_mode_vrefresh(fixed_mode) > drm_mode_vrefresh(best_mode))
+			best_mode = fixed_mode;
+	}
+
+	return best_mode;
+}
+
 int intel_panel_get_modes(struct intel_connector *connector)
 {
 	const struct drm_display_mode *fixed_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 23bd227826c9..fe4d80a41d4c 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -39,6 +39,8 @@ intel_panel_downclock_mode(struct intel_connector *connector,
 const struct drm_display_mode *
 intel_panel_highest_mode(struct intel_connector *connector,
 			 const struct drm_display_mode *adjusted_mode);
+const struct drm_display_mode *
+intel_panel_highest_vrefresh_mode(struct intel_connector *connector);
 int intel_panel_get_modes(struct intel_connector *connector);
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
-- 
2.45.2

