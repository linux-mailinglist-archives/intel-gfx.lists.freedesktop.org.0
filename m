Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B27AD8968
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532A410E973;
	Fri, 13 Jun 2025 10:23:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJaZgsQv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C65210E954;
 Fri, 13 Jun 2025 10:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810200; x=1781346200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=veh/J9wmRGoY6UPS4G15z0gI6kCh+w/5ISWea8+FtEY=;
 b=PJaZgsQvskPVFVu841QyYpiKZmrRnZupeD5ah0SmPeEQtdK3Q0NACoGX
 mrCd3XWfPJRU5pQZZfM89OXyY9y06ZDl8PI0k1aVPw2sXOsHiq/iX4Hi3
 nXB7hFhoLtfH7bKTiqp/DBSbSQ/b7szWiHcLDBgkHYuBrB9yBGTAyBgiC
 BRlVd3k0OMkNeyngz55pJsWh6l08mPc+r9OMgnoadrfIEnVXTkt2AN7UK
 ilFyDA6zKlOID27CDO6mTAcuf9nuNjU9I4byEkDkbH5vaauXsviAcKMS/
 uEsyj7HToDuCBqJh7MjQdRvWSZP4suBOXtX0r3+jLDH8+FOzjoh4yVRfL w==;
X-CSE-ConnectionGUID: /9+6lDkFTdu2iVAnrtKiUg==
X-CSE-MsgGUID: zAeak5IPRfyEHsbvw0WZTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62673636"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="62673636"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:20 -0700
X-CSE-ConnectionGUID: IYaCBe9BRqGTTavEtjs2/g==
X-CSE-MsgGUID: HETrtEBlT7muxsYpsGB9Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152758941"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 13 Jun 2025 03:23:18 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v6 2/9] drm/xe/xe3: Add support for graphics IP version 30.03
Date: Fri, 13 Jun 2025 15:52:49 +0530
Message-Id: <20250613102256.3508267-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
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

From: Matt Roper <matthew.d.roper@intel.com>

Graphics version 30.03 should be treated the same as other Xe3 IP, but
will have a slightly different set of workarounds.

-v2: Merge and extend the WA onto existing entry (Bala)
-v3: Revert v2's feedback changes and keep entry saparate (Matt).

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c        | 1 +
 drivers/gpu/drm/xe/xe_wa.c         | 4 ++++
 drivers/gpu/drm/xe/xe_wa_oob.rules | 4 ++++
 3 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 5d24cc320d72..8bb698786334 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -184,6 +184,7 @@ static const struct xe_ip graphics_ips[] = {
 	{ 2004, "Xe2_LPG", &graphics_xe2 },
 	{ 3000, "Xe3_LPG", &graphics_xe2 },
 	{ 3001, "Xe3_LPG", &graphics_xe2 },
+	{ 3003, "Xe3_LPG", &graphics_xe2 },
 };
 
 /* Pre-GMDID Media IPs */
diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
index 4a76de391abb..6baf369fb330 100644
--- a/drivers/gpu/drm/xe/xe_wa.c
+++ b/drivers/gpu/drm/xe/xe_wa.c
@@ -644,6 +644,10 @@ static const struct xe_rtp_entry_sr engine_was[] = {
 	  XE_RTP_ACTIONS(SET(RING_PSMI_CTL(0), RC_SEMA_IDLE_MSG_DISABLE,
 			     XE_RTP_ACTION_FLAG(ENGINE_BASE)))
 	},
+	{ XE_RTP_NAME("14021402888"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3003), FUNC(xe_rtp_match_first_render_or_compute)),
+	  XE_RTP_ACTIONS(SET(HALF_SLICE_CHICKEN7, CLEAR_OPTIMIZATION_DISABLE))
+	},
 };
 
 static const struct xe_rtp_entry_sr lrc_was[] = {
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index b6ed8cfea938..9a691045831e 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -33,9 +33,11 @@
 14022293748	GRAPHICS_VERSION_RANGE(2001, 2002)
 		GRAPHICS_VERSION(2004)
 		GRAPHICS_VERSION_RANGE(3000, 3001)
+		GRAPHICS_VERSION(3003)
 22019794406	GRAPHICS_VERSION_RANGE(2001, 2002)
 		GRAPHICS_VERSION(2004)
 		GRAPHICS_VERSION_RANGE(3000, 3001)
+		GRAPHICS_VERSION(3003)
 22019338487	MEDIA_VERSION(2000)
 		GRAPHICS_VERSION(2001)
 		MEDIA_VERSION(3000), MEDIA_STEP(A0, B0), FUNC(xe_rtp_match_not_sriov_vf)
@@ -57,8 +59,10 @@ no_media_l3	MEDIA_VERSION(3000)
 		GRAPHICS_VERSION(1260), GRAPHICS_STEP(A0, B0)
 16023105232	GRAPHICS_VERSION_RANGE(2001, 3001)
 		MEDIA_VERSION_RANGE(1301, 3000)
+		GRAPHICS_VERSION(3003)
 16026508708	GRAPHICS_VERSION_RANGE(1200, 3001)
 		MEDIA_VERSION_RANGE(1300, 3000)
+		GRAPHICS_VERSION(3003)
 
 # SoC workaround - currently applies to all platforms with the following
 # primary GT GMDID
-- 
2.34.1

