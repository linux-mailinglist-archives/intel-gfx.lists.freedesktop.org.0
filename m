Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A39685585E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 01:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059A110E057;
	Thu, 15 Feb 2024 00:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UDjd+gn9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6599510E057
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 00:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707957737; x=1739493737;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ooX46XakzeT3yg/dDAX5eZDJjD+ezujrMds1Kbz36mQ=;
 b=UDjd+gn9v/6eP4dvMuoaqj4A9JZj0Alf8sa+tG/a5q6lkEdUFolvGzMz
 dGzYFoXxsh6eWLD0NZ4OsEnOInTq05naBIslCy1K0upGucOcshSt0mGwJ
 xG4FpClWewkj9Dqeae4ijFRyHl8Gwqk1xiodf7UZKPKuSHE483Zix9FYe
 OMd3upNHBwmBLqQpynxj3EVvsaypbIiXFpe+y9gl1O3cx2igQacNrPbd0
 DGuz9PBmpErHPVMLJLDraw9LVuyNTWh4a8JX5M+vSHvU/yFiQI9FAOBGq
 K/Mt4IkJrajZtc3nE7bPdkG39pf4Vdq5Dd9+1GGL1eRiICM7ueAXeT7tL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1907172"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="1907172"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 16:42:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3654714"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmviesa006.fm.intel.com with ESMTP; 14 Feb 2024 16:42:14 -0800
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Subject: [CI] PR for new GuC v70.20.0
Date: Wed, 14 Feb 2024 16:39:52 -0800
Message-ID: <20240215003952.114072-1-John.C.Harrison@Intel.com>
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

The following changes since commit fbef4d381e3d0143427e1a8c924be8e738c0fc2d:

  Merge branch 'main' into 'main' (2024-02-08 12:24:01 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.20.0_with_pvc

for you to fetch changes up to 609c1c4654f7f5f0c96f737679a823a29e44ca1e:

  xe: Add GuC 70.20.0 for PVC (2024-02-14 16:34:11 -0800)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      xe: Add GuC 70.20.0 for PVC

John Harrison (2):
      i915: Add GuC v70.20.0 for ADL-P, DG1, DG2, MTL and TGL
      xe: First GuC release for LNL and Xe

 LICENSE.xe             |  39 +++++++++++++++++++++++++++++++++++++++
 WHENCE                 |  23 +++++++++++++++++------
 i915/adlp_guc_70.bin   | Bin 342848 -> 347584 bytes
 i915/dg1_guc_70.bin    | Bin 272512 -> 321472 bytes
 i915/dg2_guc_70.bin    | Bin 443200 -> 410368 bytes
 i915/mtl_guc_70.bin    | Bin 365376 -> 332544 bytes
 i915/tgl_guc_70.bin    | Bin 330304 -> 335168 bytes
 xe/lnl_guc_70.bin      | Bin 0 -> 336640 bytes
 xe/pvc_guc_70.20.0.bin | Bin 0 -> 553728 bytes
 9 files changed, 56 insertions(+), 6 deletions(-)
 create mode 100644 LICENSE.xe
 create mode 100644 xe/lnl_guc_70.bin
 create mode 100644 xe/pvc_guc_70.20.0.bin
