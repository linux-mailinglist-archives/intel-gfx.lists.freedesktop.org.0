Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B24696B817
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 12:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8694B10E1DC;
	Wed,  4 Sep 2024 10:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWNEwPWF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3DB10E1DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 10:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725445130; x=1756981130;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tTM91MIKEM9+LxFkZamYIM6KiRoTrl5pMebqVO6lF2c=;
 b=PWNEwPWFV7FO6acCFerEaNzj2PYbzhuEblAPcbNuLw0ydEbwb0zoV6Ec
 IE1LQFel/iRBUW7ewHPzeK30MOkib1h1E6SkcAUDgIUvpxcGNp5suc3Mk
 lxN6kZI2Fzvt8WImkbO0c5TRZrQHSA2S2dljdMV260HT5dZh6mlB5mT7q
 417VSJ1M+sITYhJxHSn6kLVfEPtEiuW/prO0la+Y0a2LFWKEAaT9Yqc4X
 POGxi+wuxglkYC85GgOkolfW1otRwxafvR1Iud15pa5ykevFeNZgGAcF/
 UNypTyzaennz6hKdiKSOQI7c321I3Y/O/qsf5qxsl4zHwGVDF2zgWkYp0 Q==;
X-CSE-ConnectionGUID: Yuc1z+EtTWma0+IWSmxosw==
X-CSE-MsgGUID: 8prKyufrSZm48BT7h7tM7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27982981"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27982981"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:49 -0700
X-CSE-ConnectionGUID: 3tmCSB/dTAqgSxbJOf8gOw==
X-CSE-MsgGUID: IC8OeNeBR6+SV5Ho2pogfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69857802"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.79])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/3] DP2.1 Panel Replay Fixes
Date: Wed,  4 Sep 2024 13:18:31 +0300
Message-Id: <20240904101834.2415385-1-jouni.hogander@intel.com>
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

This patch set contains fixes for DP2.1 Panel Replay issues we have
found while testing the code using DP2.1 emulator. These issues are
related to DP2.1 monitor always being MST. Also wrong usage of
SRD_STATUS and PSR2_STATUS registers are fixed.

Jouni Högander (3):
  drm/i915/display: Handle MST connector in intel_attached_dp
  drm/i915/psr: Add connector debugfs files for MST connector as well
  drm/i915/psr: Do not wait for PSR being idle on on Panel Replay

 .../gpu/drm/i915/display/intel_display_types.h |  5 ++++-
 drivers/gpu/drm/i915/display/intel_psr.c       | 18 ++++--------------
 2 files changed, 8 insertions(+), 15 deletions(-)

-- 
2.34.1

