Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BC02A89D5
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 23:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBBD6E841;
	Thu,  5 Nov 2020 22:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C426E0F6
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 22:31:57 +0000 (UTC)
IronPort-SDR: /PPa62CJ124bl7qvmIVze0UTh671V9e0M+THrWCcKaH9VFDaL4ETq5rwp2o5KZDCiTUk5eQQzv
 tG/anNXm4oAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="233637445"
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="233637445"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 14:31:56 -0800
IronPort-SDR: 0koo26MUTR7v1+4o16RpqS5nOvUSgVLA7liLGfKJnxL54Iamgcc7mDaKejIwPwU+cQ/Lm1z3Pv
 0Ex2+G0f/8dA==
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="321379371"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 05 Nov 2020 14:31:56 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 14:33:52 -0800
Message-Id: <20201105223359.28203-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/7] Final prep series for bigjoiner
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Addressed all review comments in this, sending this to get final
CI results

Maarten Lankhorst (2):
  drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
  drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.

Manasi Navare (5):
  drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner
    modes
  drm/i915: Move encoder->get_config to a new function
  drm/i915/dp: Add a wrapper function around get_pipe_config
  drm/i915: Pass intel_atomic_state instead of drm_atomic_state
  drm/i915/dp: Add from_crtc_state to copy color blobs

 drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_atomic.h   |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 117 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
 .../drm/i915/display/intel_display_types.h    |  11 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  88 ++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/intel_pm.c               |  76 ++++++------
 11 files changed, 206 insertions(+), 108 deletions(-)

-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
