Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96377743F55
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC21C10E4A8;
	Fri, 30 Jun 2023 16:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4470510E4A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688140864; x=1719676864;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U+RdXEVRBJXZKLWs1kSfE3pl6bxmdXjDFYQoWjOZTyw=;
 b=OK1Qn2L9KLd/VLWp3zLuzAJ6nW38cLpl0HVoVc7JP2qK1SWv50xRgJL1
 GqNy9dr6OH1kyV+4zk+LLHcggEmGEyuseHcaMfGSQ+hToSOzRGkLAMhn2
 Bdo61XcslvvYrR2tF8VGZFY5CBCrCfgTkQUevhfEWwnn0+Wc7aUlQLUPq
 tZJ7CqeFZYpnxnhPmNip+tKHEQuK5tjoHyeZ//V4MBvoI9KrTpwy0rtBS
 GOEGptzUhKFikJ9+JxpySImQ45xA6AUPuCp4dJJ7s0gsRhpElCNMK+L4d
 SdDyk9P0v9aup92tyGQPQyc/TMJaesxPK8SBgAERzpmHhgO+kqXUQCIj3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="365912555"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="365912555"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 08:58:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="695059390"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="695059390"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2023 08:58:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Jun 2023 18:58:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:58:40 +0300
Message-Id: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/6] drm/i915: Init DDI ports in VBT order
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

The remaining parts of the big VBT based DDI port initialization
series.

The main goal being to get the HDMI port working on many
ADL-P machines where the VBT declares both eDP and HDMI
for the same DDI port (B).

v3: Pimped commit messages
    Add intel_bios_encoder_port() and use it

Ville Syrjälä (6):
  drm/i915: Initialize dig_port->aux_ch to NONE to be sure
  drm/i915: Only populate aux_ch if really needed
  drm/i915: Remove DDC pin sanitation
  drm/i915: Remove AUX CH sanitation
  drm/i915/bios: Extract intel_bios_encoder_port()
  drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child
    device

 drivers/gpu/drm/i915/display/g4x_dp.c         |   5 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   9 +-
 drivers/gpu/drm/i915/display/icl_dsi.h        |   4 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 185 ++++--------------
 drivers/gpu/drm/i915/display/intel_bios.h     |   6 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  74 +++++--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  11 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 -
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  51 ++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  72 +++++--
 12 files changed, 231 insertions(+), 195 deletions(-)

-- 
2.39.3

