Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5CD8431A7
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 01:05:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E9D113771;
	Wed, 31 Jan 2024 00:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8737E113771
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706659523; x=1738195523;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UZToXV4E9WAR+3C0HJwhZKtggco7Yvdbubpp9HQz2qo=;
 b=d/fYN/84mXl3J7nIA5mntLSM2fcK6ykvosLUsFfpobFcWbpYj3n4bRHR
 WYqBUG4Xdj12VI0NyNc2W7MI4i7L7d6wrmQ8+L6h3r9HPwA2YzoiTS/GJ
 bJKU8CgMxQ2PEHpvawNN4kRMu6gRxkEeokM5GHSVgHoGpoWZxFAHJQPEH
 p3IoDMC22COeMHVWdQ5nSY1Lmk8LuFrWVmB96G0lrlPM60ffFai+3KgPo
 gdO5l1+P5K7LUM3FHdNcxw+reVlNyPhARivce/HR6pES/rh79hphWKdpv
 fx/c/mcZ9r4wPc5lpWUp1gZDdY9cco6xIs9GDnxN1V31Y1+3Zlmxw8jAi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10538986"
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; d="scan'208";a="10538986"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 16:05:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; 
   d="scan'208";a="3858002"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orviesa005.jf.intel.com with ESMTP; 30 Jan 2024 16:05:21 -0800
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Subject: [CI] PR for new GuC v70.19.2
Date: Tue, 30 Jan 2024 16:02:35 -0800
Message-ID: <20240131000235.1672045-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The following changes since commit 1a9518c73c4b54854c9cd8f416fd3b8f8e3456e7:

  Merge branch 'mlimonci/amd-2024-01-30.2' into 'main' (2024-01-30 15:55:30 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.19.2

for you to fetch changes up to 92c06b3c1b4b93ccd9953825cfd4e6ab56e03f16:

  xe: First GuC release for LNL and Xe (2024-01-30 09:23:50 -0800)

----------------------------------------------------------------
John Harrison (2):
      i915: Add GuC v70.19.2 for ADL-P, DG1, DG2, MTL and TGL
      xe: First GuC release for LNL and Xe

 LICENSE.xe           |  39 +++++++++++++++++++++++++++++++++++++++
 WHENCE               |  20 ++++++++++++++------
 i915/adlp_guc_70.bin | Bin 342848 -> 347264 bytes
 i915/dg1_guc_70.bin  | Bin 272512 -> 321088 bytes
 i915/dg2_guc_70.bin  | Bin 443200 -> 406336 bytes
 i915/mtl_guc_70.bin  | Bin 365376 -> 332608 bytes
 i915/tgl_guc_70.bin  | Bin 330304 -> 334784 bytes
 xe/lnl_guc_70.bin    | Bin 0 -> 336704 bytes
 8 files changed, 53 insertions(+), 6 deletions(-)
 create mode 100644 LICENSE.xe
 create mode 100644 xe/lnl_guc_70.bin
