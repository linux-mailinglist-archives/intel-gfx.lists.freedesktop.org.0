Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D80A29DA33B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EA310EA02;
	Wed, 27 Nov 2024 07:40:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DsRGhK2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0521410EA02;
 Wed, 27 Nov 2024 07:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732693255; x=1764229255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=74wJeFL9up3nzhDs96hsRcazop/GttPwXCxOtQ4bJ6Y=;
 b=DsRGhK2nzHXVlwccrerhro2IOF43NiY7vCNpPNadlFZqzKRBcCTvVnYH
 j1HnuFs4o7/BKEdo0WUlZ844SABi0XezvJrcrSJ4VeoRgvH6x4kunof2q
 SYfadu58qiX8HGBQ4wDAQzee11Is/2zAZr9pIYZjym4JXbjjHow/+xQ2j
 SSnbhsufbz752+8xL1Ox1xa6R+xXDxJHetoTL6xEPU4qvUD9Mvc7DVnOn
 KdewuHYZ0hbbrfN7tWcQCjoCQgC1asM6vsBJuWSjGzclSpGGmaTuNv3Cx
 bI/Bl/M7QSl8aaxR+Vb1vfEf8+xooOhknvnZ5uTqKzRVDlpQaSK4x7VaW A==;
X-CSE-ConnectionGUID: 31aXfqwfTcCHlL/WmFCzjA==
X-CSE-MsgGUID: lNNRREokQ/ul1ddg9n5SKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36670674"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="36670674"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:40:55 -0800
X-CSE-ConnectionGUID: y4Opc6IYSgGJ8OLFG6f23Q==
X-CSE-MsgGUID: RsKDBG2PSay+fYFzlhWRZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="129376622"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa001.jf.intel.com with ESMTP; 26 Nov 2024 23:40:53 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Mika Kahola <mika.kahola@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH v6 2/2] drm/i915/display: Use struct intel_display instead of
 struct drm_i915_private
Date: Wed, 27 Nov 2024 09:32:00 +0200
Message-ID: <20241127073200.124907-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241127073200.124907-1-mika.kahola@intel.com>
References: <20241127073200.124907-1-mika.kahola@intel.com>
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

Let's start using struct intel_display instead of struct drm_i915_private
when introducing new code. No functional changes.

v2: Drop tc_to_intel_display() helper funtion (Jani)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 82e82e8ec11a..33b8f2772076 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1043,10 +1043,9 @@ static void xelpdp_tc_power_request_wa(struct intel_display *display, bool enabl
 
 static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum port port = tc->dig_port->base.port;
-	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
@@ -1054,12 +1053,12 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
 	if (DISPLAY_VER(display) == 30)
 		xelpdp_tc_power_request_wa(display, enable);
 
-	val = intel_de_read(i915, reg);
+	val = intel_de_read(display, reg);
 	if (enable)
 		val |= XELPDP_TCSS_POWER_REQUEST;
 	else
 		val &= ~XELPDP_TCSS_POWER_REQUEST;
-	intel_de_write(i915, reg, val);
+	intel_de_write(display, reg, val);
 }
 
 static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
-- 
2.43.0

