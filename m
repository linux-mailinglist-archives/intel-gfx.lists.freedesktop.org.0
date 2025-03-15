Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2532A628D7
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 09:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838AD10E392;
	Sat, 15 Mar 2025 08:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3YtpuaM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D2B10E158;
 Sat, 15 Mar 2025 08:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742026608; x=1773562608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fv1kdwVeeVUZ87ZkUhRP9MrqXXT70NMB5pLwu84IZbg=;
 b=h3YtpuaMS2ynZuUjPi3hsI75o4ZjTGEHAfo7SB9NvI4iba5jgsDFhDqE
 4XB7bc7deE0q3uDnjZemmX+Tv/CgAp4iAo2kKWvJh1/6tYtBAEMW2l6OB
 NEt+LGKPovpLsFOiQ7sEAS728kRF9kXqzI+GCE5BJuUIGaVOh/t1y6gkB
 sSsKvl8v82BCKJb5Qo4gaJ1YKdXlUYUnfkSEZTpgcqMYJngkAby6dBkaA
 goTORFRGRSKLylBUXT0zdSndR5olEuYneP3PF7QhzF7nZLN2nNQFS2NOy
 f4bZt00N9TxlEbt2GIfV0vdp+1m9mE9TiJcrpKVHO2MpZAAo7GBLt4V3D g==;
X-CSE-ConnectionGUID: 8oIwh+ClQJuaCIc6CM8hqA==
X-CSE-MsgGUID: MZNaBuKpQYivK3aUlpajkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60725879"
X-IronPort-AV: E=Sophos;i="6.14,249,1736841600"; d="scan'208";a="60725879"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2025 01:16:48 -0700
X-CSE-ConnectionGUID: TbmLE+JPR5idy9zeScpv2Q==
X-CSE-MsgGUID: m07Y91qMSzaYPpu2oZKIsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,249,1736841600"; d="scan'208";a="121692438"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2025 01:16:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 2/2] drm/i915/vrr: Avoid reading vrr.enable based on fixed_rr
 check
Date: Sat, 15 Mar 2025 13:34:49 +0530
Message-ID: <20250315080449.2325563-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250315080449.2325563-1-ankit.k.nautiyal@intel.com>
References: <20250315080449.2325563-1-ankit.k.nautiyal@intel.com>
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

Currently, vrr.enable is intended only for variable refresh rate timings.
At this point, we do not set fixed refresh rate timings, but the GOP can,
which creates a problem during the readback of vrr.enable.

The GOP enables the VRR timing generator with fixed timings, while the
driver only recognizes the VRR timing generator as enabled with
variable timings. This discrepancy causes an issue due to the
fixed refresh rate check during readback. Since the VRR timing generator
is enabled and we do not support fixed timings, the readback should set
vrr.enable so that the driver can disable the VRR timing generator.
However, the current check does not allow this.

Therefore, remove the fixed refresh rate check during readback.

Fixes: 27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index aa65a6933ddb..6bdcdfed4b9b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -657,8 +657,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
-				 !intel_vrr_is_fixed_rr(crtc_state);
+	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 
 	/*
 	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
-- 
2.45.2

