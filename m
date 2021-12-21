Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 928C147B675
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 01:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC52710EBCD;
	Tue, 21 Dec 2021 00:33:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A993C10ED71
 for <Intel-GFX@lists.freedesktop.org>; Tue, 21 Dec 2021 00:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640046810; x=1671582810;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fRBRqTxEx+BL3S0gUUc8sK1XSmUMURLrleL6ieCDm3Y=;
 b=l09T8Uw4WIcUqt2JhY1PeBFV3BfCSnwrl/He9S8uHwBbmQNvDLmG3QJG
 KRlUbcBrZcDPiIPs4pKQ5wAoaH/ElJNEi1COP0Je/K87C/8UzU11SJdzV
 2ToFLwiJBGwuWL+nmEvDb0ro3HEFhgBMaOjOPVtVb1usjHkGBiyWkh1aX
 yrDnu5i5S7RzHihZHrGVasHbMKGFyfHmWmIzsiyokAIO6pFt7WIbknJ1c
 /mR6c6DhD9xR2+imTvM8c9U3mrLxNR+6FWjSEw0E3xuCV3gxGjV0v69t2
 XtzF9hlOIPXi5ITfV7G4HwccpSkvHW5/0IPzW5+jVNDrbscYzWOFzhSvt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="240249056"
X-IronPort-AV: E=Sophos;i="5.88,221,1635231600"; d="scan'208";a="240249056"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 16:33:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,221,1635231600"; d="scan'208";a="613279068"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2021 16:33:29 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 20 Dec 2021 16:33:29 -0800
Message-Id: <20211221003329.1054464-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v69.0.3
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

  git://anongit.freedesktop.org/drm/drm-firmware guc_v69.0.3

for you to fetch changes up to 548b304a35b77cd43c1242e0eae68f775bd0df2a:

  i915: Add GuC v69.0.3 for all platforms (2021-12-15 13:28:54 -0800)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v69.0.3 for all platforms

 WHENCE                   |  30 ++++++++++++++++++++++++++++++
 i915/adlp_guc_69.0.3.bin | Bin 0 -> 356416 bytes
 i915/bxt_guc_69.0.3.bin  | Bin 0 -> 216768 bytes
 i915/cml_guc_69.0.3.bin  | Bin 0 -> 217664 bytes
 i915/dg1_guc_69.0.3.bin  | Bin 0 -> 323968 bytes
 i915/ehl_guc_69.0.3.bin  | Bin 0 -> 343360 bytes
 i915/glk_guc_69.0.3.bin  | Bin 0 -> 217216 bytes
 i915/icl_guc_69.0.3.bin  | Bin 0 -> 343360 bytes
 i915/kbl_guc_69.0.3.bin  | Bin 0 -> 217664 bytes
 i915/skl_guc_69.0.3.bin  | Bin 0 -> 216704 bytes
 i915/tgl_guc_69.0.3.bin  | Bin 0 -> 343296 bytes
 11 files changed, 30 insertions(+)
 create mode 100644 i915/adlp_guc_69.0.3.bin
 create mode 100644 i915/bxt_guc_69.0.3.bin
 create mode 100644 i915/cml_guc_69.0.3.bin
 create mode 100644 i915/dg1_guc_69.0.3.bin
 create mode 100644 i915/ehl_guc_69.0.3.bin
 create mode 100644 i915/glk_guc_69.0.3.bin
 create mode 100644 i915/icl_guc_69.0.3.bin
 create mode 100644 i915/kbl_guc_69.0.3.bin
 create mode 100644 i915/skl_guc_69.0.3.bin
 create mode 100644 i915/tgl_guc_69.0.3.bin
