Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DB79C0FC0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB12410E8D7;
	Thu,  7 Nov 2024 20:32:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jhP9DKX7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B55D210E8D4;
 Thu,  7 Nov 2024 20:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731011553; x=1762547553;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CJHTWb/zUxDyn7sb3C4PAvp7Lk7n0/5cRZ+7F33EB7U=;
 b=jhP9DKX7BU4Ke6AH+2rISqTpT2QCbAu0kRrAMfgQu237PxsckzJiTvJn
 +trxuULqHJ6WQceertY9cpIRrr3w/OYftjXehmHCLeUrsNttUpSQ5DQEQ
 fZyTOPjAqFi+5mzp5JHMatwg9m4evhycVhFO0CRVy7q7mYjInc1z41dyk
 f/mPnceAHi/IoLioSdw2Gtt5WY1BGtlsfTUIUmK2fYtNN+krrCBHftFRp
 QwU/HeaXNbp6X3odN5RqyH2zGlo+1NL+Cs++h/Fv8gZrI7rtr817v3YUG
 gY7aS1n/9TkuMGgfHvChhWfOeA7RxYtVPH4U6Hn3fKHu+EsTfABvF3C5K A==;
X-CSE-ConnectionGUID: o8AQGKsQQ32713IN5dctFA==
X-CSE-MsgGUID: aprUhWBgRO6MXemFAcqCJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41439129"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41439129"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:28 -0800
X-CSE-ConnectionGUID: 8+wA0jzQRGi7ht5BpFx7MA==
X-CSE-MsgGUID: LLCOOacASqiXEmEkS3J3DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="122738288"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 0/8] drm/i915/mst: cleanups, renames, clarifications
Date: Thu,  7 Nov 2024 22:32:13 +0200
Message-Id: <cover.1731011435.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

Brush up the DP MST code a little bit wrt naming and type/variable use
to make everything a bit clearer.

BR,
Jani.

Jani Nikula (8):
  drm/i915/mst: pass primary encoder to primary encoder hooks
  drm/i915/mst: rename intel_encoder to encoder
  drm/i915/mst: introduce to_primary_encoder() and to_primary_dp()
  drm/i915/mst: use primary_encoder in fake mst encoder creation
  drm/i915/display: make CHICKEN_TRANS() display version aware
  drm/i915/mst: convert to struct intel_display
  drm/i915/mst: change naming from fake encoders to MST stream encoders
  drm/i915/dp: add comments about hooks called from MST stream encoders

 drivers/gpu/drm/i915/display/intel_ddi.c     |  72 +--
 drivers/gpu/drm/i915/display/intel_ddi.h     |   2 -
 drivers/gpu/drm/i915/display/intel_display.c |  15 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 493 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     |   2 +-
 drivers/gpu/drm/i915/i915_reg.h              |   5 +-
 8 files changed, 307 insertions(+), 288 deletions(-)

-- 
2.39.5

