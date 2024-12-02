Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78499DFB9C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 09:06:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A926910E655;
	Mon,  2 Dec 2024 08:06:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fd7t0JhO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3820310E643
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 08:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733126768; x=1764662768;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U/HVuHPZiUEWzo7mXFLSLd9nn9fMegERJdNq00L/mJs=;
 b=fd7t0JhOksN1ZV8nLosaieTbaRJb//wM+WJ8HBkRx9PgGgnXRHrQ8WEq
 m2pVhTpaEC2jurU2DCStkGdD8JziiNfwJZDMdIBqpzlxVwoMP+LUMOp68
 OIj/mhWGnqZOx01Dlxrp5DqF9jrTFxjo7bIb65dTXStgCF7oIN7QYoHLt
 qzybJvbXyqra6KmwcS7lUKF+F0YIr8VMXrL9+aTTEScqKwLIKZ8U0ihOd
 VXsXSpA9gLC1i0hq1uYcecMU8ajacSq1CvKbvwt9vSwNKBUn9k0ZwZDQd
 cKMn+ZSpGAszUK+V3eEWVLdy4Bf4CyNkXOvBstsrO5GBXkweFXi7lapIN Q==;
X-CSE-ConnectionGUID: 2GMs75lSTtCEFGJFHnkw/w==
X-CSE-MsgGUID: ZblDBIyOSh6sDhyEltkwtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="50694378"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="50694378"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 00:06:06 -0800
X-CSE-ConnectionGUID: 0u76r9ApQE6Gm1ghseMpmQ==
X-CSE-MsgGUID: hmbvxZVnQzGYkmNagHTXow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="93212302"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa008.fm.intel.com with ESMTP; 02 Dec 2024 00:06:04 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH 0/2] LOBF enablement fix
Date: Mon,  2 Dec 2024 13:16:12 +0530
Message-Id: <20241202074615.3601692-1-animesh.manna@intel.com>
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

 drivers/gpu/drm/i915/display/intel_alpm.c    | 23 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_display.c |  3 +++
 3 files changed, 29 insertions(+), 1 deletion(-)

-- 
2.29.0

