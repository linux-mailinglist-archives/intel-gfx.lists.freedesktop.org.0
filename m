Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 667CE3D20E8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 11:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BAF6EE80;
	Thu, 22 Jul 2021 09:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CF706EEA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 09:30:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="233418003"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="233418003"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 02:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="565021365"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2021 02:29:54 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 17:37:06 +0800
Message-Id: <20210722093711.32338-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210719072222.13369-1-shawn.c.lee@intel.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v2 0/5] MIPI DSI driver enhancements
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

v2:
- Check for dsc enable and slice count ==1 then allow to
  double confirm min cdclk value.
- Add more checking in dsi_dsc_compute_config() to avoid
  crtc_clock exceeds dev_priv->max_cdclk_freq.

Lee Shawn C (5):
  drm/i915/dsi: send correct gpio_number on gen11 platform
  drm/i915/jsl: program DSI panel GPIOs
  drm/i915/dsi: wait for header and payload credit available
  drm/i915/dsi: refine send MIPI DCS command sequence
  drm/i915: Get proper min cdclk if vDSC enabled

 drivers/gpu/drm/i915/display/icl_dsi.c       | 68 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 10 +++
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 46 ++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h              | 10 +++
 4 files changed, 106 insertions(+), 28 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
