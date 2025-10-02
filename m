Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED80BB3D2A
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 13:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C7E10E7D0;
	Thu,  2 Oct 2025 11:54:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFTy9j9J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EBA10E7B8;
 Thu,  2 Oct 2025 11:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759406078; x=1790942078;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DcfCd5JBSWjmGPH+E8FeCgfLu5Iek3ev0qMEfBiVBs8=;
 b=OFTy9j9J255ZPmfUgY4MAs4WwoAaVL1srbWPrdur1HGLTvg6GHIWBuh+
 gzxUxiNbDAyLUcQBoc/ibxDG1fVRFv5BSDp1JhoRJDOY8VCk7rtvKLNsq
 aSgNsEAWmEKB8tYdp2cjZOc1Vj3ADJphnAZN8oU4wxT+TEoDDylElIY+X
 I34Ior+uXpNCEZ6/cupK/D4nwMSwmy/8iN9B6la697nSPnKbymx1TubH/
 vU5FENVfXYPoc+epIkmZOZpFey9C6yY6GMG31Aa81agGIzV5Gnf0j0tkc
 QllQ7TF/l/KryicF2DoJ0tL2LGa6kaAdn5LeiSIp6diH1pYPkCbMmG/8E Q==;
X-CSE-ConnectionGUID: m6U3pkljSROXIykShqci+A==
X-CSE-MsgGUID: qh+c/fGGS52HMLog4dZflA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="65325221"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="65325221"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:54:38 -0700
X-CSE-ConnectionGUID: k2sflEEoSfWUsIzuk1Kb2A==
X-CSE-MsgGUID: AGVSOsFDSEaIUp9RxeQ8Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="209727023"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.228])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:54:37 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: fb fixes and claenups
Date: Thu,  2 Oct 2025 14:54:30 +0300
Message-ID: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Some cleanups and fixes to fb handling.

Ville Syrjälä (4):
  drm/i915/fb: Fix the set_tiling vs. addfb race, again
  drm/i915/fbdev: Select linear modifier explicitly
  drm/i915/fb: Drop the 'fb' argument from
    intel_fb_bo_framebuffer_init()
  drm/i915/wm: Use fb->modfier to check for tiled vs. untiled

 drivers/gpu/drm/i915/display/i9xx_wm.c     |  7 ++--
 drivers/gpu/drm/i915/display/intel_fb.c    | 38 ++++++++++++----------
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  3 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c |  2 ++
 drivers/gpu/drm/xe/display/intel_fb_bo.c   |  3 +-
 6 files changed, 28 insertions(+), 28 deletions(-)

-- 
2.49.1

