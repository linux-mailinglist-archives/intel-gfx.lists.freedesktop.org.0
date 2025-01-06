Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC94DA01E6E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D96410E1CE;
	Mon,  6 Jan 2025 04:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nKLrBtBl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E12610E1CE;
 Mon,  6 Jan 2025 04:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736136525; x=1767672525;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8hJZ+ET2yGUf/42OxtdO6fhh4/BDWkBE/IG9dEFLJ/A=;
 b=nKLrBtBlLJ+YbdTfoA4liPS1IT/ehbiCn9OJQQ3uB2CTGwSL/m2XEo9y
 xpDJCNRb/Z0iAMETRXHD1+WAmOWjTiOIbxuvodUl7UT6Qy5axeDMiR+eK
 58pAD1zoHb+PvznZRknRsNAXIxthyBj3qZGPl6r11xHqPokw6OXNTHTHW
 3VUzI8sqOv6TH9wGlL+gQ1uHTdxj+0k4Gokey14Vo34rZPDlwzxGea+Xn
 4ZcpDeZ1bKUjXNwEfktpoWXW25G+WozY7IxRHjdgctlYw9/05hzGw3a6A
 Gj/hy2tLaUzo7ig2gyIBfX+BCBhZVIah19yexOLsS+Tlru4kh9vdPhi8t A==;
X-CSE-ConnectionGUID: H9dm9hB4REy0OIbvFMrKPg==
X-CSE-MsgGUID: tETVqL0IRfWnb1BP0xprfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="40214650"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="40214650"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:08:44 -0800
X-CSE-ConnectionGUID: PryBAxMSSxavuXZG6+/Wrg==
X-CSE-MsgGUID: Bqer1vmYQJyaz9neh+dRgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="102816078"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 05 Jan 2025 20:08:43 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] SSC enablement in port clock programming
Date: Mon,  6 Jan 2025 09:38:19 +0530
Message-Id: <20250106040821.251114-1-suraj.kandpal@intel.com>
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

According to specs SSC is enabled during port clock programming based on
below conditions:
-if uhbr 10 or uhbr 20 enable ssc regardless of what display controller
asks of us
-if ubhr 13.5 or legacy rates enable ssc if required.
Currently these conditions are not exactly followed this patch series
fixes that.
One more thing this patch addresses is how SSC was not enabled for c20
PHY at all because ssc_enabled variable is never set for c20 PHY.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
  drm/i915/cx0: Set ssc_enabled for c20 too

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

-- 
2.34.1

