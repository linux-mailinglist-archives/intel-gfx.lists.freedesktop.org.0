Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E382F5B7630
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 18:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87C410E4FA;
	Tue, 13 Sep 2022 16:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 768F310E4A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 16:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663085471; x=1694621471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/j726eJ9WAlzlWLhulOX1j9JsrfeieihdKtLy8PgYzA=;
 b=SiIZCrHRRipMZK3G6x4uCium9Azd4HlmpM/UfuW/tMBt3tIapCE7XCWX
 A+G6GNJHdnAMJEBJMEi+w09mLH9jekC1fJazog2WuZ7MT3ZIsoNIQS47n
 FdVsjVm9lzXzC9GoQjose6v5VHKagZLBrcbR9a7tVfDXiAmkrkKClwcK0
 M268Q8KTDPe1q0GLykO+h7ESVHys7PKeDSeucfCEcv4otwo0DfR4fBlgi
 QpsjGLqG2mtpwaBkOtuOno6ZEiESQU/M5dkG3IiZK0WSFP7Z2hpwwHUlV
 aEHn5kC/w6nFCE9lMV9ApacQLk9SCBBWFIjN0LMpa29yNOekfUd82ruEY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="299518455"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="299518455"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 09:11:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="678631601"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.10.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 09:11:09 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 18:10:38 +0200
Message-Id: <20220913161039.155964-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913161039.155964-1-janusz.krzysztofik@linux.intel.com>
References: <20220913161039.155964-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Flush contexts on driver
 release
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
Cc: drm-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Due to i915_perf assuming that it can use the i915_gem_context reference
to protect its i915->gem.contexts.list iteration, we need to defer removal
of the context from the list until last reference to the context is put.
However, there is a risk of triggering kernel warning on contexts list not
empty at driver release time if we deleagate that task to a worker for
i915_gem_context_release_work(), unless that work is flushed first.
Unfortunately, it is not flushed on driver release.  Fix it.

Instead of additionally calling flush_workqueue(), either directly of via
a new dedicated wrapper around it, replace last call to
i915_gem_drain_freed_objects() with existing i915_gem_drain_workqueue()
that performs both tasks.

Fixes: 75eefd82581f ("drm/i915: Release i915_gem_context from a worker")
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: stable@kernel.org # v5.16+
---
 drivers/gpu/drm/i915/i915_gem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a3373699835d7..31c197f2d8cb9 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1191,7 +1191,8 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 
 	intel_uc_cleanup_firmwares(&to_gt(dev_priv)->uc);
 
-	i915_gem_drain_freed_objects(dev_priv);
+	/* Flush any outstanding work, including i915_gem_context.release_work. */
+	i915_gem_drain_workqueue(dev_priv);
 
 	drm_WARN_ON(&dev_priv->drm, !list_empty(&dev_priv->gem.contexts.list));
 }
-- 
2.25.1

