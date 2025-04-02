Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FBEA7862E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 03:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4AC10E0C8;
	Wed,  2 Apr 2025 01:39:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fm6r9OHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5696710E0C8;
 Wed,  2 Apr 2025 01:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743557970; x=1775093970;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JcBFbNRl84TT1v8XhXd59X3PtaXHybewq3F2dpN1RCE=;
 b=fm6r9OHCzeWHa8kNM1Hc+GQyHFNs+WS1eQ3TQYTRArhN4tmpVVAPrqPM
 9UKYJ1Gr8BQ9CJRHZh5xRRPMuxRitygXyLYDfzxFJa+Thxc6gbWfhd/HM
 jnkLG9lwGB7k9CY+vYy5pFc73U4Zsh7fU++wdUEDaFWBUTAJKcBaKd4Gs
 TY/L5HagmpEve1iFt4GNeObo5JTU9wzQOEevj3eBJqd1sa5Fb9pYgvjNr
 LJpo/KDHmoG01gYzV8vmZj5VP3rDBEeBt4lK6+Ul1wVstgdZOuC4YlR5U
 RgwodWCO9ekaCrIyCbrfEd4r82i0Oz2Tf4LITs6TfVQm1FD6BmTcF59Sn Q==;
X-CSE-ConnectionGUID: kseHdaSQQOWXZQrz2geF+w==
X-CSE-MsgGUID: GXyfq7nARxavdJ/VrkUtjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44796289"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="44796289"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 18:39:30 -0700
X-CSE-ConnectionGUID: QcZl+XX+TsqZJVqtLmyCwg==
X-CSE-MsgGUID: 036fg33YQVCaM+StutIi9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131538466"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa004.jf.intel.com with ESMTP; 01 Apr 2025 18:39:29 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH i-g-t 0/2] Add PMU tests for GT frequency
Date: Tue,  1 Apr 2025 18:39:10 -0700
Message-Id: <20250402013912.2981094-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
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

Also move some frequency helpers to lib.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  lib/xe_gt: Move get/set GT freq utils to lib
  tests/xe_pmu: Add frequency test

 lib/xe/xe_gt.c           |  59 ++++++++++++++
 lib/xe/xe_gt.h           |   2 +
 tests/intel/xe_gt_freq.c | 164 +++++++++++++++------------------------
 tests/intel/xe_pmu.c     |  93 ++++++++++++++++++++++
 4 files changed, 218 insertions(+), 100 deletions(-)

-- 
2.38.1

