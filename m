Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D69A6FC8A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204F810E246;
	Tue, 25 Mar 2025 12:36:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VI/ZXjhZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89FF10E246;
 Tue, 25 Mar 2025 12:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742906205; x=1774442205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wRkrn7EmQc/DIRJMNLiCxi2UsM/TmJiYk1x8pXX3Zp8=;
 b=VI/ZXjhZ4MosIPRj0t5iqCYk7nA8TIR4FklwKiFcA4eX58ZuH3vJGRH9
 U3VG9f6WznREmZSLvm8Xa64sGV9U9RilIRWZeYvmFlZwRQuVzYZyxFmQi
 icZ8Wo4ynoKErS294EyG1AYT7e0fKzcC7n5QpseNje6DlwG04fq1UJ5IF
 a4KBG4hrv3TAQG6bF8ZMwSANLgUfTiiCn8g085CoIXzfqg/0V6pC/6aH9
 EEB5pQFfgQBSQkKaJZ9e6dUvZQE1GF1n/kWXi9AoghT6VXjJvvdDzgBuZ
 1w1bIC1dWuIsIfPYr7KtTK7FaDtfwgBrqesC9HQU/EFkQNwCTs2aUTWgZ w==;
X-CSE-ConnectionGUID: iFsG8VBkTSGmFrPI3rmSUA==
X-CSE-MsgGUID: OkGcR+2EQtaBoUEqzThmtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47933169"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47933169"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:36:44 -0700
X-CSE-ConnectionGUID: 3hcDKIRASfe3OFslfECDFQ==
X-CSE-MsgGUID: 1c/Vxc70RE+MJazm+jZjQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="155274732"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:36:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915: dpll, ddi, crc,
 psr etc conversions to struct intel_display
Date: Tue, 25 Mar 2025 14:36:32 +0200
Message-Id: <cover.1742906146.git.jani.nikula@intel.com>
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

We're getting there!

Jani Nikula (6):
  drm/i915/dpll: convert intel_dpll.[ch] to struct intel_display
  drm/i915/ddi: convert intel_ddi.c to struct intel_display
  drm/i915/crc: convert intel_pipe_crc.c to struct intel_display
  drm/i915/psr: further conversions to struct intel_display
  drm/i915/wa: convert intel_display_wa.[ch] to struct intel_display
  drm/i915/display: drop some unnecessary intel_de_* compatibility
    wrappers

 drivers/gpu/drm/i915/display/intel_ddi.c      | 904 +++++++++---------
 drivers/gpu/drm/i915/display/intel_de.h       |  16 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   7 +-
 .../gpu/drm/i915/display/intel_display_wa.c   |  30 +-
 .../gpu/drm/i915/display/intel_display_wa.h   |  11 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 312 +++---
 drivers/gpu/drm/i915/display/intel_dpll.h     |  13 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c | 137 ++-
 drivers/gpu/drm/i915/display/intel_pps.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  85 +-
 drivers/gpu/drm/xe/display/xe_display_wa.c    |   6 +-
 13 files changed, 729 insertions(+), 803 deletions(-)

-- 
2.39.5

