Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCN/EpsY1mkxBAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6E63B96FF
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDF210E5AD;
	Wed,  8 Apr 2026 08:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eMn3nZJN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B78A410E5AD;
 Wed,  8 Apr 2026 08:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638681; x=1807174681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6w4ChAG+Hp3+lteqHVSks16P8x1jHexjCgUGVQruIHc=;
 b=eMn3nZJNw724UvJN7pjvqQu3SIL1ytSlZcyoAc0VVQEn4ZVvR7idGEYw
 vwH1zJGDiZql1EjyN8h3muFEjX/5Yhm4XuaLFd6m8J1RHjtXT7azTn5cV
 4sxyJo2uyLgQEDYtMn0BmmKokFoAgtd0Lmw252WpHHCGwtI+7UUm0sONr
 AxGFQCAUsVt6ibx5iUi180WPWTepnAgFg1Y3ycT3vn5CANP/NQTaUJ9Uz
 7TBxUK4OYjAzyk0/mYGMhYRp5rO+UF0TfUiOXhkzFemfwVkBtfX/FMoU+
 BSOq4AlN1n9UfNSN5L76fFEw5tJhzVC17l6CDEPwXom1nC+MqaCDsvp7r w==;
X-CSE-ConnectionGUID: m+Oxs47XQbS9E0rpOhKPUQ==
X-CSE-MsgGUID: ews/V7qmSXODikOIAS56lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76516645"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76516645"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:58:00 -0700
X-CSE-ConnectionGUID: 8JrgISZcTNO3eetkKD3RGA==
X-CSE-MsgGUID: L2DJcWOdRdKBnmgvPgydcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="227572527"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:57:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/26] drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
Date: Wed,  8 Apr 2026 14:12:21 +0530
Message-ID: <20260408084239.1295325-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
References: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1F6E63B96FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently we do not support VRR with HDMI so skip vrr compute
config step for all DP branch devices.

v2: Restrict VRR on all DP branch devices instead for checking only for
    HDMI. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fae1186a90b2..1b09992ce9fd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -55,6 +55,16 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 		if (connector->mst.dp)
 			return false;
 		intel_dp = intel_attached_dp(connector);
+		/*
+		 * Among non-MST DP branch devices, only an HDMI 2.1 sink connected
+		 * via a PCON could support VRR. However, supporting VRR through a
+		 * PCON requires non-trivial changes that are not implemented yet.
+		 * Until that support exists, avoid VRR on all DP branch devices.
+		 *
+		 * TODO: Add support for VRR for DP->HDMI 2.1 PCON.
+		 */
+		if (drm_dp_is_branch(intel_dp->dpcd))
+			return false;
 
 		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
 			return false;
-- 
2.45.2

