Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD476F4773
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84BF010E314;
	Tue,  2 May 2023 15:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B06A10E5A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041930; x=1714577930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0D3ZfZLojgqr5WPa/bncvgHGD6ucjzHq8S1o6VxSpqo=;
 b=eelDV/fwyYmfYwwhG30ECOofdu6cbM++P9aVU4LeaDUyjkEKOm4/Llim
 yjxYo1oUhItYF8brAEKZwKf5O+wVlj2rJcFPlEBjZkzPwZfx+BJvQRa6u
 KNXUAiSihwP71+FcDEVL083Mb2X6cwuKHxP8LNVdrg6TSFy2oia+OdwmK
 vP/2h3JdgDv9EcZ7n0VhrfRUSEEmr+AxrzoaWPnj/InOISnybLOw6XnVL
 4UBFhVNi7vYilyzHvJv6fjBZIKYIc1kxxtwZXZb7T8NeWyyFjkipvP5SH
 qJp+pUMN5uDvRVfe2sBjq2FzWgQt6Tt1mpbUYlSJwTHFrgvckPhuErYZy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337554199"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="337554199"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="728976835"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="728976835"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:30 +0300
Message-Id: <8359a1cef6b5ab268a9dcc1a382281b6e39cfa64.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/24] drm/i915/context: fix kernel-doc
 parameter descriptions
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

drivers/gpu/drm/i915/gt/intel_context.h:108: warning: Function parameter or member 'ce' not described in 'intel_context_lock_pinned'
drivers/gpu/drm/i915/gt/intel_context.h:123: warning: Function parameter or member 'ce' not described in 'intel_context_is_pinned'
drivers/gpu/drm/i915/gt/intel_context.h:142: warning: Function parameter or member 'ce' not described in 'intel_context_unlock_pinned'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 48f888c3da08..6b5eae7b88bc 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -97,7 +97,7 @@ void intel_context_bind_parent_child(struct intel_context *parent,
 
 /**
  * intel_context_lock_pinned - Stablises the 'pinned' status of the HW context
- * @ce - the context
+ * @ce: the context
  *
  * Acquire a lock on the pinned status of the HW context, such that the context
  * can neither be bound to the GPU or unbound whilst the lock is held, i.e.
@@ -111,7 +111,7 @@ static inline int intel_context_lock_pinned(struct intel_context *ce)
 
 /**
  * intel_context_is_pinned - Reports the 'pinned' status
- * @ce - the context
+ * @ce: the context
  *
  * While in use by the GPU, the context, along with its ring and page
  * tables is pinned into memory and the GTT.
@@ -133,7 +133,7 @@ static inline void intel_context_cancel_request(struct intel_context *ce,
 
 /**
  * intel_context_unlock_pinned - Releases the earlier locking of 'pinned' status
- * @ce - the context
+ * @ce: the context
  *
  * Releases the lock earlier acquired by intel_context_unlock_pinned().
  */
-- 
2.39.2

