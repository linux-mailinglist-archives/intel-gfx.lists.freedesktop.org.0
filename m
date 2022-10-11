Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7365FACE6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF96C10E7C3;
	Tue, 11 Oct 2022 06:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4128410E7B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665470085; x=1697006085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DqfP28f9JSyz5vK48YdZVD4bePWI6C6gdAy+MrQASkM=;
 b=HdLF4USvEjlcfwaPae0snragjBBXmoqWy3M0VDN6E+gVlrkVzUlTLYZs
 oFzYc1HJvvAZMiZAblemLjnAJRoazPTHGjqxmk63RJ3jFbPuW6BRcO/ZF
 2nZJ1rmjxMZZQ3JrgOB2ip3Udx+T5hkzW+02VdaWPkPzyo8jOguWL6smS
 8AFGixEMK/p0z1JdKm7WNqbbyvCCk4hxS3xophjkji/w3klJHeIWoPNim
 n+CgsnYKp+YJBLs09EpgwGozkVQcFblmYChBCsXRx5gBGHydy2lwZCwRZ
 w3p3x5s11OF5D+L0Zf0PSoHsIb29t9UBMi9IlQNRWK4hbhsOV9fYLkXCA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302031814"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="302031814"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768680332"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="768680332"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:04:40 +0530
Message-Id: <20221011063447.904649-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/8] drm/i915/dp: Reset frl trained flag
 before restarting FRL training
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

For cases where DP has HDMI2.1 sink and FRL Link issues are detected,
reset the flag to state FRL trained status before restarting FRL
training.

Fixes: 9488a030ac91 ("drm/i915: Add support for enabling link status and recovery")
Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com> (v2)
Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 70b06806ec0d..9133d4c65437 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3961,6 +3961,8 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
 
 		drm_dp_pcon_hdmi_frl_link_error_count(&intel_dp->aux, &intel_dp->attached_connector->base);
 
+		intel_dp->frl.is_trained = false;
+
 		/* Restart FRL training or fall back to TMDS mode */
 		intel_dp_check_frl_training(intel_dp);
 	}
-- 
2.25.1

