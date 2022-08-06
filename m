Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3311958B587
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 14:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9149BF6FC;
	Sat,  6 Aug 2022 12:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0789C185E
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Aug 2022 12:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659788886; x=1691324886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IlWP1RVxeGf8P5QVffwpRcNTbvB6eKDRV4QlSHfeCwE=;
 b=f5iTYgpCIYqJ2IctDoFd6ezzxPldb/R0O63ZacVxgiqAVA6fEs6GJ56r
 TYX04ZTP4PSnjyVBdfTSLNYvh5MinzanaXM4QkVEJpRVilZiG/ZznE3q5
 N7uns2O9Md9t5OGdkCAIxIbcAb3fH8Rx+S99bW5te4NYuRdJWAH5Id6RA
 2FyB69XvzYJ/vXUERko9D3RJOODJXtmnpQ3vEwog61ouKBOBhvBOe2Cw+
 ebuB5mKWUx/UjuMBRjOEVoXiuRfuWfhBeaJCrBCKfg9TKdrQoBLH+5wEr
 QiyULw7n8V+eBNuNMQ0sEwkRktYcbye1W1txhXF5P8UBNuK7vyxaRbBP+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="376658414"
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="376658414"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:28:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="632329170"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:28:02 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sat,  6 Aug 2022 15:26:36 +0300
Message-Id: <20220806122636.43068-16-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220806122636.43068-1-tomas.winkler@intel.com>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 15/15] HAX: drm/i915: force INTEL_MEI_GSC on
 for CI
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

After the new config option is merged we'll enable it by default in the
CI config, but for now just force it on via the i915 Kconfig so we can
get pre-merge CI results for it.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index e7fd3e76f8a2..be4ef485d6c1 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -48,6 +48,7 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
+	select INTEL_MEI_GSC
 	select BROKEN # for prototype uAPI
 	default n
 	help
-- 
2.37.1

