Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2480985F796
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 12:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E24210E8ED;
	Thu, 22 Feb 2024 11:57:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LaX4XgDh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DE310E905
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 11:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708603069; x=1740139069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i5bBrrRM2BiwPaRgXxiK0bgQl22KhaUxTSwP4Pz3wQM=;
 b=LaX4XgDhoVr2I/5wLzKQzxMPaVfjwGGXAYq2bJmBWT58TczCGel0+xCj
 3q+iYlMVBDeRdkLNo96oPBMe9+dt1dJ0sBHAh89H0HSdj0zwx8it2mNJ9
 3c4tJUO655TT0JUS4YojG9BwXPTpQg6WZJ6JDQV4Q8t+WMN/aocxfrhJ7
 6sXDHGz8YCGClR6lY7Mg5c0FlxKEmE3wcwx2/x8vDw4ILgcEYjCWdHIqJ
 vu+ZDPD6v9/4dWRI2DBIR9Hr2PQgrqTFii3CiEBkI93Pl+koczvKC7iWP
 rSYl7oG91NOb9wlOqC3ABHH39wB9mssuKtZYQ8VlgAbxLvkRe1RVUBq0i w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2972933"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2972933"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5840012"
Received: from alaakso-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.43.250])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/5] IO and fast wake lines calculation and increase fw
 sync length
Date: Thu, 22 Feb 2024 13:57:23 +0200
Message-Id: <20240222115728.3371478-1-jouni.hogander@intel.com>
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

Use actual fast wake sync pulse count in calculation
Implement getter for IO buffer wake times and use that.
Better presentation on how these are calculated.
Use calculation for display version < 12 as well.

Also number of precharge pulses is increased by 2 pulses to fix
problems with certain panel models.

v2:
  - do not add function pointer
  - rename io_wake_time in if block to io_buffer_wake_time
  - rename get_io_wake_time to get_io_buffer_wake_time
  - use calculation for display version < 12 as well
  - split LunarLake IO buffer wake times as a separate patch

Jouni Högander (5):
  drm/i915/display: Make intel_dp_aux_fw_sync_len available for PSR code
  drm/i915/psr: Improve fast and IO wake lines calculation
  drm/i915/psr: Calculate IO wake and fast wake lines for DISPLAY_VER <
    12
  drm/i915/psr: Add IO buffer wake times for LunarLake and beyond
  drm/i915/display: Increase number of fast wake precharge pulses

 drivers/gpu/drm/i915/display/intel_dp_aux.c |  6 +--
 drivers/gpu/drm/i915/display/intel_dp_aux.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c    | 53 ++++++++++++++++-----
 3 files changed, 46 insertions(+), 14 deletions(-)

-- 
2.34.1

