Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B39CD6EF5D1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264FC10E9A4;
	Wed, 26 Apr 2023 13:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2A310E1AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517033; x=1714053033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GrLrYmQcsu7vgU1lLvTOQBS7ZSLQNnza9aHgc7xdXGo=;
 b=GElq6tcrhz54cmX9V7pj9xIq4e8HcxEZQYMmFvB4uvV9HPRoNq/0uAAe
 IP3nrSzMtPDnMj67YB4PgwHTSF00Js9KNWn5OArTnZIKWVr4itBpqoocL
 uhLAoYF44t2wTIsup9OWHzsrQRy6/ItpuDx11LMsdAAKGAo+4kQ6MrbMu
 /vaJ9xD0G33dEx0J1TN34c62GM8xdVkzTt7WhKqnkCfGTIrS7dV953txW
 Upx5ffLE0VZReoG1Sxjoo3eH2F5YoqCdJ8+5waEReZf65O0Y0UFxkV95I
 Hral6aLk9m3gMVu2d++jFgVaAPK5fNW2TBLnNE6Lucm52oLesFamz4adC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436783"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436783"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514262"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514262"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:16 +0300
Message-Id: <20230426135019.7603-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915:
 s/PS_COEE_INDEX_AUTO_INC/PS_COEF_INDEX_AUTO_INC/
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix a typo in the PS_COEF_INDEX_AUTO_INC define.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index a96f8ecbeec1..4437d130293a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -658,7 +658,7 @@ static void glk_program_nearest_filter_coefs(struct drm_i915_private *dev_priv,
 	int i;
 
 	intel_de_write_fw(dev_priv, GLK_PS_COEF_INDEX_SET(pipe, id, set),
-			  PS_COEE_INDEX_AUTO_INC);
+			  PS_COEF_INDEX_AUTO_INC);
 
 	for (i = 0; i < 17 * 7; i += 2) {
 		u32 tmp;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2ced1cf35446..530bc961088f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4151,7 +4151,7 @@
 #define _PS_COEF_SET0_INDEX_2A	   0x68298
 #define _PS_COEF_SET0_INDEX_1B	   0x68998
 #define _PS_COEF_SET0_INDEX_2B	   0x68A98
-#define PS_COEE_INDEX_AUTO_INC	   (1 << 10)
+#define PS_COEF_INDEX_AUTO_INC	   (1 << 10)
 
 #define _PS_COEF_SET0_DATA_1A	   0x6819C
 #define _PS_COEF_SET0_DATA_2A	   0x6829C
-- 
2.39.2

