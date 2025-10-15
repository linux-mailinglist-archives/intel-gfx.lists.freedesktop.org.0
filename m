Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40758BDC4FC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D4310E70C;
	Wed, 15 Oct 2025 03:18:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IywuLxTj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FB810E70D;
 Wed, 15 Oct 2025 03:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498290; x=1792034290;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=IyzJJc9MHXdeX8K1op6F3h1ZQbbsvvfNPqs8uXFdj/s=;
 b=IywuLxTjDjbdUtEPGzfK/eTMLXTGJ3E+FZQk91nVeu5aRjQQ5u8mdE/e
 3C78z5iftYtmnLaGOLk+lGiIECB5gsUuT4VGELe2q19fFdYQSpKCMbsev
 tzRQqjki26yKszsmaIk96fNDxTBQ16lv4iEkuONmQoOybS+UqN+V+KGJt
 uRwjpOkfRqTmD9klj2YIxVdE5pOQgrlN0Io8suo0w+QL2BBMzgdCo14PQ
 K0q7o7ZjCHEmHkciM00kDCf90dctfYaSwGdnNRF7P3/IIeMJfwgHJAhsS
 8f+LrrX9cKUPhOiBhLaJpHnHM/INVTHNr6pxl36QupW2ZAJIeaSxiKQDW Q==;
X-CSE-ConnectionGUID: pSbqmO65SB2IOEvdyYKkow==
X-CSE-MsgGUID: KvZrDwswTNe/x5cHbyKeFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577251"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577251"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:09 -0700
X-CSE-ConnectionGUID: e9IV1Q1eRUSZ3ph1Z7dJUg==
X-CSE-MsgGUID: 9eIOyjr3SGSGiPwOoggN6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302913"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:05 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:22 -0300
Subject: [PATCH 22/32] drm/i915/xe3p_lpd: Don't allow odd ypan or ysize
 with semiplanar format
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-22-d2d1e26520aa@intel.com>
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

From: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>

Disable support for odd panning and size in y direction when running on
display version 35 and using semiplanar formats.

Bspec: 68903
Signed-off-by: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 074de9275951..8de4e15fae6b 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1050,6 +1050,9 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		     DISPLAY_VERx100(display) == 3002) &&
 		     src_x % 2 != 0)
 			hsub = 2;
+
+		if (DISPLAY_VER(display) == 35)
+			vsub = 2;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;

-- 
2.51.0

