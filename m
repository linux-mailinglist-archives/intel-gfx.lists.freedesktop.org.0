Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C5A9B0911
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DFED10EB0F;
	Fri, 25 Oct 2024 16:02:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWrfF0/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44CE10EB0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872157; x=1761408157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s16p+2dI/8GqFUNP2AAQlgyOhzZL3LWhLgRSzOTe6sk=;
 b=kWrfF0/K5Hry4LG04i5TLNrChKow8w0h3zTMzrAXuvGaF3RgULOws6Rr
 IIhZHbwDuvznrR/lcShsG7nul6yPJ8WRZJgAa0qs+6LEH5Fkpu1roUp+2
 Xu2vc+MbPi1RW85Bx944XnUlAH94cIDWjwc3NWaH7GqA8aFBJBAzYNpx8
 PIOG6CqxLwVIux8rYGMroWst7A2PEWyFpagEb9gZjieDesa4WHrJtGSu5
 uHFPe/sMR1MhBow2UM7zYKy8noeJbmDT69EHiK+L+y+RSHheHlA6nqmrM
 iZajvj/S4EPz8EvMSsC/uZtaIKOn46LbiIuyBSJV3g/4jKEDYRJVioyu/ g==;
X-CSE-ConnectionGUID: /LWEtYWXSC+OnajyV9MDqw==
X-CSE-MsgGUID: Fa74AAl/TL+mAd5n+Yq58Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242404"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242404"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:36 -0700
X-CSE-ConnectionGUID: Kxk0KjsdQJyZ4yvnknCxqg==
X-CSE-MsgGUID: qgAyP/08S1KRVIXlNYOK4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783713"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 7/8] drm/i915/dp: Write the source OUI during connector
 detection
Date: Fri, 25 Oct 2024 19:02:58 +0300
Message-ID: <20241025160259.3088727-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
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

The DP sink's capabilities, like DSC, may depend on the source OUI
written to the sink. On eDP this OUI value could have been reset before
the detection started if the panel power on it got disabled. Make sure
the OUI is re-written at the beginning of detection in this case, before
the sink capabilities are read out.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d6d7dc1e4ccd..916301aa9f6b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5664,6 +5664,8 @@ intel_dp_detect(struct drm_connector *connector,
 		goto out_unset_edid;
 	}
 
+	intel_dp_init_source_oui(intel_dp);
+
 	ret = intel_dp_tunnel_detect(intel_dp, ctx);
 	if (ret == -EDEADLK) {
 		status = ret;
-- 
2.44.2

