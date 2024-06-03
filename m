Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C695B8D8329
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7176510E341;
	Mon,  3 Jun 2024 13:01:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cMK2bgoP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED2810E394
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419671; x=1748955671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WesjoU+OxefA4cC+hqMK6c4CkX3StrB/8PTQc8jOon4=;
 b=cMK2bgoP2dyciZ17FlgPAJHdF3ALowEWIZ54OFV5DmMWLEaNbnK7vB17
 Q57g5ICQmFNpbD+Y5wu/pO4a4ORM7VjrVgA0ZmkJJ6nXeMQl5HdNKASEJ
 mWo87WNv0rJpGWVeon7ZHRFdXy4Mg21DMgP9LH18fkxu5PTH99oWKUVqt
 MezvrU87O3MOTCZlVWhE0I6SjUpxzjJRGI6DwprRtoUEuVplNX/f6I07u
 6eD2mJ7b0aSxRBVlUj9OznXNYxyeLpavj64QNZbd/fxd/PuGksC02zPpV
 dmnIV6K/f/cjQRWgPRWtW3UrBwy5lFtlR638khpqyuZ0H1jJdFQHJqqVM A==;
X-CSE-ConnectionGUID: C3BGPO5lQ1GNCZySagnuJg==
X-CSE-MsgGUID: LaFSxI6TTQ2i8HAGR0Yx8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774457"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774457"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:02 -0700
X-CSE-ConnectionGUID: d3E9gR7dS6Cw+K7tJ5iRVw==
X-CSE-MsgGUID: p/nfoZeQRi+jnNuxisguyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291711"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 03/19] drm/i915/display: Take panel replay into account in
 vsc sdp unpacking
Date: Mon,  3 Jun 2024 16:00:27 +0300
Message-Id: <20240603130043.2615716-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently intel_dp_vsc_sdp_unpack is not taking into account Panel Replay
vsc sdp. Fix this by adding vsc sdp revision 0x6 and length 0x10 into
intel_dp_vsc_sdp_unpack

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fd054e16850d..286119eb77f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4438,7 +4438,8 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 	vsc->length = sdp->sdp_header.HB3;
 
 	if ((sdp->sdp_header.HB2 == 0x2 && sdp->sdp_header.HB3 == 0x8) ||
-	    (sdp->sdp_header.HB2 == 0x4 && sdp->sdp_header.HB3 == 0xe)) {
+	    (sdp->sdp_header.HB2 == 0x4 && sdp->sdp_header.HB3 == 0xe) ||
+	    (sdp->sdp_header.HB2 == 0x6 && sdp->sdp_header.HB3 == 0x10)) {
 		/*
 		 * - HB2 = 0x2, HB3 = 0x8
 		 *   VSC SDP supporting 3D stereo + PSR
@@ -4446,6 +4447,8 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 		 *   VSC SDP supporting 3D stereo + PSR2 with Y-coordinate of
 		 *   first scan line of the SU region (applies to eDP v1.4b
 		 *   and higher).
+		 * - HB2 = 0x6, HB3 = 0x10
+		 *   VSC SDP supporting 3D stereo + Panel Replay.
 		 */
 		return 0;
 	} else if (sdp->sdp_header.HB2 == 0x5 && sdp->sdp_header.HB3 == 0x13) {
-- 
2.34.1

