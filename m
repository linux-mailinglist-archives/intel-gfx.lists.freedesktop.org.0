Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 182B46A85E3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5BF10E108;
	Thu,  2 Mar 2023 16:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D7110E108
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773488; x=1709309488;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hVkchP6g5npLeQZ/xgOvXnlmVn7L/Ywl4cjaTPIEmIM=;
 b=B3mOXtqH3UanXXo8jlB5yF3LCWiu+V3PnBZ/jnY79dkvS+gtKHtljQoU
 dytFtfAy/6PPOVXTAH+HbXTYUfMQrAFR2mvL9VwcpS7AUtNb/k/X0AYye
 Gpfph1nHng6sdGjJIHkp0MOoFzDEGcNtcqJ4WfVOqhA2UOFO7euNcvOf0
 3v7Od+yLwZm5vB4IgAgEr8gc1tq0+qEVbqjM+2IZ/paLoY8ay9M90A1Gn
 xj6RSyIcnuvDh6ZqV16+6mySLQ+ZJWvBr724qHr37psIqqrud1WGsmdbg
 2zJcITgbmYyH/UEA8z+TXgBZU7aFpR8M5tqIpQjlFWnd4Zp74f1EHnhNj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323057824"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323057824"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:10:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784888891"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784888891"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:10:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:10:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:10:06 +0200
Message-Id: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Check HPD during eDP probe
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

Carved out the HPD changes from by big DDI probe series
to get it tested separately.

Also tweaked a few things Jani pointed out during earlier
review, and tossed in one extra refactoring patch on top.

Ville Syrjälä (7):
  drm/i915: Populate dig_port->connected() before connector init
  drm/i915: Fix SKL DDI A digital port .connected()
  drm/i915: Get rid of the gm45 HPD live state nonsense
  drm/i915: Introduce <platform>_hotplug_mask()
  drm/i915: Introduce intel_hpd_enable_detection()
  drm/i915: Check HPD live state during eDP probe
  drm/i915: Reuse <platform>_hotplug_mask() in .hpd_detection_setup()

 drivers/gpu/drm/i915/display/g4x_dp.c    |  28 +-
 drivers/gpu/drm/i915/display/intel_ddi.c |  43 +--
 drivers/gpu/drm/i915/display/intel_dp.c  |  28 ++
 drivers/gpu/drm/i915/i915_irq.c          | 350 ++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_irq.h          |   2 +
 drivers/gpu/drm/i915/i915_reg.h          |  13 +-
 6 files changed, 334 insertions(+), 130 deletions(-)

-- 
2.39.2

