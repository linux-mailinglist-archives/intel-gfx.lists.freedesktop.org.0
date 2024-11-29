Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D769DEB31
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 17:40:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665B110E525;
	Fri, 29 Nov 2024 16:40:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJvZ1b5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03DC10E525;
 Fri, 29 Nov 2024 16:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732898426; x=1764434426;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=178tVy72nkY/YNhDQa1j1v4n2Sw4t12JRROpdlsyL10=;
 b=dJvZ1b5duuIpkEcARMf5yGwgJOHRJ5E0BMYUmOH0p31QsM/8y3x9Iwf6
 nvlWSFHY8ygqm2nzJB8eEWAkGtHsGTRaAUY5yzMrUJpa7BCJrWnUPtSYS
 32i1INK1FOFXdmda+Eq3YNyv2wj33+KRM6hAxRgYA1mkx1cBtAm1u7sVV
 62Xp4eikAyIVFoxgxD6XEmi40r4iPffIZX4Yo7cSIBLlZOlN2iwyE7k/L
 bHkYJd0hTI2PXaWU10cIT9HJG6dofd71FU3RzaCLjhrfszv/cGfXBVU9F
 VFpELEJ+j4ffv3xvZg24wyjErbPwvviyUXebDzf49sGzHyfJKzV/rjjEn Q==;
X-CSE-ConnectionGUID: n7qqvMWXRnOQ8ZDzkY4pkA==
X-CSE-MsgGUID: e6wVR3EGR9uyvS4m4K60UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="33291170"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="33291170"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:40:25 -0800
X-CSE-ConnectionGUID: ZEWkmX3aSQOUvpUiayhDfg==
X-CSE-MsgGUID: IndNTo91SNGmVS7dcg5D2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="96956916"
Received: from eamartin-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.90])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:40:24 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 0/3] Flush DMC wakelock release work at the end of runtime
 suspend
Date: Fri, 29 Nov 2024 13:37:53 -0300
Message-ID: <20241129164010.29887-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
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

We currently are not calling display runtime suspend functions when
D3cold is not allowed. That end up causing DMC wakelock to be enabled
because of dynamic DC states. Because of that, we need to make sure we
flush the release worker at the end of display runtime suspend.

v2:
  - Fixes for "drm/xe/display: Extract xe_display_pm_runtime_suspend_late()",
    see the patch changelog for details.

Gustavo Sousa (3):
  drm/i915/dmc_wl: Extract intel_dmc_wl_flush_release_work()
  drm/xe/display: Extract xe_display_pm_runtime_suspend_late()
  drm/xe/display: Flush DMC wakelock release work on runtime suspend

 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 +++++++++++-
 drivers/gpu/drm/i915/display/intel_dmc_wl.h |  1 +
 drivers/gpu/drm/xe/display/xe_display.c     | 19 +++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_display.h     |  2 ++
 drivers/gpu/drm/xe/xe_pm.c                  |  4 ++--
 5 files changed, 35 insertions(+), 3 deletions(-)

-- 
2.47.0

