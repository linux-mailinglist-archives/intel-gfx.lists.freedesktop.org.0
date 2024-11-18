Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467CD9D138E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE7D89E1A;
	Mon, 18 Nov 2024 14:49:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IyUVFdJp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971FD10E4F0;
 Mon, 18 Nov 2024 14:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941354; x=1763477354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Bn2ARogyZddDPiV6JONXx4yCLgOL1GeroSYPCn10/pA=;
 b=IyUVFdJp87w5qzDgxhKDoAiC8RLj99hjEa6c40qVuF/pQYJrIECFIUur
 nRyfTYKAeeCgNfSlBC/ceU8zBrGuXWRPcCkQwu/Mzwmgm0g8FsBZHwv3C
 3S4HIXMoCe6/mVse0KycbbyP/ykiZYAf83A/NNFs34CQDgSG5YyLjYrnC
 GcXAdEue5emwIQlhcht1kBdiNPVnTOYW91XyYBZDd4hLw+3J1gIEa04fw
 DxO4Gp35NAbZq5As1Ym6NedBBAobig4ixha6b0ZdpDK+btJ5UWuu/Jfa4
 x7vlP+T/Y64QmfTu2B725xlLCRh9caViE2F/yQ5ZQil4hl+CE6ZjNnSN7 A==;
X-CSE-ConnectionGUID: BX612RIuRcKFJbgyjLJVvg==
X-CSE-MsgGUID: VHVB7mOZT0iIkzn0L9sZcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42414849"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="42414849"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:12 -0800
X-CSE-ConnectionGUID: DsWqV60qRH2wOvJZaveWPw==
X-CSE-MsgGUID: Bi58fETpRA6hxp/8SyRaMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="120184600"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/11] drm/i915: MST and DDI cleanups and refactoring
Date: Mon, 18 Nov 2024 16:48:55 +0200
Message-Id: <cover.1731941270.git.jani.nikula@intel.com>
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

I've accumulated a bunch of cleanups while preparing for 128b/132b SST
operation. Let's get them merged first.

BR,
Jani.

Jani Nikula (11):
  drm/i915/mst: pass intel_dp around in mst stream helpers
  drm/i915/mst: unify MST connector function naming to mst_connector_*
  drm/i915/mst: simplify mst_connector_get_hw_state()
  drm/i915/mst: unify MST topology callback naming to mst_topology_*
  drm/i915/ddi: use intel_ddi_* naming convention for encoder
    enable/disable
  drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to REG_BIT() and friends
  drm/i915/dp: refactor clear/wait for act sent
  drm/i915/ddi: rename temp to ddi_func_ctl in intel_ddi_read_func_ctl()
  drm/i915/ddi: split up intel_ddi_read_func_ctl() by output type
  drm/i915/ddi: refactor intel_ddi_connector_get_hw_state()
  drm/i915/ddi: simplify intel_ddi_get_encoder_pipes() slightly

 drivers/gpu/drm/i915/display/intel_ddi.c    | 319 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_ddi.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 161 +++++-----
 drivers/gpu/drm/i915/i915_reg.h             |  57 ++--
 4 files changed, 288 insertions(+), 257 deletions(-)

-- 
2.39.5

