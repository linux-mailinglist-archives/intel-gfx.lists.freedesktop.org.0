Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7063FC1D3FC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 21:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A1910E225;
	Wed, 29 Oct 2025 20:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5CU+N+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DBC810E225
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 20:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761770539; x=1793306539;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NMZdVvgXbHdfYxQbRHgGuHztJswU0FSX+P/RgkGnavU=;
 b=A5CU+N+TZn91OTc+iLDT9jyGt223lVYExzg2INJZb7nlBajudlt0a4YC
 a6OXPHSIVoXF+XlEbmfTqdEvW5MkDGuWiyme7F/MJWAHWUo7BLJ0JGdPa
 aQz9Ut+mUiMS006FoF17nnkV0i8sTE2knRgoZckSs4Mg/98QshrCXYMwd
 KmVJR4XIN+LjA/SWB1SXFxnda3R/tPEJ2qCibjNwvY0KiPvvCfVHm8jDU
 6Njtatz6f3OKHTBu8fKg/xOn4L46008rueDxWIGLCEvoeeHmgbeMvUB5B
 0F0Xu7Ssop0wYAaBbpzpvksIZ7/ZBU+Vkm+N9lkN1uyuNeMWQHMtS0ZD3 w==;
X-CSE-ConnectionGUID: cXpBm0MzTGGjtIisv2TAdg==
X-CSE-MsgGUID: Vk6MU+vDREm8aVGO0dPTLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67739966"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67739966"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:42:19 -0700
X-CSE-ConnectionGUID: neUIubYESpW+W4ZDg9JEzg==
X-CSE-MsgGUID: PqCOvMeESganSyMM4L4yEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="222984520"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:42:17 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/1915/dram: Fix DIMM_S decoding on ICL
Date: Wed, 29 Oct 2025 22:42:12 +0200
Message-ID: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
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

Fix MAD_DIMM DIMM_S deocoding on ICL, and clean up the related
register defines a bit while at it.

Ville Syrjälä (3):
  drm/i915/dram: Use REG_GENMASK() & co. for the SKL+ DIMM regs
  drm/i915/dram: Sort SKL+ DIMM register bits
  drm/i915/dram: Fix ICL DIMM_S decoding

 drivers/gpu/drm/i915/intel_mchbar_regs.h |  68 ++++++----
 drivers/gpu/drm/i915/soc/intel_dram.c    | 166 +++++++++++++++++------
 2 files changed, 160 insertions(+), 74 deletions(-)

-- 
2.49.1

