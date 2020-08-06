Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434CF23E45F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 01:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390976E91D;
	Thu,  6 Aug 2020 23:30:19 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7CCE6E91D
 for <Intel-GFX@lists.freedesktop.org>; Thu,  6 Aug 2020 23:30:18 +0000 (UTC)
IronPort-SDR: bIbzMUPZTBnJyOBlT7UDga+ud2LoyadlP0b5UePVh8ipkcHswO0ZhgI1Ytf9F/fO4YIV5mlLd5
 ZiCoDo9bFUlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="214485486"
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="214485486"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 16:30:18 -0700
IronPort-SDR: GISkV0FAbb5VZwOc6T1MzrGYhKMzIyuTYVNcRyATWuUa2prtGJ8BLZI6C4LzChRfVk3/21FzXG
 EKZxfDRskMcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="289440536"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga003.jf.intel.com with ESMTP; 06 Aug 2020 16:30:18 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu,  6 Aug 2020 16:31:32 -0700
Message-Id: <20200806233132.113267-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for new v45.0.0 GuC binaries
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

The following changes since commit 2b823fc2568fc354551a63c37f5f5490d70a53d1:

  linux-firmware: Update AMD SEV firmware (2020-07-21 09:07:20 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v45

for you to fetch changes up to c82f39064bd5c70a18c69eff27793f0d67945fcc:

  i915: Add GuC firmware v45.0.0 for all platforms (2020-07-31 17:14:19 -0700)

----------------------------------------------------------------
John Harrison (2):
      i915: Remove duplicate KBL DMC entry
      i915: Add GuC firmware v45.0.0 for all platforms

 WHENCE                  |  25 ++++++++++++++++++++++++-
 i915/bxt_guc_45.0.0.bin | Bin 0 -> 189184 bytes
 i915/cml_guc_45.0.0.bin | Bin 0 -> 190016 bytes
 i915/ehl_guc_45.0.0.bin | Bin 0 -> 315392 bytes
 i915/glk_guc_45.0.0.bin | Bin 0 -> 189568 bytes
 i915/icl_guc_45.0.0.bin | Bin 0 -> 315392 bytes
 i915/kbl_guc_45.0.0.bin | Bin 0 -> 190016 bytes
 i915/skl_guc_45.0.0.bin | Bin 0 -> 189056 bytes
 i915/tgl_guc_45.0.0.bin | Bin 0 -> 331072 bytes
 9 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 i915/bxt_guc_45.0.0.bin
 create mode 100644 i915/cml_guc_45.0.0.bin
 create mode 100644 i915/ehl_guc_45.0.0.bin
 create mode 100644 i915/glk_guc_45.0.0.bin
 create mode 100644 i915/icl_guc_45.0.0.bin
 create mode 100644 i915/kbl_guc_45.0.0.bin
 create mode 100644 i915/skl_guc_45.0.0.bin
 create mode 100644 i915/tgl_guc_45.0.0.bin
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
