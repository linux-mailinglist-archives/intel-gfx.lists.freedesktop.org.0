Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEC4A3EA6A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 02:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689DB10EA0F;
	Fri, 21 Feb 2025 01:56:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jHdtcn6z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BF910EA0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2025 01:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740103004; x=1771639004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LYrkH/o4am9YxdpohCdrRoQCt5h6ZNeoQDtIkDkQcYU=;
 b=jHdtcn6zs/aUnsEgKsuWkxApjWD8H3NwkJAjEt5H52aFW0csBsDeMmyb
 XCFD9FHFEic+vtbY17ZaaGAjfg73u6YdcM7E9oe8v7h/jcX0HvyA7YQZa
 o9IKYaHHJXMcvS1CVYOILzk3Rft0SzQ6/ydbuFMplpEANscjXbkvOupVb
 mpVBFoPdLAPEU+NBFjNn9ZuijKbfePTE5HjdVmwVfan669EWbEgttgHo5
 UPRJQ/nL4sK8geHSoBdompFXVAabNJTJ5J8FLabJRkFeEz0hp4sncx/w3
 +WvqtGpgAQic21//YR1a/WxCDk4HMzrodhwPNzTD80K3ZqPtXJOdTNPdM w==;
X-CSE-ConnectionGUID: bhKkQm7mT++DtArsaY4PLA==
X-CSE-MsgGUID: QYKZu1qFS6a9tV5Ymr4tug==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40767882"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="40767882"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 17:56:44 -0800
X-CSE-ConnectionGUID: uzu087sRQKWZ65Il/6/Oeg==
X-CSE-MsgGUID: QezJGrEfQimZjrUHUdXgqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="119855973"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.225.64.225])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 17:56:42 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: William Tseng <william.tseng@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Subject: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for DSC 1.1
Date: Fri, 21 Feb 2025 09:56:37 +0800
Message-Id: <20250221015637.507741-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250220032603.434570-1-william.tseng@intel.com>
References: <20250220032603.434570-1-william.tseng@intel.com>
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
calculate_rc_params() is incorrect in the case of DSC 1.1 and
DISPLAY_VER(dev_priv) >= 13. It turns out to be some noise-like
lines are displayed on a MIPI DSI panel supporting DSC 1.1.

The function calculate_rc_params() is implemented by following
the Table E-2 in DSC 1.2a and creates incorrect rc parameters
for DSC 1.1. As a result, add the additional condition
(vdsc_cfg->dsc_version_minor >= 2) to get the right function to
calculate rc parameters for DSC 1.1.

v1: initial version.
v2: modify the commit comment and change the condition
    regarding DSC version checking.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b355c479eda3..b0a7a2179844 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * upto uncompressed bpp-1, hence add calculations for all the rc
 	 * parameters
 	 */
-	if (DISPLAY_VER(dev_priv) >= 13) {
+	if (DISPLAY_VER(dev_priv) >= 13 && vdsc_cfg->dsc_version_minor >= 2) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
 		if ((compressed_bpp == 8 ||
-- 
2.34.1

