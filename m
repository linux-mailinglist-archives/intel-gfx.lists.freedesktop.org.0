Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F114F29C8DD
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 20:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8B56EC23;
	Tue, 27 Oct 2020 19:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1308B6EC22
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 19:28:46 +0000 (UTC)
IronPort-SDR: jadKCnM1HYhkYTKRuGJ00ISKvOhw2IzQtNu3sOegZMT58efr61cZATl6UZp3WzwEoS4AWqVEc2
 rLLSv33kj9ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="147433122"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="147433122"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 12:28:46 -0700
IronPort-SDR: 0M9Jcxl7rirNLWdjni0XR4zUIFt5wb+o3QQy4Ad69igx3rV03Xqe9VCOcuiIBD9NIty+KSD/3f
 tY2ZTqHyU2ZA==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="318338878"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 27 Oct 2020 12:28:46 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 12:30:29 -0700
Message-Id: <20201027193034.28721-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Prep for Big joiner + Allow bigjoiner modes
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

Big joiner enabling prep

Maarten Lankhorst (2):
  drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
  drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.

Manasi Navare (3):
  drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner
    modes
  drm/i915/dp: Prep for bigjoiner atomic check
  drm/i915/dp: Call hw.adjusted_mode as hw_mode for clarity

 drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_atomic.h   |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 103 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
 .../drm/i915/display/intel_display_types.h    |  11 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  93 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/intel_pm.c               |  76 ++++++-------
 11 files changed, 188 insertions(+), 117 deletions(-)

-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
