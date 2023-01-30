Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF45E681839
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:06:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4D110E102;
	Mon, 30 Jan 2023 18:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A366110E0FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101958; x=1706637958;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cz+Evt+opWk7ZQPq64HsjOGqB/wjC8aA49IG1ohEDoY=;
 b=kNMOMcIsy/ktIVesn/mDrwNxhmr2HsR2iUR/OwYkYUJsneYXVcidZnJI
 IePawYznfKLsURl5VzmIjuik+SdCaHZMdbV2dgik1i5Z744wiq7enNK8f
 QqESwI3yaQucB4P0Qj9HWIvanZK3NPSHmDg8AvA3MDlmQ5I0qKZ3He5l0
 r/j16jQSWYY1qE5w72JrFCIvLKi8Nz1foLjlIN88CXTerU+Gy4aVCYKe1
 1Th1Q3miG+JPRIDoUgsDXSvLbjV3IbGAeBKjiM8BNtIW5zB4MKq64L8GG
 QAmWDRMWHMXdq2JdT8Ej1qzZYMvywFf7uXMlRze4uHNKMrKYjG2oH/n8R A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742227"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742227"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:05:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918140"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918140"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:05:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:05:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:37 +0200
Message-Id: <20230130180540.8972-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/lvds: Fix whitespace
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

Replace some stray spaes with tabs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 28 +++++++++++------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 2fa337ad8155..a5ead4e56ec2 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -586,12 +586,12 @@ static const struct dmi_system_id intel_no_lvds[] = {
 	},
 	{
 		.callback = intel_no_lvds_dmi_callback,
-                .ident = "AOpen i45GMx-I",
-                .matches = {
-                        DMI_MATCH(DMI_BOARD_VENDOR, "AOpen"),
-                        DMI_MATCH(DMI_BOARD_NAME, "i45GMx-I"),
-                },
-        },
+		.ident = "AOpen i45GMx-I",
+		.matches = {
+			DMI_MATCH(DMI_BOARD_VENDOR, "AOpen"),
+			DMI_MATCH(DMI_BOARD_NAME, "i45GMx-I"),
+		},
+	},
 	{
 		.callback = intel_no_lvds_dmi_callback,
 		.ident = "Aopen i945GTt-VFA",
@@ -608,14 +608,14 @@ static const struct dmi_system_id intel_no_lvds[] = {
 		},
 	},
 	{
-                .callback = intel_no_lvds_dmi_callback,
-                .ident = "Clientron E830",
-                .matches = {
-                        DMI_MATCH(DMI_SYS_VENDOR, "Clientron"),
-                        DMI_MATCH(DMI_PRODUCT_NAME, "E830"),
-                },
-        },
-        {
+		.callback = intel_no_lvds_dmi_callback,
+		.ident = "Clientron E830",
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Clientron"),
+			DMI_MATCH(DMI_PRODUCT_NAME, "E830"),
+		},
+	},
+	{
 		.callback = intel_no_lvds_dmi_callback,
 		.ident = "Asus EeeBox PC EB1007",
 		.matches = {
-- 
2.39.1

