Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DC3A3D012
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 04:26:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9623610E4A0;
	Thu, 20 Feb 2025 03:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZjHwubJ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B12810E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 03:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740021969; x=1771557969;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PWCwQf5tRQb7aywoIgnbIHtJ0T/cKmdoMIAsjihsB5A=;
 b=ZjHwubJ21O2B9bzIFmbAGKWjjaz47FnBcCCjDKlaj7vBlknfmjJ0tCw9
 h2/uYq+3sqJKNbgKMgk4dDtOAZSz8BxdZ4Jvsq1jX87KIkLJ+tOO7rOeI
 IrFPHDyWKD2C5H8JyNHbuVMcsXJL7fp4Z39qwxDniFFrFh7+3lYlM1eg3
 xdehIjHAprbblqOqlOyg2P5DFrYRWb3+OPefmU6mJneJjf4SGEe7F/C3Z
 AvmMgFl8mC14nsdSs08HmZFu3QxQ+Icw9iuVnJPGX6JApX9bSAsgG1bZY
 yvvPfBcSjXBVVeubHqBSel7SxZgCH+pXzCOfxcH8jHwh2K1nGfzYR6C0r Q==;
X-CSE-ConnectionGUID: CYLZ68AoR8uMT64gOFiUaQ==
X-CSE-MsgGUID: HEczF6N0RVGELjS4o8reOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44435505"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="44435505"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 19:26:08 -0800
X-CSE-ConnectionGUID: 4MM0hUDjS+S+kEJX0GQhgQ==
X-CSE-MsgGUID: ZQV+JmGuS4OrWz4XvL1NRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="138110179"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.225.64.225])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 19:26:07 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: William Tseng <william.tseng@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Subject: [PATCH] drm/i915/dsc: Change rc parameters calculation for DSC 1.1
Date: Thu, 20 Feb 2025 11:26:03 +0800
Message-Id: <20250220032603.434570-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
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

When calculating dsc parameters, the rc parameters calculated by
calculate_rc_params() may be incorrect in the case of DSC 1.1 and
DISPLAY_VER(dev_priv) >= 13 and cause noise-like lines displayed
on a MIPI DSI panel supporting DSC 1.1. The calculation seems for
DSC 1.2 only. So, instead of calculate_rc_params(), calculate the
rc paramerters with the function drm_dsc_setup_rc_params() for
DSC 1.1.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b355c479eda3..e3443a1d12e0 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * upto uncompressed bpp-1, hence add calculations for all the rc
 	 * parameters
 	 */
-	if (DISPLAY_VER(dev_priv) >= 13) {
+	if (DISPLAY_VER(dev_priv) >= 13 && vdsc_cfg->dsc_version_minor == 2) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
 		if ((compressed_bpp == 8 ||
-- 
2.34.1

