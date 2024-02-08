Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C3B84DF94
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 12:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8611810E2EA;
	Thu,  8 Feb 2024 11:25:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QgitEEuV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Thu, 08 Feb 2024 11:25:28 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F040110E2EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 11:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707391529; x=1738927529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S4BjbjfSUEk2yEmx+2h59LPoWzgExpJMeer9dSMwQow=;
 b=QgitEEuVRBcy9mpbIWczCkQkOuKXdczcrF3XeSJLsIfRbmHQ+1dZt+gJ
 ORJcFVnouxWi/EcOKS4Iyp3D1RZy00LXXUwsFCs5VNEs3Dz8crzfkFCol
 0PMY+wlataDQRuUEofBeMNAlbFqvga/161esJyo9uZOBZ2qf2c0xVi1G6
 zt53ATCn83GJtPG2aVn0jUgq6m56I6B/z5fysOTVmvKZZ6abOW6oQNH4s
 RWatUsQfv8wBThvpu5tHh3Mfjqjr5Sp2qB9a43NVFUxKn53BAlwJMkac7
 k7R3Fll6rpRZ/lWF/r3ygcr7eMsw926U+ONtlpRYd1z4YenMGZZl6ql+G A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="1096149"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; 
   d="scan'208";a="1096149"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 03:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="824804064"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; d="scan'208";a="824804064"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 03:18:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Date: Thu,  8 Feb 2024 13:18:38 +0200
Message-Id: <20240208111838.1950411-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240206153910.1758057-2-imre.deak@intel.com>
References: <20240206153910.1758057-2-imre.deak@intel.com>
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

Prevent accessing the HW from the SDVO/TV get_modes connector hook.
Returning 0 from the hook will make the caller -
drm_helper_probe_single_connector_modes() - return a default/EDID
override mode list to users. This matches the case where
intel_sdvo_get_tv_modes() fails to retrieve the current mode list due to
a HW access failure.

v2: Clarify the commit message wrt. which modes get_modes() returns. (Jouni)

Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2571ef5a1b211..ccea0efbd136f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2287,6 +2287,7 @@ static const struct drm_display_mode sdvo_tv_modes[] = {
 static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 {
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
 	const struct drm_connector_state *conn_state = connector->state;
@@ -2298,6 +2299,9 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
 		      connector->base.id, connector->name);
 
+	if (!intel_display_driver_check_access(i915))
+		return 0;
+
 	/*
 	 * Read the list of supported input resolutions for the selected TV
 	 * format.
-- 
2.39.2

