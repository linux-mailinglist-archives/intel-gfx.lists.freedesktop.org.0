Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E224894752D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 08:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9CF10E117;
	Mon,  5 Aug 2024 06:25:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gm4an3dv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B249610E117
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 06:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722839154; x=1754375154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5SA3p5+ZPH5tjTeL/sLm6E6kMdlozVuxIkAc5PQeVd4=;
 b=gm4an3dv5kmrUfaOtZlBIfqEzMBg8JwbxfRGyjAOyWQsAlIY8SdanKZr
 YaiaY3NhfVp1qlqbFs1u/I14GzpfLxOxI3nvmuZdvKDdqm3eBXZLI5FZh
 mOyjqL+RN1gi4Akfe5q7NCEmNSozlpsXvm4YpuYPZ+sUb2DoT2Vzjb+bk
 TQZeBtUmMkhmaDLFrP/VmrYSvM0itbloJyD1DlPwBlJNxBSys2Tztg+/N
 ie7aY11TNXLN5uoT2l2ICvxo3KwQOqDY0rnBgmfADK42O4VOf3zifr0wk
 9O+Fyhhial8yfaUf1PG6imNU3s6IS2nmsFH6pJhvybVNfHvCA889lfloZ w==;
X-CSE-ConnectionGUID: vXg/4lYeQ7W52pm0KNsjoQ==
X-CSE-MsgGUID: T9b8AeaZThaVg0bHlcnhig==
X-IronPort-AV: E=McAfee;i="6700,10204,11154"; a="20921304"
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="20921304"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2024 23:25:54 -0700
X-CSE-ConnectionGUID: B+4rK1mdQfKSRdzxPZC6ww==
X-CSE-MsgGUID: ZTMPMHuIT6u8fhsIlDp89g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="56260795"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa006.jf.intel.com with ESMTP; 04 Aug 2024 23:25:53 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/2]  Consider joiner calculation for panel fitting
Date: Mon,  5 Aug 2024 11:55:36 +0530
Message-Id: <20240805062538.1844291-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

  Refactor pch_panel_fitting function to use local variables for
crtc_hdisplay and crtc_vdisplay. There is an issue when pch_pfit
and joiner gets enabled together. Moves the panel_fitting to later
stage after pipe_src width is adjusted for bigjoiner.

Nemesa Garg (2):
  drm/i915/display: Refactor pch_panel_fitting to use local variables
    for crtc dimensions
  drm/i915/display: Call panel_fitting from pipe_config

 drivers/gpu/drm/i915/display/intel_display.c  | 11 ++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 11 ++++--
 drivers/gpu/drm/i915/display/intel_panel.c    | 37 +++++++++++--------
 4 files changed, 41 insertions(+), 19 deletions(-)

-- 
2.25.1

