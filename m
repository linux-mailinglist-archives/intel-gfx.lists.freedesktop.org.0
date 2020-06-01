Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFAC1EB152
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 23:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A416E0FB;
	Mon,  1 Jun 2020 21:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D2A6E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 21:55:25 +0000 (UTC)
IronPort-SDR: TWjYoAKoe9JMGx630tNMqA/qiRNRHTJVgrw139YLVU3+nPuXt3+wwMffiy4zER7m/ydXcbbkAN
 3lRNreHbRRLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 14:55:24 -0700
IronPort-SDR: CjbL8oJhxfMCG6XxEo/hX+5ngY6HAjQDhMgFBu1uU+QuwgBJwEkU9gtfFDTY5CRPaqA4EEj1Hu
 i6KA4UfRGcZg==
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="257392905"
Received: from lepple-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.243])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 14:55:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jun 2020 00:55:09 +0300
Message-Id: <20200601215510.18379-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601215510.18379-1-jani.nikula@intel.com>
References: <20200601215510.18379-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/params: fix i915.fake_lmem_start
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
Cc: jani.nikula@intel.com, Matthew Auld <matthew.auld@intel.com>,
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
