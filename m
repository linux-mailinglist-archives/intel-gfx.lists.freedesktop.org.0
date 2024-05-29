Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F1F8D3337
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F016A10E3C3;
	Wed, 29 May 2024 09:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLmpncAi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD7810F5B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716975550; x=1748511550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B5biMBXaqHsgMjvKiabm/ekIayOo7VFPZMTKvVbv7+o=;
 b=FLmpncAihaLr/taBZ+bz5R0QQwCdEAOuwEujkGT9HWGJVjc/zFXL6uFj
 5ckihVexFCidCS6OL2AbofBwicVWkvEZ1OiqkpKxTQhE6LEGJML1tjnBt
 n+fk/TIoZiPOUgOtJK9vWZKQgUAuiKAOet2RL8APwfPOsDlpXok74+Txg
 8eXmivhjurh8FrI32d35Bax6k0o1n9LE5c/BOh99yW2zNEKsAnMhRdR9w
 QSkvJR1V6pIzUbnXaz1HA42C3n17spH5aNL87+BWjXoAE4Ql0Ge15Dik7
 DNVZqsHuTaVv87uEu2ihYckiH4qNLeMfTH+crOdRGERGt4OscoPeuomZY A==;
X-CSE-ConnectionGUID: 3+Icej0NRxWFI/2IJjfX3g==
X-CSE-MsgGUID: gQuX2S4uSraijxZ0DwEKgA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16316817"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="16316817"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:09 -0700
X-CSE-ConnectionGUID: gjcZ90tXSMeBanhDehif+Q==
X-CSE-MsgGUID: 7PGcXzLxT6226n37yCKoLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40273890"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.185])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/6] drm/i915/display: Selective fetch Y position on Region
 Early Transport
Date: Wed, 29 May 2024 12:38:47 +0300
Message-Id: <20240529093849.1016172-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240529093849.1016172-1-jouni.hogander@intel.com>
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
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

Selective fetch Y position differs when Region Early Transport is
used. Use formula from Bspec for this.

Bspec: 68927

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index b7678b8a7f3d..1aa70fc35b9d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1302,7 +1302,11 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
 
 	clip = &plane_state->psr2_sel_fetch_area;
 
-	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
+	if (crtc_state->enable_psr2_su_region_et)
+		y = max(0, plane_state->uapi.dst.y1 - crtc_state->psr2_su_area.y1);
+	else
+		y = (clip->y1 + plane_state->uapi.dst.y1);
+	val = y << 16;
 	val |= plane_state->uapi.dst.x1;
 	intel_de_write_fw(i915, SEL_FETCH_PLANE_POS(pipe, plane->id), val);
 
-- 
2.34.1

