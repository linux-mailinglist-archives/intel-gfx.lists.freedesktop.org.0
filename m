Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B14D2E531
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 09:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C43910E82C;
	Fri, 16 Jan 2026 08:55:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H1pMFdZb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7E810E10C;
 Fri, 16 Jan 2026 08:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768553705; x=1800089705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=64fY8xrV++YA8oZlT8cl9ueYxOezRcnDRcmLlrCRSJY=;
 b=H1pMFdZbUh6GU7V9F+09jIO2Rqv6KgF5QoBeruBV+R54Ll87anCC02wL
 peS3dtowrG3KUk+kdTnfPzkTd74M7CJdeQUgmqbRWr+tlCJOVlmGlYhDw
 G4a85ffygSyfQ0kvnbOl/0uca0kmTJ3a6wU4tFo1v7jLNR/v1jrUXisj1
 BmpyeqSnOxttQKR8kGGD5FC7Hsc37cqaqFTJVSoZ1WEVpZZGofqMnk7i7
 emsIsSFSCGg/ERIDZ17tshaHa3NCiZmW0nIlS5CnKrWJKY0bUKjpMj+fz
 0ulAdSGfVQmCfqs6x3Ybv/0UpP9ok9jhubuluz4ikzFvAIJ33619gTofG w==;
X-CSE-ConnectionGUID: OcGZ1PuoQkmOWAE/KJZ82A==
X-CSE-MsgGUID: jGaDj2H6SvGKTqE2gIJ3aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="69918101"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="69918101"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 00:55:04 -0800
X-CSE-ConnectionGUID: SQ1J61AOSWWPCXPwnr5+Xg==
X-CSE-MsgGUID: M28owFykR1OsS8npBRTQhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="204398165"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 16 Jan 2026 00:55:02 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 0/3] Fix Cx0 Suspend Resume issue
Date: Fri, 16 Jan 2026 14:24:52 +0530
Message-Id: <20260116085455.571766-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

CX0 PHY currently has two issues which cause a hang when we try
to suspend resume machine with a delay of 15mins and 1+ hour.
This happens due to two reasons:
1) We do not follow the Enablement sequence where we need to
enable our clock after PPS Enablement cycle
2) We do not make sure response ready and error bit are cleared
in P2M_MSGBUS_STATUS before writing the transaction pending bit.
This series aims to solve this.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Mika Kahola (1):
  drm/i915/pps: Enable panel power earlier

Suraj Kandpal (2):
  drm/i915/cx0: Clear response ready & error bit
  drm/i915/cx0: Rename intel_clear_response_ready flag

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 14 +++++++++-----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  4 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 +++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |  2 +-
 5 files changed, 21 insertions(+), 10 deletions(-)

-- 
2.34.1

