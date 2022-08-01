Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF11586C78
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 16:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2B6C4FA0;
	Mon,  1 Aug 2022 13:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E692C2EDB;
 Mon,  1 Aug 2022 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659361985; x=1690897985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fHW/DZnRidfn52Gk2JhscN5xBiq6sdhJgZX8TCu4pRs=;
 b=KCA9e8zNtbRium0G/6h0a5FUj3dwnKiWsYYjHA5+Em6SEetTZBRN/1ce
 rg/wZnWqT5qGNYZ7NmkDPvd+2hYCivHGP0QbSFio8S1Hjri32977TwfZQ
 sdeyOsmRJ/4JOIyyUDp0isq9iX+vvxCUFaurVm4by524Ut1rtBiNecoFP
 vokeaUF4rQjwlThZ7ms+H81gJBxWf2fCJ/bU6qwub0L3VUnDzZALTPJQ8
 MTh97kRgnoM2Zk9utfS1Sx8ULgcm7I/NTVNcG41onnPlnnT3K124KByZT
 mIfO2HkTq9FJRo3L4MpiuHMscBBMPk0I7L3x9U/1u9e+24IbBVG1+7vvK g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="289921046"
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="289921046"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 06:53:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="661157793"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 06:53:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  1 Aug 2022 16:52:58 +0300
Message-Id: <20220801135259.3039679-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20220801135259.3039679-1-imre.deak@intel.com>
References: <20220801135259.3039679-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/amd/display: Fix 'no previous
 prototype' compiler warns in amdgpu_dm_plane.c
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
Cc: Alan Liu <HaoPing.Liu@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 intel-gfx@lists.freedesktop.org, Harry Wentland <Harry.Wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix compiler warnings like the following triggered by
'-Wmissing-prototypes':

  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_plane.o
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_plane.c:83:31: warning: no previous prototype for â€˜amd_get_format_infoâ€™ [-Wmissing-prototypes]
 const struct drm_format_info *amd_get_format_info(const struct drm_mode_fb_cmd2 *cmd)

Fixes: 5d945cbcd4b1 ("drm/amd/display: Create a file dedicated to planes")
Cc: Harry Wentland <Harry.Wentland@amd.com>
Cc: Alan Liu <HaoPing.Liu@amd.com>
Cc: Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c
index 5eb5d31e591de..da3b086b0d6ef 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c
@@ -33,6 +33,7 @@
 #include "amdgpu.h"
 #include "dal_asic_id.h"
 #include "amdgpu_display.h"
+#include "amdgpu_dm_plane.h"
 #include "amdgpu_dm_trace.h"
 #include "gc/gc_11_0_0_offset.h"
 #include "gc/gc_11_0_0_sh_mask.h"
-- 
2.37.1

