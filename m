Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DA0AD5772
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB59010E667;
	Wed, 11 Jun 2025 13:44:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BNKRawPS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E0210E668;
 Wed, 11 Jun 2025 13:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649476; x=1781185476;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Xncmf4Gka7FfB7Z0JF9rJEKxKfegl/LRsxCdtVMLb4Q=;
 b=BNKRawPSIVrxcMKeyd3eSRguBvP2VbAu6PvPWXYep0yNPnPn9814SAXJ
 c3BSLQ6HbBuks7rVz4OjSj/uCkx1uQKGSwLbQ9Lk+tkOb3ZU7BFH9L74F
 U/X47gDT+hzkwSqU0Ok3Qoz9bJTP1lzYKIUuOhYs4qm7Yaw75TsVZ/vY3
 ElNsGuTTmwelobDhdzcyETwpzJXGyVKfhjZZOn9ayT6c3IgZl5OCaTL1S
 Yr7dQW6Z6lckYh9CLb64E4YEdble4IQ6cd1FNUpfoXZTDtI/BQRtlTv98
 jxWQ4tm3A3yowZhDT4GH+NlnfpTXlt4rQEypVWt6BXFTMDdZVBwzEYG+U Q==;
X-CSE-ConnectionGUID: e4TQrgcqSDmP514SxG5KvQ==
X-CSE-MsgGUID: ddtpOLTVToqIVy7xNhJsLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505802"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505802"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:36 -0700
X-CSE-ConnectionGUID: vfd/ibuvQ+qApNy7ClR+cA==
X-CSE-MsgGUID: WbLyJMNMSNetMNLE4iHrCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360281"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:34 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 0/9] Add WildCat Lake support
Date: Wed, 11 Jun 2025 19:14:22 +0530
Message-Id: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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
  drm/i915/xe3lpd: Extend DMC path for display version 30.02
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

 drivers/gpu/drm/i915/display/intel_atomic_plane.c   |  3 ++-
 drivers/gpu/drm/i915/display/intel_bw.c             | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.c          |  4 +++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c        |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_display_device.c |  1 +
 drivers/gpu/drm/i915/display/intel_dmc.c            |  3 ++-
 drivers/gpu/drm/xe/xe_pci.c                         |  2 ++
 drivers/gpu/drm/xe/xe_wa.c                          |  6 +++---
 drivers/gpu/drm/xe/xe_wa_oob.rules                  | 11 ++++++-----
 include/drm/intel/pciids.h                          |  4 +++-
 10 files changed, 39 insertions(+), 14 deletions(-)

-- 
2.34.1

