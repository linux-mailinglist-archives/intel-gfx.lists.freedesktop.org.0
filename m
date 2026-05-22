Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJ2LD3ZdEGqDWgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125A85B5621
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DBE210F65C;
	Fri, 22 May 2026 13:43:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGLiiJU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A636910F5E5;
 Fri, 22 May 2026 13:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779457389; x=1810993389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6B2v6imba8T8h/nUiYymnvUXO3P+U9MN+8gK0Cpz6Xs=;
 b=CGLiiJU1ubXkOdFHKM4RbNkFFo5dJDK+qjaHMii+XW2I/3Gjv02aVg9k
 +jUE+1vZT7axfTJEcLZoBJJFBRmP5DSu4DScw2UP0NTREDGYZFfhAQ0pD
 eocyOlyVNCpMzpd4NtMJCBrHicKPplbs5LeP8/PROXO0CNQpEu+f3iU4d
 4BNAfN1P8K7bWrEiEjPQLTip0pFWpEecSSCKTKpftf+MTA/maIa9+N3U9
 W+a58zXaWBs5pGiAXL6QnVdqqOD59KUS8djWSh9Pua9VMZyj+TaQ7mGbK
 VrkG4FtkNgoSjLvFAm3C9UJ+0h4leBYfYTetJ/FZbmfk34WQkYzN0vIoR Q==;
X-CSE-ConnectionGUID: 17MZTWinS8KnKuOrP8c/KA==
X-CSE-MsgGUID: x0SuVyyUSRm0ZIW3kJzHEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="105850602"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="105850602"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:09 -0700
X-CSE-ConnectionGUID: +0w+U3DDQ5aaRZakqQF5oQ==
X-CSE-MsgGUID: IBly1JfvRlisQ3lRAiwL5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="238317185"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/6] drm/i915/intel_panel: Add a helper to get the highest
 refresh rate mode
Date: Fri, 22 May 2026 18:55:08 +0530
Message-ID: <20260522132511.321540-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 125A85B5621
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

