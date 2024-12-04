Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B215B9E3766
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 11:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A942710E4A4;
	Wed,  4 Dec 2024 10:23:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAQc/Y2Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39ACD10E4A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2024 10:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733307802; x=1764843802;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jESJsyDhLGdExWU9F5SzfGUqZ9Pp+VrJz4iT5S+Jp8Y=;
 b=HAQc/Y2Yn8XFVFHqXiGXdL6CxqgwnGlNrWNzPnGxQkW0KMf0YJFzi87C
 qL+5JXP8yuWqbBLPusb85VEo22PH+5xbSTA/8TYDhG5QLyylpG/BVeRLC
 2RiEjTIrr1wu2+MtArY+xPVK5H7YlofO7KQCyJsXUUHI7MZekN7Bh7jF/
 vSUZ/m7YiKJvykoK0ghMh+ddhqKmX4hxG4FjUDRobZbbxU0LkSsp/jVmq
 gMW0kce68t1djNU+/VX9uPX5Z28XlNh6RA3f8YWnawvnS2x4ez/e9FZoc
 4NE+B0bKcSTnO2OygEhufEHCo8DzvwM11XNq1m2GGKj2/OrgBgL68unHG Q==;
X-CSE-ConnectionGUID: LuzbTSZiQlaoA3BuQ10bwg==
X-CSE-MsgGUID: GbZHIuv/QQevw6IErswdug==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44957824"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44957824"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:23:22 -0800
X-CSE-ConnectionGUID: CjAAd2VJQN+zTELtTo/FLA==
X-CSE-MsgGUID: V55qlH1RReuup8qd8L+Y1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93615147"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 04 Dec 2024 02:23:20 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 0/2] LOBF enablement fix
Date: Wed,  4 Dec 2024 15:33:26 +0530
Message-Id: <20241204100328.3738778-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (2):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Add debug print for LOBF

 drivers/gpu/drm/i915/display/intel_alpm.c    | 29 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h    |  4 +++
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++
 3 files changed, 35 insertions(+), 1 deletion(-)

-- 
2.29.0

