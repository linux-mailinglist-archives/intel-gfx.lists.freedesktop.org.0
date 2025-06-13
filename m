Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D268BAD8966
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0BD10E939;
	Fri, 13 Jun 2025 10:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="drJCBsfz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D64F10E939;
 Fri, 13 Jun 2025 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810195; x=1781346195;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UCqS4je6me1uSRyxPf23QwViJV3q5FLLJ51zh69ZJGw=;
 b=drJCBsfzjx64pAdkxMZ+X8F6h/54fsxxHdvkRgiUN7R3yO75anBilQxZ
 xUeCmIMfu81tz8s+AXvISPnNPO+kVS+yP94PSmBYCgsRBQOjVdA2L1t9J
 klzmrplH0uYDm1U29N4c9FG8WFIr3z+FQsrVkI61K4Qamn49lOlrGvCva
 hBiyxpIm8ufU63OWFeLhaPuKJ7xxHKQ74YXbEoOIdyGJKpIiQYerFLUPn
 zGnTJNI5bN82oVoUL9SwwjxT+Sxka8glj/4x8PfRfs4ux3g8UYLX0RiB/
 eQ+JUzFyWvUbn809vYjoyuoDCKdYWqPiTwda1JXdJKxHxBvGKd0vZyzN+ A==;
X-CSE-ConnectionGUID: 6zS5fgJqTtqfg5cSCMxlkg==
X-CSE-MsgGUID: xJ6lR1yQSPmgRVfrxplu1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62673630"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="62673630"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:13 -0700
X-CSE-ConnectionGUID: +GhgurmiQ7KTm8NdswAyXg==
X-CSE-MsgGUID: PNAvHFWkQByZ0SfPsNDmtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152758933"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 13 Jun 2025 03:23:12 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v6 0/9] Add WildCat Lake support
Date: Fri, 13 Jun 2025 15:52:47 +0530
Message-Id: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

Enable Wildcat Lake by adding PCI IDs and add the initial support GT, Media
and Display workarounds.

Dnyaneshwar Bhadane (3):
  drm/i915/xe3lpd: Extend DMC load path for display version 30.02
  drm/i915/wcl: C10 phy connected to port A and B
  drm/i915/xe3lpd: Extend WA 16023981245 for display 30.02

Matt Atwood (2):
  drm/i915/xe3lpd: Update bandwidth parameters for display version 30.02
  drm/i915: Set max cdclk for display 30.02

Matt Roper (4):
  drm/i915/xe3lpd: Add support for display version 30.02
  drm/xe/xe3: Add support for graphics IP version 30.03
  drm/xe/xe3: Add support for media IP version 30.02
  drm/xe: Add Wildcat Lake device IDs to PTL list

 .../gpu/drm/i915/display/intel_atomic_plane.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_bw.c          | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.c       |  4 +++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  8 +++++++-
 .../gpu/drm/i915/display/intel_display_device.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dmc.c         |  3 ++-
 drivers/gpu/drm/xe/xe_pci.c                      |  2 ++
 drivers/gpu/drm/xe/xe_wa.c                       | 16 ++++++++++++++++
 drivers/gpu/drm/xe/xe_wa_oob.rules               |  6 ++++++
 include/drm/intel/pciids.h                       |  4 +++-
 10 files changed, 52 insertions(+), 6 deletions(-)

-- 
2.34.1

