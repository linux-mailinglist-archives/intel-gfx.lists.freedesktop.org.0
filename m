Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1B96FF7CD
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 18:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15BD10E557;
	Thu, 11 May 2023 16:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD3410E557
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 16:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683824143; x=1715360143;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hj6VNZ9vXTgMHsqpcKm612chRU64qCBgyH3fc24S6+4=;
 b=BJwILnqxf5VpagGUM0zMLZaZGXGP6oN4TwwvaywjXjewpH9S/HhUHEyM
 P4cGK98m3FgLwJTjNQ7btI6yhzVZR4Ms25td/xgmMPMFTBJK8UEVrHSI5
 YC5JlXUJCXYJvJQ3isUhHG7hMAUYDX0vYmcN48BwRz1W8ep/xl4uX7eov
 c+drhz4kweuYr6/SEvE8XxH5o+psBtba0rixZG0R8em76e+NDDba5Tj0r
 0zrYLHwMgtHToZ01XaWzsnld/356mt50V731Swmx90S+a40CSNolcdeX2
 65tpeL+YaSJFawV4IRXR50MCG8Coyba+8ZahzKSC4TpZYMVkFx9H0/c6D Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="348042937"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="348042937"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="824049588"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="824049588"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 11 May 2023 09:55:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 19:55:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 19:55:27 +0300
Message-Id: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Init DDI ports based on port_mask
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Introduce port_mask into the device info and utilize it
it initalize DDI ports instead of hand rolling each
intel_ddi_init() call per platform+port.

This is an intermediate step towards initializing
DDI/DP/HDMI/DSI ports purely based on VBT information.

Ville Syrjälä (7):
  drm/i915: Remove bogus DDI-F from hsw/bdw output init
  drm/i915: Introduce device info port_mask
  drm/i915: Assert that device info bitmasks have enough bits
  drm/i915: Assert that the port being initialized is valid
  drm/i915: Beef up SDVO/HDMI port checks
  drm/i915: Init DDI outputs based on port_mask on skl+
  drm/i915: Convert HSW/BDW to use port_mask for DDI probe

 drivers/gpu/drm/i915/display/g4x_dp.c        |   3 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c      |  20 ++++
 drivers/gpu/drm/i915/display/intel_crt.c     |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |  30 ++++++
 drivers/gpu/drm/i915/display/intel_display.c | 103 ++++---------------
 drivers/gpu/drm/i915/display/intel_display.h |   2 +
 drivers/gpu/drm/i915/display/intel_dvo.c     |   2 +
 drivers/gpu/drm/i915/display/intel_sdvo.c    |  20 +++-
 drivers/gpu/drm/i915/i915_pci.c              |  33 ++++++
 drivers/gpu/drm/i915/intel_device_info.c     |   9 ++
 drivers/gpu/drm/i915/intel_device_info.h     |   1 +
 11 files changed, 136 insertions(+), 89 deletions(-)

-- 
2.39.3

