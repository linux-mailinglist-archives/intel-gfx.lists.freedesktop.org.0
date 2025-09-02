Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89BDB40341
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B30C10E6F2;
	Tue,  2 Sep 2025 13:31:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZMYS+yl8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C88110E6F2;
 Tue,  2 Sep 2025 13:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819878; x=1788355878;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vZWI6qk0nSoTu0uqow4OtfGT4sipGZZ+Dh4crv/ZIzk=;
 b=ZMYS+yl8S16yCNY9GfWt++VZC3lFpmAhsJT7L7p+8OJfoqZNl6oEi4uL
 Xtsg23Rpu8K3xAWytmNoB5gjJ1JRBh7fgfJUjZYaPoP4kDIgr9AZev/CR
 cUDSzhhlQwpD8s86g4uli5XchwT+TqUwfW1y3iOyfeTpJrYmFK3glm8f0
 UVvFsjTmCJnWIViUziug5CC5D92dD+KB6Xr/03u5gMlKZeeY5fpJsP6l2
 a1fRyoz7S5EwiX166DDDoC/db3udxc7kiU/sK/On+ZatjFgPF/aDX6Atf
 +o7Sbbw79KPl98vNFIqmqVsrLkPsTj9vURZpo3ua2Ti9X/s1ah/9cavlm Q==;
X-CSE-ConnectionGUID: 2NQDXSOMQCqCaPO7cBCJRA==
X-CSE-MsgGUID: DwMYbwy/SQCKssLH4UW8BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736414"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736414"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:17 -0700
X-CSE-ConnectionGUID: iDtPU4iGTniNlMuqyi4phQ==
X-CSE-MsgGUID: CBZQaIlqTJWPsVT6m99l4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587285"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/8] drm/i915/dram: DRAM detection stuff
Date: Tue,  2 Sep 2025 16:31:05 +0300
Message-ID: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A few improvements to the DRAM detection code.

Ville Syrjälä (8):
  drm/i915/dram: Populate PNV memory type accurately
  drm/i915/dram: Use intel_dram_type_str() for pnv
  drm/i915/dram: Pack dram_info better
  drm/i915/dram: s/wm_lv0.../has_16gb_dimms/
  drm/i915/dram: Move 16Gb DIMM detection fully to the skl/icl codepaths
  drm/i915/dram: Fix some spelling aroynd the 16Gb DIMM w/a
  drm/i915/dram: Don't call skl_get_dram_info()/skl_get_dram_type() on
    icl
  drm/i915/dram: Print memory details even if something went wrong

 drivers/gpu/drm/i915/display/i9xx_wm.c       |  5 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c |  6 +--
 drivers/gpu/drm/i915/soc/intel_dram.c        | 45 ++++++++++----------
 drivers/gpu/drm/i915/soc/intel_dram.h        | 12 +++---
 4 files changed, 35 insertions(+), 33 deletions(-)

-- 
2.49.1

