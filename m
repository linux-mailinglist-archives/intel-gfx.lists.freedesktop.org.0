Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9619F227F6F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 13:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C6289DBD;
	Tue, 21 Jul 2020 11:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE8489DBD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 11:57:26 +0000 (UTC)
IronPort-SDR: USzSLNjVOp8HTg4lsq17/mi+RNmc13iq6XFxTCkBuZnsJ9eJc/lL9mpF877CMBMGM3Bwrtt9jf
 Gu6b9gDFLWBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="148046757"
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="148046757"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 04:57:26 -0700
IronPort-SDR: sju0aWJ5vIclmQ+BWoL5tk80tYVhLgL6N4gtAqj3rmlJwNanNp/TaBEdCZbjkSoDY9MA6P2qcc
 Wip+RvImmZKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="318317719"
Received: from anusha.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 21 Jul 2020 04:57:26 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 04:43:19 -0700
Message-Id: <20200721114320.10494-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] PR for new DMC updates
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

Adding PR generated from drm-firmware repo for CI
to pull.

This has TGL DMC and also adding the RKL DMC
that got missed while adding the patch.

The following changes since commit 1d1c80b696539caa1d8a51d5f573012fbfa7eb5d:

  Update to 20200629111339 version to aligh SDK. Mainly fix DFS false alarm. (2020-07-16 10:43:12 -0400)

are available in the Git repository at:

  https://cgit.freedesktop.org/drm/drm-firmware/ TGL_RKL_DMC

for you to fetch changes up to f69ff907d2716a48dc84248772b2deccb033df7b:

  i915: Add RKL dmc v2.02 (2020-07-21 04:15:06 -0700)

----------------------------------------------------------------
Anusha Srivatsa (2):
      i915: Upgrade Tigerlake DMC to v2.07
      i915: Add RKL dmc v2.02

 WHENCE                   |   6 ++++++
 i915/rkl_dmc_ver2_02.bin | Bin 0 -> 18204 bytes
 i915/tgl_dmc_ver2_07.bin | Bin 0 -> 18732 bytes
 3 files changed, 6 insertions(+)
 create mode 100644 i915/rkl_dmc_ver2_02.bin
 create mode 100644 i915/tgl_dmc_ver2_07.bin

Anusha Srivatsa (1):
  drm/i915/tgl: Load DMC firmware v2.07 for Tigerlake

 drivers/gpu/drm/i915/display/intel_csr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
