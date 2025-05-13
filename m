Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4064AAB4FBF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6EC210E370;
	Tue, 13 May 2025 09:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bXf/GiXd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB6E10E364;
 Tue, 13 May 2025 09:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128530; x=1778664530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fAq8IpZXK0p3OdXaF7F36ebtLhxa+J2UCHsCFv2htvY=;
 b=bXf/GiXd3t8+XU8z+dSX35be6SWduQsc0mtCSn2iDgIlt7OzWWQRdBaP
 CVo2Po0vjUjXGKSWafpUDPJEfonLPHHrnZutBbuRBAGkZAskfyMj2eV/g
 DC/LQaRr4fkdZwBvu3GH9wdSzw/b6qUJitrEQCFNRiQtMMRHe0VJAcRWP
 6DED8l4i55bAnMr9XAithBjKNkxm4QiZmHyLRGBesgM2VXbNxl6VcJCR2
 b0CfUU+1texonFaZx/uTySxl0O3AD9pNUMz/JDVEsFvo3TEqhjVYh1qQ2
 JJyefYLGrITekLoobSKQjPBiBq8uqCHzambnSG0hjoKumgaLZJVAy3Cu+ Q==;
X-CSE-ConnectionGUID: XNAmfLukSCOd++xHfnlq4A==
X-CSE-MsgGUID: oIJYvbVhQayDrxYz47ZoSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="49128958"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="49128958"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:28:50 -0700
X-CSE-ConnectionGUID: w2E9wfyVQiSkL5ep88AmaA==
X-CSE-MsgGUID: XuTrj8IURRiOfHWPLmck8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="160918418"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:28:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915/display: various small cleanups
Date: Tue, 13 May 2025 12:28:40 +0300
Message-Id: <cover.1747128495.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

A bunch of small cleanups.

Jani Nikula (5):
  drm/i915/pps: drop dependency on intel_display_conversion.h
  drm/i915/rps: pass struct intel_display to DISPLAY_VER()
  drm/i915/display: drop unused declarations from intel_display.h
  drm/i915/gem: drop intel_display.h include
  drm/i915/display: drop unnecessary includes on i915 core headers

 .../gpu/drm/i915/display/intel_atomic_plane.c    |  1 -
 drivers/gpu/drm/i915/display/intel_crt.c         |  1 -
 drivers/gpu/drm/i915/display/intel_display.c     |  1 -
 drivers/gpu/drm/i915/display/intel_display.h     | 16 ----------------
 .../gpu/drm/i915/display/intel_display_debugfs.c |  1 -
 drivers/gpu/drm/i915/display/intel_display_rps.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c          |  1 -
 drivers/gpu/drm/i915/display/intel_dsb.c         |  1 -
 drivers/gpu/drm/i915/display/intel_pps_regs.h    | 15 +++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_domain.c       |  1 -
 10 files changed, 9 insertions(+), 32 deletions(-)

-- 
2.39.5

