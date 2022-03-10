Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 054484D3E8F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 02:06:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997A010E1F1;
	Thu, 10 Mar 2022 01:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E81810E1F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 01:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646874404; x=1678410404;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k4TLd48jd1HN/g1i7jMKdTvk6fh82DY0caJYSXYDF7M=;
 b=Vh1k6OqHS1iEnnHmE7awQxYSJ+AVlgcwKWjn7Wg65pbc/4iY74wdS0WR
 V9GYLX5IstZKE1468MXRl9Br3Gw9rTDF235YWb0ViMLf2RvOvFEVeq8C8
 UTKIPYAb/fXoR8qUJ6+qqysWLsxo+CKt1mC8LirfhD6igZLKSUjglF2vh
 LfAm24bVsTeS8tIz6U2jnaTbHblUozeERKs3xoKAu9rq6fcWFMymSDwih
 YrBxPx3QbGgWKNmJe0G6A0D2Kd2x9h+Ckig368MnI9cIsWIUAt8w7LLG0
 J6hOUfAmrk/TkTgw0IU4fO1Y0L9VLYneB8eTjMtFP2PB1DjDBZCzZ6JnG g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315846711"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="315846711"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 17:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="596480381"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2022 17:06:43 -0800
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 17:06:43 -0800
Message-Id: <20220310010643.205075-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.0.5
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit f011ccb490f952ea35e9ce4d73ca9b7d0d2453c3:

  linux-firmware: add firmware for MT7986 (2022-03-04 08:43:26 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v70.0.5_dg2

for you to fetch changes up to 850f9be3f587b63aa43da3f4b5b85399dfd67c1f:

  i915: Add GuC v70.0.5 for DG2 (2022-03-08 15:14:12 -0800)

----------------------------------------------------------------
John Harrison (2):
      i915: Add GuC v70.0.5 for all platforms
      i915: Add GuC v70.0.5 for DG2

 WHENCE                   |  33 +++++++++++++++++++++++++++++++++
 i915/adlp_guc_70.0.5.bin | Bin 0 -> 290496 bytes
 i915/bxt_guc_70.0.5.bin  | Bin 0 -> 206592 bytes
 i915/cml_guc_70.0.5.bin  | Bin 0 -> 207040 bytes
 i915/dg1_guc_70.0.5.bin  | Bin 0 -> 266112 bytes
 i915/dg2_guc_70.0.5.bin  | Bin 0 -> 365504 bytes
 i915/ehl_guc_70.0.5.bin  | Bin 0 -> 274944 bytes
 i915/glk_guc_70.0.5.bin  | Bin 0 -> 206912 bytes
 i915/icl_guc_70.0.5.bin  | Bin 0 -> 274944 bytes
 i915/kbl_guc_70.0.5.bin  | Bin 0 -> 207040 bytes
 i915/skl_guc_70.0.5.bin  | Bin 0 -> 206336 bytes
 i915/tgl_guc_70.0.5.bin  | Bin 0 -> 278400 bytes
 12 files changed, 33 insertions(+)
 create mode 100644 i915/adlp_guc_70.0.5.bin
 create mode 100644 i915/bxt_guc_70.0.5.bin
 create mode 100644 i915/cml_guc_70.0.5.bin
 create mode 100644 i915/dg1_guc_70.0.5.bin
 create mode 100644 i915/dg2_guc_70.0.5.bin
 create mode 100644 i915/ehl_guc_70.0.5.bin
 create mode 100644 i915/glk_guc_70.0.5.bin
 create mode 100644 i915/icl_guc_70.0.5.bin
 create mode 100644 i915/kbl_guc_70.0.5.bin
 create mode 100644 i915/skl_guc_70.0.5.bin
 create mode 100644 i915/tgl_guc_70.0.5.bin
