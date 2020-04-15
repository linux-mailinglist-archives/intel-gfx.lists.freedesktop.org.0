Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107AD1AAA59
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 16:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5100C6E9EA;
	Wed, 15 Apr 2020 14:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32F76E9EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 14:42:35 +0000 (UTC)
IronPort-SDR: w6TEH5mb6FMl2c87HkXCmxi/vQXo4hCAyWA4KHsA9nTkK8BmibZtzsQtZ7DPVpYH3HCS3nPGRv
 D4Li/TMOm65A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 07:42:35 -0700
IronPort-SDR: oUXU9LIXjSos+CYspTm2BhEVsX4QMtKmL8lEFz3XucuH4lgCtZmkZgZeGcl0AwEPwSJlNA03Lz
 tEj2Ijtehiqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="427454481"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 07:42:32 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 17:39:00 +0300
Message-Id: <20200415143911.10244-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v24 00/11] SAGV support for Gen12+
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For Gen11+ platforms BSpec suggests disabling specific
QGV points separately, depending on bandwidth limitations
and current display configuration. Thus it required adding
a new PCode request for disabling QGV points and some
refactoring of already existing SAGV code.
Also had to refactor intel_can_enable_sagv function,
as current seems to be outdated and using skl specific
workarounds, also not following BSpec for Gen11+.

Stanislav Lisovskiy (11):
  drm/i915: Introduce skl_plane_wm_level accessor.
  drm/i915: Add intel_atomic_get_bw_*_state helpers
  drm/i915: Prepare to extract gen specific functions from
    intel_can_enable_sagv
  drm/i915: Add pre/post plane updates for SAGV
  drm/i915: Use bw state for per crtc SAGV evaluation
  drm/i915: Separate icl and skl SAGV checking
  drm/i915: Add TGL+ SAGV support
  drm/i915: Added required new PCode commands
  drm/i915: Rename bw_state to new_bw_state
  drm/i915: Restrict qgv points which don't have enough bandwidth.
  drm/i915: Enable SAGV support for Gen12

 drivers/gpu/drm/i915/display/intel_bw.c       | 187 ++++++--
 drivers/gpu/drm/i915/display/intel_bw.h       |  24 +
 drivers/gpu/drm/i915/display/intel_display.c  |  21 +-
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 drivers/gpu/drm/i915/intel_pm.c               | 421 ++++++++++++++++--
 drivers/gpu/drm/i915/intel_pm.h               |   8 +-
 drivers/gpu/drm/i915/intel_sideband.c         |   2 +
 8 files changed, 565 insertions(+), 109 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
