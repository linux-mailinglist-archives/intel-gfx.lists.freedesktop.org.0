Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1FA8CAA2F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B0E10E26F;
	Tue, 21 May 2024 08:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Guqt913J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9558D10E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280916; x=1747816916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jRpSVJqJ6RIs+1nPi0GtWMti1rE4FsirR6dI0g467S8=;
 b=Guqt913JrO0UYYvRdIhSXBENdiaoKiDc1K4cYy4wg/bHctsAbgweUu0o
 rU6u2h2N8OESi39llvHU30NWZXhTVmGfFaq1rkVe++xBjkszOF0AsvbXw
 1BgCJYTBPCpOBjJi9hl1fnWE9H9LL+XBgLnCM6qtxzTjKrR6Aj8c4Z4PQ
 bsQsmHj7O8rwbFGkCqRuUFvTZRLKLyESjjuBVO8VKz268hm1NY9+oK2XJ
 gKHYJTTsNUc+itIvvt5XSy858l6fyis9JxVJ4YkivIVDbX3h7IaGO2OYE
 kkkRUlkCgoDsTxuit1UYEhA2vygSYVAy3KG+dabAMDAFBv0A180UtrRhr g==;
X-CSE-ConnectionGUID: CvRMGcPGQ0yqHJCS29jLOw==
X-CSE-MsgGUID: n1NFZ2WMSIaJeUmchcs2bA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860366"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860366"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:54 -0700
X-CSE-ConnectionGUID: 0Zz5DNnHThKOyolA50bQ3g==
X-CSE-MsgGUID: 7qRrt/TaQdWcGRa+Q8wxUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426252"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 6/9] drm/i915/display: Take panel replay into account in
 vsc sdp unpacking
Date: Tue, 21 May 2024 11:41:20 +0300
Message-Id: <20240521084123.1984075-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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
index c0a3b6d50681..67d43639b3ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4435,7 +4435,8 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 	vsc->length = sdp->sdp_header.HB3;
 
 	if ((sdp->sdp_header.HB2 == 0x2 && sdp->sdp_header.HB3 == 0x8) ||
-	    (sdp->sdp_header.HB2 == 0x4 && sdp->sdp_header.HB3 == 0xe)) {
+	    (sdp->sdp_header.HB2 == 0x4 && sdp->sdp_header.HB3 == 0xe) ||
+	    (sdp->sdp_header.HB2 == 0x6 && sdp->sdp_header.HB3 == 0x10)) {
 		/*
 		 * - HB2 = 0x2, HB3 = 0x8
 		 *   VSC SDP supporting 3D stereo + PSR
@@ -4443,6 +4444,8 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
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

