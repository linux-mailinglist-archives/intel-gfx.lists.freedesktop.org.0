Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E1DBAFB23
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1BD10E6F2;
	Wed,  1 Oct 2025 08:39:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OCH6HQps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34D210E6ED;
 Wed,  1 Oct 2025 08:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307959; x=1790843959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lf18gOPqojXQ346HX0kCDu0OHMoJHioh7SJ1M0hxmBM=;
 b=OCH6HQpsJ7voakHh64KnjPTkCLzLl4wE6bU5kADmKdPnq3M4RH+dg7eg
 pgFOt6E+NRb+YVWL2L61Z7AD6X4P76fAyGOeZmlq0dfbk1wkXbQO7IuOR
 kiG4xNvcucLD5TmvQqbAb/ZHCs+PbcRrFoWofN6cGLYg+Ivduhy8F3j7O
 26iNr750o/SPusPTGleCpoj3IKG01lEDMHnAuyiOoMrdCQ86Vxewrboe1
 BZQ8ECy0lOJUP7CmvGBqPcyBJluhJsnMz7zsMfLhPN7DW9ToFhioNQR6e
 jSSGeyseDOz2hQmZrhE1LJQ6W46yLDVPMvsgU8hmii6AIslRay0B0j6Vd A==;
X-CSE-ConnectionGUID: hUDg9pobQQO8CaJ5s6FHFQ==
X-CSE-MsgGUID: AHfVbB9XSxG2lhHmf44tlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742823"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742823"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:19 -0700
X-CSE-ConnectionGUID: zdDTaI0LSb23P2YGYHQzeA==
X-CSE-MsgGUID: SllBDkB+QuaJHHt/cAvNfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142920"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:17 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 34/39] drm/i915/display: Add .crtc_get_dpll hook
Date: Wed,  1 Oct 2025 11:28:34 +0300
Message-Id: <20251001082839.2585559-35-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

Add .crtc_get_dpll function pointer to support MTL+
platforms.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 7a48d6f0db10..46ae05976191 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1693,6 +1693,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
 	.crtc_compute_clock = mtl_crtc_compute_clock,
+	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
 static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
-- 
2.34.1

