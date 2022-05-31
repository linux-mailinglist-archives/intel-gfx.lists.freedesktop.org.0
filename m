Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2BA538F6D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 13:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC40710F6E2;
	Tue, 31 May 2022 11:05:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9441E10F797
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 11:05:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="361595343"
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="361595343"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 04:05:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="605619138"
Received: from rrudnick-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.138.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 04:05:15 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 31 May 2022 14:05:12 +0300
Resent-Message-ID: <87v8tmq7x3.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Tue, 31 May 2022 13:35:08 +0300 (EEST)
Received: from fmsmga008.fm.intel.com (fmsmga008.fm.intel.com [10.253.24.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 9B4A9580970;
 Tue, 31 May 2022 03:35:01 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="632981873"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="632981873"
Received: from fmsmga102.fm.intel.com ([10.1.193.69])
 by fmsmga008-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31
 May 2022 03:35:01 -0700
IronPort-SDR: fU10vS5eKDmNSDc/UFA9n/DCvflFecRsokm6jGEdICD7CTyce+MwnsLEhWVnUG5EWaVYrVoL1o
 Q2Jb1mp3vbAg==
X-IPAS-Result: =?us-ascii?q?A0FyAADZ7pVimLHS/INaHgEBCxIMQIFEC4I9AYE8KlaEE?=
 =?us-ascii?q?j2JAIVogj6cUYFAMxQBAQEBAQEBAQEJLBMBAgQBAQMEikICJTQJDQEBAgQBA?=
 =?us-ascii?q?QEBAwIBAgEBAQEBAQMBAQECAgEBAQIBAQYCAQEBAQIQAQEBAQEBAQEJCwkHB?=
 =?us-ascii?q?gwFDhAFIoUvOQ2CNQUCAx8BBm5KCTUBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBEAINUkcBIAIEAQEJFwQLAQ0BAQQKKQECAwECBgIIHAIeBAQCAgMBbAWCe?=
 =?us-ascii?q?IMZBZA2mxh6fzKBAYIIAQEGgl2DLIFcCSRtLIlHhCKBIRCBVUR6G4NogQVOh?=
 =?us-ascii?q?keCZZZgOwMJBgcFMzUSgSFxAQgGBgcKBTIGAgwYFAQCExFTCxICEwwKHA4OR?=
 =?us-ascii?q?hkMDwMSAxEBBwILEggVLAgDAgMIAwIDIwsCAxgJBwoDHQgKHBIQFAIEEx8LC?=
 =?us-ascii?q?AMaHy0JAgQOA0MICwoDEQQDExgLFggQBAYDCS8NKAsDFA8BBgMGAgUFAQMgA?=
 =?us-ascii?q?xQDBScHAyEHCyYNDQQjHQMDBSYDAgIbBwICAwIGFwYCAkAxCigNCAQIBBweJ?=
 =?us-ascii?q?Q4FBQIHMQUELwIeBAUGEQkCFgIGBAUCBAQWAgISCAIIJxsHFhElGQEFXQYLC?=
 =?us-ascii?q?SEcKREFBhYDI3gFB0EPKTsGIhwBmCkgLU4TMIJzkhQEkCeeAjQHg1GBPQYMn?=
 =?us-ascii?q?iUaMahZAZYuOqJlhE6BYTyBWjMaI4M4URkPjiAMCwuDUIprNDQCOQIGAQoBA?=
 =?us-ascii?q?QMJhUcBAYdTgW4BAQ?=
IronPort-PHdr: A9a23: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
 IuC0oud6w==
IronPort-Data: A9a23:VxicR6h0IK8Z9so8E81z/3+5X161DRYKZh0ujC45NGQN5FlHY01je
 htvWD+DaauONGD3KI93bIi09UMEuZfRm9YwSQRrqC09RSgW8JqUDtmwEBzMMnLJJKUvbq7GA
 +byyDXkBJlsFhcwcz/0auCJQV9Ui/3QHtIQL8adYnsvHmeIcA941VQ73bdRbrdA27BVOSvU0
 T/Ji5CZaQbNNwJcaDpOsfre80o35ZwehRtB1rAATaET1LPhvyRNZH4vDfnZw6zQGdE88kaSH
 o4v/Znhlo/r105F5uCNy94XRnY3rov6ZmBivFINAvT/3UISzsAF+v1T2PI0MS+7gtgS9jx74
 I0lWZeYEG/FMkBX8Qi0vtYx/yxWZMV7FLH7zXeX6tW96XfnbXfQ7fxvDHoHG7ABqr1bHjQbn
 RAYAGhlghGriOu8zfS1UORhisk4L9XsJMUYoH4IITPxVK1/B8qeGeOQvIcehWhv7ixNNa62i
 84xZSBuKRjNfRBLf10QFZQ1kfyAgnjkbyYepkiYqKY6+GvPyxQ316LiWDbQUobVH5oFwxjE9
 woq+UyhWD4hGdKt1gbfqHmr39LloHvgfoc7QejQGvlC2QHMlz1KYPEMbnOSp/WjmEO8HfFWI
 FQO/TU1rqka8E2tU8m7XhukrXrCtRkZM/JZH+Q/rgSM0bjf8Q+aLmwFSCNRLt0gqMIyAzct0
 zehltXlBHp0sKyJSFqZ97GJvXWzPzQYKSkJYipsZQkM6NTg5oU6kQjeSNF8EaWnptn0Hyzgh
 TGMsCU6wb4UiKYj1ay9/BbBgjGxopHhSg8z+xWRX2S54wc/b4mgD6Sq4F7G9uQGL5yLX0KTo
 H8Kmsu26OEIEIHLlSqRTeFLF7asj96HNzraiEUpG5Ah6zWr9niLeYFW/SE4JUF1P8JCcjjsC
 GfWsApL+JJVen+ja6x3ZJiqF+wuzK79BZLkUOzZapxFZZ0ZXAqO9yBjZwiI1nzglEM+gKIXP
 ZadbNbqDHAGBKAhxz2zL88b0KUuwTF4yWrIbZT6yQm3l7uYeHORD7wCNTOmcuc85biW5gDU6
 MpWK+OOyhNCQKv/ZDXa9cgYKlViBWQlH4z1rIpKbPWeJgtgMGUgDeLBh7InZ4Fh2a9Sk4/g7
 HGwXF5F13L7hHvaOUOLbGxubPXkWpMXkJ4gFSMlN1vu1WIubIqi96QDcINxeqMonAB+8RJqZ
 6IcVeO6I+pDdhrO+jQmXL/Atdw5WAv+0GpiIBGZSDQ4epdhQSnA9dnlYhbj+UEyM8aniScti
 +H9ilODHfLvUywnVZyMNaL+ljtdqFBEwIpPs130zs6/kakG2LBtMTD1h/k7Sy3nAUScnGPEv
 +p67PFxmAUgi4A8+tSPi7qJooukCOhiGVIcGHPUhVpXCcU41jXzqWOjeL/WFdw4aI8S0Pj/D
 Qmy56yhWMDrZH4Q7+JB/09DlMrSHefHqb5A1RhDF37WdVmtAb4ICiDYgJIe7fAQnuAF5Ffet
 qezFj9yZOjh1CTNTQN5GebZRr3rOQw8xGSPtqpdzLvSvXculFZ4bamiF0DQ130MddOZwas9x
 v09vMcQ50SklhM2P56biCFK+n6XL2ARO5jLRblEaLIHfjEDkwkYCbSFU3eeyMjWN71kbxd2S
 hfJ2vuqr+kMlyLqLitofVCQjLU1rcpV4nhikgRdT2llb/KY3JfbKjULr2RuJumUpz0au99O1
 p9DbBYtfP/SpGsy2aCunQmEQml8OfFQwWSpo3NhqYETZxTAurDlRIH2BQpBEI31PY6Rkvi3M
 Yx0EFrYbAs=
IronPort-HdrOrdr: A9a23:BIlOMaCTfhKbGZHlHelH55DYdb4zR+YMi2TDGXoBPiC9Ffbo6v
 xG/c5rryMc7Qx/ZJhOo6HnBEDrex7hHKBOkP8s1NuZLWzbUIXBFvAQ0WPNqweQbhEW3NQtpJ
 uJSsBFea/N5bITt7eP3ODAKadR/DDlytHSuQ6h9QYVcegwUdAf0+4RMG/yeSEXNWt77LUCZd
 OhD6F81l2dkBosH6CG7rhsZZm+mzTMrvyGEH077mYcmXGzZbzB0s+EL/H05H0jbw8=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="272785649"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="272785649"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2022
 03:35:00 -0700
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id B98C2112281;
 Tue, 31 May 2022 10:34:28 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B70112281
 for <dri-devel@lists.freedesktop.org>; Tue, 31 May 2022 10:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653993266; x=1685529266;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3YpK8LtcPE0677n75/BRy4Ia8657/+94hBHBaUlN9TY=;
 b=LuB4oSFmuqpnv8qwCmU/5ycl2236Fc9jao4QIxwUhxBvAx69vx81mz+m
 jYwA4NKv2ha7WiL7qBzcNHLjzxQuIh13qnqwouO9WgJSHEsFt1i0TpAyh
 ItjJLfcRBZ9kDKBLASFbJyt5XEClv+kHdCt65vrCkpUNzjKgh3dC5S1Ml
 4dCcHMdplWzs2k+inXdYC4wYnrV9FnXnmjzCMRvYwvLjD5XLZ1Anjx50L
 bb60/Fg7rWxSb/pqqRcuyaRpJFh/52opbnvT4pHvNIoGXHfdpnt85VfwF
 X7DVsHs2G+Ijc0qjk+B2EYOU796/eYHtCLIUJ2iSu0iHe/XdNuXXbQ96L g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="335873662"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="335873662"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 03:34:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="605606218"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.231.22])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 03:34:25 -0700
