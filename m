Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09382AD5774
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1498210E66D;
	Wed, 11 Jun 2025 13:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MIka2ptW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6645910E66A;
 Wed, 11 Jun 2025 13:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649479; x=1781185479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nFGOY9sqBa0B2Jmd1zU8jJFXjil81q2FQpwcxxFAs9M=;
 b=MIka2ptWCltkgXwDKo9jU2/84ACYh83fJNygEINgbu6meGc9v9cPzDkW
 45W0MCwS0RTAB/XshkhByUrSgDPsqLJ4NaTPCrjx1VqimY4Gq9a4IB/Nz
 IqCBivAqLXFVqC8JoOa7jHRNh7ndpl1VuH+vbb19hqfAh4lWEOC8ErO9+
 qmZ8+YWy6JQmaxkuusQ816DyfMT5c5syzDEG/rVtdD3q/N+EEUNxu1Hti
 TU0iHYqxAst7l1NydhmNxy+jt/aFi+H50rBUb395hv5TeGje6y605ek0D
 0zOmfvP9dFdoM0s+57ikOOqjusApcc3SdMUtNcG5rM4MQB4E0Rs19NOne Q==;
X-CSE-ConnectionGUID: R7Wg8aNuShSK08k1NrP0Yw==
X-CSE-MsgGUID: K2qGR6m2T5eNBlivWq7pcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505811"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505811"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:39 -0700
X-CSE-ConnectionGUID: Xfjue05wQISnNOvgE3EJuA==
X-CSE-MsgGUID: xkOGpVoCRB+20QZjAKCH+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360297"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:37 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 2/9] drm/xe/xe3: Add support for graphics IP version 30.03
Date: Wed, 11 Jun 2025 19:14:24 +0530
Message-Id: <20250611134431.2761487-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c        | 1 +
 drivers/gpu/drm/xe/xe_wa.c         | 2 +-
 drivers/gpu/drm/xe/xe_wa_oob.rules | 7 ++++---
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index b5559800db7a..8824a8016b1c 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -183,6 +183,7 @@ static const struct xe_ip graphics_ips[] = {
 	{ 2004, "Xe2_LPG", &graphics_xe2 },
 	{ 3000, "Xe3_LPG", &graphics_xe2 },
 	{ 3001, "Xe3_LPG", &graphics_xe2 },
+	{ 3003, "Xe3_LPG", &graphics_xe2 },
 };
 
 /* Pre-GMDID Media IPs */
diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
index 67196baa4249..8693d098aa9b 100644
--- a/drivers/gpu/drm/xe/xe_wa.c
+++ b/drivers/gpu/drm/xe/xe_wa.c
@@ -609,7 +609,7 @@ static const struct xe_rtp_entry_sr engine_was[] = {
 	/* Xe3_LPG */
 
 	{ XE_RTP_NAME("14021402888"),
-	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3001),
+	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3003),
 		       FUNC(xe_rtp_match_first_render_or_compute)),
 	  XE_RTP_ACTIONS(SET(HALF_SLICE_CHICKEN7, CLEAR_OPTIMIZATION_DISABLE))
 	},
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index 9efc5accd43d..5c0d8b720946 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -32,10 +32,10 @@
 		GRAPHICS_VERSION(3001)
 14022293748	GRAPHICS_VERSION(2001)
 		GRAPHICS_VERSION(2004)
-		GRAPHICS_VERSION_RANGE(3000, 3001)
+		GRAPHICS_VERSION_RANGE(3000, 3003)
 22019794406	GRAPHICS_VERSION(2001)
 		GRAPHICS_VERSION(2004)
-		GRAPHICS_VERSION_RANGE(3000, 3001)
+		GRAPHICS_VERSION_RANGE(3000, 3003)
 22019338487	MEDIA_VERSION(2000)
 		GRAPHICS_VERSION(2001)
 		MEDIA_VERSION(3000), MEDIA_STEP(A0, B0), FUNC(xe_rtp_match_not_sriov_vf)
@@ -57,5 +57,6 @@ no_media_l3	MEDIA_VERSION(3000)
 		GRAPHICS_VERSION(1260), GRAPHICS_STEP(A0, B0)
 16023105232	GRAPHICS_VERSION_RANGE(2001, 3001)
 		MEDIA_VERSION_RANGE(1301, 3000)
-16026508708	GRAPHICS_VERSION_RANGE(1200, 3001)
+		GRAPHICS_VERSION(3003)
+16026508708	GRAPHICS_VERSION_RANGE(1200, 3003)
 		MEDIA_VERSION_RANGE(1300, 3000)
-- 
2.34.1

