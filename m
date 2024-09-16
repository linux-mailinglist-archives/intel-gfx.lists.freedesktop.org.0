Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 883FD979C91
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 10:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81CC310E079;
	Mon, 16 Sep 2024 08:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MWJ42bqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C8610E079
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 08:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726474357; x=1758010357;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k3Y9d/qZDbRxUohIe7wI1jmWd7LQ4uWePWmzkdv2oXw=;
 b=MWJ42bqZ6+pUVumbk3MGzoJqN+4qcf+mgzWqw6N+Jl0JrrtpNyCNFsM7
 uOUuHRoOoyQumSBKgQvI7v7vjl3iztq+C2ShRUWz8NgB2D6phC6lD1NK4
 kzWQYqdgGFPZvA9AWGR1li4SjrA7aeT62BIyTu3o4D7n/S4jlFO+U5wOv
 fWEI/BzWwVW/FK+6HJ9L5Wx1E7oeV+8p1syR2FyebrYcZamC5TjUhP8+y
 2l5YLsoofzDxnfeN3s8v8DlH38rWBNYs2ju4DJDYn8lZtnVjsYw9rWeqr
 fXxvvOdbEBn0mR4NvVIWWHdevSHvzMpuwr4y5aR3PM3KfzRo1hX+1SelW Q==;
X-CSE-ConnectionGUID: G8Yu1x2zTjG6jgNY0F5vvg==
X-CSE-MsgGUID: 2Min4DUTRCe/F22E422YMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25440848"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="25440848"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 01:12:36 -0700
X-CSE-ConnectionGUID: 53I+E9bCTK2dF1IBHMVYuw==
X-CSE-MsgGUID: JpYgXHJqQ9m5gH36IzFr3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="68792686"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 16 Sep 2024 01:12:32 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v11 0/2] Vrr refactoring and panel replay workaround
Date: Mon, 16 Sep 2024 13:24:04 +0530
Message-Id: <20240916075406.3521433-1-animesh.manna@intel.com>
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

Animesh Manna (2):
  drm/i915/vrr: Split vrr-compute-config in two phases
  drm/i915/panelreplay: Panel replay workaround with VRR

 drivers/gpu/drm/i915/display/intel_display.c | 35 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 30 +++++++++++------
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 4 files changed, 56 insertions(+), 12 deletions(-)

-- 
2.29.0

