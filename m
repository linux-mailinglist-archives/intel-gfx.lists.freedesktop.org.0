Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 422896C22C7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E59110E666;
	Mon, 20 Mar 2023 20:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC57510E666
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679344435; x=1710880435;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DsN5/HBVGpmldEY/eCzUXFpM+NmiTeSb3m9MILb3svo=;
 b=gzGs7thpoMo1RcGAKlf27mnolWRS9Nek3j/IzVReBzL0ERM33NjNJv5q
 IMSW8jUnpnkZ11KayCGbR12ej++5O3AFPK3HrzKuikzTAfWWMz0ahINYW
 0LsdYBhZyViVgZlk2EflhQuGelPRQUbsSaGKe5PB5mGX7XRxWD9aflgAZ
 1/rDNvQAm8GMUFKNJh34UZqO/zIhAVxTYDZZZm6naNA6aPyd7Iud7oXoK
 MHE7UMgrEse7GqXSIHLry6c6+vG3ngFrx3auWnoHG4yBIRgtML1BUPfdd
 wRCXMmn/dPZ0HhYS5PxnDnZDHrb+C9NpiXp1tM/ZyLSKtuZdOxnnFV3nZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327148236"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327148236"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:33:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770339154"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770339154"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:33:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:33:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 22:33:46 +0200
Message-Id: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915/vrr: Allow fastset to
 enable/disable VRR
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

People would prefer to be able to enable/disable VRR without
a full modeset. Make it so.

Ville Syrjälä (6):
  drm/i915: Generalize planes_{enabling,disabling}()
  drm/i915/vrr: Eliminate redundant function arguments
  drm/i915/vrr: Make delayed vblank operational in VRR mode on adl/dg2
  drm/i915/vrr: Tell intel_crtc_update_active_timings() about VRR
    explicitly
  drm/i915/vrr: Relocate VRR enable/disable
  drm/i915/vrr: Allow VRR to be toggled during fastsets

 drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  5 --
 drivers/gpu/drm/i915/display/intel_display.c  | 48 ++++++++++++--
 .../drm/i915/display/intel_dp_link_training.c |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 12 +++-
 drivers/gpu/drm/i915/display/intel_vblank.h   |  3 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 64 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h      | 10 +--
 drivers/gpu/drm/i915/i915_reg.h               |  3 +-
 10 files changed, 101 insertions(+), 52 deletions(-)

-- 
2.39.2

