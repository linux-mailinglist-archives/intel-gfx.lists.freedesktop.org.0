Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F72387385E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4CF10EE55;
	Wed,  6 Mar 2024 14:07:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6e0b2xD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC2A10EE55
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709734043; x=1741270043;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DDThIoJSv/03JtPq4FddZ9PJr0qxWXkxxO/zRs1RsZk=;
 b=E6e0b2xDMXKklWD7y+khLm1fghJA6u9ileSXY7hDqb2waJaNjM4DujAs
 sk7meoJVm/OlLWPYxMHFbT34DWXsRUWvRhSWRXiGN9JezE7VvoqbnFPRl
 LDBfN40dcilaMwGaLg/KZPKY5JtbzyIXIxPamdlyQ5Z3flqXdzVR8MBTZ
 UIyDcefdeU2skCoVAbB0csNeMiiDLOjE/3II9939GnJdcrj9sQGEcp5tD
 GMTEjxB7px6dQcBEV23ZiCl/hgvF4K1kKy5i1b6u2E6p0lIckqQNYWiEo
 iENW/K+GaKyltXoLICEAqMHGsY0cr+yzTfGoLQP4IhGUv7IyP2woI3gnZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="7288442"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="7288442"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32915199"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 0/6] drm/i915/mst: enable MST mode for 128b/132b
 single-stream sideband
Date: Wed,  6 Mar 2024 16:07:11 +0200
Message-Id: <cover.1709733981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

v3 of https://patchwork.freedesktop.org/series/129468/

Jani Nikula (6):
  drm/mst: read sideband messaging cap
  drm/i915/mst: improve debug logging of DP MST mode detect
  drm/i915/mst: abstract choosing the MST mode to use
  drm/i915/mst: use the MST mode detected previously
  drm/i915/mst: add intel_dp_mst_disconnect()
  drm/i915/mst: enable MST mode for 128b/132b single-stream sideband

 drivers/gpu/drm/display/drm_dp_mst_topology.c | 20 ++--
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 95 +++++++++++++------
 drivers/gpu/drm/nouveau/nouveau_dp.c          |  2 +-
 include/drm/display/drm_dp_mst_helper.h       | 23 ++++-
 5 files changed, 104 insertions(+), 37 deletions(-)

-- 
2.39.2

