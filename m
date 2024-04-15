Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4138A4A00
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF111122D1;
	Mon, 15 Apr 2024 08:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lATR5XyI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CB081122C8;
 Mon, 15 Apr 2024 08:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168845; x=1744704845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SZmdw2ZUsBWfkWBMjLIHEj6kauwj7FMKusl3auO5nC8=;
 b=lATR5XyI9q8nLvfNHbOGuOmtFZEcbFoM09tsnT3fX9DIqVS9UEhz96Oa
 vUBidT2tTV0FCxQ4BGPDj85D3uKMM9YsQW34S8gE93F+GPdyvLlt4epEl
 TJHIM+/KxwAVCyoyGVULx/jtCgjP4uB3R1MQ5JeVcwRsQFGhnhK6TAP2y
 0wNrMZEJvi3c15OAIcD0mECrbB3r70sOP3yIBAEDDpt/u9MhB9TSGXc56
 Mbuv2nNz+64OoYNRhQacsT72F64JjN94VgazgMLOtpV3YyM0wwBagPC6e
 C9ut4XffW7F/lpbMDEPnF7yaPlfqQ7lb16Js/sPPH8bftpf9tnM6/+WKN Q==;
X-CSE-ConnectionGUID: NSyBh8VlTkWhX64Z4OQggQ==
X-CSE-MsgGUID: E7k4HHEhS8WEDbUUHRFXiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096352"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096352"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:05 -0700
X-CSE-ConnectionGUID: RIg38gb6RfqvQjgvYJr/0A==
X-CSE-MsgGUID: +slfVgCIS0qcuGKtVcWYhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400212"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:03 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Subject: [PATCH v3 04/21] drm/i915/xe2hpd: Skip CCS modifiers
Date: Mon, 15 Apr 2024 13:44:06 +0530
Message-Id: <20240415081423.495834-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Framebuffer format modifiers are used to indicate the existence of
auxillary surface in the plane, containing the CCS data.  But on
Xe2_HPD, the CCS data is stored in a fixed reserved memory area and not
part of the plane. It contains no auxillary surface.
Also in Xe2, the compression is configured via PAT settings in the
pagetable mappings. Decompression is enabled by default in the
PLANE_CTL. Based on whether valid CCS data exists for the plane, display
hardware decides whether compression is necessary or not.
So there is no need for format modifiers to indicate if compression is
enabled or not.

v2:
* Improved the commit description with more details
* Removed the redundant display IP version check for 20. Display version
  check for each modifier above would take care of it.

CC: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 86b443433e8b..7234ce36b6a4 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -431,9 +431,19 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
 	 * where supported.
 	 */
-	if (intel_fb_is_ccs_modifier(md->modifier) &&
-	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
-		return false;
+	if (intel_fb_is_ccs_modifier(md->modifier)) {
+
+		/*
+		 * There is no need for CCS format modifiers for Xe2_HPD, as
+		 * there is no support of AuxCCS and the FlatCCS is configured
+		 * usign PAT index in the page table mappings
+		 */
+		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+			return false;
+
+		if (HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
+			return false;
+	}
 
 	return true;
 }
-- 
2.25.1

