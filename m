Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D24596EB58
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 09:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238D910E803;
	Fri,  6 Sep 2024 07:00:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CgTjNwfK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D1F10E803
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 07:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725606048; x=1757142048;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DJ3Jax4PE49pdoDAyzq4a2ht3EXX9A3CRTaEDgcWTpQ=;
 b=CgTjNwfK51eMzq5nasB5PBarwLoRn+sTHeK/HpqlE2e765BvRkKHz6LP
 4n531nXe0fTWguB/dp1XTJKj6f7+EKZFYKRYkw7eqGxVlGBNaWixZYkBv
 da2bb0ZxggWSYXiJ4YL0FJBMKQAu+K1O/sKtTa3j/WRv6UoTpl/ZHcL3A
 Cl89pRcNyfMKmJhzybLA8h6pgTSspzc2e6CascEK0XHhbLRMOinuk3Dx/
 9YNUsoiNtqeMQr0E7CDGB4gBLUCnzKRU9O0dFLoZBbdfnKBbTSa1h5P2E
 Trtg4EbLLZfSvI9WDTmigN6r3d9+VHLgON8j+1I42aJKhhaneOmHVW8mf g==;
X-CSE-ConnectionGUID: uZowYr+SSYK/5N0TsDQZDg==
X-CSE-MsgGUID: BpqlCT93Q9ioBRf9wxCRkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="28103032"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="28103032"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:48 -0700
X-CSE-ConnectionGUID: AkOXetnrR/CvSYm+q6gWNw==
X-CSE-MsgGUID: a//M19X2Sua292+u539z1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70292494"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.244.116])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/4] DP2.1 Panel Replay Fixes
Date: Fri,  6 Sep 2024 10:00:29 +0300
Message-Id: <20240906070033.289015-1-jouni.hogander@intel.com>
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

v2:
  - remove TODO comment
  - use intel_attached_dp in link training code

Jouni Högander (4):
  drm/i915/display: Handle MST connector in intel_attached_dp
  drm/i915/display: Use intel_attached_dp instead of local
    implementation
  drm/i915/psr: Add connector debugfs files for MST connector as well
  drm/i915/psr: Do not wait for PSR being idle on on Panel Replay

 .../drm/i915/display/intel_display_types.h    |  5 +++-
 .../drm/i915/display/intel_dp_link_training.c | 30 +++++++------------
 drivers/gpu/drm/i915/display/intel_psr.c      | 19 +++---------
 3 files changed, 19 insertions(+), 35 deletions(-)

-- 
2.34.1

