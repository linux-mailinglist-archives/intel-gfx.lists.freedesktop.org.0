Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C80C3AF5DF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 21:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120916E3D6;
	Mon, 21 Jun 2021 19:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3DD06E3D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 19:14:17 +0000 (UTC)
IronPort-SDR: cu6TMYlTk0CbhG8Tlkf/Rb3gFI5v1Af2BANBkm+vChK9vxoA3CzEZ2PNnFblNxuPr1tmB6rv8Z
 a2ygN8qzKLMA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="292545246"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="292545246"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 12:14:16 -0700
IronPort-SDR: z/28WKebLxHcGP5pnHLfKBM5+2Y1RlUiwusDCMCZ/w/6b+0XEnxkWMUcQrYA6RSbxANlgjI1Ay
 gP4Ov0L2ln2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="406067944"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003.jf.intel.com with ESMTP; 21 Jun 2021 12:14:15 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Jun 2021 12:14:11 -0700
Message-Id: <20210621191415.29823-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/4] Pipe DMC bits
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

One change from previous verison is a fix of SKL
regression. Corner cases for stepping-substepping
combination was missing from fw_info_matches_stepping()
helper. Luckily SKL was the only platform in CI that came
under this category and DMC refused to load.

v2: SKL fix tested on SKL.

v3: Minor changes in Pipe DMC plugging patch
as suggested by Lucas
 
v4: Remove the sanity check for MMIO that no longer
apply to newer platforms.(Anusha)


Anusha Srivatsa (4):
  drm/i915/dmc: Introduce DMC_FW_MAIN
  drm/i915/xelpd: Pipe A DMC plugging
  drm/i915/adl_p: Pipe B DMC Support
  drm/i915/adl_p: Load DMC

 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 165 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  23 ++-
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 5 files changed, 123 insertions(+), 78 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
