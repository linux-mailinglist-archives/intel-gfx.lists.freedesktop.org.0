Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEE9A91B24
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D9910EAD7;
	Thu, 17 Apr 2025 11:44:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="byKAMcOh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEFB810EAD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 11:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744890298; x=1776426298;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n0dBslelAjMlSWi68xW3BkppThX4Vofj78gKAAPPu7I=;
 b=byKAMcOhAXVjJ8w31bhmwoEgXYBC310EubopuudwOIV2VYiRTGYVOyof
 eX4s8AGvbzKxQwamdFJ+I0oxov45cB2fIag+BIS8jv4VaXlyimp/W3CW+
 Adqh6XJTIB059cKQAzbGvAkYPkpTFddRsinbuCu/dFMuu7DWlmln1Cg6A
 sVDgSJ/RmHWsHRDtkrq+ZEVXBaIu3eqnlMYoFmSIkqeAsfDpCCNYBH3li
 DPPRATGnR2KFMtFLIgiq/Y2X4GaN3JqgFM8ZpvYsX0GXvdLJ3wf2udEn+
 U8a3j5KrfFoY6oN23v44Nrtqu8RSOTqRwfIlGT64YZbWNrs7Fqnnr4CzV Q==;
X-CSE-ConnectionGUID: EHT9yWGsQZqEE8ImYA3P7w==
X-CSE-MsgGUID: Q3hwyuJWQviysJuOrNxhSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46638233"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46638233"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 04:44:58 -0700
X-CSE-ConnectionGUID: 7oeGPUxuQxqCBp1QJ4+Vjw==
X-CSE-MsgGUID: bSNLTPLgTO2dRVajLbspKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135943574"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 17 Apr 2025 04:44:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Apr 2025 14:44:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915/vga: Clean up VGA plane handling
Date: Thu, 17 Apr 2025 14:44:48 +0300
Message-ID: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

Clean up the VGA plane related stuff.

Ville Syrjälä (6):
  drm/i915/vga: Clean up VGACNTRL bits
  drm/i915/vga: Add more VGACNTRL bits
  drm/i915/vga: Extract intel_vga_regs.h
  drm/i915/vga: Include the current pipe in the VGA disable debug
    message
  drm/i915/vga: Nuke vga_redisable_power_on()
  drm/i915/vga: Consolidate intel_vga_disable() calls

 .../drm/i915/display/intel_display_driver.c   |  3 -
 .../i915/display/intel_display_power_well.c   |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  3 +
 drivers/gpu/drm/i915/display/intel_vga.c      | 63 +++++++++----------
 drivers/gpu/drm/i915/display/intel_vga.h      |  2 -
 drivers/gpu/drm/i915/display/intel_vga_regs.h | 38 +++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_driver.c            |  3 -
 drivers/gpu/drm/i915/i915_reg.h               | 12 ----
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 10 files changed, 73 insertions(+), 55 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vga_regs.h

-- 
2.49.0

