Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31235A2B223
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 20:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0020E10E928;
	Thu,  6 Feb 2025 19:22:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2tS0Vs+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC9010E30C;
 Thu,  6 Feb 2025 19:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738869721; x=1770405721;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N5r609qw0H3V/Ad6D4oxujMEDGaK8JdG8V55li0u6oU=;
 b=X2tS0Vs+XWWWRAk0nw9YYhe88kyQblKOaHeklcTIY5TkKaUjpmlE+dEg
 PDNJVjGjfFMQZ/NGcGCEeZeW+Que+zC8ItIL4ChL8gRh2LIRtC5eKG93/
 4TeRzjMVOmS3DtWd/H/DZT+9m4eo5Qolue9Vdrt42Uymi0U9mnPza6IDb
 dXKcTGzHnzJV3Y3a2KpJArc+7Be/jPFdv7mn5HMn43btzBa0oUB8AFNL5
 kcgi4nunD9ljHeRuSeNrfseVptRVPHxSMb86W8QakClzN/CHR5CF7K9wb
 k46HgJKxKWs7/VGbq1D2+INaHKUsGCWmjcGOktgFyj78GtSL+ykSKV8Zy g==;
X-CSE-ConnectionGUID: tYKWoUlFQNS/B/cof8aFrQ==
X-CSE-MsgGUID: i3hqwHAxTx+D4DR6xZJUug==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39398825"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39398825"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 11:22:01 -0800
X-CSE-ConnectionGUID: R4LCTo6STLag1/WrEsXUZA==
X-CSE-MsgGUID: L4U4nOSQTlurhuA8UO1JRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111502526"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.1])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 11:22:01 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/xe3lpd: Update bandwidth parameters
Date: Thu,  6 Feb 2025 16:21:30 -0300
Message-ID: <20250206192148.53610-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250206192148.53610-1-gustavo.sousa@intel.com>
References: <20250206192148.53610-1-gustavo.sousa@intel.com>
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

Bandwidth parameters for Xe3_LPD have been updated with respect to
previous display releases. Encode them into xe3lpd_sa_info and use that
new struct.

Bspec: 68859
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index e52c66eca93d..9937fb10ebf3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -404,6 +404,13 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
 	/* Other values not used by simplified algorithm */
 };
 
+static const struct intel_sa_info xe3lpd_sa_info = {
+	.deburst = 32,
+	.deprogbwlimit = 65, /* GB/s */
+	.displayrtids = 256,
+	.derating = 10,
+};
+
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
 	struct intel_display *display = &dev_priv->display;
@@ -759,7 +766,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
+	if (DISPLAY_VER(display) >= 30)
+		tgl_get_bw_info(dev_priv, &xe3lpd_sa_info);
+	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
 		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
 	else if (DISPLAY_VER(display) >= 14)
 		tgl_get_bw_info(dev_priv, &mtl_sa_info);
-- 
2.48.1

