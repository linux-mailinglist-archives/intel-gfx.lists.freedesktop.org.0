Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8099A87A87A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 14:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4ABC10E45D;
	Wed, 13 Mar 2024 13:32:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fo0RgbfU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9036010E908
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 13:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710336759; x=1741872759;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oWVT+3TLAdVjC2sib6DyTMRmYm1NLFyY3T3t12gk56Y=;
 b=fo0RgbfUS4L791ClGCsLjmF+tQ5FgI0CQRn68636e6MSTU2dVAYpibx6
 EYGxqPjs21OfFZyn9+on/OUzvgAynaKcu5Dxc0I7pTm4wOXwvjQwFXIys
 silQFZbKKiGfhaaVupX/6digsL95cx7U7Y3ouZum81sVI85+K7IVAp2b7
 UEfU92xbshzCSBxp7InVD9Y7dU2g+o4A0aEpKUF4c9+qMK2738io1PSrN
 QdOHKkpwsDA0YdpWHhvmDt+7lfdllHq7Gv43QlbUlY2I2MQ3Qi5ZnE0fm
 B6cbD39SVfakbDyipr+n7Sb0VjKX85Jv8cbBPlVtq/VdmAeDPxU3Jn0D5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="30537778"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="30537778"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11977906"
Received: from dgaudrex-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.209.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 0/4] IO and fast wake lines calculation and increase fw
 sync length
Date: Wed, 13 Mar 2024 15:32:17 +0200
Message-Id: <20240313133221.868391-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

This patch set is improving IO and fast wake lines calculation in PSR
code:

Use actual fast wake sync pulse count in calculation Implement getter
for IO buffer wake times and use that.  Better presentation on how
these are calculated.  Use calculation for display version < 12 as
well.

Also number of precharge pulses is increased by 2 pulses to fix
problems with certain panel models.

v6:
  - do not add lnl_io_wake_time helper
  - comment why pulse count is increased
v5:
  - s/get_io_buffer_wake_time/io_buffer_wake_time/ and use it directly in
    calculation
  - do not handle < 9 separately
  - add own helpers for skl, tgl and lnl io buffer wake times
v4:
  - initialize io/fast_wake_time for display version < 9
v3:
  - keep using int in intel_dp_aux_fw_sync_len
v2:
  - do not add function pointer
  - rename io_wake_time in if block to io_buffer_wake_time
  - rename get_io_wake_time to get_io_buffer_wake_time
  - use calculation for display version < 12 as well
  - split LunarLake IO buffer wake times as a separate patch

Jouni Högander (4):
  drm/i915/display: Make intel_dp_aux_fw_sync_len available for PSR code
  drm/i915/psr: Improve fast and IO wake lines calculation
  drm/i915/psr: Calculate IO wake and fast wake lines for DISPLAY_VER <
    12
  drm/i915/display: Increase number of fast wake precharge pulses

 drivers/gpu/drm/i915/display/intel_dp_aux.c |  9 +++-
 drivers/gpu/drm/i915/display/intel_dp_aux.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c    | 46 ++++++++++++++++-----
 3 files changed, 43 insertions(+), 13 deletions(-)

-- 
2.34.1

