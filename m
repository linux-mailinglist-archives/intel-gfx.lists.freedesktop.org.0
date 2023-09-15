Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A657A2515
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A870210E66E;
	Fri, 15 Sep 2023 17:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91F710E660;
 Fri, 15 Sep 2023 17:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800010; x=1726336010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wGTbYNpxv28eOxIDA7r3BsXv6aq5KwsCd6zEEOSnow4=;
 b=nSTNKiGPMYpGlBcwJlpJIar2qB472jy4EE6oYVlsThpIko6B0RgEBSX6
 p0Vf7mKdcjfCBvPIrSlAYAqUCvB0y/UXaao4ZWyWFoaD2RNVwgwapdhDT
 36q/V+J6RHNUF/a66cKUIqjVuBQ9BuXeupXA0AMoGnHgWAGp8L/rfTTxm
 oScm2yNm5DrwGWvoDruwjaPJH+8LOBI+J6CbVy7xnBZzA0RBBKY1JiAKZ
 YMzjAP9h1NSPltf9OpiK1Y3twMkW349w7NklIU0oDLjZe8Gj1sPyIWzYP
 5O01tSXfWRFNBaHR0CrZS+3e+FO/NGqadmSAd2dC51kdwtf2zWbXwPno5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779262"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779262"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818234"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818234"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:23 -0700
Message-Id: <20230915174651.1928176-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 02/30] drm/i915/lnl: Add display definitions
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Add Lunar Lake platform definitions for i915 display. The support for
LNL will be added to the xe driver, with i915 only driving the display
side. Xe2 display is derived from the Xe_LPD+ IP; additional feature
deltas will be introduced in subsequent patches, so here it's just
adding a separate xe2_lpd_display struct.

v2: Use a LPDP_FEATURES macro (Matt Roper)

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b572ca16647d..5d6d771791df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -759,6 +759,10 @@ static const struct intel_display_device_info xe_lpdp_display = {
 	XE_LPDP_FEATURES,
 };
 
+static const struct intel_display_device_info xe2_lpd_display = {
+	XE_LPDP_FEATURES,
+};
+
 /*
  * Separate detection for no display cases to keep the display id array simple.
  *
@@ -838,6 +842,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 20,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
-- 
2.40.1

