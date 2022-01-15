Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF7A48F355
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jan 2022 01:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B181610E2F2;
	Sat, 15 Jan 2022 00:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 306B810E2F2
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jan 2022 00:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642205034; x=1673741034;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fRBRqTxEx+BL3S0gUUc8sK1XSmUMURLrleL6ieCDm3Y=;
 b=KfpRLc7CHguu66SJZxYLpjzX7QKh1mY6pCWWKhE1lrNbaPJ3ju1Go3EA
 2LQWWOqWo6XFyBa4gD2gDf01P05OfWeQCyRw/9KPdT505H7KSzAKeHUlx
 jRhcxGjBdI+Rt2TsnJ3zWJM0Xs0f2fM/Iv6wwqwjyRojzR4UzbYJe9Y9j
 wh6iklSL2QvQ7EH62/6yXmfwu10+Ssqi+m3sdsoNG1d9I0vUpapnRSmCL
 taHp/2M2rPoC7bDQdEjxFpxms4m1jyc976g3GN1kcFQ0pgiL5bnsQfah2
 ZjcT/2t4jxFQsq0u+fan+HkTbogzOkeE/AJTssiZjqSubS3/vD2G+GCvA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="241916065"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="241916065"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 16:03:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="614500477"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jan 2022 16:03:53 -0800
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Fri, 14 Jan 2022 16:03:53 -0800
Message-Id: <20220115000353.1812714-1-John.C.Harrison@Intel.com>
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
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
