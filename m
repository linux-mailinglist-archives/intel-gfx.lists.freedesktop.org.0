Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AA396CE7E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 07:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DE710E63E;
	Thu,  5 Sep 2024 05:36:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kAqsEVGy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E414810E63E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 05:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725514617; x=1757050617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=43xyBm0LLX+Kua3mJ9LR3w3SthYZhvMxo6a//vMmvVs=;
 b=kAqsEVGyF35BcblXbhrvPaKDeYLrPBpXazxHEdFh2IQ9LDQDHLMi2yEO
 +YgcFt/VsMzMMJs1DTNdji5gdI4a2aBYMin2L+qWJMewuXF7LAh59dCep
 LIhljus6O8JL6Sk9L+9kR1rYXBXsD4baHC1knb7Wg+IBQp7J0NG2CL1lO
 YVy7sC2b/NhbTp/lVHQGanKv9v4HtkkOEFp+oxXTT/1YZMhDgq0v+7Dhq
 8R8bUm9HSm/EqsZvhV7DuuN1PY2ekbhOgJAaHtZ2tc2lAK3aA1JMlsInz
 WOH90ADWIy6fw6q3HiBc8CsHecYIBo3d5aNwi+0P1DhNiM3sTxYeUHass Q==;
X-CSE-ConnectionGUID: 1VhDrTSTQQqDriJCVwc3+A==
X-CSE-MsgGUID: JFWeeaiZRhaiptyvOWiQBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35366488"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="35366488"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 22:36:57 -0700
X-CSE-ConnectionGUID: l7WdRmiMQwypXH4QuUxhpg==
X-CSE-MsgGUID: A13xdv4XSw+85yxzRWwVZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65500166"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 04 Sep 2024 22:36:54 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 0/4] Vrr refactoring and panel replay workaround
Date: Thu,  5 Sep 2024 10:48:37 +0530
Message-Id: <20240905051841.3012729-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Previous patch series link - 
https://patchwork.freedesktop.org/series/135629/
https://patchwork.freedesktop.org/series/135851/


Animesh Manna (4):
  drm/i915/lobf: No need to pass connector-state on lobf-compute-config.
  drm/i915/lobf: Move Lobf compute config after vblank adjustement
  drm/i915/vrr: Split vrr-compute-config in two phases
  drm/i915/panelreplay: Panel replay workaround with VRR

 drivers/gpu/drm/i915/display/intel_alpm.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_alpm.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |  5 ++
 drivers/gpu/drm/i915/display/intel_display.c | 49 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  9 +++-
 drivers/gpu/drm/i915/display/intel_dp.h      |  2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 ------
 8 files changed, 67 insertions(+), 19 deletions(-)

-- 
2.29.0

