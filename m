Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3B5295808
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 07:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81B66F3AA;
	Thu, 22 Oct 2020 05:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622536E199
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 05:40:53 +0000 (UTC)
IronPort-SDR: XYGEGWjX2GW8WVQUvts51o6T73fIWggsk3S6aV4bj+nL03BaKKNdLrxw6tsytbHTkLFWNVudpK
 lDcb+dqlzTDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="146768359"
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="146768359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 22:40:53 -0700
IronPort-SDR: RLJHc6TPijl8lm+JDN2R6qwVoDInHsQKa/vlMYvyXhXOqW98fO1pjtgoU4aklavhnvTOzsFEBC
 uj1kXsbf/PUw==
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="523012876"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 21 Oct 2020 22:40:52 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 22:42:11 -0700
Message-Id: <20201022054223.25071-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 00/12] Big joiner enabling
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

Thsi series has all the previous review commenst addressed
and Patches split into smaller patches for cleaner bisect.

Maarten Lankhorst (7):
  HAX to make DSC work on the icelake test system
  drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
  drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
  drm/i915: Try to make bigjoiner work in atomic check
  drm/i915: Link planes in a bigjoiner configuration, v3.
  drm/i915: Add bigjoiner aware plane clipping checks
  drm/i915: Add debugfs dumping for bigjoiner, v3.

Manasi Navare (5):
  drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner
    modes
  drm/i915/dp: Prep for bigjoiner atomic check
  drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
  drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
  drm/i915: HW state readout for Bigjoiner case

 drivers/gpu/drm/drm_dp_helper.c               |   4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_atomic.h   |   3 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c | 113 ++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  68 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 922 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |  23 +-
 .../drm/i915/display/intel_display_debugfs.c  |  29 +-
 .../drm/i915/display/intel_display_types.h    |  32 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 140 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 201 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   6 +-
 drivers/gpu/drm/i915/intel_pm.c               |  96 +-
 include/drm/drm_dp_helper.h                   |   1 +
 20 files changed, 1245 insertions(+), 438 deletions(-)

-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
