Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5YIUJNJpMmqNzgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60567697F49
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HbFssN4j;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BDF10EF15;
	Wed, 17 Jun 2026 09:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98BF10EF2F;
 Wed, 17 Jun 2026 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688774; x=1813224774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ecKLjddyNOT+jBXdXY+Zu6p+7j25VbzlaWQyfs9duhI=;
 b=HbFssN4jozbzjJZxFXiQejpU9WA2ldVUMPxr+RmVgp3uUoOvFo+ei/CF
 NP7Ftlv3Ted9sE70i1fc65NPdXpEPyswGZm5XdofcWwVlOE3AJwXeC9Cc
 1wkY955/trsCiI0nrVrhkXQ4wwKPz9w8tUWwsO7Q9ERrUvVlrC8qQdY11
 G9JegaS/PYWH6Eu3VJ4WKUa2Hns/Id0ySJqUt+RPdvg9NSRMRrzudJzkT
 k0OItUemfAIviEl03kMYd2BFuKuqN3QUYkSnK6zzioQnuBkRrFMqIhyG1
 WeMolfeEbkJkeEB/FTnx6/PIEb9DEC9Wgl5egy852GBY0OQ2B/hakkCGy Q==;
X-CSE-ConnectionGUID: GvkQRsBUSF2MrC1V2hCgAA==
X-CSE-MsgGUID: /XqMrt84TY+4VaBuW+uU2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605282"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605282"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:32:53 -0700
X-CSE-ConnectionGUID: AeQTkWX4TkaC3rjgETJ5Mw==
X-CSE-MsgGUID: WJf9JutwTRiFb/6TDrHJNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245114465"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jun 2026 02:32:52 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v3 09/14] drm/i915/color: Add support for 1D LUT in SDR planes
Date: Wed, 17 Jun 2026 14:38:14 +0530
Message-Id: <20260617090819.1735153-10-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60567697F49

Extend the SDR plane color pipeline to include pre- and post-CSC
1D LUT blocks.

SDR planes use a smaller LUT size than HDR planes and therefore
initialize the 1D LUT colorops with the appropriate hardware
capacity.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color_pipeline.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
index 7457fa51cb97..136b9378ca48 100644
--- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
+++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
@@ -15,6 +15,7 @@
 #define MAX_COLOROP 4
 #define PLANE_DEGAMMA_SIZE 128
 #define PLANE_GAMMA_SIZE 32
+#define PLANE_DEGAMMA_SIZE_SDR 32
 
 static const struct drm_colorop_funcs intel_colorop_funcs = {
 	.destroy = intel_colorop_destroy,
@@ -45,7 +46,9 @@ static const enum intel_color_block hdr_plane_pipeline[] = {
 
 static const enum intel_color_block sdr_plane_pipeline[] = {
 	INTEL_PLANE_CB_YUV_RANGE_CORRECT,
+	INTEL_PLANE_CB_PRE_CSC_LUT,
 	INTEL_PLANE_CB_CSC_FF,
+	INTEL_PLANE_CB_POST_CSC_LUT,
 };
 
 static const u64 intel_plane_supported_csc_ff =
@@ -68,8 +71,10 @@ struct intel_colorop *intel_color_pipeline_plane_add_colorop(struct drm_plane *p
 							     enum intel_color_block id)
 {
 	struct drm_device *dev = plane->dev;
+	struct intel_display *display = to_intel_display(dev);
 	struct intel_colorop *colorop;
 	int ret;
+	bool is_hdr = icl_is_hdr_plane(display, to_intel_plane(plane)->id);
 
 	colorop = intel_colorop_create(id);
 
@@ -81,7 +86,9 @@ struct intel_colorop *intel_color_pipeline_plane_add_colorop(struct drm_plane *p
 		ret = drm_plane_colorop_curve_1d_lut_init(dev,
 							  &colorop->base, plane,
 							  &intel_colorop_funcs,
-							  PLANE_DEGAMMA_SIZE,
+							  is_hdr ?
+							  PLANE_DEGAMMA_SIZE :
+							  PLANE_DEGAMMA_SIZE_SDR,
 							  DRM_COLOROP_LUT1D_INTERPOLATION_LINEAR,
 							  DRM_COLOROP_FLAG_ALLOW_BYPASS);
 		break;
-- 
2.25.1

