Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F35F986D70
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6D910EABD;
	Thu, 26 Sep 2024 07:24:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZnE4DPiR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C40110EAB7;
 Thu, 26 Sep 2024 07:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335488; x=1758871488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QdrBLaFovS4igdUYfSF6nymzX9eBwVbdrCpw+d3s0Qc=;
 b=ZnE4DPiRXXE4If7mpml8HStx2WCw2uVYra32KQDLbjwPGKxRE3IExxft
 +qQbo7Rg1eRMBuAH3CK21QgRmOM5QuZ/oKrCdow6Zw62klkqyvgqmQGLX
 dM4eAuI6VTQTLF7ghbnC1DuGrCcGmg5AUbs4guyKXoK1J2VJ/XVyv1rXo
 dkPYvgvpWPu99jaT76Ltk+e3cDff5LFTHIQFVCAR8exxsGgJBvPLdwrXv
 1wLhFcpjckDRSnhsOAQD7vLoIunvl/TV/boroKrkGDefgy/Ge8KaW0fRV
 jFpxCHjbQr5wZV0xfXaph0bJGOIkdkgosf+nBfxsW0pw/RVWbn9M/NY0I A==;
X-CSE-ConnectionGUID: KqP6i34iT8i+vks+uGjOvw==
X-CSE-MsgGUID: rJrBDkFMT9aBACfVzA0qAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829440"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829440"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:48 -0700
X-CSE-ConnectionGUID: l4SHWg5iQ9K+yOyRhTnZnQ==
X-CSE-MsgGUID: uvi/s9O0Tm+59/zRICB97A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334399"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 02/15] drm/i915/display_debugfs: Allow force joiner only if
 supported
Date: Thu, 26 Sep 2024 12:56:25 +0530
Message-ID: <20240926072638.3689367-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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
v3: Remove HAS_BIGJOINER check. (Ville)
v4: Reverse checks for connector type and intel_dp_has_joiner(). (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 890ef7067b77..08adeaa2e87f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1328,6 +1328,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 	int connector_type = connector->base.connector_type;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	/* The connector must have been registered beforehands. */
 	if (!root)
@@ -1362,9 +1363,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
-	if (HAS_BIGJOINER(i915) &&
-	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
-	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
+	if ((connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	     connector_type == DRM_MODE_CONNECTOR_eDP) &&
+	    intel_dp_has_joiner(intel_dp)) {
 		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
 				    &connector->force_bigjoiner_enable);
 	}
-- 
2.45.2

