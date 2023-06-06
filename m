Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE96724A36
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 19:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D41B10E391;
	Tue,  6 Jun 2023 17:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0EF210E391
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686072593; x=1717608593;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jWa9bHWOkmjsSCJMDbGTqX5oeAFQbbiAjEqsAl39GeI=;
 b=Fve+vJk/JpsCv++FManZ4TOBVwQFt42TGmC+e4SeXUH+Re6kEcx2E2g/
 UUBCqUUPmPtLxEef6IjZwUezZx8Zj5AM5Z6EwC/C22kutCh2ug5bdEhlp
 IIyS5tWpCxujYxr3CPDV9oM/Xqs+N98NwxblJ1mbSUSTsEMqLmvjB87ig
 Rkk4P+JZ32ThgfrCoWkiO3oE2BLmlgjwhmX3Cvb8rkTBISspsxG3+v0dK
 Ka7PTlkwBSAbhGjXjaeNfRnV9qTCoh5HNGYHrZAIndgIhGK6gnuMlaGtj
 iNXlGwUjiInr8j1Tpw0NSqj+0u/L9ZZh7XgPeUygfC1HvvGbQXBUTADd7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="346350770"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="346350770"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 10:28:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="686626373"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="686626373"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 10:28:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 20:28:22 +0300
Message-Id: <20230606172822.1891897-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adlp+: Allow DC states along with PW2
 only for PWB functionality
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

A recent bspec update added a restriction on when DC states can be enabled:

[Before enabling DC states:]

"""
PG2 can be kept enabled only because PGB requires PG2.
Do not use PG2 functions, such as type-C DDIs.

DMC will dynamically control PG1, PGA, PG2, PGB.
"""

Accordingly prevent DC states if PW2 (aka PG2) is enabled for any other
functionality.

Bpsec: 49193

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power_map.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 1118ee9d224ca..5ad04cd42c158 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1252,10 +1252,18 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
 	POWER_DOMAIN_INIT);
 
 #define XELPD_DC_OFF_PORT_POWER_DOMAINS \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D, \
+	POWER_DOMAIN_PORT_DDI_LANES_E, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_IO_C, \
+	POWER_DOMAIN_AUX_IO_D, \
+	POWER_DOMAIN_AUX_IO_E, \
 	POWER_DOMAIN_AUX_C, \
 	POWER_DOMAIN_AUX_D, \
 	POWER_DOMAIN_AUX_E, \
@@ -1272,14 +1280,6 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
 	XELPD_PW_B_POWER_DOMAINS, \
 	XELPD_PW_C_POWER_DOMAINS, \
 	XELPD_PW_D_POWER_DOMAINS, \
-	POWER_DOMAIN_PORT_DDI_LANES_C, \
-	POWER_DOMAIN_PORT_DDI_LANES_D, \
-	POWER_DOMAIN_PORT_DDI_LANES_E, \
-	POWER_DOMAIN_VGA, \
-	POWER_DOMAIN_AUDIO_PLAYBACK, \
-	POWER_DOMAIN_AUX_IO_C, \
-	POWER_DOMAIN_AUX_IO_D, \
-	POWER_DOMAIN_AUX_IO_E, \
 	XELPD_DC_OFF_PORT_POWER_DOMAINS
 
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
-- 
2.37.2

