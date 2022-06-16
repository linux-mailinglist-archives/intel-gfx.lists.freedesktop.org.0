Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9754E0EE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 14:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F9911A516;
	Thu, 16 Jun 2022 12:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7797E11A50B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 12:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655383304; x=1686919304;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+Wo21Vemf8CrXxLRiwYw2qTyCSIcv/Kcjr2rGQeCvrU=;
 b=Z4pN1OdBYF8wkXyQg5HUjsSKaQBM3aPv6acC0QFmVZfr3N2Gnvi2yA4P
 SmDOPpbc+raedqWV17Oq+bDPMaHo9pOlT3um44VQRC8j/ncDBHkWrGDk7
 y6awJPdh93XPxMZuGUobrTzMH/HU7LuLh//LEEZSNbCPjUXDi38h1LoWd
 EGNu+NM9gp3SX3OrlY1Oy9n7L/LNIfjhk8InuD3EjZyyWeTKq8OjAik0m
 v7ZyvG8qU4aqCxMT3+ySSbu7OVJpJGKsrTGdksE1Eqq2cZMkqJ/aEKr/m
 +awflNH5b1fEKmTRiL/d2kCxC7UZQQDG1x+1iGjbca2mreI6gcZJhezbr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="304680106"
X-IronPort-AV: E=Sophos;i="5.91,305,1647327600"; d="scan'208";a="304680106"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 05:41:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,305,1647327600"; d="scan'208";a="831544143"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 05:41:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 15:41:37 +0300
Message-Id: <20220616124137.3184371-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/glk: ECS Liva Q2 needs GLK HDMI port
 timing quirk
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
Cc: jani.nikula@intel.com, Diego Santa Cruz <Diego.SantaCruz@spinetix.com>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>

The quirk added in upstream commit 90c3e2198777 ("drm/i915/glk: Add
Quirk for GLK NUC HDMI port issues.") is also required on the ECS Liva
Q2.

Note: Would be nicer to figure out the extra delay required for the
retimer without quirks, however don't know how to check for that.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1326
Signed-off-by: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index c8488f5ebd04..e415cd7c0b84 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -191,6 +191,9 @@ static struct intel_quirk intel_quirks[] = {
 	/* ASRock ITX*/
 	{ 0x3185, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
 	{ 0x3184, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
+	/* ECS Liva Q2 */
+	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
+	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
 };
 
 void intel_init_quirks(struct drm_i915_private *i915)
-- 
2.30.2

