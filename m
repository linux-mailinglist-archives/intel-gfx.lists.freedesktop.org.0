Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F21A6997F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 20:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A90D10E363;
	Wed, 19 Mar 2025 19:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rr4VG4nv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6E710E35D;
 Wed, 19 Mar 2025 19:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742413059; x=1773949059;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uo76L4bAYG2iQNV6GVYrpgrdu/Go+Zmzp9rsezmH+LU=;
 b=Rr4VG4nv0UShu0D2mtiFhrMh4JcyG8mUIHJMQXWFDer2xlYDqfFPGus7
 gEfS4RU01bVNL6zM/mgqeBTDidYDtIZE817y7sirtJUxzILy1pB8l/v51
 abpnDKPK6cvd/Lmb5clazuvu4I7wUO5rPH1GE1dk3PoeMCWzbZ3yvflT4
 AXTbI7FlJzCpzf/zC4SJyG9BSCFC+f40japDZtepqgFWLV+sHKybgClf9
 HZBfGRT1JSWfiNj0WsXzljTdWUhND+ufFMaqizorbicGUpbMkdEDWywGe
 ZyrXV2etsSM5ohGxv7401GWB3LeEAJmE9uUXG3jcK/N65dCGPErrylk0d w==;
X-CSE-ConnectionGUID: CxovDaLbQOa6INAi6jkFrQ==
X-CSE-MsgGUID: Semvm88ZQUav0Ah9qWBeOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="31203389"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="31203389"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 12:37:34 -0700
X-CSE-ConnectionGUID: e7LFF3C2RAuWCtgbVwLfcg==
X-CSE-MsgGUID: l5b/16qOSAyxbpKxumJpxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123241728"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 19 Mar 2025 12:37:32 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 0/8] LOBF enablement fix
Date: Thu, 20 Mar 2025 00:45:00 +0530
Message-Id: <20250319191508.2751216-1-animesh.manna@intel.com>
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

v1: Initial version.
v2: Addressed review comments from Jani.
v3: Addressed review comments from Jouni.
v4: Addressed review comments received on v3.
v5: Addressed review comments received on v4.
v6: Addressed review comments received on v5.


Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (8):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Disintegrate alpm_disable from psr_disable
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Check for sink error and disable LOBF
  drm/i915/lobf: Add mutex for alpm update
  drm/i915/lobf: Add debug print for LOBF

 drivers/gpu/drm/i915/display/intel_alpm.c     | 122 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  32 +----
 7 files changed, 141 insertions(+), 34 deletions(-)

-- 
2.29.0

