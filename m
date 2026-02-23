Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gP06MylUnGmSEAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:20:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 520F4176B18
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984E010E3A2;
	Mon, 23 Feb 2026 13:20:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T/M1crss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B2610E2EB;
 Mon, 23 Feb 2026 13:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771852835; x=1803388835;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y/rSdGH7T84H87TDHdsRlckNukfxfCLgXK5Ye+LlBFM=;
 b=T/M1crssu7ZS6p9isU5Via3G9LpPbL6AEkGGHuL5lmFpNzbywSJyAvdU
 mAYJiMu7oUs9c3tO+w/w43fzbLrFbQQlwN+W6jjBg81BC5k/958F5VDF9
 fX59LxMeCT8XkoLtI6QeBKVIwiAd6pAT0RMk+SRUyVi7h1YXoRpfpzFkm
 j/Zy4ZIEITO4cAfeKdnItbnPoYi4JnjfXMCjdURRpM460qkbvRR3MtZ6V
 F6edk/djR5E3oqB1524T/OxMp9JjVLuff5JIBvX6VzdeTc0Ms84a9jA9x
 sXeW699MnHRyNACLxU+BOyiL0F2EVSp3Psds5Du9qwoO3SWGD42p2ADG7 g==;
X-CSE-ConnectionGUID: ISMhusM1RPGCl/RrUe8AoQ==
X-CSE-MsgGUID: 5BDGiyQSTUqC2yn7w+9FpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="76709300"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="76709300"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:20:35 -0800
X-CSE-ConnectionGUID: Y0tKyZyXRoCkYB5yf0FBYg==
X-CSE-MsgGUID: zmdfvRUqTDqnSJQKHIfp1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="219673695"
Received: from rvuia-mobl.ger.corp.intel.com (HELO vgovind2-mobl4.intel.com)
 ([10.245.245.209])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:20:33 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com
Subject: [PATCH v2] drm/i915/fbc: remove uint16 from supported fbc formats in
 xe3plpd
Date: Mon, 23 Feb 2026 15:20:11 +0200
Message-ID: <20260223132011.245620-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Server: lfdr
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
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 520F4176B18
X-Rspamd-Action: no action

As UINT16 pixel formats are not listed as supported formats in any
of the display versions so far, there is no point is having these
formats listed as supported for FBC. So remove the UINT16 formats
from the supported formats for FBC.

v2: removed an unused variable

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 9f39b6990bbd..e85a0fa8b24d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1196,23 +1196,13 @@ xe3p_lpd_fbc_fp16_format_is_valid(const struct intel_plane_state *plane_state)
 
 static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-
 	if (lnl_fbc_pixel_format_is_valid(plane_state))
 		return true;
 
 	if (xe3p_lpd_fbc_fp16_format_is_valid(plane_state))
 		return true;
 
-	switch (fb->format->format) {
-	case DRM_FORMAT_XRGB16161616:
-	case DRM_FORMAT_XBGR16161616:
-	case DRM_FORMAT_ARGB16161616:
-	case DRM_FORMAT_ABGR16161616:
-		return true;
-	default:
-		return false;
-	}
+	return false;
 }
 
 bool intel_fbc_need_pixel_normalizer(const struct intel_plane_state *plane_state)
-- 
2.43.0

