Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34301A08650
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 05:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460BF10EFAE;
	Fri, 10 Jan 2025 04:52:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B54ZE2gz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4AD10EFB0;
 Fri, 10 Jan 2025 04:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736484779; x=1768020779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sOgNvN+aF1E+h2PJmhai7BEKzulOeSNrgWjdKwTFh6M=;
 b=B54ZE2gzGIFsQrhnGxZZFudNButFmUKUdwO1MHkKeHMIFW8ZJKB7msWv
 cbmKgNi3+bVdORGmof3ipss7F4FRwlnfVx9vye3cBwRigfIEG4lKq+Rmh
 nrnRjCI31tGg9WwcKRMueq2/8pAmqtRNvBkcO4f8ljL0l6sVNOpznjONU
 yq0euo2Wn3cTJ6vHVhUnLOGdUW3rMo8rmEWJn2LkFTH+zhRrWxps36LxZ
 iGvwfRKNod2HqBx0K6gjmpYfKmWN3rer0ufQ061j0wNtBy1oSr4E9oHsQ
 zgIsRi0lvSC93F99y6M8vOxpF2TFIDu5UIIooUlmwqoTXeKIcVYYy4ma3 w==;
X-CSE-ConnectionGUID: n5kEeFzLRhWr8uRVA4BMGw==
X-CSE-MsgGUID: 3vnQX3T4RYGLcgowp/6f/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36930869"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36930869"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 20:52:58 -0800
X-CSE-ConnectionGUID: 6NbTuCoDRd6G5JqNPznzUw==
X-CSE-MsgGUID: UbY46N1WTQuQgAiFOFMesA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="108620002"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 20:52:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [RESEND 2/2] drm/i915/dsc: Remove old comment about DSC 444 support
Date: Fri, 10 Jan 2025 10:11:31 +0530
Message-ID: <20250110044131.3162682-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
References: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
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

DSC with YCbCr420 is now supported, so remove the comment mentioning
support for only 444 format.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index df07090c84eb..1e8f71fb3094 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -124,7 +124,6 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 							vdsc_cfg->slice_height - 1);
 	}
 
-	/* Our hw supports only 444 modes as of today */
 	if (bpp >= 12)
 		vdsc_cfg->initial_offset = 2048;
 	else if (bpp >= 10)
-- 
2.45.2

