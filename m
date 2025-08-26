Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89337B36E2C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 17:43:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12EFC10E079;
	Tue, 26 Aug 2025 15:43:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QvGL8vcA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FFDC10E079
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756223033; x=1787759033;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NVrngxD4B30w+qaQEolskCL7au5kV4/7vnjtb5zSYhg=;
 b=QvGL8vcA3zMDQOC9+gZV/gB4NY68mbDfJojj22e5lbO60OZD0SBVVvGS
 ylMjlsIGUxR+rvND55lxavrZimIaAwlslOfcz0gdRjyFeLUBL+jf6vZem
 Qv0yC/nxalftoF3Bd6HNewquSkI8TlO3EFAqOHU3kDmCGZC/AgKeVmlx3
 MAEI65hRYFkgofY9GH2YqTxovs52pqjLSWPAoizEzNoqirsKXO2uHhRKG
 LGjgK4Ve6a/g1xEN/Uk6cCp5laV4zodNS7kO/zDU50WxN55pJvnB1Gaee
 5tF2sUvmDoJsD8h8bSA5hTIcjF/pyELr44Foh3X0S9SG0hm3WZ4ixLnhz Q==;
X-CSE-ConnectionGUID: NdIrHsZNSCCh28xLF9yhuw==
X-CSE-MsgGUID: S9ld8T6xRVeTeb2Cl0CStQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58527755"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58527755"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 08:43:52 -0700
X-CSE-ConnectionGUID: QmDLZQ7sQ4iwiFGXqZFTGA==
X-CSE-MsgGUID: FIFYANurShCPj8MBm+S82A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200498314"
Received: from dut4086lnl.fm.intel.com ([10.105.10.138])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 08:43:53 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 matthew.brost@intel.com, john.c.harrison@intel.com
Subject: [PATCH 0/2] drm/xe/xe_vm: Add error injection support to lock and prep
Date: Tue, 26 Aug 2025 15:43:53 +0000
Message-ID: <20250826154352.90434-4-jonathan.cavitt@intel.com>
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

Error injection should use the error injection interface, and should be
decoupled from CONFIG_DRM_XE_DEBUG.  Remove TEST_VM_OPS_ERROR from the
code, and add error injection support to the function
vm_bind_ioctl_ops_lock_and_prep.  This necessitates marking the function
as noinline.

Jonathan Cavitt (2):
  Revert "drm/xe: Add VM bind IOCTL error injection"
  drm/xe/xe_vm: Add error injection support to lock and prep

 drivers/gpu/drm/xe/xe_device_types.h | 12 -----------
 drivers/gpu/drm/xe/xe_pt.c           | 12 -----------
 drivers/gpu/drm/xe/xe_vm.c           | 31 ++++++----------------------
 drivers/gpu/drm/xe/xe_vm_types.h     | 14 -------------
 4 files changed, 6 insertions(+), 63 deletions(-)

-- 
2.43.0

