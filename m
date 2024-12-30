Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E229FE6E7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7288310E4EF;
	Mon, 30 Dec 2024 14:15:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIuwbc5S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C78B10E4EE;
 Mon, 30 Dec 2024 14:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568113; x=1767104113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VOF27CrqRS4tDsxs1dgaLSW6+Z9cGAuIQnlmfTksnfM=;
 b=SIuwbc5SRQQN0LFRSY3uAgk2U2mTvHczGg7DbBorMoSyTBYrDlpytsZC
 kv/vZFbWxUw87sZNqNdjK+xZBRZYTTrCQYPHLlUL/5Tv2F7mrrsbFklRY
 zr+Z7t/8eTavJGOnWFQFwMRlYeDL+HeEa7QuDQ+ZWLg1nDKpWK4ftdJ+N
 mnjmZLT9690ZHKdGEXjMmIlBcyFlHl4D0SY82LcqQrq+ZnUeUTVZVhIKb
 Jb7Wal1oE0ieKpAD6yFVIf/6GueqXiptjnTjDt0mEH7LZNi3scPwUslnI
 TBpXPV8Ddw4oiOzDHXtBqn+w9QSU4g0rDDV0zuvT/vs8btYRVuUzimj+w g==;
X-CSE-ConnectionGUID: qegNn09DSFCyU9cMJWyYCQ==
X-CSE-MsgGUID: JE7yji1mQ3eqk5P4y0npxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39538373"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39538373"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:13 -0800
X-CSE-ConnectionGUID: rfc23pEdTMCrwIVU1pHjtw==
X-CSE-MsgGUID: qFAzBB3USa67UZlk2bZZCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="101215297"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 4/6] drm/i915/ddi: gracefully handle errors from
 intel_ddi_init_hdmi_connector()
Date: Mon, 30 Dec 2024 16:14:43 +0200
Message-Id: <d72cb54ac7cc5ca29b3b9d70e4d368ea41643b08.1735568047.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735568047.git.jani.nikula@intel.com>
References: <cover.1735568047.git.jani.nikula@intel.com>
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

Errors from intel_ddi_init_hdmi_connector() can just mean "there's no
HDMI" while we'll still want to continue with DP only. Handle the errors
gracefully, but don't propagate. Clear the hdmi_reg which is used as a
proxy to indicate the HDMI is initialized.

v2: Gracefully handle but do not propagate

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org> # v1
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 21277cf8afef..2c4308506435 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4757,7 +4757,16 @@ static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 		return -ENOMEM;
 
 	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
-	intel_hdmi_init_connector(dig_port, connector);
+
+	if (!intel_hdmi_init_connector(dig_port, connector)) {
+		/*
+		 * HDMI connector init failures may just mean conflicting DDC
+		 * pins or not having enough lanes. Handle them gracefully, but
+		 * don't fail the entire DDI init.
+		 */
+		dig_port->hdmi.hdmi_reg = INVALID_MMIO_REG;
+		kfree(connector);
+	}
 
 	return 0;
 }
-- 
2.39.5

