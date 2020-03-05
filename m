Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDB417A512
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 13:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091D76E31E;
	Thu,  5 Mar 2020 12:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106236E30E;
 Thu,  5 Mar 2020 12:16:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 04:16:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="352350071"
Received: from pktinlab.iind.intel.com ([10.66.253.121])
 by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2020 04:16:38 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>
Date: Thu,  5 Mar 2020 17:34:33 +0530
Message-Id: <20200305120434.111091-7-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305120434.111091-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200305120434.111091-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH v2 6/7] drm/fb-helper: Remove
 drm_fb_helper add, add_all and remove connector functions
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
Cc: Alex Deucher <alexander.deucher@amd.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm_fb_helper_single_add_all_connectors(),
drm_fb_helper_add_one_connector()
and drm_fb_helper_remove_one_connector() don't keep an array of
connectors anymore and are just dummy. Now we have no callers to these
functions hence remove them.

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
---
 include/drm/drm_fb_helper.h | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/include/drm/drm_fb_helper.h b/include/drm/drm_fb_helper.h
index 62e8dda6d1d1..208dbf87afa3 100644
--- a/include/drm/drm_fb_helper.h
+++ b/include/drm/drm_fb_helper.h
@@ -451,27 +451,6 @@ drm_fbdev_generic_setup(struct drm_device *dev, unsigned int preferred_bpp)
 
 #endif
 
-/* TODO: There's a todo entry to remove these three */
-static inline int
-drm_fb_helper_single_add_all_connectors(struct drm_fb_helper *fb_helper)
-{
-	return 0;
-}
-
-static inline int
-drm_fb_helper_add_one_connector(struct drm_fb_helper *fb_helper,
-				struct drm_connector *connector)
-{
-	return 0;
-}
-
-static inline int
-drm_fb_helper_remove_one_connector(struct drm_fb_helper *fb_helper,
-				   struct drm_connector *connector)
-{
-	return 0;
-}
-
 /**
  * drm_fb_helper_remove_conflicting_framebuffers - remove firmware-configured framebuffers
  * @a: memory range, users of which are to be removed
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
