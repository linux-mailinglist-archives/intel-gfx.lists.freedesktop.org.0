Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4065E587012
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 20:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72BA9283D;
	Mon,  1 Aug 2022 18:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04EA997AD0
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 18:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659376953; x=1690912953;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rMJTjhWhjcwMpGiWJTcqI2BLuTxW2Bf3ao0fLxFtcD0=;
 b=kY+UmhariIGL2NrO//RBPeyKSRmJFDLmsy38tn1ev8O4CjAtJ0MD3rc0
 bPKIydjUj2O7k/03haUiauI8L5pO4G3TqPOEn33NakBN/xggJumf9wxN1
 hFTJYCWjJEwiObF7YEJy5CpqF8Nya4GVpAM3EzbUb5a4SBKpaHwLVoxVs
 JtqA4Ky7vxBrWMzRpFaxravxcgErnnlYRLYocIBWaXOIfp2SniXcET9gy
 kvBxb+ifRlMCiwVwAFa/eQQrucvWfHiAdmkh7Ryh5MG6JuZ20DrBad/4y
 q/IDHSQokO6g/Pm+iFguQoVPLQG/VGK/Qi8wsyxCdla9PTklVMF+lLO4Z Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="272255411"
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="272255411"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 11:02:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="634984824"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga001.jf.intel.com with ESMTP; 01 Aug 2022 11:02:29 -0700
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Mon,  1 Aug 2022 11:02:29 -0700
Message-Id: <20220801180229.3824606-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for new GuC v70.4.1 for DG2
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

The following changes since commit 150864a4d73e8c448eb1e2c68e65f07635fe1a66:

  amdgpu partially revert "amdgpu: update beige goby to release 22.20" (2022-07-25 14:16:04 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_guc_v70.4.1

for you to fetch changes up to a4235e0aa4d4753119fd81f582eef84addf3f4a1:

  i915: Add GuC v70.4.1 for DG2 (2022-07-27 18:03:49 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.4.1 for DG2

 WHENCE                  |   3 +++
 i915/dg2_guc_70.4.1.bin | Bin 0 -> 369600 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_guc_70.4.1.bin
