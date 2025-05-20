Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EC7ABD3F2
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 11:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5CBE10E3A3;
	Tue, 20 May 2025 09:54:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YNgKIQC8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8018710E3A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 May 2025 09:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747734863; x=1779270863;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kz+ixQoa5Q6gbjeDTFcHu81BermeBxco2SOErWpnC8w=;
 b=YNgKIQC8kIakLDl0HH7IKZqzqhSV+b8MTlJvGclBKtdsvxX/06DX1yVA
 xfx0As0RCAVsdFl1kK0J2IeRlYpks+GCbzT5dITwi0OmcZxmZNRhZXGU5
 WBgh0IiWgSFRZl6TtOyRXYYHCGTZTlGAsqCbQeMSfGGqMlg3ED2ymp9+V
 8h1Rjr8k3EvcCQ6pVi2pro3u3wDe/XC8DJLN7VK3+mCgb/4EVr9HIK88u
 ne+y6wLT5YVQOc1q6rLtepAqBssY6DB2dQLZtSjsRTbFWEANA31mGO2gs
 WFmxRZkhTQcOPaf5w6SY0yalXbU+00pf9YAsDo/2Lup5M/C26ILuJyq+b Q==;
X-CSE-ConnectionGUID: ospi2k5dRPCJNU2tkqUY4g==
X-CSE-MsgGUID: SFcozGawQNKTYg5twCkjxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="67214177"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="67214177"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:54:23 -0700
X-CSE-ConnectionGUID: lrEqO+xfRxGIS+93Cx2WuQ==
X-CSE-MsgGUID: iOS7nxDnSoiq0Nzo8FeXRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140149408"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.245.245.155])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:54:22 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: use drm_modeset_lock_assert_held() in
 intel_connector_get_pipe()
Date: Tue, 20 May 2025 12:53:53 +0300
Message-ID: <20250520095408.1310440-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.47.2
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

In the intel_connector_get_pipe() function, we check if
connection_mutex is held and generate our own WARN_ON if that's the
case.  Instead of generating a non-standard warning for a mutex issue,
we should use the standard lockdep framework.

Change the function to use drm_modeset_lock_assert_held() instead.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 6c81c9f2fd09..9a61c972dce9 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -209,8 +209,7 @@ enum pipe intel_connector_get_pipe(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 
-	drm_WARN_ON(display->drm,
-		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
+	drm_modeset_lock_assert_held(&display->drm->mode_config.connection_mutex);
 
 	if (!connector->base.state->crtc)
 		return INVALID_PIPE;
-- 
2.47.2

