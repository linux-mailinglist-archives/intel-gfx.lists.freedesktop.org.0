Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E268A7775
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576BA10F3D1;
	Tue, 16 Apr 2024 22:09:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HGkOTfKL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB6C10F3D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 22:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713305378; x=1744841378;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wqaezd0AwKL+u7hEoRm5kFPQQyZWH0t6eRoQN1TLavU=;
 b=HGkOTfKLk/CHSjSvpSguAXkEWS9Bzo1wvUQ9Lr+dcyJC1PzDjH9KyzXN
 FhxsYf2YwAaprUYteLpKZcGoyRft5IwSgmZG+efjOTiJbXAYu6AwhGE/H
 Kyw4fP40RB00uzrXKPoOSfuXndvWbrTnlncovGf12VDiFeHix9+ZRcGuW
 9WK0R3KnRLk2Js5aAeoSqEDqjFcVbY+vUhu/m1pPjt2BjRGsmOCAtLcSs
 qfWAgxqSeQ0DMvD/4hquoHuZYUOvzgx/AAXuUYc4i+QUHq7vEcjUba6Pc
 v84cm4y4LsqPJrWovB0PjnvUn7g2kWYC5gcHCxbqmJxiZT8eiw+FEz2Lf A==;
X-CSE-ConnectionGUID: t5hTY+KXTx6S8Dp152Iu7Q==
X-CSE-MsgGUID: 4P+DoUaMSTWmMKaAI5bK8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20165138"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="20165138"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:37 -0700
X-CSE-ConnectionGUID: yVgpw/hZSxuzECLOOboapw==
X-CSE-MsgGUID: /MfABTGNT0SZLZKxv8wXAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26965460"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 00/11] drm/i915/dp: Few MTL/DSC and a UHBR monitor fix
Date: Wed, 17 Apr 2024 01:09:59 +0300
Message-ID: <20240416221010.376865-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

This is v2 of [1], after additional testing on the DELL U3224KBA and
Unigraf UCD-500 CTS devices and based on that adding a 3% overhead to
DPT/DSC BW limit calculation in patch 4 to fix a 6k mode on both of
these devices.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

[1] https://lore.kernel.org/all/20240320201152.3487892-1-imre.deak@intel.com

Imre Deak (11):
  drm/i915/dp: Fix DSC line buffer depth programming
  drm/i915/dp_mst: Fix symbol clock when calculating the DSC DPT bpp
    limit
  drm/i915/dp_mst: Fix BW limit check when calculating DSC DPT bpp
  drm/i915/dp_mst: Account for channel coding efficiency in the DSC DPT
    bpp limit
  drm/i915/dp_mst: Account with the DSC DPT bpp limit on MTL
  drm/i915/dp_mst: Sanitize calculating the DSC DPT bpp limit
  drm/dp: Add drm_dp_uhbr_channel_coding_supported()
  drm/dp_mst: Factor out drm_dp_mst_port_is_logical()
  drm/dp_mst: Add drm_dp_mst_aux_for_parent()
  drm/i915/dp_mst: Make HBLANK expansion quirk work for logical ports
  drm/i915/dp_mst: Enable HBLANK expansion quirk for UHBR rates

 drivers/gpu/drm/display/drm_dp_helper.c       |   2 +
 drivers/gpu/drm/display/drm_dp_mst_topology.c |  22 +++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  18 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 102 ++++++++++++------
 include/drm/display/drm_dp_helper.h           |   6 ++
 include/drm/display/drm_dp_mst_helper.h       |   7 ++
 include/drm/display/drm_dsc.h                 |   3 -
 7 files changed, 113 insertions(+), 47 deletions(-)

-- 
2.43.3

