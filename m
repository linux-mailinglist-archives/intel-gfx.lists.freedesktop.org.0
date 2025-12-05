Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F2BCA77D3
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 13:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1FA10EB1B;
	Fri,  5 Dec 2025 12:00:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eW0Yep8H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FF9010EABD;
 Fri,  5 Dec 2025 12:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764936003; x=1796472003;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k6xXFr1qRCyHjx+WOqMfDTHRGoKNWmQpSSNxYuUtoyE=;
 b=eW0Yep8Hhqs/I5nvFf7/gODGq2JxC0MeGB40W4ypZ/L8szRcoyfsdHo4
 a8rLlM170sbDEdpUIMKNAk++ooYYqOby+pN4AJ6LfKiqcI8cb0c49zdzy
 FmSo8QmZbnYFjPfpsWie4EMyslXWcYo49fGvq/hLBkID5SbB+TQd+K8VD
 H22pH0YjjESuQYwSiXGx1SZmZICY+DgmPviBx6YDk8qUn4jGaHQKYUXS3
 8FLI86we7Mw+KJacykiHqK5ilr039NdzYYthy2gw6jLlFUZbHYO3ei6cU
 ZPbuNwIR7MsGSTUNAPXF8bb8TAKWyv3Ky8gQnTmvXHpVZu8CtOFF6A5zK g==;
X-CSE-ConnectionGUID: k0aJzOISTgugklPRXM0URw==
X-CSE-MsgGUID: IeK4RmfrQfiVEZjYBrXhCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="77292613"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="77292613"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 04:00:02 -0800
X-CSE-ConnectionGUID: 3U0evRRaT7+GC8/P3o0JtA==
X-CSE-MsgGUID: 5XJMrtjHQeSYJDvV6cGcQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="218637433"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 05 Dec 2025 04:00:01 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/cx0: Unify naming for C20 pll tables
Date: Fri,  5 Dec 2025 13:52:03 +0200
Message-Id: <20251205115203.2526873-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

To fetch pll divider tables a function name for C20
is intel_c20_pll_tables_get() but for C10 the similar
function is called intel_c10pll_tables_get(). Rename
intel_c20_pll_tables_get() to intel_c20pll_tables_get()
to be more consistent.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 27be2a490297..ef69e8762b90 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2456,8 +2456,8 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
 }
 
 static const struct intel_c20pll_state * const *
-intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
-			 struct intel_encoder *encoder)
+intel_c20pll_tables_get(const struct intel_crtc_state *crtc_state,
+			struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
@@ -2630,7 +2630,7 @@ intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
-	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	tables = intel_c20pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return NULL;
 
-- 
2.34.1

