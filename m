Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49B090057D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4327B10EC60;
	Fri,  7 Jun 2024 13:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kn4ZZOt4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E54610EC5D
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768174; x=1749304174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oUfcznki0aEb+R6oJY/r3qQ2uBIDCe0F1UdoW48wgHU=;
 b=kn4ZZOt4+y1ME5t+HhOOAcZ5DUCJHNuZ1k+GkjlBoe6EkHTYV5lqqmYI
 CEw+woI/5/wJbzRIdInHlD1SVmXpEYkF25w5jFenAheN9z/wMNcE4PVtK
 1NGdgNW5IUcv+RICUECl7wdJY1zS4gJVMlNSyMEk4IEvvy4VAen/xIz3I
 9qwSHo02GxWS88AYD3lOWxNdAO/SzDdYKSImOc4Oy/VN/JY5Q+oDKjdkt
 DGpKE5wwosc4346QoBUJrZBgDJq3PE6YU897wtvngx5ZMRCJOiD2zS6v1
 cmtgUzBXEQ6RttoVpsGyLt1Zjj6kqb5/9KM5pHwAKjzKTY0vCKc/fxPbE g==;
X-CSE-ConnectionGUID: yHIwfHf/SFCKMzu4eih6qw==
X-CSE-MsgGUID: +zK//A+5QOG7F4omrptlow==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331636"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331636"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:34 -0700
X-CSE-ConnectionGUID: D5U4qKSnR1KHup3YlimAWA==
X-CSE-MsgGUID: ZbU+v/xbTHOqF1t7ZygkuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458933"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 03/13] drm/i915/display: Take panel replay into account in vsc
 sdp unpacking
Date: Fri,  7 Jun 2024 16:49:07 +0300
Message-Id: <20240607134917.1327574-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
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

