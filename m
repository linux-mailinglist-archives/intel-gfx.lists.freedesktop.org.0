Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C075A7A072
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0245F10E8CD;
	Thu,  3 Apr 2025 09:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYydhKtr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0620A10E8CD;
 Thu,  3 Apr 2025 09:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673869; x=1775209869;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SlCBseJxs2fsdye2idHo0+QST0u82JakH23RRCDAJHY=;
 b=YYydhKtrR3GHSqpshIvrmdfV95IQMnxw/ETSDCoJcFB2EBgvDXxuwzQm
 GU7Si2lsCoJz8eiZtYpty7PyQH6hQIfGHvwyeOCusJV1FaF9GJUvHJlJq
 LB8G1blKGK7JBII5oK3E00ELN5tw2UhpcM8LQToLeWGbN+PcSTg8sBwqL
 h1jyq6/oyTxZkPm31q5MJ64OretoQTrtLxNj0P6zVaGwTjAZtVctFd7Hr
 EL+qH0kiH69rkSJUzXPTcyaPU4twwvMzrI4mnS5nBJr6ud4XxYwqCS6Ly
 Inn5ie8/i/pnlV44zOndIE8kuhUFZKtBwsnHE6puGwvr9WA80FGDb2gj+ Q==;
X-CSE-ConnectionGUID: wChWylRKRW624aPGceK5pA==
X-CSE-MsgGUID: tOOfI7AaTmK/ZdVp5AvAtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196627"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196627"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:09 -0700
X-CSE-ConnectionGUID: 8sBKPgljQ2KtHKD4VW/w8g==
X-CSE-MsgGUID: 2fheufHuShyv7qHnGp9sNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463679"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 0/8] LOBF enablement fix
Date: Thu,  3 Apr 2025 14:58:17 +0530
Message-Id: <20250403092825.484347-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
v7: Addressed review comments received on v6.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (8):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Add debug print for LOBF
  drm/i915/lobf: Disintegrate alpm_disable from psr_disable
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Add mutex for alpm update
  drm/i915/lobf: Check for sink error and disable LOBF

 drivers/gpu/drm/i915/display/intel_alpm.c     | 126 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  32 +----
 7 files changed, 148 insertions(+), 34 deletions(-)

-- 
2.29.0

