Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A958AE6CD4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 18:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0FD10E0EE;
	Tue, 24 Jun 2025 16:49:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GjHlqS/k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9BD10E0DB;
 Tue, 24 Jun 2025 16:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783778; x=1782319778;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v0DPzlfy76YOQxHcWuanm7CeUaiQUfbvaozrUxfQNz0=;
 b=GjHlqS/k6Sx73sH6mNFx/STBL/bPPMCQ4lGKgQFwsLfCzDPwjUf1Wqhl
 4hC6nMomHTMxcPXTYktJ/y5QoDxsmKpVAfvo/di/XSiDhIommTMTdtqa1
 8t7/KyB9VOGzTcTnQ4iDWHK0W93YuBNbIPUN/LgH4FwxbinkjWXst/2rs
 uAD4dy+tbWExW18oCa17/35+vr67fStQRm5myCmPHX7uG769auJUhpcGg
 br/ATTkFMEtZwmjqeffZo4K+yCANMrIFP2egMXMZGVqjQhI01wHfQdqfW
 0QUXFwF1ja+YthenMDBC5hSl76BtCmDYwOGaUG3WTZCGAjRz//OdHAKNv Q==;
X-CSE-ConnectionGUID: qt9K6qnAQUyf4DfEGGC/yA==
X-CSE-MsgGUID: ItJUPbxkSiWFmDnji5jmbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56818883"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56818883"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:49:38 -0700
X-CSE-ConnectionGUID: QMMniqdWSeC875paM3lfJg==
X-CSE-MsgGUID: 9+159ypCT7Kht5d7BaUqcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157748062"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa005.jf.intel.com with ESMTP; 24 Jun 2025 09:49:37 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Tue, 24 Jun 2025 18:48:22 +0200
Message-ID: <20250624164823.4118263-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

Next version of v2 [1]. Adding Jani to CC: to ask for ACK if description
regarding WA #1136 is ok, or something else would be better.

[1] https://lore.kernel.org/intel-gfx/20250605091300.3739436-2-michal.grzelak@intel.com

Test-with: <20250513121918.2758842-2-michal.grzelak@intel.com>

Best regards,
Michał

---
Changelog:
v2->v3
- change reason description to be more specific [Mika]
- remove BSpecs number & WA number from being written into no_psr_reason
- replace spaces with tabs
- provide correct Test-with tag to the IGT patch, instead of series

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++++-------
 2 files changed, 26 insertions(+), 14 deletions(-)

-- 
2.45.2

