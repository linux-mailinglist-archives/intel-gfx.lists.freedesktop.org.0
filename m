Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3850597F025
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64CA10E451;
	Mon, 23 Sep 2024 18:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UuTSL9VG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C6AC10E451;
 Mon, 23 Sep 2024 18:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115109; x=1758651109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rG+8FN7Z15OIRwePh5d3eIcfq8p3hTm7mAdseGpELKc=;
 b=UuTSL9VG9hmhyY1qQMVlnFQEQAb5AdV2Vja3GkjzzY3Yro07C0NMG8OA
 Sju7XPcW48jq/As2Oop1Nc0gmFNHFX56UOk7PR6YnN6Qoyxxz97wola/1
 izxnu3fOzPf1EN4+zuC/Jqbsc3Keu3Efsg31QSX79Oft660Vtvz6kMvng
 8AqzhjzMr1rtSqKSYmxPScY5SF73vvTKtiQojR4oWURqtoGXkPZ6hDjBJ
 plPhNCxu2HAlsRN5emrS6ANsKmCM0NQoiQ6iyV1c3d/zcDvkQHeTEN6Wx
 KkV1Ncf37NfZs+r8WB4fzz3OgWHYv7A1Wx8XL5MT2YFtUaH+MDty8dCKL Q==;
X-CSE-ConnectionGUID: vOw+dWU5SgOKEwoXRhAZaQ==
X-CSE-MsgGUID: gRLWEC1qRjSVCrw9YCQkZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866194"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866194"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:49 -0700
X-CSE-ConnectionGUID: CvLzgahtSg+ncUHAhrqpxg==
X-CSE-MsgGUID: USnTp4XwT1GODeiuksghLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734246"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 02/16] drm/i915/display_debugfs: Allow force joiner only if
 supported
Date: Mon, 23 Sep 2024 23:43:22 +0530
Message-ID: <20240923181336.3303940-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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

Currently we support joiner only for DP encoder.
Do not create the debugfs for joiner if DP does not support the joiner.
This will also help avoiding cases where config has eDP MSO, with which
we do not support joiner.

v2: Check for intel_dp_has_joiner and avoid creating debugfs if not
supported. (Ville)
v3 : Remove HAS_BIGJOINER check. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 890ef7067b77..6ded0a22d401 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1328,6 +1328,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 	int connector_type = connector->base.connector_type;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	/* The connector must have been registered beforehands. */
 	if (!root)
@@ -1362,7 +1363,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
-	if (HAS_BIGJOINER(i915) &&
+	if (intel_dp_has_joiner(intel_dp) &&
 	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
 		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
-- 
2.45.2

