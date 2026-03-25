Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIgxIM5rw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5295A31FC47
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31DA10E770;
	Wed, 25 Mar 2026 04:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HqQYvDGP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C03610E764;
 Wed, 25 Mar 2026 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414793; x=1805950793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9aPgqiVhvvaZPNa3Vdfecb+N5uBatxo4I89E4/5v7+0=;
 b=HqQYvDGPmVxalNHMxB+YeB1MLhxN2Kk1NGGhLWYSEaz88p3YvukKIjGR
 SRVv2YDeyFsBj7WPfgN/qRBcPiubs5wm2APtTbJ9uyyHCZ5qmn0ua0GP+
 R1MICMH9UWQiZa/5+I0t5aNbQdc7RjyEpq26YpENNsE/iuRjP7FafPnMs
 RqJV9q7s/IEkS0uK/qkkFZxi7FqzaR5mC8/IPhkTWhTi5ovPaUnX2KNQ/
 v+wui5khAf6+DSKhuBgi1zIaShFsqkhbq321+QTzeEBpHa4RCd+PxiVIC
 UWv7midBcfEwpD9Hyeqt+GWZe32qEG/lGiKeHxx5Ac2mpKMVLzeBahAvD w==;
X-CSE-ConnectionGUID: WxrirfIPT6eOc8dvkh9s9w==
X-CSE-MsgGUID: 95Bu9lnPSyyU9t4bOSN9Vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922288"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922288"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:44 -0700
X-CSE-ConnectionGUID: OaNiiL/wRx+4dgQBjyPZog==
X-CSE-MsgGUID: yve/SMpFS86oiKCDjfESEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580502"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 07/26] drm/i915/writeback: Add hook to check modes
Date: Wed, 25 Mar 2026 10:28:57 +0530
Message-Id: <20260325045916.984243-8-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 5295A31FC47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add connector helper hooks to check if mode is valid or not.
We add this restriction to make sure mode is 3840x2160 60Hz.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 852951933348..765f62fa38f8 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -59,6 +59,25 @@ intel_writeback_connector_alloc(struct intel_connector *connector)
 	return 0;
 }
 
+static enum drm_mode_status
+intel_writeback_mode_valid(struct drm_connector *_connector,
+			   const struct drm_display_mode *mode)
+{
+	int refresh_rate;
+
+	if (mode->hdisplay > 3840)
+		return MODE_H_ILLEGAL;
+
+	if (mode->vdisplay > 2160)
+		return MODE_V_ILLEGAL;
+
+	refresh_rate = drm_mode_vrefresh(mode);
+	if (refresh_rate > 60)
+		return MODE_BAD;
+
+	return MODE_OK;
+}
+
 static int intel_writeback_get_modes(struct drm_connector *connector)
 {
 	return drm_add_modes_noedid(connector, 3840, 2160);
@@ -76,6 +95,7 @@ const struct drm_connector_funcs conn_funcs = {
 
 static const struct drm_connector_helper_funcs conn_helper_funcs = {
 	.get_modes = intel_writeback_get_modes,
+	.mode_valid = intel_writeback_mode_valid,
 };
 
 int intel_writeback_init(struct intel_display *display)
-- 
2.34.1

