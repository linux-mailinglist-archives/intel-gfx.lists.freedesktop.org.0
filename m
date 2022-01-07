Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CBA48750C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 10:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3227511B813;
	Fri,  7 Jan 2022 09:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4837A11B813
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641549173; x=1673085173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VK8sk5HNcKE901CIB2/5AcoGrucZrUHa/Iw0VdJarfo=;
 b=OGdg1jbcKZNHXDBuENYum/2FrJklrfG5tZaaTRsFKEq/28NlycfscCTD
 WRAI+oc7kKYbigR4iw2bgWXF4KZSq6B0pzRnsgspGBBfCBRwP90hNkcgK
 fwsI0S0iIbvVUcmjyTGiw6PQlQGJbi9hDpp1cwgeXoFgE4zrNSiSoHyL2
 dUc0k/0fAlp1uN7l1tk4MJXpnU+CxdgjHdRwohYQkhczbojHbHdNIDfCB
 1CI+QLliAhBt2NtzKff+2PWRMzkVBWIU0UT0U9qGwS59rPN9dBELvwV8o
 WDpVs8m7o6ENVYZSq7vtxhvTBLzeE0BWDqFxg6AplrztzHBUfGQEf4vu8 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="240395118"
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="240395118"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:52:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="761443632"
Received: from rsarin-mobl.amr.corp.intel.com (HELO
 smullati-desk.amr.corp.intel.com) ([10.212.55.135])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:52:50 -0800
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Fri,  7 Jan 2022 15:22:35 +0530
Message-Id: <20220107095235.243448-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gvt: Make DRM_I915_GVT depend on X86
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

GVT is not supported on non-x86 platforms, So add
dependency of X86 on config parameter DRM_I915_GVT.

Signed-off-by: Siva Mullati <siva.mullati@intel.com>
---
 drivers/gpu/drm/i915/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index a4c94dc2e216..cfd932514da2 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -101,6 +101,7 @@ config DRM_I915_USERPTR
 config DRM_I915_GVT
 	bool "Enable Intel GVT-g graphics virtualization host support"
 	depends on DRM_I915
+	depends on X86
 	depends on 64BIT
 	default n
 	help
-- 
2.33.0

