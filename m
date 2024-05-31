Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54808D5ECF
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FAD10E3D1;
	Fri, 31 May 2024 09:50:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CHVCaH10";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E464E10E384
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149022; x=1748685022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WesjoU+OxefA4cC+hqMK6c4CkX3StrB/8PTQc8jOon4=;
 b=CHVCaH10F9f4MhV1DWI5zDfDxKnu7ly6mx5CVuvHxWAY0L6SV9fnvpQ2
 ObD5kGoed4gR1AxdrDTE92GZMvDt0Qm6ZPgxc85NbXZE6D2b/KvtlwpRj
 jDTBB4hQ5Znm5T6bouKCMtKYoEMotCepYd7xyf7PT7A75MgFW/bkKB+Pb
 A0F+1xIEPPFZew+PFw407a0omgCb3rDk6Cz3s5zOPtNiyxemJ6ODTd6hy
 KJr/RkCNEg79GDLgnwCvnT9S1S3UGIjRvhNWiOI98A8iqaGebRHb1r4L8
 38mt7Dc80fZpiWUI8MwIDgNjwwYFMVpJrkKsAzYuvPW3rDw9rPxoqoAgv w==;
X-CSE-ConnectionGUID: Em7TOF8TStuZnK2V1yBFWw==
X-CSE-MsgGUID: L8H55aDATKi8N5x/LEoWlw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446558"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446558"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:20 -0700
X-CSE-ConnectionGUID: kuXPIxXIQE6pCYGCYmcaaA==
X-CSE-MsgGUID: 8B9HrDRZQw+3qhcDMhGqdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189210"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 03/19] drm/i915/display: Take panel replay into account in
 vsc sdp unpacking
Date: Fri, 31 May 2024 12:49:37 +0300
Message-Id: <20240531094953.1797508-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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

