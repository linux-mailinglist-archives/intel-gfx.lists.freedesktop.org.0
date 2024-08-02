Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44389462CA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2024 19:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8BEC10E131;
	Fri,  2 Aug 2024 17:59:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zfk4pHP4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C2610E0CE;
 Fri,  2 Aug 2024 17:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722621582; x=1754157582;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9FIQ97N7/vfYBav7zrBpsLEIlOBsQebPw9pi9lWuOho=;
 b=Zfk4pHP4wIDWQGxMgYMeed23hZ9UZA8Nh5xfv1zWGMLjYH3He8+x58wX
 o80ME3JCZZD/DBDKCj9PfNnsF4FcdWndnpNI7K+E0kf8bxHhzuZaaG7aE
 joMmvjqFrNKqRtsRQPGuboIGAaKID3cQI8nRyXKrG7XgIN5LV4gkfrdf7
 m/2UcA4lJZByaAEQCKq4es2/NyeqXeHSOAWcj0+9wY76ekmUgiYl6bzzl
 0nZsQbSt/jHbxTq4BWj9gK8DHTyrZTmVTBDl5bU6ZchBhnu88torZvh+7
 KmDrRqzMP+ux77uWa27dC1K20gRkr+dF767+snRX7ubgbccJcxYQ94hG3 g==;
X-CSE-ConnectionGUID: +RJhAVq6Q/OSsUZtnYT1wQ==
X-CSE-MsgGUID: cCyHhLNLR1mHYz5QNL713A==
X-IronPort-AV: E=McAfee;i="6700,10204,11152"; a="20326692"
X-IronPort-AV: E=Sophos;i="6.09,258,1716274800"; d="scan'208";a="20326692"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 10:59:41 -0700
X-CSE-ConnectionGUID: x1Fv5axaTNGk4N1tYMy1TA==
X-CSE-MsgGUID: k4MgQKkBQgGJNgVLzbo2kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,258,1716274800"; d="scan'208";a="55411093"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 10:59:41 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: linux-firmware@kernel.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 gustavo.sousa@intel.com, John.C.Harrison@Intel.com
Subject: PR for new i915 and Xe binaries
Date: Fri,  2 Aug 2024 10:59:32 -0700
Message-ID: <20240802175932.784781-1-daniele.ceraolospurio@intel.com>
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

A bulk update of several binaries in the i915 and Xe folders.

- GuC:
    - All TGL+ binaries updated to v70.29.2
    - New binary added for BMG, also v70.29.2

- HuC:
    - DG2 binary updated to latest rev (v7.10.16)
    - New binaries added for LNL (v9.4.13) and BMG (v8.2.10)

- GSC:
    - MTL binary updated to v102.0.10.1878
    - New binary added for LNL, v104.0.0.1161

- DMC:
    - MTL binary updated to v2.22

The following changes since commit 65c5d9b1a4808462f5e885447dae1a133c96abec:

  Merge branch 'amdgpu-20240726' into 'main' (2024-07-28 14:28:08 +0000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/firmware.git tags/intel-2024-08-02

for you to fetch changes up to 95c414d44c8e60880be787822d5020a010044a49:

  xe: First GuC release v70.29.2 for BMG (2024-08-01 11:11:04 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (5):
      i915: update DG2 HuC to v7.10.16
      xe: Add LNL HuC 9.4.13
      xe: Add GSC 104.0.0.1161 for LNL
      xe: Add BMG HuC 8.2.10
      i915: update MTL GSC to v102.0.10.1878

Dnyaneshwar Bhadane (1):
      i915: Update MTL DMC v2.22

Julia Filipchuk (3):
      i915: Add GuC v70.29.2 for ADL-P, DG1, DG2, MTL, and TGL
      xe: Add GuC v70.29.2 for LNL
      xe: First GuC release v70.29.2 for BMG

 WHENCE               |  30 +++++++++++++++++++++---------
 i915/adlp_guc_70.bin | Bin 347584 -> 328768 bytes
 i915/dg1_guc_70.bin  | Bin 321472 -> 302656 bytes
 i915/dg2_guc_70.bin  | Bin 410368 -> 369408 bytes
 i915/dg2_huc_gsc.bin | Bin 630784 -> 630784 bytes
 i915/mtl_dmc.bin     | Bin 52476 -> 52700 bytes
 i915/mtl_gsc_1.bin   | Bin 1142784 -> 1134592 bytes
 i915/mtl_guc_70.bin  | Bin 332544 -> 303872 bytes
 i915/tgl_guc_70.bin  | Bin 335168 -> 316352 bytes
 xe/bmg_guc_70.bin    | Bin 0 -> 406272 bytes
 xe/bmg_huc.bin       | Bin 0 -> 585728 bytes
 xe/lnl_gsc_1.bin     | Bin 0 -> 1155072 bytes
 xe/lnl_guc_70.bin    | Bin 336640 -> 316160 bytes
 xe/lnl_huc.bin       | Bin 0 -> 643072 bytes
 14 files changed, 21 insertions(+), 9 deletions(-)
 create mode 100644 xe/bmg_guc_70.bin
 create mode 100644 xe/bmg_huc.bin
 create mode 100644 xe/lnl_gsc_1.bin
 create mode 100644 xe/lnl_huc.bin
