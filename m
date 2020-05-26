Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F151E221F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 14:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDB16E184;
	Tue, 26 May 2020 12:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737166E184
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 12:42:11 +0000 (UTC)
IronPort-SDR: gc0/6tof7vVGiep3NfvefjyleAz+JeDTpTkDFRv4Li16LCzs1eL792a2lTOYQa761oCMjbTSq7
 LX/zhcbxvzSg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 05:42:10 -0700
IronPort-SDR: UCkuVDH3VS2QeZwJ4XzriG0MzhdKf43bNMhlXR19Fhxpv4DwZWZ1zDBlALygGyEyimlMWVfbXp
 k4ufDhswfrMg==
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="413805387"
Received: from ygershon-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.42.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 05:42:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2020 15:41:54 +0300
Message-Id: <20200526124156.29319-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526124156.29319-1-jani.nikula@intel.com>
References: <20200526124156.29319-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/params: fix i915.fake_lmem_start
 module param sysfs permissions
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
Cc: Jani Nikula <jani.nikula@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

fake_lmem_start does not need to be mutable via module param sysfs. It's
only used during driver probe.

Fixes: 1629224324b6 ("drm/i915/lmem: add the fake lmem region")
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index add00ec1f787..a3dde770226d 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -173,7 +173,7 @@ i915_param_named(enable_gvt, bool, 0400,
 #endif
 
 #if IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)
-i915_param_named_unsafe(fake_lmem_start, ulong, 0600,
+i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
 	"Fake LMEM start offset (default: 0)");
 #endif
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
