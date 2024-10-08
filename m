Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE57995966
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 23:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9301E10E5E9;
	Tue,  8 Oct 2024 21:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XFssFdKF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4917E10E5E9;
 Tue,  8 Oct 2024 21:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728423832; x=1759959832;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I8Wc+GukXSx+hvba3un5728Cu2YT6fPhHmrEVvTQRbQ=;
 b=XFssFdKFMi6nkqZIckzy2Wyx4MTtEs16hhuWNekuULKi8fwFuhqCR4b3
 aPCpV0geKoo0bDMWUwzEWm8eo7PKrQjTxYBGz135IKngOGD1SM/s+wtuF
 yCDCNjj+LO1RkWe5mazu6MESlY1V+6jmh/FmrB8q07aIZe+oxbUCVkfPI
 pBuRjDvMyNOgTHjzgGqgD6zB8adj2zBUGb6KvxNZr9yvBYtub1IkQotWR
 titZEuPTreAJBkFamtmF3C7ovyIR7Wto/ZT/ANlQ48DUPyRAGQBdX1CvU
 ajRlJwA8rGt8DgolvanfVdgu6v1QO7GIoUrFMOn9xh6IXkPPEFEAE+HkL Q==;
X-CSE-ConnectionGUID: +6TKmhq7TVWTVMa31CPQJw==
X-CSE-MsgGUID: YzeDMB8OS0ibLNw39Bt1Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27831631"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="27831631"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 14:43:52 -0700
X-CSE-ConnectionGUID: uXPQkE9iRRKHU/YfV+SIYg==
X-CSE-MsgGUID: YmP0HgCWTKqQOd7JmYgrHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="76113091"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 Oct 2024 14:43:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 00:43:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: gen2 stuff
Date: Wed,  9 Oct 2024 00:43:45 +0300
Message-ID: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Finish the gen2 16->32 bit irq register conversion.

I also wanted to check if the damn thing was executing 
something, and figured I could just run intel_gpu_top.
Turns out it wasn't quite that simple because the pmu code
lacks gen2 support. So I had to remedy that (and fix
intel_gpu_top to even start on pre-snb, but that's a
userspace bug).

Ville Syrjälä (4):
  drm/i915/gt: Nuke gen2_irq_{enable,disable}()
  drm/i915/gt: s/gen3/gen2/
  drm/i915/irq: s/gen3/gen2/
  drm/i915/pmu: Add support for gen2

 .../gpu/drm/i915/display/intel_display_irq.c  | 50 +++++++++----------
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      | 23 ++-------
 drivers/gpu/drm/i915/gt/gen2_engine_cs.h      |  6 +--
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 24 ++++-----
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  7 +--
 drivers/gpu/drm/i915/i915_irq.c               | 36 ++++++-------
 drivers/gpu/drm/i915/i915_irq.h               |  6 +--
 drivers/gpu/drm/i915/i915_pmu.c               | 32 +++++++++---
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  8 +--
 10 files changed, 96 insertions(+), 98 deletions(-)

-- 
2.45.2

