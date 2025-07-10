Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B50B00CDA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 22:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC5A10E38A;
	Thu, 10 Jul 2025 20:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VM6V3Fxy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C5C10E235;
 Thu, 10 Jul 2025 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752178642; x=1783714642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LJtyARq8UBetxF2VCKB3bXnZ6Jolzl1XWriwtjMozM8=;
 b=VM6V3FxyLv9VvwXAj1UJTfqsWxijZ4D7eQWXrKK6ly+DNsLZPEZMP+mD
 KJsUo33HCwBRocMwrr1J3ZjiQ4o77X8Dstwj0erTRkOw1AbjO9UElt3qf
 JOWhQpjVPaynO4GT9U/0LjJHfPrTsl7RfqkmXA044WXNMLSB2pQkc3cbr
 W3rfchIzLtYk/yI3h4/UUYnL739q4SLvW3eYEAODC5SQX85j9NK4FrN4g
 3fUGSc+W3spnZYE+HwyMrYeXsQtt1IsZbrBpssEPvt2paRfhAYWtd6VJG
 aY31yzBBZQcdzenCOSHmfZj505ITNr2X4mm1xUcv4z+ccMWBmpGtL+fil A==;
X-CSE-ConnectionGUID: eB0K/ua8SgSyU4ObFvUOGQ==
X-CSE-MsgGUID: sqrvv2upRwCtoE5kNiLlLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54444531"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54444531"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 13:17:22 -0700
X-CSE-ConnectionGUID: cuBqhfDoS5GpOQAYc+48eQ==
X-CSE-MsgGUID: HCMrZAD2TIeNMdOfhdcxgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161877516"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 13:17:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 23:17:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915/dp: DP stuff
Date: Thu, 10 Jul 2025 23:17:11 +0300
Message-ID: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

A few DP related things:
- Fix 2.7 Gbps link training on g4x
- Adjust the idle pattern handling (most of this was part
  of my POST_LT_ADJ_REQ series earlier, but I reordered
  things to leave the actual POST_LT_ADJ_REQ support for
  later)
- shuffle the link training code a bit (again prep stuff
  for the POST_LT_ADJ_REQ support)

Ville Syrjälä (7):
  drm/i915/dp: Fix 2.7 Gbps DP_LINK_BW value on g4x
  drm/i915/dp: Don't switch to idle pattern before disable on pre-hsw
  drm/i915/dp: Clear DPCD training pattern before transmitting the idle
    pattern
  drm/i915/dp: Have intel_dp_get_adjust_train() tell us if anything
    changed
  drm/i915/dp: Move intel_dp_training_pattern()
  drm/i915/dp: Implement .set_idle_link_train() for everyone
  drm/i915/dp: Make .set_idle_link_train() mandatory

 drivers/gpu/drm/i915/display/g4x_dp.c         |  44 ++++--
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +
 .../drm/i915/display/intel_dp_link_training.c | 137 +++++++++---------
 .../drm/i915/display/intel_dp_link_training.h |   2 +-
 4 files changed, 110 insertions(+), 79 deletions(-)

-- 
2.49.0

