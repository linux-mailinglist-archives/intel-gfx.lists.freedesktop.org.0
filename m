Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CDA3CCE4F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 09:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309F56E09A;
	Mon, 19 Jul 2021 07:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4937F6E0A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 07:15:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="207891610"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="207891610"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 00:15:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="631816807"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2021 00:15:37 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jul 2021 15:22:17 +0800
Message-Id: <20210719072222.13369-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 0/5] MIPI DSI driver enhancements
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

*** BLURB HERE ***

Lee Shawn C (5):
  drm/i915/dsi: send correct gpio_number on gen11 platform
  drm/i915/jsl: program DSI panel GPIOs
  drm/i915/dsi: wait for header and payload credit available
  drm/i915/dsi: refine send MIPI DCS command sequence
  drm/i915: Get proper min cdclk if vDSC enabled

 drivers/gpu/drm/i915/display/icl_dsi.c       | 50 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 12 +++++
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 46 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h              | 10 ++++
 4 files changed, 90 insertions(+), 28 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
