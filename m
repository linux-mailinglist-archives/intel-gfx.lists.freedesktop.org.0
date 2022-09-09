Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DD35B2B0E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 02:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64DFC10E8B6;
	Fri,  9 Sep 2022 00:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A960210E87D;
 Fri,  9 Sep 2022 00:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662682614; x=1694218614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kr1LciugNNttTLX2Mwa/1HEeInKy09QHn+EpUr3G1aE=;
 b=ERzLfDg8/DttNE4P5hb+70JeGcdUreCHxH1egedpZKfvJ0FFNOaUJ5JI
 NzrUPnlrEAQGmZhRibBi0iUo9Tp1UmbhBliDt6MWAn4DnsGNiXJNk39OC
 CE2S1JCRu4DezQUT2bQHWTHSEBAjD9tZDBCxR5KGiUrxS0q5G5mHdNM26
 VE+if/iq0w3wsavWwVfnauwzHXqIuWg+Uvt/g7xwfc8h7f3n6sYY+AFdV
 tVEYsFboFcV/TBCR61U4bwNkH7GJHpK6wXM7XVhg8CraeFaC3LI/cSqAC
 P9z4TyVIwdhLujfWx/MBpVMDnlhN/bViOv4loiPGNj7gncD1a9qnPNHb3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="294938885"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="294938885"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 17:16:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676933267"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 17:16:54 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 17:16:12 -0700
Message-Id: <20220909001612.728451-16-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
References: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 15/15] HAX: drm/i915: force INTEL_MEI_GSC and
 INTEL_MEI_PXP on for CI
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Both are required for HuC loading.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index e7fd3e76f8a2..a6576ffbc4dc 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -48,6 +48,8 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
+	select INTEL_MEI_GSC
+	select INTEL_MEI_PXP
 	select BROKEN # for prototype uAPI
 	default n
 	help
-- 
2.37.2

