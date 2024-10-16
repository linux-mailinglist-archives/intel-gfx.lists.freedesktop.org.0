Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B649A0B59
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910A610E6F0;
	Wed, 16 Oct 2024 13:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O3YLrwSx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E9D10E6F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729085040; x=1760621040;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ADGIvmCcT2ZRJLMLd5SutqHlepxDVEmcizqxDze7JMU=;
 b=O3YLrwSx1XI5RLqHdOLqqEM0iYmBYUsJ1J2PqXtUOftrRJ2jd+1gceVn
 0wM/DBpRbJ0tAA+MSdbCO2No+px3VWsFJEOzgBu6RZywgypYEsMZmo8Bh
 101f1/HwYvlfvPEUhLPwrFP+Wt0RRun5BVnRGYpTeBXtu4Fdns2emsFG9
 2mYraLdGsB3nhHR6sA/AnOkyZAuSM29hAmFjtWjxOTBz/s+EAoMUfZIfN
 QYyKsltt8Af0aXUXlTzkIkoGp4O0oun4mER3jg5oFJRK/uZYTwZGxIywX
 stdmrWoDjiWqx8tHRdX4GsaRUQcVCOWp1FEdBwLpii8nNzq07NCjH4x5L Q==;
X-CSE-ConnectionGUID: MMLfiTcyRwmM4zsRkzR0rw==
X-CSE-MsgGUID: nZ6YTjkaToihOZ5MjmOAhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46005985"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46005985"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:44 -0700
X-CSE-ConnectionGUID: HXbQpv5sTmiS6NYl0uYMKg==
X-CSE-MsgGUID: tEvNNTqmQlm1LMgprTf70A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78384459"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 7/8] drm/i915/dp: Write the source OUI during connector
 detection
Date: Wed, 16 Oct 2024 16:24:04 +0300
Message-ID: <20241016132405.2231744-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241016132405.2231744-1-imre.deak@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
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

The DP sink's capabilities, like DSC, may depend on the source OUI
written to the sink. On eDP this OUI value could have been reset before
the detection started if the panel power on it got disabled. Make sure
the OUI is re-written at the beginning of detection in this case, before
the sink capabilities are read out.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 520cc6f50a126..063fe92d43786 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5669,6 +5669,8 @@ intel_dp_detect(struct drm_connector *connector,
 		goto out_unset_edid;
 	}
 
+	intel_dp_init_source_oui(intel_dp);
+
 	ret = intel_dp_tunnel_detect(intel_dp, ctx);
 	if (ret == -EDEADLK) {
 		status = ret;
-- 
2.44.2

