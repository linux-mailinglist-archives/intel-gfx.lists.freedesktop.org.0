Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD314764BF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 22:43:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D530D10FAD4;
	Wed, 15 Dec 2021 21:43:04 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B8710FAD4
 for <Intel-GFX@lists.freedesktop.org>; Wed, 15 Dec 2021 21:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639604583; x=1671140583;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cOXjIxF7Slmz5NEstY9F4N+bEs7q4xo/otGtHbKWr8w=;
 b=Ie2+G14fCzLiHL+CJ+JH3Hog4gbu7kggGOHdJcIyH8Uz1ZG3s19VQIuz
 0XmMc5WvqHP0mq6HH3eitS9qOoOeD1BkRu7Rcn0qyv2dB1kUHObrfupc0
 R8WfcR//1BUIpIGhnms7MjwN70N+9wxUCB5WmkzFPVPNtDOl/pmvg2Spp
 eo0s+Ja71AgKWBN9qnjEdc3+lx0ADmt8NFIDSrascV0dkh/qgK5nqtghr
 fr7n5Ea9J3SFsyz11lckYt1IvUI2Yxq12vH3fuMKLaAljCP4HWNwtYbks
 s+Y4275I/At5dL+BZrKYVMU1y7r6fZsorYOOZe/Al/V4ti3oDwQmjMWr7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="302715866"
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="302715866"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 13:43:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="605198173"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Dec 2021 13:43:02 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 15 Dec 2021 13:43:01 -0800
Message-Id: <20211215214301.3220895-1-John.C.Harrison@Intel.com>
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

  ssh://git.freedesktop.org/git/drm/drm-firmware guc_v69.0.3

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
