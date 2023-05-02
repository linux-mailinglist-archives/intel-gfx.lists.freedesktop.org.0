Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670F76F477A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B76BB10E57F;
	Tue,  2 May 2023 15:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B8410E57F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041954; x=1714577954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z5gfl6zhpenY0NOxIo0DbNB/36p5vgZgUI8xam8UEBQ=;
 b=dmaEuakDpR9xAyX1ixYPMxIt0rgkE6FYD4+kewUfkjPrDBY/Ggar/K0E
 MNvTYITayEIBKH77Oets44mmRj0/3sVG8SKN/kTD7mei5TX7r5G96WEsA
 JcjJ2mbNvalXKYnZfT7cnxzDn74AO+NGv6pH6RHbjUXSB2NhqwIztNSYO
 9j6FnivFsFBpkNQo4TrOv7nXa2WuxeKoQBkfFfmUK0fUJQihh5d/jaJYY
 aYmfnGVYqC5NS5iXgM0BKUIL0FOdh7ZmzBn45PCLdhoyhtNx0HDpjqMcC
 QtIUmr/2w0pMTVcNyuxsex10wft5cqKKvxPGyYwfw/qyXrG7dnWLUKuzt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="332790976"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="332790976"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="699016119"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="699016119"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:36 +0300
Message-Id: <7f201c6cb715e4b3cece78ffa893a75610ecd27d.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/24] drm/i915/active: fix kernel-doc for
 function parameters
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/i915_active.h:66: warning: Function parameter or member 'active' not described in '__i915_active_fence_init'
drivers/gpu/drm/i915/i915_active.h:66: warning: Function parameter or member 'fence' not described in '__i915_active_fence_init'
drivers/gpu/drm/i915/i915_active.h:66: warning: Function parameter or member 'fn' not described in '__i915_active_fence_init'
drivers/gpu/drm/i915/i915_active.h:89: warning: Function parameter or member 'active' not described in 'i915_active_fence_set'
drivers/gpu/drm/i915/i915_active.h:89: warning: Function parameter or member 'rq' not described in 'i915_active_fence_set'
drivers/gpu/drm/i915/i915_active.h:102: warning: Function parameter or member 'active' not described in 'i915_active_fence_get'
drivers/gpu/drm/i915/i915_active.h:122: warning: Function parameter or member 'active' not described in 'i915_active_fence_isset'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_active.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 7eb44132183a..77c676ecc263 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -49,9 +49,9 @@ void i915_active_noop(struct dma_fence *fence, struct dma_fence_cb *cb);
 
 /**
  * __i915_active_fence_init - prepares the activity tracker for use
- * @active - the active tracker
- * @fence - initial fence to track, can be NULL
- * @func - a callback when then the tracker is retired (becomes idle),
+ * @active: the active tracker
+ * @fence: initial fence to track, can be NULL
+ * @fn: a callback when then the tracker is retired (becomes idle),
  *         can be NULL
  *
  * i915_active_fence_init() prepares the embedded @active struct for use as
@@ -77,8 +77,8 @@ __i915_active_fence_set(struct i915_active_fence *active,
 
 /**
  * i915_active_fence_set - updates the tracker to watch the current fence
- * @active - the active tracker
- * @rq - the request to watch
+ * @active: the active tracker
+ * @rq: the request to watch
  *
  * i915_active_fence_set() watches the given @rq for completion. While
  * that @rq is busy, the @active reports busy. When that @rq is signaled
@@ -89,7 +89,7 @@ i915_active_fence_set(struct i915_active_fence *active,
 		      struct i915_request *rq);
 /**
  * i915_active_fence_get - return a reference to the active fence
- * @active - the active tracker
+ * @active: the active tracker
  *
  * i915_active_fence_get() returns a reference to the active fence,
  * or NULL if the active tracker is idle. The reference is obtained under RCU,
@@ -111,7 +111,7 @@ i915_active_fence_get(struct i915_active_fence *active)
 
 /**
  * i915_active_fence_isset - report whether the active tracker is assigned
- * @active - the active tracker
+ * @active: the active tracker
  *
  * i915_active_fence_isset() returns true if the active tracker is currently
  * assigned to a fence. Due to the lazy retiring, that fence may be idle
-- 
2.39.2

