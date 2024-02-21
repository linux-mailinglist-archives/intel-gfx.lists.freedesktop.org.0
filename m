Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6180C85E25B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 17:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71B310E7D5;
	Wed, 21 Feb 2024 16:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KYaypKUh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6043A10E7D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 16:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708531350; x=1740067350;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z3KC2+OHf0bQmm2imJwO11G0l47P84QbEorB8hWBxLA=;
 b=KYaypKUhlYN/1zFexl/c6E59XfKkF+h94xry3PkQVeW+AlZ/Qsfi5Ctt
 Ky8Mm3GrruTwejkxiB7AahKUEP+7zYBgLOV5L98ns0eiZMvcNRXyzSxoX
 /GmDMSv2aGMGyL/jHTtZ6a6TBMHBmCJruP7MRRW1EQSspUFSpQl56OZqT
 HXThBtHpF/pkcoPmufowwADQCx4VYfXlxaSr30NJK3AFsp+MxVmX9TFi0
 WHnIBJ01W0WLrbFOn6A29YiHVvW/HQ7FFiDXF2GVEcR22GYKlUXOIP5Co
 BNfmgeXaTFuFSP7N87zd1HuMtok+ictS1yiaKNBf8dpjQ9GNHUN1L+8EY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="28138099"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="28138099"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 08:02:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="5486564"
Received: from hrshah-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.128.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 08:02:21 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/1] [CI] Test MTL DMC v2.21
Date: Wed, 21 Feb 2024 13:01:47 -0300
Message-ID: <20240221160148.179024-1-gustavo.sousa@intel.com>
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

The following changes since commit 88364c11402c5a0cdb3a07530b76eef32882a54b:

  [CI] xe: Add xe directory (2023-11-16 17:28:49 -0300)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware b407637671a914a401bb818d7691ba45b6b04d10

for you to fetch changes up to b407637671a914a401bb818d7691ba45b6b04d10:

  [CI] i915: Add MTL DMC v2.21 (2024-02-21 12:59:11 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      [CI] i915: Add MTL DMC v2.21

 i915/mtl_dmc_ver2_21.bin | Bin 0 -> 52476 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 i915/mtl_dmc_ver2_21.bin


