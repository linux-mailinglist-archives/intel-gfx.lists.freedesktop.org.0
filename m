Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B3B4AE8B5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 06:12:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185DB10E1C0;
	Wed,  9 Feb 2022 05:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5254610E2E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 05:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644383521; x=1675919521;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fD3oGIXrOK/nxsqHjDsni6LSfTH4ggGbKPGeLFQJwNE=;
 b=NdOfATu8LVKwH0C/bH/JGrVeVoYyZpeJjKWNUliFXvVj41Q1+50XTH0Z
 2CW2I1zZc7+PAslup7/BgRzjtRamoH1mwaZCaGqk/9atquPLtXyPSOarz
 56qs/8dLwNt9NyJEwpVlrCVBHW6Rv4lJGDTOllKZvwSS25JKt+QsBqKLH
 PikIlfVx11ZHEkdMv0P57GC9pNkoi8xjTnItuFA1yvTjN27muqNspPTB9
 BtTPEIB0Ea8COUeScOvAA5V89A5YcpFd+98EJm2T6/CBc/Y2JaNya3v0q
 ovO4sOY8hELxWB7e6BIlCKRaUFwqd6+nGuA57sgIxbULvdMP//rNapSp2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="232686890"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="232686890"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:11:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="482206689"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:11:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 21:11:34 -0800
Message-Id: <20220209051140.1599643-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] More GT register cleanup
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

Another collection of cleanup patches for intel_gt_regs.h to make it a
bit less painful to work with.

Cc: Jani Nikula <jani.nikula@linux.intel.com>

Matt Roper (6):
  drm/i915/gt: Drop duplicate register definition for VDBOX_CGCTL3F18
  drm/i915/gt: Move SFC lock bits to intel_engine_regs.h
  drm/i915/gt: Use parameterized RING_MI_MODE
  drm/i915/gt: Cleanup spacing of intel_gt_regs.h
  drm/i915/gt: Use consistent offset notation in intel_gt_regs.h
  drm/i915/gt: Order GT registers by MMIO offset

 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   23 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2623 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_reset.c       |   14 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |    6 +-
 drivers/gpu/drm/i915/intel_uncore.c         |    2 +-
 5 files changed, 1333 insertions(+), 1335 deletions(-)

-- 
2.34.1

