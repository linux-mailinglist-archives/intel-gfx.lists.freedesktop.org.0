Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DD33AF9B7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 01:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBA56E44D;
	Mon, 21 Jun 2021 23:45:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20016E44C
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 23:45:16 +0000 (UTC)
IronPort-SDR: MPBvDVlmgffIVh8dYzLNLmCBR9me2xhbgL32BfJ9OlRx/ke3z2PJcrb07BnaxW+bfKybdn2LC/
 uXyZqnAtQuBQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="186643972"
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="186643972"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 16:45:16 -0700
IronPort-SDR: p04B/pavroGoD4YDAhGpbIpLlt2uS7Hiswc2pOik7zKapDRTNIMuLF+cRAt4JL5qjUZwjjoVRk
 9sDSIoLVupfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="473582517"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2021 16:45:16 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Jun 2021 16:45:13 -0700
Message-Id: <20210621234515.9433-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] DMC Updates for RKL, TGL
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

Adding PR to the the cover letter for CI to pull the
updates.
The following changes since commit 0f66b74b6267fce66395316308d88b0535aa3df2:

  cypress: update firmware for cyw54591 pcie (2021-06-09 07:12:02 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware rkl_tgl_dmc_updates

for you to fetch changes up to 885ee4dde3c760e7b8b8a43a5ba4056a7e66c788:

  drm/i915/firmware: Add DMC v2.02 for RKL (2021-06-21 16:06:07 -0700)

----------------------------------------------------------------
Anusha Srivatsa (2):
      drm/i915/firmware: Add V2.12 DC fo TGL
      drm/i915/firmware: Add DMC v2.02 for RKL

 WHENCE                   |   6 ++++++
 i915/rkl_dmc_ver2_03.bin | Bin 0 -> 18476 bytes
 i915/tgl_dmc_ver2_12.bin | Bin 0 -> 19760 bytes
 3 files changed, 6 insertions(+)
 create mode 100644 i915/rkl_dmc_ver2_03.bin
 create mode 100644 i915/tgl_dmc_ver2_12.bin

Anusha Srivatsa (2):
  drm/i915/firmware: Update to DMC v2.12 on TGL
  drm/i915/firmware: Update to DMC v2.03 on RKL

 drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