From: William Tseng <william.tseng@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 31 May 2022 18:34:21 +0800
Message-Id: <20220531103421.11363-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
Subject: [Intel-gfx] [PATCH] drm/edid: ignore the CEA modes not defined in
 CEA-861-D
X-BeenThere: intel-gfx@lists.freedesktop.org
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Wayne Lin <waynelin@amd.com>, William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a workaround for HDMI 1.4 sink which has a CEA mode with higher vic
than what is defined in CEA-861-D.

As an example, a HDMI 1.4 sink has the video format 2560x1080p to be
displayed and the video format is indicated by both SVD (with vic 90 and
pictuure aspect ratio 64:27) and DTD.  When connecting to such sink,
source can't output the video format in SVD because an error is returned by
drm_hdmi_avi_infoframe_from_display_mode(), which can't fill the infoframe
with pictuure aspect ratio 64:27 and the vic, which is originally 90 and is
changed to 0 by drm_mode_cea_vic().

To work around it, this patch ignores such CEA modes in do_cea_modes() so
the modes won't be processed in drm_hdmi_avi_infoframe_from_display_mode().
And only the video format in DTD can be dispalyed.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Wayne Lin <waynelin@amd.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 39 +++++++++++++++++++++++++-------------
 1 file changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index bc43e1b32092..a93f68878bfd 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3982,6 +3982,19 @@ drm_display_mode_from_cea_vic(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_display_mode_from_cea_vic);
 
