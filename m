Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BDA97BE19
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA8E10E5C2;
	Wed, 18 Sep 2024 14:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="figbbv3C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4B610E5BD;
 Wed, 18 Sep 2024 14:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670520; x=1758206520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iT0XN2L01JolxCsU2mj5trpNZxYet0L8hGnHRRJ6VyQ=;
 b=figbbv3CyK29RAP+Id/GnpQKQscvhSWL9mA9IsgLOHMSbYXanaP5TPpG
 L5MTrhNU/hB+N5UgFNwcyyVncr4CkdC74xZkQKQzi7eERKMdxCOmK4Ak/
 ZkJ6GpE4ZBTzxUw8qxUC2ixC7nhr6/MHEVfY8tp10h5yfa9hlKjmYhTox
 7Vo49BpQdae8VnUUHcaoBImudaHRoAAHrw761KknZiV4pl/ceJfVRYLs+
 M0NPf+0MtwKTf9egCsEYZiWaapmtmDXIMlWoR+haGlJp+/msL41FpXcWl
 xdU1GyAYdGp3Wi7TxL+mFjqLsrnCzB/XWWr3AW/2kC6vkhocAxLLykn9b A==;
X-CSE-ConnectionGUID: mhRHfQ4ARTePXjVbGu+Dig==
X-CSE-MsgGUID: bYXWVFTCS++xqJfKeryJag==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481718"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481718"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:00 -0700
X-CSE-ConnectionGUID: e2hKhbfQRGSGICPNTA0Q+Q==
X-CSE-MsgGUID: Q7Trx1/0Q0myRQZ26mkWww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200366"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 03/15] drm/i915/display_debugfs: Allow force joiner only if
 supported
Date: Wed, 18 Sep 2024 20:13:31 +0530
Message-ID: <20240918144343.2876184-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 86403a9318b0..cda3f6cf724d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1516,6 +1516,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 	int connector_type = connector->base.connector_type;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	/* The connector must have been registered beforehands. */
 	if (!root)
@@ -1550,7 +1551,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
-	if (HAS_BIGJOINER(i915) &&
+	if (HAS_BIGJOINER(i915) && intel_dp_has_joiner(intel_dp) &&
 	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
 		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
-- 
2.45.2

