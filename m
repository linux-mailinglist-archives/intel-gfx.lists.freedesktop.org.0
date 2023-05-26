Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C44712ACC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC8610E82B;
	Fri, 26 May 2023 16:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5353C10E826
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119132; x=1716655132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pB4LR7bHTjJsV3MiPDsNn5ko+0MrhqhmfTMz5QDDtmg=;
 b=WFx2POUBwUuGCiYuVAd0UIeCkWLKG76Lj785YFO0WzCuTyhP/XwLNchU
 MFCAoQSTbxekPHP2gorSW4iypcN07nBomkFn3KxcpUDNL8os5IyrxWOnr
 PaegfhSEc2uArocI9zPDyenqOoyDOdJwaK4/Hi4gM5CwspMcvOAiqKbx3
 PKFvJOT7OJBhUpzCF8rG34usw2dWPyO88DKf2yJgUhqjhx3mR8RInqKpe
 lHn9CxvRTyc1dunUa0EUwj6Y3e8X7O2kwcfPPmWAaQzP9I6J7MC34iwfk
 7aFKTXC+EWG3qo7zUBFbe7x1FdhVjxVtorby7o/BdKbnRprqZZzdGStRe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="353087594"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="353087594"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736056658"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="736056658"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:03 +0300
Message-Id: <9ee9e7d7a0a7ad4ff03c14e64b95d3fbcb7885a4.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/i915/gem: annotate maybe unused but
 set variable c
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

Prepare for re-enabling -Wunused-but-set-variable.

The variable 'c' appears unused, but I'm not sure what should be done
with it. Annotate it with __maybe_unused.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index cad4a6017f4b..33d5d5178103 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -455,7 +455,7 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
 		struct page *page;
 		void *data, *vaddr;
 		int err;
-		char c;
+		char __maybe_unused c;
 
 		len = PAGE_SIZE - pg;
 		if (len > remain)
-- 
2.39.2

