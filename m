Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9874ABC7B89
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C42210E932;
	Thu,  9 Oct 2025 07:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFRpRbiH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F4710E932;
 Thu,  9 Oct 2025 07:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759995047; x=1791531047;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XNqftsZtXhIjlCjjdIOVU7qsK42SuNu7eMIwz31km+k=;
 b=CFRpRbiH2EPQupeZXdWgieLMN9PmVBeTWGYCiMRJqhipRcp6RJbUFRGU
 aYRyHYLAOl59+aJ2dDKbts7mCIP8N3+Bwn+ja1fRkHusnWVJC3MXl7Auf
 31r/YrvNEfAcj2E3X7kdKxnqtsR+8t82zRnuAFqBlzdallACMwOUBr0lZ
 Xg0IDUQY8vkqzN9Ze4hKxOd45+n6+QbhWHPFVuUsxJa828a+NvgUFLyWk
 0Ve46VWCvJHpyzUCvdFzfNtBhAivcDLmEKByYJCix0SzRKtXbB9d7xDmV
 RMmNzyPbP1QCqGsj1xeWz/wV1Ku714CMZ6ukMB/rUhow9WmK13yFNQH14 Q==;
X-CSE-ConnectionGUID: Sxe9BovfRCmP7LI8guSqMw==
X-CSE-MsgGUID: itnta2PLSp2oocvwHxXX+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="66050802"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="66050802"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:47 -0700
X-CSE-ConnectionGUID: OkorO9MpQZWyVIABHoGobQ==
X-CSE-MsgGUID: V9focZQYR6mPV/oE87fvxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181073393"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/8] Preparatory patches for guardband optimization
Date: Thu,  9 Oct 2025 12:47:28 +0530
Message-ID: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Handle few cases which will need changes when guardband will no longer
be matched to vblank length.
- Fix the vblank_start evaluation.
- Fix PSR wake latency checks wrt to guradband.

Ankit Nautiyal (8):
  drm/i915/vrr: Use crtc_vsync_start/end for computing
    vrr.vsync_start/end
  drm/i915/vrr:
    s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
  drm/i915/vblank: Add helper to get correct vblank length
  drm/i915/psr: Consider SCL lines when validating vblank for wake
    latency
  drm/i915/display: Check if final vblank is sufficient for PSR features
  drm/i915/vrr: Recompute vblank_start for platforms with always-on VRR
    TG
  drm/i915/display: Add vblank_start adjustment logic for always-on VRR
    TG
  drm/i915/display: Prepare for vblank_delay for LRR

 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  14 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |   9 ++
 drivers/gpu/drm/i915/display/intel_dp.h      |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 152 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   2 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 ++
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  26 +++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c |   3 +-
 11 files changed, 167 insertions(+), 59 deletions(-)

-- 
2.45.2

