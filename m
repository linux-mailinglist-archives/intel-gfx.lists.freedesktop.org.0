Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990884F7FB0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E964310EABC;
	Thu,  7 Apr 2022 12:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0371610EABC
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649336384; x=1680872384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gFxb3DcQUl/U8DKlf/jJ5rCfrBYHcpYDaXvWeq6hmMg=;
 b=FuwWFSrS/gLYg1senrj4HhHvrDjfLtcATQeTa267IGhK7gvTsU4WL2o0
 k6RsrPEXu/YoLI7Y3R0kOplTxVn0IkTiDPMl+rA2gvVli5/8iYqFXg1To
 9jeMMXxAwe4DqRzOw3BzL/jrKhgAx/9LqzdOBYL0Ud4bBNuNf8dWfGNx0
 IpfBNwaa1GGe7l7EOFMUru0tmOfhl8ca6xtM06WSd5HqrwLL5squ41mwi
 DOBfg4Oj4URDs3VJ9FWciPFUFRR3QjlBMkQrPMW8W3Du59l64fmFpntqi
 MdJVeaIIuxFeHa0e5LPyYkaMxnYH16L0+twwbl7j+U93o2LRLiVFoQtqw A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="241245601"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="241245601"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571040841"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:40 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  7 Apr 2022 15:58:25 +0300
Message-Id: <20220407125839.1479249-7-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/20] HAX: drm/i915: force INTEL_MEI_GSC on for
 CI
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
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

After the new config option is merged we'll enable it by default in the
CI config, but for now just force it on via the i915 Kconfig so we can
get pre-merge CI results for it.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
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
2.32.0

