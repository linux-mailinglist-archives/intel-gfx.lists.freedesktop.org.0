Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B02B472DAC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 14:44:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A169C89993;
	Mon, 13 Dec 2021 13:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 542D789993
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 13:44:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="237467597"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="237467597"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 05:44:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="518613941"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 13 Dec 2021 05:44:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Dec 2021 15:44:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Dec 2021 15:44:46 +0200
Message-Id: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915/fbc: More multi-FBC refactoring
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A bit more prep work towards multiple FBC instances.

Main changes since v1:
- More intel_ namespace
- per-crtc debugfs files
- a few other review comments addressed

Cc: Jani Nikula <jani.nikula@intel.com>                                                               

Ville Syrjälä (4):
  drm/i915/fbc: Parametrize FBC register offsets
  drm/i915/fbc: Loop through FBC instances in various places
  drm/i915/fbc: Introduce device info fbc_mask
  drm/i915/fbc: Register per-crtc debugfs files

 drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 254 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +
 .../drm/i915/display/skl_universal_plane.c    |  17 +-
 drivers/gpu/drm/i915/i915_drv.h               |   5 +-
 drivers/gpu/drm/i915/i915_pci.c               |  22 +-
 drivers/gpu/drm/i915/i915_reg.h               |  34 +--
 drivers/gpu/drm/i915/intel_device_info.c      |   4 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
 drivers/gpu/drm/i915/intel_pm.c               |  31 ++-
 10 files changed, 223 insertions(+), 154 deletions(-)

-- 
2.32.0

