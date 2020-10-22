Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D37296726
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81BFA6E422;
	Thu, 22 Oct 2020 22:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876226E409
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:43 +0000 (UTC)
IronPort-SDR: gIYwfWICH8xTFsseeuCcG6ESNC9vhooYj6NDkRDF9soOPccwUeT032T56SHxYIvqlfEXNqaYLN
 EFV06Bfk8CHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386824"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386824"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: ufeRGslsLp8HG/ILakOo/fq1odzAGGISh1n7IMAsufgV+BasClHhGtM6Kvy/xFwkuS1isCp9Et
 5CF7wPOrKpIg==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153974"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:26:58 -0700
Message-Id: <20201022222709.29386-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/11] VRR/Adaptive Sync enabling in i915
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

This patch series adds support for DP 1.4 feature of
Adaptive Sync also called as Variable Refresh rate
which is used to match the display rate with the render rate
by stretching or shrinking the blanking time of the frame.


Aditya Swarup (1):
  drm/i915/display/dp: Attach and set drm connector VRR property

Manasi Navare (10):
  drm/i915: Add REG_FIELD_PREP to VRR register def
  drm/i915/display/vrr: Create VRR file and add VRR capability check
  drm/i915/display/dp: Add VRR crtc state variables
  drm/i915/display/dp: Compute VRR state in atomic_check
  drm/i915/display/dp: Do not enable PSR if VRR is enabled
  drm/i915/display/vrr: Configure and enable VRR in modeset enable
  drm/i915/display/vrr: Send VRR push to flip the frame
  drm/i915/display/vrr: Disable VRR in modeset disable path
  drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink
  drm/i915/display: Add HW state readout for VRR

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  32 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |  11 +-
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   9 +
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   7 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |   5 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 160 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h      |  27 +++
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 11 files changed, 260 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.h

-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
