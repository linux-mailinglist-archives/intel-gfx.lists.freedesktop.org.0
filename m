Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDvZAvVRnGktDwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:11:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4AE1768F4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:11:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8DA10E39E;
	Mon, 23 Feb 2026 13:11:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MxMViMXn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DEE10E39E;
 Mon, 23 Feb 2026 13:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771852273; x=1803388273;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J2vhozv/YvZShZIfb1naQVw5qy+u2SyNnAYnmLriOrc=;
 b=MxMViMXnyQ2x2LV2QRqvPgpkFBnSbd4MIk9uMlhW/naUWrN+LlWJ9apT
 F5nUdkf4WK9ycUuzOGNr15Uuf72JQ8jzShnxfkf7nkqEYb02MNe0CSgco
 oTTy3OL3Uok3cggI4y/eJ9JlBYD7Ou87dpWcgU0oqGFvOiz8E4RR9DKPe
 PYicqgZGgxGhe5LlBMU3lwYt6yBwZpVm6LJNyOcNnIc0B+8Yq0QnQZael
 CNK+C7C3c01YXeWXqGtKeUSZHYFNpTO0ADmPNaxmPLyvL3liRa2pV82ry
 PVRflY1fvPNsHnK3BMB833ZpPS6YDi2k5Zg9UOMOTpbyXXpYdSVWVzYac Q==;
X-CSE-ConnectionGUID: Z1ggkM3ARyOJZS8taSRZYw==
X-CSE-MsgGUID: 9RHXMVRTSKGt53CrhAp6fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="72723026"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72723026"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:11:13 -0800
X-CSE-ConnectionGUID: tbfHqhOVSJWs7wd0ahR3HQ==
X-CSE-MsgGUID: 5nAm8neYR9yiVKCECValrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="215575372"
Received: from rvuia-mobl.ger.corp.intel.com (HELO vgovind2-mobl4.intel.com)
 ([10.245.245.209])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:11:11 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com
Subject: [PATCH] drm/i915/fbc: remove uint16 from supported fbc formats in
 xe3plpd
Date: Mon, 23 Feb 2026 15:10:51 +0200
Message-ID: <20260223131051.180311-1-vinod.govindapillai@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7D4AE1768F4
X-Rspamd-Action: no action

As UINT16 pixel formats are not listed as supported formats in any
of the display versions so far, there is no point is having these
formats listed as supported for FBC. So remove the UINT16 formats
from the supported formats for FBC.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 9f39b6990bbd..cf4d145d6a8c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1204,15 +1204,7 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
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

