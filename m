Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 193A5AD6FCF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93FA10E7EB;
	Thu, 12 Jun 2025 12:12:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mA8MD/ej";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAD410E7E9;
 Thu, 12 Jun 2025 12:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730338; x=1781266338;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LlySYcKf4JmRGREnB4gOUI/icF7THZKufjSNyMonh4M=;
 b=mA8MD/ejv0zk9aEDB2DgInPVWLnfX529ZlmmxvU/erKBLcxRtvfbyutt
 0bm2cY32txqTH/cJ1XZUVwKrvVUPcbrfDYgdom7hJaW0sMXg0BkY4mnfC
 hgQ2iX+/7g9do1Sd1l/4nETdpuh1TsbfSyvB+UIrNghWVULMq9AZtd87f
 AKLjcjUSjlRaGCrx8m7kcBGi0xkzVtN793rv8CQz42xhYYOYnWC3w2+Vn
 rMRWhoP8tFmRIbA0nCP2RgRVW0Kp1z2sx4GXit+MgbMA23WpmP3hRLXgN
 2f+veYzevMG39P2WQ5qCN1xRYKw617J2acTVsgbQQqWtAyziIreGDEG8f A==;
X-CSE-ConnectionGUID: 8O7/iLZxQ1+0csky0k8V9A==
X-CSE-MsgGUID: NNdHidbmQEOfTx9CuRjfNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="63314775"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="63314775"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:18 -0700
X-CSE-ConnectionGUID: LHXm4puHR9yMgaR116d5HQ==
X-CSE-MsgGUID: mA2KvGrWQYahHtFQYhyjVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="178476759"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/16] drm/i915/display: make all global state opaque
Date: Thu, 12 Jun 2025 15:11:55 +0300
Message-Id: <cover.1749730224.git.jani.nikula@intel.com>
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

Hide all the structs that "derive" from struct intel_global_state inside
their respective implementation files.

Jani Nikula (16):
  drm/i915/wm: abstract intel_dbuf_pmdemand_needs_update()
  drm/i915/wm: add more accessors to dbuf state
  drm/i915/wm: make struct intel_dbuf_state opaque type
  drm/i915/bw: abstract intel_bw_pmdemand_needs_update()
  drm/i915/bw: relocate intel_can_enable_sagv() and rename to
    intel_bw_can_enable_sagv()
  drm/i915: move icl_sagv_{pre,post}_plane_update() to intel_bw.c
  drm/i915/bw: abstract intel_bw_qgv_point_peakbw()
  drm/i915/bw: make struct intel_bw_state opaque
  drm/i915/cdclk: abstract intel_cdclk_logical()
  drm/i915/cdclk: abstract intel_cdclk_min_cdclk()
  drm/i915/cdclk: abstract intel_cdclk_bw_min_cdclk()
  drm/i915/cdclk: abstract intel_cdclk_pmdemand_needs_update()
  drm/i915/cdclk: abstract intel_cdclk_force_min_cdclk()
  drm/i915/cdclk: abstract intel_cdclk_read_hw()
  drm/i915/cdclk: abstract intel_cdclk_actual() and
    intel_cdclk_actual_voltage_level()
  drm/i915/cdclk: make struct intel_cdclk_state opaque

 drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |   4 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 153 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_bw.h       |  53 ++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  93 +++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  50 ++----
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  41 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 134 +++++++--------
 drivers/gpu/drm/i915/display/skl_watermark.h  |  33 +---
 13 files changed, 336 insertions(+), 241 deletions(-)

-- 
2.39.5

