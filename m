Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AE34D9C2B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E0910E45E;
	Tue, 15 Mar 2022 13:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AFD310E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350888; x=1678886888;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EP/BpLWdT0f2D2x7uV5qA8OcUA3CZRrIOyB2SFQweNA=;
 b=K2jgU5pFnGAgDEzbqunD/fzdm1R6vmHwmW3fNHPQ35Ccov7//CkzxHgV
 FtGurSVep5bukHysfmi/YD0s16jA/KovkhkCrOFPffNeqI2xzpQW6F+ug
 pOklKBtjGsH1otrM6KbJOhoGEOl+mg+ycDk66gZyKD50Xhho/loL9FwVv
 oisIYPxSX8PMM1Pma2TL1W46q6QMzvkrNt4g8xNeouuJ/YahDu5lRehZe
 ujTds4do0Gg9LrQmhES5Rx63mmvdVI27ynz2adVEwQc+Cweajr2dnP3wh
 MdBY4hW28kits7LNhbRNZWIpckon6a87U7Bq+AHoo5LHCiPaXISjlXr/d w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="319518803"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="319518803"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="598307508"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 15 Mar 2022 06:27:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:27:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:43 +0200
Message-Id: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: More DRRS work
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

A few more DRRS things:
* fix an oops I accidentally introduced
* avoid DRRS racing with regular atomic commits
* deal with bigjoiner
* other misc things

Ville Syrjälä (9):
  drm/i915: Put the downclock_mode check back into can_enable_drrs()
  drm/i915: Add missing tab to DRRS debugfs
  drm/i915: Fix DRRS frontbuffer_bits handling
  drm/i195: Determine DRRS frontbuffer_bits ahead of time
  drm/i915: Don't cancel/schedule drrs work if the pipe wasn't affected
  drm/i915: Schedule DRRS work from intel_drrs_enable()
  drm/i915: Do DRRS disable/enable during pre/post_plane_update()
  drm/i915: Deal with bigjoiner vs. DRRS
  drm/i915: s/enable/active/ for DRRS

 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 -
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_debugfs.c  |  17 ++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_drrs.c     | 118 +++++++++---------
 drivers/gpu/drm/i915/display/intel_drrs.h     |   9 +-
 6 files changed, 78 insertions(+), 79 deletions(-)

-- 
2.34.1

