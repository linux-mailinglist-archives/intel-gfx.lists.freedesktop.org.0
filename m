Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16345557C88
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4C310EF93;
	Thu, 23 Jun 2022 13:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D9310EF93
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989767; x=1687525767;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dMF+FgTUH10VyL1KEOXTSQvcbEQXU2kUjGzvVx8O5h8=;
 b=XfsRH016F8BGLXCPIGwuJ57BvUk0Y1OHqbqC5AYHu6CHuvhn+HKReHO6
 GCd8KCD92AIv5YVwjEHcLn4mTBp+MYHBEWr60ePCUDxfhvdSNAzgZ7oS/
 87DJLG2OxKs1gNFxj/Hg/reIOl1GdHRifohR7BXzsQUEokE2WjH700bu2
 F0TeT16ENiaXi190amCR52ylSzIsRsEybnd6BNNyHYKHFsqaGAjLaFFNR
 8ZMMLqEZxts/V0BFKMolFDNVS07zhG5qLVjAGFWwPu/x2TPldwE1hg/gZ
 AYnD3XiI/lLTnDAGvTiWypVM9pPA+/9A3sNLgZhm1q4G6RtCW8Ru+8Zkl Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="278262425"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="278262425"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="592697809"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 23 Jun 2022 06:09:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:51 +0300
Message-Id: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: Display info cleanup
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

Collect more stuff under INTEL_INFO->display, and clean up
some messy stuff in the related register macros.

Ville Syrjälä (9):
  drm/i915: Move dbuf details to INTEL_INFO->display
  drm/i195: Move pipe_offsets[] & co. to INTEL_INFO->display
  drm/i915: Move display_mmio_offset under INTEL_INFO->display
  drm/i915: Make pipe_offsets[] & co. u32
  drm/i915: s/_CURSOR2/_MMIO_CURSOR2//
  drm/i915: Use _MMIO_TRANS2() where appropriate
  drm/i915: Use _MMIO_PIPE2() where appropriate
  drm/i915: Get rid of XE_LPD_CURSOR_OFFSETS
  drm/i915: Move the color stuff under INTEL_INFO->display

 drivers/gpu/drm/i915/display/intel_color.c    |  28 ++---
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 112 +++++++++---------
 drivers/gpu/drm/i915/i915_reg.h               |  47 ++++----
 drivers/gpu/drm/i915/intel_device_info.h      |  39 +++---
 drivers/gpu/drm/i915/intel_pm.c               |   8 +-
 7 files changed, 117 insertions(+), 121 deletions(-)

-- 
2.35.1

