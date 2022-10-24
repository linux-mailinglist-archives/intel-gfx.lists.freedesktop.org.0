Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4245760A66E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 14:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA2710E552;
	Mon, 24 Oct 2022 12:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1076D10E4A0;
 Mon, 24 Oct 2022 12:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666614894; x=1698150894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TYZW1M8OlzD9394b/h631OtdqBpWbDNu/OohTax9NPc=;
 b=eN3QB8I9iyc6kblIt7EF2laLu0O8B3m/Gb/ttX8szZ4JTfrg0521uz/Y
 PwT9sQU/S85Wdrl/NgU/mfYIfklciPtFwOfO2w8Pp7+21JllSH3+A4FiW
 3Le0RvKKCQhKLIrM6maJWeXvvIskDYSHI3tbuA/rnFOH4kmx3tFVvyj2A
 fB+7jes606BDwBmbqIk5tLP+CaUtMDae8WVpytSwuWxeMJY4weBsAWYqp
 r4FVAH9eNV+zLPBP+HgtPIXiclU++YFYDEDwS1e7Uln8ULXqBjFy/Av/k
 jpbL2o7FbDQVKWZR5s/4VJOPSpwCDWcfhWMzLPjbmAzXELcrb27anWpbh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="305014169"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="305014169"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 05:34:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="633693850"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="633693850"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.221])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 05:34:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 24 Oct 2022 15:33:42 +0300
Message-Id: <14f3a1e55729c9157aae93fc45320d05cc4cc7bc.1666614699.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1666614699.git.jani.nikula@intel.com>
References: <cover.1666614699.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/16] drm/edid/firmware: convert to drm
 device specific logging
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conform to device specific logging.

v2: Include [CONNECTOR:%d:%s] (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid_load.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid_load.c b/drivers/gpu/drm/drm_edid_load.c
index 882caaa6e663..ef4ab59d6935 100644
--- a/drivers/gpu/drm/drm_edid_load.c
+++ b/drivers/gpu/drm/drm_edid_load.c
@@ -177,16 +177,20 @@ static const struct drm_edid *edid_load(struct drm_connector *connector, const c
 
 		pdev = platform_device_register_simple(connector->name, -1, NULL, 0);
 		if (IS_ERR(pdev)) {
-			DRM_ERROR("Failed to register EDID firmware platform device "
-				  "for connector \"%s\"\n", connector->name);
+			drm_err(connector->dev,
+				"[CONNECTOR:%d:%s] Failed to register EDID firmware platform device for connector \"%s\"\n",
+				connector->base.id, connector->name,
+				connector->name);
 			return ERR_CAST(pdev);
 		}
 
 		err = request_firmware(&fw, name, &pdev->dev);
 		platform_device_unregister(pdev);
 		if (err) {
-			DRM_ERROR("Requesting EDID firmware \"%s\" failed (err=%d)\n",
-				  name, err);
+			drm_err(connector->dev,
+				"[CONNECTOR:%d:%s] Requesting EDID firmware \"%s\" failed (err=%d)\n",
+				connector->base.id, connector->name,
+				name, err);
 			return ERR_PTR(err);
 		}
 
-- 
2.34.1

