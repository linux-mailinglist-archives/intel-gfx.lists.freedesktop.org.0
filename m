Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104269B6CD0
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 20:22:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3063A10E7EA;
	Wed, 30 Oct 2024 19:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfuifTIA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E086410E7E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 19:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730316172; x=1761852172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TglUPP5ec3NhfzNgMBjKHpOQ3uzEJabrKrmB1k5ByA4=;
 b=MfuifTIA582D8euc1xH6I7/D+abzr9l8GhDPxaTCzmC24i/FlGz21cDJ
 oALKRQfNiapNBJXsfu9SwxUbOiRwa69ileWp8cyxKCR3LM/pV0erUTdCZ
 oEwUtfxG/TQ3efpdVRoIBN20qi6tNbYQKjVNr5M9CA1AbYZsBjkLNQPSo
 eGhZ5kLkh6+WWLd5tVPsVWnGcCDgi9AK90AHc7VkAcTvnswEyRRENYJVn
 zqIZAi7XILSAlZUbqmAm2hrdDk+C1e+p7+dBEXZlQsJANiYXvixRIGK3N
 KGo5crcJTo/a43K49WobzMxrUtPrWdbd8HOrSSwNs0xkRsu+Fn8pMAYNX A==;
X-CSE-ConnectionGUID: UnCdos9rRuG+FDSBQ5T+xA==
X-CSE-MsgGUID: Qs1s+KIkQJGKPlVbArawYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="41435006"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41435006"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:41 -0700
X-CSE-ConnectionGUID: UVwDqaNnTbCyHe9JBAWsjA==
X-CSE-MsgGUID: mgbMkXFbQk661KluKfpslA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82521941"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 0/5] drm/dp_mst: Fix DDI function/DP2 config programming
Date: Wed, 30 Oct 2024 21:23:08 +0200
Message-ID: <20241030192313.4030617-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

This is v2 of [1] addressing the review comments as follows:

- Move the DP2 configuration enabling for both master and slave
  transcoders to intel_ddi_config_transcoder_func() and the disabling
  for slave transcoders to intel_ddi_disable_transcoder_func().
  (Patch 4, Jani)
- Disable the DP2 configuration for master transcoders as well.
  (Patch 5)

Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20241029191215.3889861-1-imre.deak@intel.com

Imre Deak (5):
  drm/i915/ptl/dp_mst: Fix slave transcoder enabling wrt. DDI function
  drm/i915/adlp+/dp_mst: Align slave transcoder enabling with spec wrt.
    DDI function
  drm/i915/dp_mst: Add a way to disable the DP2 config
  drm/i915/adlp+/dp_mst: Align slave transcoder sequences with spec wrt.
    DP2 config
  drm/i915/adlp+/dp_mst: Align master transcoder disabling with spec
    wrt. DP2 config

 drivers/gpu/drm/i915/display/intel_ddi.c    | 37 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_ddi.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  3 ++
 3 files changed, 29 insertions(+), 13 deletions(-)

-- 
2.44.2

