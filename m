Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C84E30EF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 20:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3997E10E48C;
	Mon, 21 Mar 2022 19:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7210110E48B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 19:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647892215; x=1679428215;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TtzqbCZNjrTi+RPsQblgenvnGHeNmTC41OWD8S1WZ2s=;
 b=hQ6Gfj+7FehgGh1hNxxSjMPs364uXd89KEM3FX2U5/B2iy2SiENjO8hS
 sSvMF+zGN/ZOBuMa7m3VslfhnSRsu78FCZ4VB5Q+ru/tIPO8NUJ4jyn4w
 9IZ7cP1IE+OaK7N/Ij2CiM34zl7s7EJQVwFhGRpjBZTV4zFOKkRMd3f6m
 ih4sMexKZoQ8+snYc4L/hU8ZbQffTF/hdr0sID6KW0MrutzQXeKhp5eBn
 kQbhhT9S1u54bwnTXJxsu2UWhttLDEf2ZPKTZAdpfsHR7/zLFwkzROKPH
 29ZwJP9xswxPw7rVheb/Jz4+Vtu3weqRR+Ttolb7dOHbcHzMHp3YCL2cz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="282464554"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="282464554"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 12:50:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="600593910"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 21 Mar 2022 12:50:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Mar 2022 21:50:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 21:50:05 +0200
Message-Id: <20220321195006.775-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220321195006.775-1-ville.syrjala@linux.intel.com>
References: <20220321195006.775-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Use
 drm_connector_attach_hdr_output_metadata_property()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop hand rolling drm_connector_attach_hdr_output_metadata_property().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9e19165fd175..5d66f2b953e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4642,9 +4642,7 @@ intel_dp_connector_register(struct drm_connector *connector)
 	if (lspcon_init(dig_port)) {
 		lspcon_detect_hdr_capability(lspcon);
 		if (lspcon->hdr_supported)
-			drm_object_attach_property(&connector->base,
-						   connector->dev->mode_config.hdr_output_metadata_property,
-						   0);
+			drm_connector_attach_hdr_output_metadata_property(connector);
 	}
 
 	return ret;
@@ -4940,9 +4938,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 	}
 
 	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
-		drm_object_attach_property(&connector->base,
-					   connector->dev->mode_config.hdr_output_metadata_property,
-					   0);
+		drm_connector_attach_hdr_output_metadata_property(connector);
 
 	if (intel_dp_is_edp(intel_dp)) {
 		u32 allowed_scalers;
-- 
2.34.1

