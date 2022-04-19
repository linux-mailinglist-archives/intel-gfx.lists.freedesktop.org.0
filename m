Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A2350609F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 02:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB25910E19D;
	Tue, 19 Apr 2022 00:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2888610E128
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 00:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650326870; x=1681862870;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5+4ePOaAnP+tbgiUHGfECkCJZoO2WnpQ8Jl9n/TH45Q=;
 b=W2XOOOrGchOFDlW03+DABKaeRx9EkwjHrpFAuECAPL3u1unfM5RbKgjG
 aWGYsiOTNpVJ1KzfQdAd0XVKNV+nLP+/zQV5qSs21Kh2+XEmNmVlCC9EM
 piL5QMDh1jDhyBO3IsxhiCnW1kaJxDqvNxBeqVLx0ck23HQIGbxoce6qS
 ebF5NQVx/I58uK+z1L2EBB35iXNSBEBAo/LynY8XE/2v1Tb/+Kw1qeGDR
 FeUURdaMk6ryC8GTNITnzkMwvN3qghrVinOT8QCcR/2BLyIeMPCGFp7+8
 JoXqLvrmbb42PBxNUxXQyb/b5zrR7DOXoobX/lBpOqJmK+p5DFlw8n2hA Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="326537798"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="326537798"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 17:07:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="665586335"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 17:07:49 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 17:07:30 -0700
Message-Id: <20220419000737.420867-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] GSC support
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This includes the fully reviewed DG1 series plus one reviewed patch
from the ATS/DG2 series that adds the DG2 defs. This is the bare minimum
required to start adding some of the HuC code needed for DG2, where HuC
loading goes via the GSC.

Note that the versioning of this series does not match that of the
originals. This series includes the latest version of all patches,
I've added the v2 tag because I have 1 extra patch compared to the
last set I've sent out.

The DG2 patch also needed a minor rebase (due to lack of ATS code).

Cc: Alexander Usyskin <alexander.usyskin@intel.com>

Alexander Usyskin (2):
  mei: gsc: setup char driver alive in spite of firmware handshake
    failure
  mei: gsc: retrieve the firmware version

Daniele Ceraolo Spurio (1):
  HAX: drm/i915: force INTEL_MEI_GSC on for CI

Tomas Winkler (4):
  drm/i915/gsc: add gsc as a mei auxiliary device
  mei: add support for graphics system controller (gsc) devices
  mei: gsc: add runtime pm handlers
  drm/i915/dg2: add gsc with special gsc bar offsets

 MAINTAINERS                              |   1 +
 drivers/gpu/drm/i915/Kconfig             |   1 +
 drivers/gpu/drm/i915/Kconfig.debug       |   1 +
 drivers/gpu/drm/i915/Makefile            |   3 +
 drivers/gpu/drm/i915/gt/intel_gsc.c      | 224 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gsc.h      |  37 ++++
 drivers/gpu/drm/i915/gt/intel_gt.c       |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h       |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c   |  13 ++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h |   2 +
 drivers/gpu/drm/i915/i915_drv.h          |   8 +
 drivers/gpu/drm/i915/i915_pci.c          |   4 +-
 drivers/gpu/drm/i915/i915_reg.h          |   4 +
 drivers/gpu/drm/i915/intel_device_info.h |   2 +
 drivers/misc/mei/Kconfig                 |  14 ++
 drivers/misc/mei/Makefile                |   3 +
 drivers/misc/mei/bus-fixup.c             |  25 +++
 drivers/misc/mei/gsc-me.c                | 259 +++++++++++++++++++++++
 drivers/misc/mei/hw-me.c                 |  29 ++-
 drivers/misc/mei/hw-me.h                 |   2 +
 include/linux/mei_aux.h                  |  19 ++
 22 files changed, 657 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.h
 create mode 100644 drivers/misc/mei/gsc-me.c
 create mode 100644 include/linux/mei_aux.h

-- 
2.25.1

