Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D0398806A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64D710EC54;
	Fri, 27 Sep 2024 08:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQPLGvj0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0103F10EC4F;
 Fri, 27 Sep 2024 08:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426200; x=1758962200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5+vRL/t93ned0andninRpfo6PLrtXWh7I8V/BX46VZ8=;
 b=ZQPLGvj0GJweO4Ti/WoRtmCfwuMDh97VWaatoojUp0aUFoHNn1JkhUBM
 8MGjfkT9iyou/RtuSo1EOwY6c21jDlquKaA/+1wR5kCBEpQohf/QAx001
 m9fROCtl4ryEc4dGx40Pl2Ozjgog0eKiSvZk46R5pkO0jzkoybY2tUKZG
 N7xUAAnL2qo6u3Qdhbqc0pnWhL4lvNtvm/Bx99Rk4bM70uOB2YJABSzN1
 b7W1lAXQOWsmI+YtYXdyYUR4LzofYMyVsyHVLq+zZUklC6lQbg4fu9t2O
 tIP4bq/9ms+pttyFGriGbkw6erzTzP3e4BKHccVeP0js4qt1S/eZUTUMd g==;
X-CSE-ConnectionGUID: qMStzX9WQDCqKChOsNNtvA==
X-CSE-MsgGUID: AdcsJeoFRSSLy7aS8EP21g==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977613"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977613"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:39 -0700
X-CSE-ConnectionGUID: sEpwQB7TT+Gph8mpYl19Mg==
X-CSE-MsgGUID: nQ6HAIcnRdmUF39xfQAneg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409364"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 02/17] drm/i915/display_debugfs: Allow force joiner only if
 supported
Date: Fri, 27 Sep 2024 14:08:16 +0530
Message-ID: <20240927083831.3913645-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
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

Currently we support joiner only for DP encoder.
Do not create the debugfs for joiner if DP does not support the joiner.
This will also help avoiding cases where config has eDP MSO, with which
we do not support joiner.

v2: Check for intel_dp_has_joiner and avoid creating debugfs if not
supported. (Ville)
v3: Remove HAS_BIGJOINER check. (Ville)
v4: Reverse checks for connector type and intel_dp_has_joiner(). (Ville)
v5: Drop the local variable intel_dp and use intel_attached_dp() directly.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 890ef7067b77..c38023b43682 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1362,9 +1362,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
-	if (HAS_BIGJOINER(i915) &&
-	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
-	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
+	if ((connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	     connector_type == DRM_MODE_CONNECTOR_eDP) &&
+	    intel_dp_has_joiner(intel_attached_dp(connector))) {
 		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
 				    &connector->force_bigjoiner_enable);
 	}
-- 
2.45.2

