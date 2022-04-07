Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D954F8853
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 22:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B1E10E080;
	Thu,  7 Apr 2022 20:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206DC10E080
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 20:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649363446; x=1680899446;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wytMG2wq8h9VO/MoRodd53OuFxwL58vRwVUxyOeJiSU=;
 b=NKK+Htulge8012ilCeKz3QdoqXSWH/PUAPhu1A/sR7IrwPE4fyJFhsrt
 gpxGnavPYiiqhmha/BcgrMPqpmD4YqLMEKqIvUghHTBWBf9MVwRyKJo8c
 IEclMv8RkAohsvQ0DQDohSx6daBN/jPYZHNKZplCVcniea1OUomL0Ed5g
 /zMhyUZGlmQKHdAuPyHuqiyWvnu7JhU7HaEOU+LIWtvp37nPxFE5XGJiq
 C4j+LKXCvpEu7yig1MUYIUeX7eWmSFROG//aq1nMpuZYkiNJkEOTTcf9/
 oI4QpLmLoVQskvxbwUWGzCR5CbytNgb5r8lNqkaZb75CWtqYR1BM/Csmw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="248963498"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="248963498"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 13:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="525080359"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2022 13:30:45 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 13:30:45 -0700
Message-Id: <20220407203045.1017316-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.1.1
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

The following changes since commit 681281e49fb6778831370e5d94e6e1d97f0752d6:

  amdgpu: update PSP 13.0.8 firmware (2022-03-18 07:35:54 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v70.1.1_dg2

for you to fetch changes up to 0a2cdf9b1b74322bf90154d316434e2b0ec15357:

  i915: Add GuC v70.1.1 for DG2 (2022-04-07 13:15:01 -0700)

----------------------------------------------------------------
John Harrison (2):
      i915: Add GuC v70.1.1 for all platforms
      i915: Add GuC v70.1.1 for DG2

 WHENCE                   |  33 +++++++++++++++++++++++++++++++++
 i915/adlp_guc_70.1.1.bin | Bin 0 -> 289472 bytes
 i915/bxt_guc_70.1.1.bin  | Bin 0 -> 206464 bytes
 i915/cml_guc_70.1.1.bin  | Bin 0 -> 206976 bytes
 i915/dg1_guc_70.1.1.bin  | Bin 0 -> 265152 bytes
 i915/dg2_guc_70.1.1.bin  | Bin 0 -> 365568 bytes
 i915/ehl_guc_70.1.1.bin  | Bin 0 -> 274496 bytes
 i915/glk_guc_70.1.1.bin  | Bin 0 -> 206784 bytes
 i915/icl_guc_70.1.1.bin  | Bin 0 -> 274496 bytes
 i915/kbl_guc_70.1.1.bin  | Bin 0 -> 206976 bytes
 i915/skl_guc_70.1.1.bin  | Bin 0 -> 206208 bytes
 i915/tgl_guc_70.1.1.bin  | Bin 0 -> 277440 bytes
 12 files changed, 33 insertions(+)
 create mode 100644 i915/adlp_guc_70.1.1.bin
 create mode 100644 i915/bxt_guc_70.1.1.bin
 create mode 100644 i915/cml_guc_70.1.1.bin
 create mode 100644 i915/dg1_guc_70.1.1.bin
 create mode 100644 i915/dg2_guc_70.1.1.bin
 create mode 100644 i915/ehl_guc_70.1.1.bin
 create mode 100644 i915/glk_guc_70.1.1.bin
 create mode 100644 i915/icl_guc_70.1.1.bin
 create mode 100644 i915/kbl_guc_70.1.1.bin
 create mode 100644 i915/skl_guc_70.1.1.bin
 create mode 100644 i915/tgl_guc_70.1.1.bin
