Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5C797E4F2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 05:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC8810E35F;
	Mon, 23 Sep 2024 03:12:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJmZQ2rG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9C110E0A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 03:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727061167; x=1758597167;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hUoxuFVQh/meljkPjDysmEee02s41PA3m2j797BveN4=;
 b=PJmZQ2rGL5GluHHmCrXASLmMEfXb6zxChsdalSvKhoROI05wqQyuvm4T
 Upfss/LQdjpDc6tl4ALjqFYJhuK6JApBtZsU6MgDuI8FuRM8zempxaPRh
 RrFpnfFyZ+PmPxQAD+gLMRUEm/7zhHuyEz2qRXzCeVW7f3fgXHeJQSNvK
 oBlCIlNXBDFUHLV9XQGu7McMGSVMF7DPWXohGxaJ3QARTfnH/1uLPlVBt
 jh7vSFUF3jjMvQE2qM/ElDriXpummM2UmTJF85IuJPUuq7Ls4b/rL7FcU
 1j366934A7bI7xRrXZZ2+bxiDqypK6uchwTNN2rg7bT8mwnlq+C6WLYNC g==;
X-CSE-ConnectionGUID: 73WgpH89R6aPqWbX2aEx3w==
X-CSE-MsgGUID: 2HIxPVjARR+M9s7axoXpiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26110931"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="26110931"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 20:12:47 -0700
X-CSE-ConnectionGUID: cvIMOsojRt+rsQKp8AFFNA==
X-CSE-MsgGUID: GIVhJDZPRDqbALNVpNl2Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="70510758"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 22 Sep 2024 20:12:44 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Reduce SHPD_FILTER_CNT value
Date: Mon, 23 Sep 2024 08:40:06 +0530
Message-ID: <20240923031007.1058072-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

This patch series reduces the SHPD_FILTER_CNT value for display version
12 to 250us to align with DP 1.4a spec and add a comment near shpd
handling for xe_lpd+.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hotplug: Reduce SHPD_FLITER_CNT for DISPLAY_VER() == 12
  drm/i915/hotplug: Add comment for XE_LPD+ SHPD_FILTER_CNT value

 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

-- 
2.43.2

