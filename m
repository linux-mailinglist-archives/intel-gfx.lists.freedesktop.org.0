Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C358C64B0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6AD10E669;
	Wed, 15 May 2024 10:04:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJFFyL2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBA410E655
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767477; x=1747303477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jRpSVJqJ6RIs+1nPi0GtWMti1rE4FsirR6dI0g467S8=;
 b=VJFFyL2nz7WfRVSEqpAnrQhNlkwq4GWQ78uPjMKgq1MxDsi8W4DGHV8c
 aXLCOdbcVWZRt/JtwPgNAY3/Pzts3mJBYrwQ33hoHU0KJ/f1LiiIBgEPk
 nG/XNe5dHJO6l1lCYygahr8QO1Q3aWGfzi634RifNQgKrCjugPSgmpINq
 VdOjv3s5mAOl0E0MguSOKPlmivNbQeRiJwtmqzq4Cb9xyW8mXZBSk5oEe
 Gt2FzdVmhCHtHPxPSMl35oGJ8EV4dI911afK2KP/iiRv1K2UmXRg+4/FA
 3U60v4fqW4xLOUHzaQVCPwAPy9EuqReDWla+x0Gxl7y8kcSpt/He+hZ7D g==;
X-CSE-ConnectionGUID: Fy1ONBYNTuKOaUQfxMtozg==
X-CSE-MsgGUID: W786gqKtThOFdLY1AVsf1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11937017"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11937017"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:37 -0700
X-CSE-ConnectionGUID: +/D7BTXHSqOVDQXfc2hHww==
X-CSE-MsgGUID: 3k2yHvYQQBqcY9aQtArNwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584250"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/8] drm/i915/display: Take panel replay into account in vsc
 sdp unpacking
Date: Wed, 15 May 2024 13:04:09 +0300
Message-Id: <20240515100411.691203-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515100411.691203-1-jouni.hogander@intel.com>
References: <20240515100411.691203-1-jouni.hogander@intel.com>
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

