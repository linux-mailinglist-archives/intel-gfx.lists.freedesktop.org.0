Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 730A9B3FDB8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 13:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC6310E667;
	Tue,  2 Sep 2025 11:23:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlbu4PFx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0CF10E667;
 Tue,  2 Sep 2025 11:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756812216; x=1788348216;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+BAZRzEU2l2EtxAifL5avxRHyCE+bZWzUBuhTzG8hEE=;
 b=mlbu4PFx1vSr10OALY/I9Vy082vjIU3bXSJRgXOIkUK1rvgJ5Ld8B2nf
 6LFCiNFJYlz3dNmUeXntdhwU7Gp8NI2/jeYaipzdNg8f80Zv3E2/qc3po
 nn274r2LcxSUViV9snevM4vKCDGkqQ9umDOhh7Z3q7VnG01zuR1SM5FnW
 Egr9ODm4pG4j/G/23fDhDLJSkyIsVfaGsGh4vzNNwOxkxigbSCv3t093w
 PeuATfMxHkTXxrfHnfD1gLs0XIaDUMQXsd0yB5+TqdYBYptpzZwFyecqI
 B3cq5+nC8YAhQ9tSxQzFa+xSsRwGzo8X8kFI6vE6ynLUAeTuiw08zbrbt g==;
X-CSE-ConnectionGUID: pdGD2Zx7SlGKx8gElsYZeg==
X-CSE-MsgGUID: TqjLTvmRTQqekIQF7o/hFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="46661084"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="46661084"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 04:23:35 -0700
X-CSE-ConnectionGUID: 8hqFsCwmQ++M7FKZjaCcyg==
X-CSE-MsgGUID: QzTjjKykTUi78nQ849UURA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="171615683"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa008.fm.intel.com with ESMTP; 02 Sep 2025 04:23:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vinod.govindapillai@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 0/1] drm/i915/display: Remove FBC modulo 4 restriction for ADL+
Date: Tue,  2 Sep 2025 17:05:37 +0530
Message-ID: <20250902113538.269338-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
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

FBC restriction where FBC is disabled for non-modulo 4 plane size
(including plane size + yoffset) is fixed from ADL onwards in h/w.
WA:22010751166

Relax the restriction for the same.

Test-with: 20250902083342.104956-1-uma.shankar@intel.com

Uma Shankar (1):
  drm/i915/display: Remove FBC modulo 4 restriction for ADL+

 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.42.0

