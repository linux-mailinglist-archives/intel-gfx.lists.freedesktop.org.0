Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 807B5A22864
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 06:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78A510E13B;
	Thu, 30 Jan 2025 05:19:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4DTVGnC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E9B10E13B;
 Thu, 30 Jan 2025 05:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738214354; x=1769750354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FrUs8gNlpEt+xrLW7LrLNGVA9svuxz40mH/t+IMp/Ow=;
 b=T4DTVGnCHqRHy/snVmRqyBaQvSohpLzlTpI90br/JO8jqjeuDV/i0IOK
 tuB1pOnlVLE7KcA0TpWZabsUFDM92M7oZTbhIPvTYFq6vvLAxOw+h+fql
 SaY61Bs/bIdZ0jscBubUYpw3rYFekaKcELkTS8QpTs8cC/1ZEm55HBiQ/
 gOgiCUCBO/ehDHLxgeydOu3bvLiYPtcyNzr+NrvFZdBaNDm6R+Aip2+Xk
 UNARfpbqILRf2ap3duoYs6EZwVfZFNe6GrwjEo/tSudh6jhmydJE848Xx
 acCJZRECQHM5dIbh5SZVJFwW6aSOBBFnRVPUyhgbix9Xsi79/gC6Oq9Nq g==;
X-CSE-ConnectionGUID: m+XlSUr2SiuazIDsAnP4hA==
X-CSE-MsgGUID: N+qxkbWOR2WTAqPKouQgzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="50133474"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="50133474"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 21:19:14 -0800
X-CSE-ConnectionGUID: nLTZoiQ8QFGdnT16/N8iGQ==
X-CSE-MsgGUID: 5aM4VYxIR2OQdnyw5csUsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="109060341"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 29 Jan 2025 21:19:11 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v6 0/6] Add AS_SDP to fastset
Date: Thu, 30 Jan 2025 10:46:03 +0530
Message-ID: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
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

vrr enable disable should happen with fastset, where
adptive sync SDP should not block it to full modeset.

Ankit Nautiyal (1):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP

Mitul Golani (5):
  drm/i915/vrr: Add crtc_state dump for vrr.vsync params
  drm/i915/vrr: Compute vrr.vsync_{start, end} during full modeset
  drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
  drm/i915/dp: Compute as_sdp based on if vrr possible
  drm/i915/display: Move as sdp params change to fastset

 .../drm/i915/display/intel_crtc_state_dump.c  |  5 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  8 +++---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 25 ++++++++-----------
 4 files changed, 19 insertions(+), 24 deletions(-)

-- 
2.48.1

