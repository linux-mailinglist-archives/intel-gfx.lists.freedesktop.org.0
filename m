Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E50DA604ED5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92AC310EB50;
	Wed, 19 Oct 2022 17:34:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85A1410F2A3
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200850; x=1697736850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U7LArZuNthshDvVK5CBxK7+jHExXUGsLdkjMMWrwBEw=;
 b=gXYdHEub5QAcILq7vdZUkihNC9iLYNUYQwSflxUXzQ83HsNB4zS2rIM8
 Ydm4JJtiwDCo+s0TFJfBUkZGkftaHaGvg0P4In3i/Hbf8oQjkUvSOmcGM
 pj4Po5bcJURxQjoel5E7AQcF1qn0Vcb9GJA9l8PDnV9fHrD1OhZp0+eAW
 3gftW/wHg9tlnRGI0s4DOgVC8wmxc7FF/mRaDEwEoGXh8lbXxptbKc9fT
 9qxwTvpSD/lkSWA+bnQbAikMGBMnT6nJ6/gTzLj67mBRHkBPAeJQoR2BK
 obW0Suj4z4Ou3IFiUaR1sae7avuT7i23JUk+L7L61H9abdhnRAPcnzZ2c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201797"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201797"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:34:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204910"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204910"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:34:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:52 +0100
Message-Id: <20221019173254.3361334-16-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 15/17] drm/i915: Migrate client to new owner on
 context create
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Some usage models pass a drm file descriptor from a creating process to
the client which will actually use it.

Use the core drm helper on GEM context create to account for this and
ensure client's resource usage is tracked in the correct cgroup.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 1e29b1e6d186..5f6af306e147 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -69,6 +69,7 @@
 #include <linux/nospec.h>
 
 #include <drm/drm_cache.h>
+#include <drm/drm_clients.h>
 #include <drm/drm_syncobj.h>
 
 #include "gt/gen6_ppgtt.h"
@@ -2300,6 +2301,8 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	args->ctx_id = id;
 	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
 
+	drm_clients_migrate(file);
+
 	return 0;
 
 err_pc:
-- 
2.34.1

