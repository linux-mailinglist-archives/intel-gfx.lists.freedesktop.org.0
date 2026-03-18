Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IctONuoumlpaQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9952BC1F2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D9910E81E;
	Wed, 18 Mar 2026 13:30:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ayze0Kld";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E28A610E81D;
 Wed, 18 Mar 2026 13:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773840601; x=1805376601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YplT4Nnjw1Vbqfy5XVLkuVspp9lJ2mRzOCqzZMJGC2g=;
 b=ayze0Kldo6JkGwb8IuqIOFMoQA8IVRSr4ANIe2LyCPSIxwEKQqrlccxv
 W/FhAuF6w4heh3o3E+OOtVO1WxIW6b21r1Y+whI+iz3XPhreJCU/IpKw9
 ntIi7cgUMdvH2UWy/26diTwuTjIg7mqI4dClvHvbjndEKM1+tzQI/jo3x
 F/XjHRVPitA4gFOYZ/Ke6WvxVfm1C08+CHmV1BQvcyDHQDVfTbNltnnJc
 2D1r8HNCZK5HBNWdmQwz39+xalTKHohur6XVdrNsfJ0pjk51WuzZzI8uq
 c1sB7J0j21m01MFjAB53e8v5b2C3xXbXKSvEkGW0Shllc05I2XrN6BiPp w==;
X-CSE-ConnectionGUID: rJ94B22oRU2iaAzLopIPJA==
X-CSE-MsgGUID: 3snNV/yZR5WJDkZQ8N4ZXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75013170"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="75013170"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:30:01 -0700
X-CSE-ConnectionGUID: xDSFCVwKTC2jdyKqh8hVnQ==
X-CSE-MsgGUID: Xy+2Cc2eQx+TwIt+3lKJdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="218652392"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:29:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/xe/fbdev: put intel_fbdev_fb_prefer_stolen() behind
 IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
Date: Wed, 18 Mar 2026 15:29:46 +0200
Message-ID: <2bad40c18a14816fbb88be76a58ab4a5787efd21.1773840563.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 9B9952BC1F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Unify the behaviour with i915. Similar to commit b63c6b9b7f5e
("drm/i915/fbdev: fix link failure without FBDEV emulation"). The
difference is that unlike i915, xe doesn't build
display/intel_fbdev_fb.c conditional to CONFIG_DRM_FBDEV_EMULATION.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 65cc0b0c934b..730c6dc49522 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -86,6 +86,7 @@ initial_plane_bo(struct xe_device *xe,
 		flags |= XE_BO_FLAG_STOLEN;
 
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
+		    IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
 		    !intel_fbdev_fb_prefer_stolen(&xe->drm, plane_config->size)) {
 			drm_info(&xe->drm, "Initial FB size exceeds half of stolen, discarding\n");
 			return NULL;
-- 
2.47.3

