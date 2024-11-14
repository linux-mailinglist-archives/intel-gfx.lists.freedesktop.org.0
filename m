Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE7E9C8EBA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 16:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CAB10E818;
	Thu, 14 Nov 2024 15:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SmPkAM99";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8958110E80B;
 Thu, 14 Nov 2024 15:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731599559; x=1763135559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YO1PAjAVnQkyYyQFFpnKoLjvPI952FfF0POQAYq0+p4=;
 b=SmPkAM99lph05JpTVVwsbWIV4UYRW0G3glJjOgt+/XG8bUdoqTXD18K/
 3C1XOHKcFQmvw/rWxbk8BGobUu2lciwakbFQgp9syFqHGzilQkGcftp77
 o7jdoasPyllxXruEDTVFeNuEMaFIRIPPQ0Rfhr9GbMUckyA9awxHBMtmH
 hPUBZtkomsZeQJ4RXUvdmAMAnJhgi48lI7HFwQX9kP/xOiZ01IS9MMb4g
 GfAbDsCyjuRB4zly6/wLuxAULpWOlcxcMeOcziXmsNGbUZ0yMplkif2dJ
 rIZ5zv9mZUHubPpzbQ8mUVjdpzKKuXoWM2J3Qy6lIr1AVs56/dKvgnKJU g==;
X-CSE-ConnectionGUID: WKJSiqcPT3m1w3KjpEBttw==
X-CSE-MsgGUID: ag4td3nZQhmnNuCG7Zd5Xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="35269719"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="35269719"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 07:52:39 -0800
X-CSE-ConnectionGUID: CXnAXE5uSk2q4OdnICOtAQ==
X-CSE-MsgGUID: gxe4FssoSheGwc9Bc8uT7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88646168"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 07:52:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH 3/3] drm/i915/ddi: propagate errors from
 intel_ddi_init_hdmi_connector()
Date: Thu, 14 Nov 2024 17:52:17 +0200
Message-Id: <9e8840b3815919370a1f15c515772e151a32cc06.1731599468.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731599468.git.jani.nikula@intel.com>
References: <cover.1731599468.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Propagate connector init errors from
intel_ddi_init_hdmi_connector(). The caller already handles the
allocation failures, and this is all similar to
intel_ddi_init_dp_connector().

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f3368cf52641..276b73bed07f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4705,7 +4705,11 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 		return NULL;
 
 	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
-	intel_hdmi_init_connector(dig_port, connector);
+
+	if (!intel_hdmi_init_connector(dig_port, connector)) {
+		kfree(connector);
+		return NULL;
+	}
 
 	return connector;
 }
-- 
2.39.5

