Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D57854DE63
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84EE6113DCD;
	Thu, 16 Jun 2022 09:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFAC3113DCB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372906; x=1686908906;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gQsgBNcsqjKkW+FOwdRrh6waQZ1sqKo755vGnUuqEtM=;
 b=TQ+C/dny9H0LeewB2d1GBfzjf4nY5KfaHOTCxS9mGYEvLY/fUwJg5FYm
 npszCrLgqfsRMp0BhkbGdyV8v2uteSksyhMpnmtldR1bSk1vJ+8FLkTow
 9PfMs/UmPLy/Kr3IWZBwtwR5CwqHH9dHYYx3oPo8DdyeTXPqNnW3dMnub
 sWCcsDiL1Tf/I4E8nwQxl2euIErDb7suOz1HSRr2bIUPHlnAj0E+lSi7Q
 xGVRNeWVxBOf0lKpIZ1e55J/F5lQHI4Mfw0nNrV7UJLxczCNQOljq0KNd
 7PIjlU9rWd6mmLuEcciBPUX4z2titUntSyuG71COPIBA/ufbCtF/2N3hF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="340867115"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="340867115"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641468505"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:10 +0300
Message-Id: <cover.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915: drm/i915/display: split out
 verification, hw readout and dump from intel_display.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of [1]. Address review comments, drop crtc state compare move, add hw
state readout&sanitization split, and sprinkle some struct
drm_i915_private *i915 cleanups on top.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/105156/


Jani Nikula (11):
  drm/i915/wm: move wm state verification to intel_pm.c
  drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
  drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
  drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
  drm/i915/display: split out modeset verification code
  drm/i915/display: split out crtc state dump to a separate file
  drm/i915/display: change who adds [] around crtc state dump context
    string
  drm/i915/display: rename dev_priv -> i915 in crtc state dump
  drm/i915/display: split out hw state readout and sanitize
  drm/i915/display: some struct drm_i915_private *i915 conversions
  drm/i915/display: convert modeset setup to struct drm_i915_private
    *i915

 drivers/gpu/drm/i915/Makefile                 |    3 +
 .../drm/i915/display/intel_crtc_state_dump.c  |  314 +++
 .../drm/i915/display/intel_crtc_state_dump.h  |   16 +
 drivers/gpu/drm/i915/display/intel_display.c  | 1680 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   18 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   88 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    5 +
 .../drm/i915/display/intel_modeset_setup.c    |  724 +++++++
 .../drm/i915/display/intel_modeset_setup.h    |   15 +
 .../drm/i915/display/intel_modeset_verify.c   |  246 +++
 .../drm/i915/display/intel_modeset_verify.h   |   21 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   43 +
 drivers/gpu/drm/i915/display/intel_snps_phy.h |    5 +-
 drivers/gpu/drm/i915/intel_pm.c               |  138 +-
 drivers/gpu/drm/i915/intel_pm.h               |   14 +-
 15 files changed, 1724 insertions(+), 1606 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h

-- 
2.30.2

