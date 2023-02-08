Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C95568E5A2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE38E10E677;
	Wed,  8 Feb 2023 01:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F3610E677
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821312; x=1707357312;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xOdF86He26kaI0qF2mJ7intdhDcJ5IC2YDHAskWOKXA=;
 b=B/bG/+70B/ovxP9FIT+Mn8UKxugANnFgDnLaqR9tblXih+oRyWbkE6Pv
 Q3eQt07chUU3gqd1kEA89T2uZgyrMXvxAGAu0bKFWERadcdZmuQFC3E1Z
 wHqzqqMT+zYqD6ozjpVf7sdJxUyK0MSTF7qQvp1HLM0J4nDH1RJhi3dYF
 IhKyR0bdeVFKOqsO2G9mlnN/E3B5fomLodx1eXDv6HI7Nm+XQSEF+azci
 cHWM/Xa76WfBB8PJrxToLog8IGMfYhXWAN8rgsipPua4Qdq6VNgeZZ09T
 Pu6mSIFbjljcKi7u+UgdZlRzmNKwuRYH+UFNNhKxDgsPtTcWbcGcwv3Uy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974333"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974333"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672691"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672691"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:54:58 +0200
Message-Id: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: Prep work for vbt.ports[] nukage
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

We need to get rid of the vbt.ports[] array. The main
reason being the bogus VBTs found on many ADL laptops
that declare both eDP+HDMI child devices for the same
port. The goal is to probe each of those in order and
stick to the first one that works. But the vbt.ports[]
array gets populated before we do any output probing 
and, being indexed with the port, can't handle any
aliasing child devices.

Here's a bit of prep work to reduce our reliance on
vbt.ports[], mainly by expanding the encoder->devdata
(a direct pointer to the correct vbt child device from
the encoder) usage.

Ville Syrjälä (10):
  drm/i915: Pass the whole encoder to hotplug_enables()
  drm/i915: Move variables to loop context
  drm/i915: Replace intel_bios_is_lspcon_present() with
    intel_bios_encoder_is_lspcon()
  drm/i915: Replace intel_bios_is_lane_reversal_needed() with
    intel_bios_encoder_lane_reversal()
  drm/i915: Replace intel_bios_is_port_hpd_inverted() with
    intel_bios_encoder_hpd_invert()
  drm/i915: Consult the registested encoders for the ICL combo PHY w/a
  drm/i915: Populate encoder->devdata for g4x+ DP/HDMI ports
  drm/i915: Pass devdata to intel_bios_port_aux_ch()
  drm/i915: Iterate all child devs in intel_bios_is_port_present()
  drm/i915: Use encoder->devdata in eDP init

 drivers/gpu/drm/i915/display/g4x_dp.c         |  12 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  12 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 128 ++++++------------
 drivers/gpu/drm/i915/display/intel_bios.h     |  14 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 .../i915/display/intel_display_power_well.c   |  15 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  30 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  59 ++++----
 10 files changed, 134 insertions(+), 146 deletions(-)

-- 
2.39.1

