Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10850A3E930
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 01:39:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0110510E20A;
	Fri, 21 Feb 2025 00:38:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ImjvfJGT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A2C89209;
 Fri, 21 Feb 2025 00:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740098337; x=1771634337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OmyGzQ+TBF/pUwD3zl/09vNmJn9SjvCcr3Tm//raov4=;
 b=ImjvfJGTgqauEdz1O689TchadGM6YsxPnoroq2kudcu9aNey8gRI01kC
 TaR7jHFMpyud29CYAkMHAQtzpLEfvO6GfJolaRYMwKnmtD4eWTDQVslGv
 sFmJTehYRAuzc3cCcrN4DKEkfJ9M0ae3y64Ye9CheK1nPweTulGW+fA3U
 TPSlxl4VyUZgEylkMll8kav3y6AiouSxsQmXSEvlIaKkmHNKYHJ7o0XSA
 liOllRyH6H9rmTHzDmanXmWP8RmvbdQ4KRyuG0GMrsZNOgNx/1fKVO0nD
 1BFPBNnYAwBiVT4e29bAmlffAQ4zRYUn3bZ4pu2AZfeo07xKNWFpX5aZJ Q==;
X-CSE-ConnectionGUID: RI46f4MgTvyqdOGUdw6AEQ==
X-CSE-MsgGUID: 2JJDa7RQRbajJW/BqpaX8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="44688686"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="44688686"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:38:57 -0800
X-CSE-ConnectionGUID: NicTPUZDS6yHPxX1SgwLDg==
X-CSE-MsgGUID: aQpK0WkoS42WdxmSBp1qRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120446832"
Received: from mdroper-desk1.fm.intel.com ([10.1.39.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:38:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: matthew.d.roper@intel.com
Subject: [PATCH 0/4] Stop accessing display TIMESTAMP_OVERRIDE in GT code
Date: Thu, 20 Feb 2025 16:38:44 -0800
Message-ID: <20250221003843.443559-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
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

When determining the GT command streamer frequency, there are two
approaches used by i915 and Xe:

 - Derive the CS frequency from the crystal clock frequency register (or
   a per-platform hardcoded value).  This is supposed to be the method
   usually used (and the only method supported at all for Xe2 and later
   hardware).

 - Set the CS frequency to exactly the display refclk frequency.  This
   is supposedly a rare case, and is used only when a setting in
   CTC_MODE[0] indicates we should use this approach.

There's little/no documentation in the hardware specs about these
approaches (i.e., the display refclk approach is simply referred to as
"Broadwell Divide Logic" with no further explanation).  It seems most of
the logic here was originally inherited from the Windows driver a long
time ago and we've just been carrying it forward ever since.

Currently the second approach (use of display reference clock) is
accomplished by reading a display debug register (TIMESTAMP_OVERRIDE).
Given that the display code already has more straightforward logic for
determining display reference clock (either from strap registers, or
from a per-platform constant in cases where there's only one possible
value), it makes sense to just call the display code to get the
frequency rather than doing direct access to the display hardware inside
the GT driver.


Matt Roper (4):
  drm/i915/display: Make refclk fetching logic reusable
  drm/i915/gt: Replace TIMESTAMP_OVERRIDE readout
  drm/xe: Drop usage of TIMESTAMP_OVERRIDE
  drm/xe/sriov: Drop TIMESTAMP_OVERRIDE from Xe2 runtime regs

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 44 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 31 ++++---------
 drivers/gpu/drm/xe/display/xe_display.c       |  6 +++
 drivers/gpu/drm/xe/display/xe_display.h       |  4 ++
 drivers/gpu/drm/xe/xe_gt_clock.c              | 28 ++++--------
 drivers/gpu/drm/xe/xe_gt_sriov_pf_service.c   |  1 -
 7 files changed, 56 insertions(+), 59 deletions(-)

-- 
2.48.1

