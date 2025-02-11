Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5121A31961
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D9410E0D4;
	Tue, 11 Feb 2025 23:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cwNPUwwe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBFC710E0D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739315986; x=1770851986;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zAgWI3a7v9dO8Yk6tyLEKXEd0AkexLWWHTk6yFAMlP0=;
 b=cwNPUwwefk05Ez/H3DhA9pvQaK1q22JyZESpLPNfEEXcWDxHuB1ue1j6
 LJ0t9YuOekFJtpZqPSVHq4ayAdwBjlesaIQ7+PL6MPx0RsC4h7RSNuuaZ
 TUl484jvAVfqdccHUbRPvLS+m6tLaDeRGLuKDAyUx7/DArkPab6pVRbeO
 OcGjAGvWMOIblw25OHOsQQn5UJvYlnzU5i6TBtd0pjXbWLLP8Um6f1iiz
 wJS/aEFpJF8J1OedKlnyXXuu97SdBV9kszYjhBIQCMRhLtqqaFTnB4moz
 0EHo/mdzbRacBHJWCmyQ61GpPQobwpj4iQFQ7VUh+M2lkSAnDTLPhujNF Q==;
X-CSE-ConnectionGUID: VOYS6F7jT8ykspvqwSEpCg==
X-CSE-MsgGUID: QXkGmgOSQWmBwXx7FhLjUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820124"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820124"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:19:44 -0800
X-CSE-ConnectionGUID: VSqfBonzQqC7z+NHDvTKkg==
X-CSE-MsgGUID: CdL5nzfVRGaTqSDFbc6tDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870844"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:19:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:19:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/12] drm/i915: some GT register fixes and cleanups
Date: Wed, 12 Feb 2025 01:19:28 +0200
Message-ID: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

A while back I got confused by the GT fault register defintions,
and proceeded to do something about. Here are the results.

I also proceeded to convert the whole intel_gt_regs.h to
REG_BIT()/etc. I've included some of that here as well
(EU/slice fuse and timestamp frequency stuff). I'll hang
on to the rest for now to keep the amount of patches in
a manageable level.

Ville Syrjälä (12):
  drm/i915: Bump RING_FAULT engine ID bits
  drm/i915: Relocate RING_FAULT bits
  drm/i915: Use REG_BIT() & co. for ring fault registers
  drm/i915: Document which RING_FAULT bits apply to which platforms
  drm/i915: Introduce RING_FAULT_VADDR_MASK
  drm/i915: Extract gen8_report_fault()
  drm/i915: Use REG_BIT() & co. for CHV EU/slice fuse bits
  drm/i915: Reoder CHV EU/slice fuse bits
  drm/i915: Use REG_BIT() & co. for BDW+ EU/slice fuse bits
  drm/i915: Reoder BDW+ EU/slice fuse bits
  drm/i915: Use REG_BIT() & co. for gen9+ timestamp freq registers
  drm/i915: Reoder gen9+ timestamp freq register bits

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   5 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  89 +++++-------
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  10 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |   5 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 136 ++++++++----------
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  56 ++++----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   7 +-
 7 files changed, 135 insertions(+), 173 deletions(-)

-- 
2.45.3

