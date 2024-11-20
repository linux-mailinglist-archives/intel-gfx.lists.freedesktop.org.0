Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40A49D4048
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 17:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2394F10E791;
	Wed, 20 Nov 2024 16:41:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HH6tMgIC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0127110E7A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 16:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732120891; x=1763656891;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PldffIkoInPUXMGNHFsc7xTWaTxB95VV5MbVMqrzH7I=;
 b=HH6tMgICxmKC5wIG/lwYndVkOfnKD3CnCb6vfFhNOYxnXbDJ6ZK7pHyq
 v+u8w6RCEFj8QLbnSOxFgXYRfYpmKHAv6+XI/EWRgR785rZYEmdhKH87g
 wdFtvq1rEf1EQu2u7iYTlEmLNsugUc6lh/HoAukp1B/tUkllexOmDadQL
 qvEcsajCj9f4I7G8ALc32XRUxKaNJK9cp1TIM3bGuieZVUFc4REQYnQcW
 bnlgo6NsTeqYkLGOGAwmEnDlUpULRRHbDFpaGw9kb4pGAHG3uelJD12n0
 VcrkoEAojGE5iFhFvsGj/Ko6uzpY1EOkQGtAXAqeIHZZujQWv8+HCHrNU g==;
X-CSE-ConnectionGUID: fregS0meSWKg35IiOrXfSA==
X-CSE-MsgGUID: x94U8/Q0QUyeVGJItsSong==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49620263"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="49620263"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 08:41:26 -0800
X-CSE-ConnectionGUID: SCpTz7eFRZ64Y2BWBHoZxg==
X-CSE-MsgGUID: Fsy84xKjTtCluKNfzD9wNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="90137132"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Nov 2024 08:41:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Nov 2024 18:41:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/dsb: Try to fix CPU MMIO fails during legacy LUT
 updates
Date: Wed, 20 Nov 2024 18:41:19 +0200
Message-ID: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
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

The current approach of using non-posted DSB writes for the legacy
LUT updats is causing CPU MMIO accesses to fail while the palette
anti-collision logic is active. Try to avoid the problem by swithing
to double posted writes and speeding up the update in other ways.

Ville Syrjälä (4):
  drm/i915/dsb: Don't use indexed register writes needlessly
  drm/i915/color: Stop using non-posted DSB writes for legacy LUT
  drm/i915/dsb: Nuke the MMIO->indexed register write logic
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_color.c    | 81 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dsb.c      | 73 +++++++----------
 drivers/gpu/drm/i915/display/intel_dsb.h      |  2 +
 .../drm/i915/display/intel_modeset_verify.c   |  2 +
 4 files changed, 83 insertions(+), 75 deletions(-)

-- 
2.45.2

