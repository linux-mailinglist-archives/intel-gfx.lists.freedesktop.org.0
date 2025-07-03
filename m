Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF75AF831D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 00:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9C310E902;
	Thu,  3 Jul 2025 22:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDh8W5Jx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFBB10E902
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jul 2025 22:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751580462; x=1783116462;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RTaZ5FDXYSzAsVT5/bWu4bsog+Ujpo9EiEELEt2Pdeg=;
 b=KDh8W5JxVfr6E21quNc0ChhDFrGgGccsfAU+jSJDYky6c/4h5n9/sQ2d
 BxhOu7bFY0Riw8ABQyCk38d3GnUbNwQ5/8cZp1/A/N8XVeiXN7Pw08aQB
 6i7K8DzEYAvMAcP3xV8nGOMo6Im/eNA5UL7oo0LNhpnOJMXWxW1adlAuu
 u975UqVCXbVuFKaxIpCPCTPYpqX/PoeQ7QxnEYTKa1UsIZ/HEim3owCMo
 DT4qoyrgYctXVBstU5UmTXCmGdeJaaWIdBhDO9i08iqfX8T+yrZKGG/Rl
 /Xzwgbrr9EoX0zpGlzqn7zOxldpbbPTvyMX5xxo9zEHka9l9q95pihnd3 w==;
X-CSE-ConnectionGUID: f8g/3wQBRcmb831Tu4Gg9w==
X-CSE-MsgGUID: 4n/LlQM6TWGrQFgR8NzjzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="54062288"
X-IronPort-AV: E=Sophos;i="6.16,285,1744095600"; d="scan'208";a="54062288"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 15:07:42 -0700
X-CSE-ConnectionGUID: vGIPITPNRyaEx4tjDBsBqQ==
X-CSE-MsgGUID: klKMFx8ASKWPcY8imuYn6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,285,1744095600"; d="scan'208";a="154981704"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 03 Jul 2025 15:07:41 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 RERUN 0/1] drm/i915/display: Add no_psr_reason to PSR
 debugfs
Date: Fri,  4 Jul 2025 00:08:44 +0200
Message-ID: <20250703220845.493893-1-michal.grzelak@intel.com>
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

Next rerun of v3, as Patchwork hasn't picked the tag.

Test-with: 20250703140451.491593-2-michal.grzelak@intel.com

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

