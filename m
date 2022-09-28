Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 855CD5ED221
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F53C10E20A;
	Wed, 28 Sep 2022 00:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC0510E1F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325628; x=1695861628;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iioKuYXtdfMXCsR8ZcK53oTyYLK0lhGFNLxLbSZ37Wc=;
 b=EQe0WT+vvVbyuwtSyPNt4uiFsdtMHVpaplqCPLF1A/027tR0JiBI9pVm
 eEnuS5PCM2+qVMY6DEaG8NbywobZCs+wMkRfJS4ZTQLSpSD/LEwVtckt4
 O2fa3z+bDx/HAJx2wQOU0P6p37wvRFH2DwZl+gMBm9wDZc0THh1tSS2Yl
 rjSmPfj3LhXnZcUX5jK0mDD7azJOVPJeNFHHRkRCXGqZk7vJfbhmPoUOm
 xAlZpe/9ZlR47G6HG/hfbYenYMYoCVxISKfcJbj4AeoJS8SjSdj7y66zt
 X9CeeJcgfgl52LVefhZfqOdukgYkkzPHvT5ZGEt6uCrD0wgL35VDt1lPo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752095"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752095"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841197"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841197"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:27 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:45 -0700
Message-Id: <20220928004145.745803-16-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 15/15] HAX: drm/i915: force INTEL_MEI_GSC and
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Both are required for HuC loading.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 93dfb7ed9705..df87570dd54d 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -40,6 +40,8 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
+	select INTEL_MEI_GSC
+	select INTEL_MEI_PXP
 	select BROKEN # for prototype uAPI
 	default n
 	help
-- 
2.37.3

