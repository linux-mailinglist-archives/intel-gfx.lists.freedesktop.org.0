Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D18C3C18A6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B516E937;
	Thu,  8 Jul 2021 17:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360276E937
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:50:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="189240214"
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="189240214"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 10:50:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="428464698"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 08 Jul 2021 10:50:25 -0700
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Thu,  8 Jul 2021 10:50:25 -0700
Message-Id: <20210708175025.333468-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] PR for new GuC v62.0.3 and HuC v7.9.3 binaries
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
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
