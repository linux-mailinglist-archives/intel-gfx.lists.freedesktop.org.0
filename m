Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 698A08D8333
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEC510E39F;
	Mon,  3 Jun 2024 13:01:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n56Gzx+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1ECA10E397
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419675; x=1748955675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZiJy0yq+YfqcgjhQsYZq+sRBGsGYSycdzOY+Z93ZLyc=;
 b=n56Gzx+Q4y/Jy1uHcU4dPTuvTtMMqCz9pNN1yf8KOkJpRBPJNzs1fAxI
 rjt4LJN65OBD8BCgUHGghCgMv78hU8UhvFPLIz5jNcQwADamLDk3n9Xn0
 Htvw0CgmOsjSH+fFsYio8GMTtxajuYzzlMHAcy9MuQSE9pG3GWUs+UIP5
 n0btNOr7vUF0pIzKS+2uTRtqP1dd5wtRiDYxwnyvubj5KHAl/6GV3NkBf
 RPQSs4SJpPE8odA9fDzrn+M2WkBwGoGMppecNvcG1RG8mzKhJcGkZLPw+
 VesKJrarTJSszHwxe37sN1qPYgIL68wx7WWx/+vCULDC80//g7OxDE3/Z w==;
X-CSE-ConnectionGUID: Ap7eVFueQ2CP+/VBrF7z0g==
X-CSE-MsgGUID: WOj1PKpMSiWOSbffKCyvwg==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774478"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774478"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:13 -0700
X-CSE-ConnectionGUID: pxEdwXYDSbul/Pqeg02xlQ==
X-CSE-MsgGUID: PQWVIdy2Q5a72R/XcuVvZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291832"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 09/19] drm/i915/psr: Inform Panel Replay source support on
 eDP as well
Date: Mon,  3 Jun 2024 16:00:33 +0300
Message-Id: <20240603130043.2615716-10-jouni.hogander@intel.com>
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

Display version >= 20 support eDP 1.5. Inform Panel Replay source support
on eDP for display version >= 20.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5becf0960c94..e347775610df 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3048,9 +3048,11 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp))
+	if ((HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp)) ||
+	    DISPLAY_VER(dev_priv) >= 20)
 		intel_dp->psr.source_panel_replay_support = true;
-	else
+
+	if (HAS_PSR(dev_priv) && intel_dp_is_edp(intel_dp))
 		intel_dp->psr.source_support = true;
 
 	/* Disable early transport for now */
-- 
2.34.1

