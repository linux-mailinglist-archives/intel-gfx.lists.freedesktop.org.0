Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B963FD5EE
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 10:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13688908E;
	Wed,  1 Sep 2021 08:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753668908E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 08:51:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218695078"
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="218695078"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 01:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="510275892"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga001.jf.intel.com with ESMTP; 01 Sep 2021 01:51:57 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Date: Wed,  1 Sep 2021 16:54:40 +0800
Message-Id: <20210901085445.427-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 0/5] DSI driver improvement
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

Lee Shawn C (5):
  drm/i915/dsi: wait for header and payload credit available
  drm/i915/dsi: refine send MIPI DCS command sequence
  drm/i915: Get proper min cdclk if vDSC enabled
  drm/i915/dsi: Retrieve max brightness level from VBT
  drm/i915/dsi: Read/write proper brightness value via MIPI DCS command

 drivers/gpu/drm/i915/display/icl_dsi.c        | 50 +++++++++----------
 drivers/gpu/drm/i915/display/intel_bios.c     |  3 ++
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++
 .../i915/display/intel_dsi_dcs_backlight.c    | 23 ++++++---
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 5 files changed, 53 insertions(+), 34 deletions(-)

-- 
2.17.1

