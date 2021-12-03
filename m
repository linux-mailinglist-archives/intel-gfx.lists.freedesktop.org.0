Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AE3466E94
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 01:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40E96E073;
	Fri,  3 Dec 2021 00:39:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BE4F6E073
 for <Intel-GFX@lists.freedesktop.org>; Fri,  3 Dec 2021 00:39:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="237106161"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="237106161"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 16:39:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="655572240"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2021 16:39:25 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu,  2 Dec 2021 16:39:24 -0800
Message-Id: <20211203003924.3120587-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v69.0.0
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

The following changes since commit b0e898fbaf377c99a36aac6fdeb7250003648ca4:

  linux-firmware: Update firmware file for Intel Bluetooth 9462 (2021-11-23 12:31:45 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v69

for you to fetch changes up to 36c3001997776f4e6b8225a110849c7f61a51acb:

  i915: Add GuC v69.0.0 for all platforms (2021-12-02 16:16:09 -0800)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v69.0.0 for all platforms

 WHENCE                   |  30 ++++++++++++++++++++++++++++++
 i915/adlp_guc_69.0.0.bin | Bin 0 -> 356992 bytes
 i915/bxt_guc_69.0.0.bin  | Bin 0 -> 216128 bytes
 i915/cml_guc_69.0.0.bin  | Bin 0 -> 217024 bytes
 i915/dg1_guc_69.0.0.bin  | Bin 0 -> 324864 bytes
 i915/ehl_guc_69.0.0.bin  | Bin 0 -> 344576 bytes
 i915/glk_guc_69.0.0.bin  | Bin 0 -> 216640 bytes
 i915/icl_guc_69.0.0.bin  | Bin 0 -> 344576 bytes
 i915/kbl_guc_69.0.0.bin  | Bin 0 -> 217024 bytes
 i915/skl_guc_69.0.0.bin  | Bin 0 -> 216064 bytes
 i915/tgl_guc_69.0.0.bin  | Bin 0 -> 344128 bytes
 11 files changed, 30 insertions(+)
 create mode 100644 i915/adlp_guc_69.0.0.bin
 create mode 100644 i915/bxt_guc_69.0.0.bin
 create mode 100644 i915/cml_guc_69.0.0.bin
 create mode 100644 i915/dg1_guc_69.0.0.bin
 create mode 100644 i915/ehl_guc_69.0.0.bin
 create mode 100644 i915/glk_guc_69.0.0.bin
 create mode 100644 i915/icl_guc_69.0.0.bin
 create mode 100644 i915/kbl_guc_69.0.0.bin
 create mode 100644 i915/skl_guc_69.0.0.bin
 create mode 100644 i915/tgl_guc_69.0.0.bin
