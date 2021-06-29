Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08443B79F7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 23:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2656A6E043;
	Tue, 29 Jun 2021 21:36:57 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7AE76E043
 for <Intel-GFX@lists.freedesktop.org>; Tue, 29 Jun 2021 21:36:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="188622722"
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="188622722"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 14:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="558856856"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jun 2021 14:36:55 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 29 Jun 2021 14:36:54 -0700
Message-Id: <20210629213654.2684950-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for new GuC v62.0.3 and HuC v7.9.3 binaries
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

The following changes since commit d79c26779d459063b8052b7fe0a48bce4e08d0d9:

  amdgpu: update vcn firmware for green sardine for 21.20 (2021-06-29 07:26:03 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_62.0_huc_7.9

for you to fetch changes up to f4d897acd200190350a5f2148316c51c6c57bc9b:

  firmware/i915/guc: Add HuC v7.9.3 for TGL & DG1 (2021-06-29 14:20:03 -0700)

----------------------------------------------------------------
John Harrison (3):
      firmware/i915/guc: Add GuC v62.0.0 for all platforms
      firmware/i915/guc: Add GuC v62.0.3 for ADL-P
      firmware/i915/guc: Add HuC v7.9.3 for TGL & DG1

 WHENCE                   |  38 +++++++++++++++++++++++++++++++++++++-
 i915/adlp_guc_62.0.3.bin | Bin 0 -> 336704 bytes
 i915/bxt_guc_62.0.0.bin  | Bin 0 -> 199616 bytes
 i915/cml_guc_62.0.0.bin  | Bin 0 -> 200448 bytes
 i915/dg1_guc_62.0.0.bin  | Bin 0 -> 315648 bytes
 i915/dg1_huc_7.9.3.bin   | Bin 0 -> 589888 bytes
 i915/ehl_guc_62.0.0.bin  | Bin 0 -> 327488 bytes
 i915/glk_guc_62.0.0.bin  | Bin 0 -> 200000 bytes
 i915/icl_guc_62.0.0.bin  | Bin 0 -> 327488 bytes
 i915/kbl_guc_62.0.0.bin  | Bin 0 -> 200448 bytes
 i915/skl_guc_62.0.0.bin  | Bin 0 -> 199552 bytes
 i915/tgl_guc_62.0.0.bin  | Bin 0 -> 326016 bytes
 i915/tgl_huc_7.9.3.bin   | Bin 0 -> 589888 bytes
 13 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100644 i915/adlp_guc_62.0.3.bin
 create mode 100644 i915/bxt_guc_62.0.0.bin
 create mode 100644 i915/cml_guc_62.0.0.bin
 create mode 100644 i915/dg1_guc_62.0.0.bin
 create mode 100644 i915/dg1_huc_7.9.3.bin
 create mode 100644 i915/ehl_guc_62.0.0.bin
 create mode 100644 i915/glk_guc_62.0.0.bin
 create mode 100644 i915/icl_guc_62.0.0.bin
 create mode 100644 i915/kbl_guc_62.0.0.bin
 create mode 100644 i915/skl_guc_62.0.0.bin
 create mode 100644 i915/tgl_guc_62.0.0.bin
 create mode 100644 i915/tgl_huc_7.9.3.bin
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
