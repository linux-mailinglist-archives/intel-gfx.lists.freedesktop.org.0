Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0569569D233
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:44:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5264A10E730;
	Mon, 20 Feb 2023 17:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B852310E730
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915091; x=1708451091;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TbfxUaS/KWkOr6wIuc7np8yisBaoMLXLgLooS8slCM8=;
 b=YiIzFlDdlFzZ21Fx3/0gjZhHO45GX8unL0ZNWgSiKZsQLl+idAHL9/5C
 pnUZ6+8kRd1Ae4iN+ATLaZovvCZ6ajuTQ1cKkj5i6gyD5aDvzjiweE8Pe
 MtOrz51A93NezDP6VJZmSQ2Cb4OJG4DbdTY/wEq0P9cfWtFgSEfiq7Q4j
 WJKEZX1z13fs8rT+AoW+VPUCqXi/nvtclKDkWcXvKgbNGrrc77MpDIjc3
 RKQsPitQ/65iV+2Eu+DX+7swQUJdXMm9Cp+IeJ68yLrv0Fx9sN7a2fGTA
 VVUm+4AplKxzLuO20o/Br/sb8BJrD1y17tkk5UplkmnBMFFR7PcQtCRxu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085239"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085239"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:44:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701744921"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701744921"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:44:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:44:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:31 +0200
Message-Id: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/17] drm/i915: Init DDI ports in VBT order
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

I just wanted to init DDI ports in VBT child device order
without any up front assumptions about which conflicting
child device defition is valid. That is pretty much what
we need to do for the ADL laptops with the phantom eDP vs.
native HDMI on DDI B.

However that approach doesn't work for some of the weird
SKL boards that have a phantom eDP on DDI A+AUX A and
and a real DP->VGA converter on DDI E+AUX A. For those
I had to introduce HPD live status check during eDP init.

One of the remaining concerns I still have is what happens
when we encounter VBTs with more AUX CH/DDC pin conflicts?
I think what we might want to do eventually is ignore the
conflicts as much as possible, and just init everything
based on VBT, trusting HPD to take care of things in the
end. That of course does have certain issues wrt. connector
forcing, but dunno if we can avoid those at all.

Also I think we need to nuke all the platform default AUX
CH/DDC pin stuff, or at least only try to utilize those
only once we've consumed the VBT fully. 

Ville Syrjälä (17):
  drm/i915: Populate dig_port->connected() before connector init
  drm/i915: Get rid of the gm45 HPD live state nonsense
  drm/i915: Introduce <platoform>_hotplug_mask()
  drm/i915: Introduce intel_hpd_detection()
  drm/i915: Check HPD live state during eDP probe
  drm/i915: Sanitize child devices later
  drm/i915: Split map_aux_ch() into per-platform arrays
  drm/i915: Flip VBT DDC pin maps around
  drm/i915: Nuke intel_bios_is_port_dp_dual_mode()
  drm/i915: Remove bogus DDI-F from hsw/bdw output init
  drm/i915: Introduce device info port_mask
  drm/i915: Assert that device info bitmasks have enough bits
  drm/i915: Assert that the port being initialized is valid
  drm/i915: Beef up SDVO/HDMI port checks
  drm/i915: Init DDI outputs based on port_mask on skl+
  drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child
    device
  drm/i915: Convert HSW/BDW to use VBT driven DDI probe

 drivers/gpu/drm/i915/display/g4x_dp.c         |  34 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  23 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
 drivers/gpu/drm/i915/display/icl_dsi.h        |   6 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 380 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_bios.h     |  12 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      | 128 ++++--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  89 +---
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +
 .../gpu/drm/i915/display/intel_display_core.h |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  28 ++
 drivers/gpu/drm/i915/display/intel_dvo.c      |   2 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  20 +-
 drivers/gpu/drm/i915/i915_irq.c               | 363 +++++++++++++----
 drivers/gpu/drm/i915/i915_irq.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |  31 ++
 drivers/gpu/drm/i915/i915_reg.h               |  13 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   9 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 22 files changed, 756 insertions(+), 413 deletions(-)

-- 
2.39.2

