Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1087357927
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 02:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035D46E9C9;
	Thu,  8 Apr 2021 00:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3079E6E3D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 00:42:11 +0000 (UTC)
IronPort-SDR: V1N+AjPLXnOzPxRbtO2FBNyQqEsqoU1j29HPB0HTdkfTRZhE/mtq/B80n/9oaRubaGrzhZSVD+
 DpBPXPsELWAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="172900160"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="172900160"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:10 -0700
IronPort-SDR: HlIwbL8wIUiX31WS7VelN9BWF7CvQ3dU+lQ9R3lqmrLF7jfxKMmQmhwmTyXOjck3M6Qbeggc3Y
 w7h5t2zby+/Q==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="519634240"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 17:41:57 -0700
Message-Id: <20210408004200.984176-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408004200.984176-1-lucas.demarchi@intel.com>
References: <20210408004200.984176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: add media and display versions
 to device_info print
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we are now converting from a single gen version to graphics_ver,
media_ver and display_ver, add the last 2 when printing the device info.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b58bc7bff65e..6a351a709417 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -96,6 +96,8 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 				    struct drm_printer *p)
 {
 	drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);
+	drm_printf(p, "media_ver: %u\n", info->media_ver);
+	drm_printf(p, "display_ver: %u\n", info->display.ver);
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "iommu: %s\n", iommu_name());
 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
