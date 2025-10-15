Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2146ABDC514
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830DF10E71F;
	Wed, 15 Oct 2025 03:18:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cMtZYojO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205A510E71E;
 Wed, 15 Oct 2025 03:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498322; x=1792034322;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=7NombdFe9/8LGLvvgyoXMyZGBPdzL6OLtVG8ShZjBrI=;
 b=cMtZYojOHScAk0xn1YzCzu/vulFcMakVb1mh2j8T6QwLFW8MQj+jqdcU
 YPt2hNzKP+TiWMmQHnRFh83eojkQgW7SUmxhBQOqfX2TrHo2Pg/tLd9eW
 NA53kJguqndiOBj+XKwGGUVj1wc+6vOL79ZwsTKmizJHabsyEu4gIPer7
 0vO3IhdhnjFz6emvKqaaisUlOcwSlHmN+feUYDFaJyxlnfsJ/HO0w9pwa
 pBKj4yr/vDnscc139N2wxVmxe6I3Y+RTwe8Xv92MFJQB6Py6vU+bRJujc
 IfPuY562yKnGX5DcHwxIBQAE6oPEnKAyI4tQVrJMhluGls05xymyqa7Ib w==;
X-CSE-ConnectionGUID: oLHN2FIXSLGgDJQRi0IUTg==
X-CSE-MsgGUID: ff8FHJmMS9GDqM9/8a+QMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702611"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702611"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:41 -0700
X-CSE-ConnectionGUID: r8PD+ZZASsqvpDxH9QyrIQ==
X-CSE-MsgGUID: Ax+gRO1zR020qOCvzwenEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186303207"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:38 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:30 -0300
Subject: [PATCH 30/32] drm/i915/wm: don't use method1 in Xe3p_LPD onwards
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-30-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Luca Coelho <luciano.coelho@intel.com>

Starting from display version 35, we don't need to use method1 to
calculate the watermark values anymore, so skip it.

Bspec: 68985
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 88342d07727f..fba7448c4920 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1809,6 +1809,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 	if (wp->y_tiled) {
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
+	} else if (DISPLAY_VER(display) >= 35) {
+		selected_result = method2;
 	} else {
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
 		     wp->dbuf_block_size < 1) &&

-- 
2.51.0

