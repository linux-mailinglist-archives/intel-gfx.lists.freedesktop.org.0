Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25E49A64A9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 12:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BA3F10E472;
	Mon, 21 Oct 2024 10:49:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J2OwL/QD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06F310E472
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2024 10:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729507758; x=1761043758;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y4dO5oZBjqzwRQxl/2O2HkgFNNQYW6RhcC0Nuoxxq+U=;
 b=J2OwL/QDyr0ewiU3Nd8nXGisdjHP4caVonqyrXWgZfKOzVtwAmSa3dUH
 TPvXJcP2XrOYRaoxsJ1x1WQnqHfUe47JoSobo5Zo9A8ir5q4xMnCRlRzD
 mvzYdBuvM7JVEDZQ3BCdYhNhhi33dUcF5xWgdf06LxoEfNQnHQQtblO+I
 owGkOUFehskqjet5x7WPm0Pj5lf750X3m2StcaKTUpyCDbn7m6os5iOsC
 MVRuFUG49dK8jJpHyGTqqzPRDHaqHE8ARWOkV6vriTuaSVGrcEGDZy3Jm
 rgklFrcFhQTFeqiIjbWopVML+5tNYgRoltV7NpfSD+jNMD9tmeND5Yxhw A==;
X-CSE-ConnectionGUID: IguXm6UbTuylHXYpDGs6kQ==
X-CSE-MsgGUID: uQU8hGY+Rgyxc8wOT59S0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="28439934"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="28439934"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 03:49:17 -0700
X-CSE-ConnectionGUID: cKshuGjTRl6gFezWnZZUag==
X-CSE-MsgGUID: s6DaE54FTRWPzPiyFg3X7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84310714"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 03:49:16 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 0/3] Add AS_SDP to fastset
Date: Mon, 21 Oct 2024 16:20:57 +0530
Message-ID: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
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

Mitul Golani (3):
  drm/i915/vrr: Update vrr.vsync_{start,end} computation
  drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh rate
  drm/i915/dp: Compute as_sdp based on if vrr possible

 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 ++---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++------------
 3 files changed, 15 insertions(+), 19 deletions(-)

-- 
2.46.0

