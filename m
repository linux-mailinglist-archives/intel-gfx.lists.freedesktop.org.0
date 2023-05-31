Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C877D718329
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 15:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA7210E4E1;
	Wed, 31 May 2023 13:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785AE10E4E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 13:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685540891; x=1717076891;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fQWUYIi2Ld0RYiCWF+p+RYVSORaPeonbn9LTyS+6COE=;
 b=gJ72hXzLvD8dkdTq/UUqIyXJTdS1NUJAUPzq69G7A5MOHyKGSy3U5AHo
 IUEgWR6tJgjcKMtXAjL6iy/FtNiS65cdiccwOT+eSG9hvnlCGH4NjxmWL
 vv2fKeTVq5dk73nePVYomqFtoDqAZ6EIODdj/221xrEJsUQwHwa+ClWUY
 gQ1paTDnPEJDUWa1bW/YE1AAs3E7fUHY833/nKuejXkDsqC9UJLBAc0+n
 6xWulTobzHhMJID9mcDPgaXHHB1JPFlyaDcaRBvhVqVIxK+YKppq06mHW
 iSsqPl6sbMJQy2CMgVEyH4qF71bx1xMUmIM6h4iNx6x2/e4R9bsBOHHJ1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421008226"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="421008226"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 06:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736679845"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736679845"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 31 May 2023 06:48:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 May 2023 16:48:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:47:59 +0300
Message-Id: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915: Init DDI ports based on
 port_mask
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

v2: rebased due to intel_display_device.c

Ville Syrjälä (7):
  drm/i915: Remove bogus DDI-F from hsw/bdw output init
  drm/i915: Introduce device info port_mask
  drm/i915: Assert that device info bitmasks have enough bits
  drm/i915: Assert that the port being initialized is valid
  drm/i915: Beef up SDVO/HDMI port checks
  drm/i915: Init DDI outputs based on port_mask on skl+
  drm/i915: Convert HSW/BDW to use port_mask for DDI probe

 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  20 +++
 drivers/gpu/drm/i915/display/intel_crt.c      |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  32 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |  99 ++---------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +
 .../drm/i915/display/intel_display_device.c   | 155 ++++++++++++------
 .../drm/i915/display/intel_display_device.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |   2 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  20 ++-
 drivers/gpu/drm/i915/intel_device_info.c      |   9 +
 11 files changed, 208 insertions(+), 137 deletions(-)

-- 
2.39.3

