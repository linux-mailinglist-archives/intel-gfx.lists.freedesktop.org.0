Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC9937B4DE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 06:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C22F56E040;
	Wed, 12 May 2021 04:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFCF6E02B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 04:21:53 +0000 (UTC)
IronPort-SDR: 8gEOrCt4AWKxDtmW1lNerbVpWS4I6ty5pEJDn1SHbzUnjfH3MyL+O2dHcj0EiOFQ0vyhD7Pp18
 +DOijblfANZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="260869167"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="260869167"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:52 -0700
IronPort-SDR: TRgVHAlTFWIPFW5KcFJi3RBhmjRrRS8S+sBtpVdTiMCP4YRquglLpRoB5f8DpRqGrst/GBuH34
 Dlv1sWH69IDA==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="409096185"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 21:21:37 -0700
Message-Id: <20210512042144.2089071-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/7] CI pass for reviewed XeLPD / ADL-P patches
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

Let's do a quick CI pass for the patches that have already been reviewed
so that we can go ahead and land them while we wait for reviews to roll
in on the remaining patches.

Clinton Taylor (1):
  drm/i915/adl_p: Add PCH support

Matt Roper (5):
  drm/i915/xelpd: Handle proper AUX interrupt bits
  drm/i915/xelpd: Define plane capabilities
  drm/i915/xelpd: Add XE_LPD power wells
  drm/i915/xelpd: Required bandwidth increases when VT-d is active
  drm/i915/xelpd: Add Wa_14011503030

Umesh Nerlige Ramappa (1):
  drm/i915/perf: Enable OA formats for ADL_P

 drivers/gpu/drm/i915/display/intel_bios.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |   6 +
 .../drm/i915/display/intel_display_power.c    | 428 +++++++++++++++++-
 .../drm/i915/display/intel_display_power.h    |   9 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +-
 .../drm/i915/display/skl_universal_plane.c    |  11 +-
 drivers/gpu/drm/i915/i915_irq.c               |  14 +-
 drivers/gpu/drm/i915/i915_perf.c              |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  32 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
 drivers/gpu/drm/i915/intel_pch.c              |   6 +-
 drivers/gpu/drm/i915/intel_pch.h              |   1 +
 14 files changed, 498 insertions(+), 23 deletions(-)

-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
