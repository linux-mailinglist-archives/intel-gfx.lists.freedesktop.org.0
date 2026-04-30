Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLmaAK9Y82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F1F4A36BA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B4B10E60D;
	Thu, 30 Apr 2026 13:27:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bc2RtIc6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95B010E6BE;
 Thu, 30 Apr 2026 13:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777555627; x=1809091627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f6mDQS9sXWObE/SLyJMVIDEA6OcLyzLiq6rQoVEkrC8=;
 b=bc2RtIc6kzUZCjE01itkplaLRrIdmJmwGb5fzS2EiwIBSDNZgYaJABSw
 nmHWmpoj7MPnfBZ37k+LwpnUa9vCgeWi948l3+yCojCKZWoVo9cV1NTV5
 ZUu/aXLDkc/9KWYsIJEF/bHoCG17u5D1F3/w+147wNtyDkDACRiHVaHAp
 khAS9DJ92M5QJppe7gtiJbqEgZNJB6fVR5xsq0EPc1sQoNYaXu6JlqQh4
 IwILmXRAHPp0lQK7pMN4+ec2yBXYKUuT8MdlGr+nM7pZKZj0k9M8Y9cjT
 lsFgWTWw6N8P+54P5zRPnR7Y6aeq54Tzoh2Q0jyXUClZW2MV9j1FdVxoi g==;
X-CSE-ConnectionGUID: uZJl6fIQTayE5DDHyg+Yyw==
X-CSE-MsgGUID: Gpr6vuaUSzur8eJhYQb+Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78398726"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78398726"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:07 -0700
X-CSE-ConnectionGUID: 3U7Jx5DxRA6fixXrlFvhsQ==
X-CSE-MsgGUID: 0FtzpLYjTzCsxTxKRKiTDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="257919877"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/5] drm/i915/intel_dvo: Drop call to intel_panel_fixed_mode()
 from compute_config
Date: Thu, 30 Apr 2026 18:42:18 +0530
Message-ID: <20260430131220.3891497-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: A7F1F4A36BA
X-Rspamd-Action: no action
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

The function intel_dvo_compute_config() calls intel_panel_fixed_mode() only
to check if there is a valid fixed_mode and based on that it then calls
intel_panel_compute_config().

However, since the intel_panel_compute_config() already checks for
fixed_mode and we can drop the call to intel_panel_fixed_mode().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 65015477abed..dd1a995c2979 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -246,11 +246,9 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
-	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
+	int ret;
 
 	/*
 	 * If we have timings from the BIOS for the panel, put them in
@@ -258,13 +256,9 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	if (fixed_mode) {
-		int ret;
-
-		ret = intel_panel_compute_config(connector, adjusted_mode);
-		if (ret)
-			return ret;
-	}
+	ret = intel_panel_compute_config(connector, adjusted_mode);
+	if (ret)
+		return ret;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
-- 
2.45.2

