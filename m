Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FBB8CA267
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C51210E88A;
	Mon, 20 May 2024 18:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B63xDniC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E1C10E572
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231514; x=1747767514;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NbNjisrR5vHYONOIzXp45mVJDkxy7l9tX7MDhe/T+eE=;
 b=B63xDniCD0fby/ugNGmvrJ1p0o9ahDvIyVxh591nTPMhPPKSuBzi09LV
 zvfBa1abYwoGY0Adx97PYm54NB0aBDyI2PdATrw2MOt+8wfFxnK8Rs33C
 gyPLTgRckOew+BvVKUOmtclA8uAegZqXopW4UpGP8ouup0ah25KpkG06J
 rKBF/kl8cqVTdHjF+IsVuFqqsSVBhmVACgCGIb6Zl2dc1hJ+iFbtEirt9
 IwGWGsylWE9aHXL4h0k1Tm0QaAkdw0LQCfrf+tpmUG08Fdq58B2mkDZws
 1RRJvVqRF9r5eHLpHZLvCO6XwjfzbgzHAZftkRaZyQK0m09pOrPY4rjPO g==;
X-CSE-ConnectionGUID: ZM0YHqxZQfWbDQ6Nmuhv8A==
X-CSE-MsgGUID: 6+/H83B9RbmfmfyCCGhucw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218550"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218550"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:34 -0700
X-CSE-ConnectionGUID: hbm6JE0bQ9eOc0uLZurpRA==
X-CSE-MsgGUID: 7YNbLNukQdWm9nddPueSGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213881"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 15/21] drm/i915/dp_mst: Reset intel_dp->link_trained during
 disabling
Date: Mon, 20 May 2024 21:58:13 +0300
Message-ID: <20240520185822.3725844-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

Reset the flag indicating an active link after disabling an MST link,
similarly to how this is done for SST outputs. This avoids trying to
retrain an MST link while its disabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c9c5d235744ab..66c1c59268167 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -981,6 +981,9 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
+	if (intel_dp->active_mst_links == 1)
+		intel_dp->link_trained = false;
+
 	intel_hdcp_disable(intel_mst->connector);
 
 	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
-- 
2.43.3

