Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGdRL4NOymmb7QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:20:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B05C35911F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A539A10E52E;
	Mon, 30 Mar 2026 10:20:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NaXYIKic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CACC910E216;
 Mon, 30 Mar 2026 10:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774866047; x=1806402047;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nrGx7WtFyYUIU4PrWPRP3sBmwEHhXd1SZz1EiC45yPo=;
 b=NaXYIKicNkxEi2whZ/2/BeeKRbxGyX9cj3n3CbZf2s9p7xeQ4PyFdPJc
 L+EuBH1BZog1okyPD+wKlSzbVuN1bYFP8sTCkxruVW5MhoP6EmYD0NpRt
 pF7mwk7rIRk73KQ4Nb1eos0jCA2ziA4p1zRrolwOMqkgyB276B7y620Ql
 TK8vmyC7HIkTF+lhl+v21JmlaweO6KCDrG1TPhQXWY6TYI06nEJnUZcWr
 R5ET6bN9AGzA79upyvC+/kOP0eMSlowPQp5qK9tYr9gIAQzR8ePRPDAj+
 BgNQFxWoMYHs+5au0TQZNPtrUZgc/AmtjzVY27sjkODcjVbW/G2fyilAl Q==;
X-CSE-ConnectionGUID: KhDrrPqFS/KTdYy1DbJY7g==
X-CSE-MsgGUID: DhyqyevBQouIgkvHz30JSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75750734"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="75750734"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:20:47 -0700
X-CSE-ConnectionGUID: OCFDme3uS26cZYEZS5j0LQ==
X-CSE-MsgGUID: QWcbtS26SyG5vkIIHG0aUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="263953491"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 30 Mar 2026 03:20:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/backlight: Update check for VESA backlight
Date: Mon, 30 Mar 2026 15:50:36 +0530
Message-Id: <20260330102035.1288175-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3B05C35911F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

With VESA backlight being made fallback. Make sure we are checking
eDP vesrion >= 1.5 before checking for
PANEL_LUMINANCE_CONTROL_CAPABLE. We also remove the check
for SMOOTH BRIGHTNESS which was added due to what the internal spec said.
After discussion with concerned folk we found out Linux really does
not need to check this. This is because we have no way of setting
SMOOTH_BRIGHTNESS due to lack of a interface. This helps us use
use the PANEL LUMINANCE pathway for more panels.

Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index d0c76632a946..396cdc3a3603 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -644,8 +644,8 @@ intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	if ((intel_dp->edp_dpcd[3] & DP_EDP_PANEL_LUMINANCE_CONTROL_CAPABLE) &&
-	    (intel_dp->edp_dpcd[3] & DP_EDP_SMOOTH_BRIGHTNESS_CAPABLE)) {
+	if ((intel_dp->edp_dpcd[0] >= DP_EDP_15 &&
+	     intel_dp->edp_dpcd[3] & DP_EDP_PANEL_LUMINANCE_CONTROL_CAPABLE)) {
 		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] AUX Luminance Based Backlight Control Supported!\n",
 			    connector->base.base.id, connector->base.name);
-- 
2.34.1

