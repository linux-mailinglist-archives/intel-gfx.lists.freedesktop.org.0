Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NaFH/GoumlpaQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1557A2BC218
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9550310E824;
	Wed, 18 Mar 2026 13:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZzTk1NAl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA2F10E824;
 Wed, 18 Mar 2026 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773840623; x=1805376623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uZTr0KiFhPDkOmCO/Us/jL4yoMUCd9NUh5iivJQ/mGA=;
 b=ZzTk1NAlj3ZF7hkOdN2t7I9D6MBNjmRXXpNQekEWc4WPw6kuOcjWSlFY
 f29E/Hqci7fPUTuaoEitw+NOd/BKsCKfrUDilyS/TeSLAF0qW8XPbYShw
 pvzhciJDQvel3nkqAAxHESXm6mNcz4gy6bgmi6WZsW1/EW0ZGTGholUMq
 v8gKO5Ldu/HDNLdxyby39f3vV7Gkywu+QsCXRp24cAFSmjteidXDPQhUc
 MaHKVwViA/GcEokBbkWP/8FR3y0KZurhslbgwv62etkRRMXFwmrohuLrX
 pUnE43Z0JnGJMUQ4oVnoOH0iI7I6VDKbIQv3h7Z2DBKkNygwcwqQWdrAX w==;
X-CSE-ConnectionGUID: WAGMc9+xS0KvFdnBkEz7LQ==
X-CSE-MsgGUID: y3VVcstySaqLHAjs+fG9/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="97500545"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="97500545"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:30:22 -0700
X-CSE-ConnectionGUID: IGXtQOkdRyWZCPpRwVvC/Q==
X-CSE-MsgGUID: qivIWCbAROqS/Ya9OPmExA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="227577408"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:30:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/xe: pass struct xe_device to
 xe_display_bo_fbdev_prefer_stolen()
Date: Wed, 18 Mar 2026 15:29:50 +0200
Message-ID: <6cfa029f052a1e7638b09545b04de0991b5f3416.1773840563.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773840563.git.jani.nikula@intel.com>
References: <cover.1773840563.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1557A2BC218
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is xe core code, use struct xe_device for simplicity.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display_bo.c    | 5 ++---
 drivers/gpu/drm/xe/display/xe_display_bo.h    | 4 ++--
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 2 +-
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.c b/drivers/gpu/drm/xe/display/xe_display_bo.c
index 10436edecc35..f420e2ba581e 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.c
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.c
@@ -119,9 +119,8 @@ static u32 xe_display_bo_fbdev_pitch_align(u32 stride)
 	return ALIGN(stride, XE_PAGE_SIZE);
 }
 
-bool xe_display_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size)
+bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size)
 {
-	struct xe_device *xe = to_xe_device(drm);
 	struct ttm_resource_manager *stolen;
 
 	stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
@@ -149,7 +148,7 @@ static struct drm_gem_object *xe_display_bo_fbdev_create(struct drm_device *drm,
 
 	obj = ERR_PTR(-ENODEV);
 
-	if (xe_display_bo_fbdev_prefer_stolen(drm, size)) {
+	if (xe_display_bo_fbdev_prefer_stolen(xe, size)) {
 		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
 						size,
 						ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.h b/drivers/gpu/drm/xe/display/xe_display_bo.h
index 8980e6ecf54a..c72056884ff4 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.h
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.h
@@ -6,9 +6,9 @@
 
 #include <linux/types.h>
 
-struct drm_device;
+struct xe_device;
 
-bool xe_display_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size);
+bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size);
 
 extern const struct intel_display_bo_interface xe_display_bo_interface;
 
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 6e0a22429184..12c09d33292d 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -87,7 +87,7 @@ initial_plane_bo(struct xe_device *xe,
 
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 		    IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
-		    !xe_display_bo_fbdev_prefer_stolen(&xe->drm, plane_config->size)) {
+		    !xe_display_bo_fbdev_prefer_stolen(xe, plane_config->size)) {
 			drm_info(&xe->drm, "Initial FB size exceeds half of stolen, discarding\n");
 			return NULL;
 		}
-- 
2.47.3

