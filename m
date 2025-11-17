Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA5AC63FE0
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD9B610E1C4;
	Mon, 17 Nov 2025 12:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aRMxkCr4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101C310E1C4;
 Mon, 17 Nov 2025 12:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381383; x=1794917383;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+fvUikktBEJ+e5ZRE80DdA06K8LvY4w15XdHtzKKHcA=;
 b=aRMxkCr41XV5WCZy/Oze6xlGRJR/nmjrWPi6bU+GBHTWsU1IxoWZpKtv
 lF/K/sXg/Utb9BXXLcf3DHUuS4+4Yx5x1RO4SZSlK1gmzuz9WI6TqtiR5
 v2Q7NzxynLunIH2nphDlg01j39FTdMCD82J5WOg8+nzqJ811LfINbJu7H
 a1jRYShx0bS+41B4JcJMEulxRJhlVKT26lf1kPWxwYohZuw+Chc1KPltU
 6zzdODY8hOXlJUvrdffXrir/QrLauSczo6arL69490lIzgwKPVjudSIaU
 +V9DwN4lwtMZRVle1vlKtgErEsOqzW+FPG7uS5zI5gQNK9j55gWYVsHkc A==;
X-CSE-ConnectionGUID: 6tcYOTuRRF+sb2UcvIpznQ==
X-CSE-MsgGUID: EjcHDdvsRc6WVmyN7ABw6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945776"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945776"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:43 -0800
X-CSE-ConnectionGUID: tSyOpaHNQOiSIqpAaiwroQ==
X-CSE-MsgGUID: ibU+Qxi5QbKy/1cQipCP0A==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:41 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 0/8] CMTG enablement
Date: Mon, 17 Nov 2025 17:12:08 +0530
Message-Id: <20251117114216.1522615-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Common mode timing generator (CMTG) support is added LNL onwards.
Enable CMTG which will be needed by other fearure like dynamic dc
state enablement later. 

Testing ongoing, sending in advance for early feedback.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (8):
  drm/i915/cmtg: enable cmtg LNL onwards
  drm/i915/cmtg: cmtg set clock select
  drm/i915/cmtg: set timings for cmtg
  drm/i915/cmtg: program vrr registers of cmtg
  drm/i915/cmtg: program set context latency of cmtg
  drm/i915/cmtg: set transcoder mn for cmtg
  drm/i915/cmtg: program sync to port for cmtg
  drm/i915/cmtg: enable cmtg ctl

 drivers/gpu/drm/i915/display/intel_cmtg.c     | 109 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |   3 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  27 +++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +
 7 files changed, 157 insertions(+), 2 deletions(-)

-- 
2.29.0