+static bool is_hdmi2_sink(const struct drm_connector *connector)
+{
+	/*
+	 * FIXME: sil-sii8620 doesn't have a connector around when
+	 * we need one, so we have to be prepared for a NULL connector.
+	 */
+	if (!connector)
+		return true;
+
+	return connector->display_info.hdmi.scdc.supported ||
+		connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR420;
+}
+
 static int
 do_cea_modes(struct drm_connector *connector, const u8 *db, u8 len)
 {
@@ -3993,6 +4006,19 @@ do_cea_modes(struct drm_connector *connector, const u8 *db, u8 len)
 
 		mode = drm_display_mode_from_vic_index(connector, db, len, i);
 		if (mode) {
+			u8 vic = svd_to_vic(db[i]);
+
+			if (!drm_valid_cea_vic(vic))
+				continue;
+
+			/*
+			 * HDMI 1.4 VIC range: 1 <= VIC <= 64 (CEA-861-D) but
+			 * HDMI 2.0 VIC range: 1 <= VIC <= 107 (CEA-861-F). So we
+			 * have to make sure we dont break HDMI 1.4 sinks.
+			 */
+			if (!is_hdmi2_sink(connector) && vic > 64)
+				continue;
+
 			/*
 			 * YCBCR420 capability block contains a bitmap which
 			 * gives the index of CEA modes from CEA VDB, which
@@ -5846,19 +5872,6 @@ void drm_set_preferred_mode(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_set_preferred_mode);
 
-static bool is_hdmi2_sink(const struct drm_connector *connector)
-{
-	/*
-	 * FIXME: sil-sii8620 doesn't have a connector around when
-	 * we need one, so we have to be prepared for a NULL connector.
-	 */
-	if (!connector)
-		return true;
-
-	return connector->display_info.hdmi.scdc.supported ||
-		connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR420;
-}
-
 static u8 drm_mode_hdmi_vic(const struct drm_connector *connector,
 			    const struct drm_display_mode *mode)
 {
-- 
2.17.1

