Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4157E9392D0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4337A10E1F9;
	Mon, 22 Jul 2024 16:55:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="II36GZH1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9765310E1F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667301; x=1753203301;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ImSkBiCSvLyiuE4j0ITbJNQsWMLAcatqYLV7fL+hwSE=;
 b=II36GZH1VRR+AF4wvYUQx5ujR7WfHBrAifCLv5yeM5rqDAyctNwFqDmn
 bJrI2DkxUrIh22SX1lBnMHkfmBxIKuE+JiDPFyOcVQJ6nMLlOa5szfTl3
 EgfWy/qpU/hRWTocwUhdSC7tCi39JEi3fKk8fH6N2WJ0QYf5pZY6poUTl
 /PtrWmine8/HEkkF94F7KcrA2WCPXAWPcMfhuX1zK5xrOYfeG7U9nAj8X
 Q2Y+6UTraxCrtPcF+NClAjYnGtSCSEqG/C6Ng0w0hkK1byV/PaVeVy0vU
 TwfugQFhngRYJnSxJ1aubsAjXeDlWiX25s8PkuL4qjIjWXwzxJCuAxKA8 A==;
X-CSE-ConnectionGUID: 6PiGFlkVQH+Pgl8ysC0vAA==
X-CSE-MsgGUID: 8+JzNp2cRcWMfJFmAleoCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117317"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117317"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:01 -0700
X-CSE-ConnectionGUID: fzKagjIeSSuBtDQfRscX2w==
X-CSE-MsgGUID: aSM1eoBRRyK+w92WXFrfXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056248"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:00 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/14] drm/i915/dp_mst: Configure MST after the link
 parameters are reset
Date: Mon, 22 Jul 2024 19:54:59 +0300
Message-ID: <20240722165503.2084999-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
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

The MST topology probing depends on the maximum link parameters -
programmed to DPCD if required by a follow-up patch - so make sure these
parameters are up-to-date before configuring and probing the MST
topology.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d3529c5836393..1c6d1db1d2690 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6025,13 +6025,13 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_detect_sdp_caps(intel_dp);
 
-	intel_dp_mst_configure(intel_dp);
-
 	if (intel_dp->reset_link_params) {
 		intel_dp_reset_link_params(intel_dp);
 		intel_dp->reset_link_params = false;
 	}
 
+	intel_dp_mst_configure(intel_dp);
+
 	intel_dp_print_rates(intel_dp);
 
 	if (intel_dp->is_mst) {
-- 
2.44.2

