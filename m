Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E974712ACB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8684F10E826;
	Fri, 26 May 2023 16:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6585D10E825
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119128; x=1716655128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h3GANNN96h7SUverMhbUaMHRSzMbcaAsxL/gcFlVM+o=;
 b=Pp1Q1GZK09enisAd96ONA7NDTiJeegMvfiNl3AwHpAq/4c6aTT+Ny+rx
 S9SIZiA81GC/0JxkAZrVmMIGXdTAHeVa7tTsE4TcqCs/XguBUTsAMFoF7
 +81fFKaJt4ClKGO3cf/3NNkCLifqSs+BP7VU1NgzT7/PQuehRfEKRt6Ix
 /whJo3gFDKVsyUBP38soU5i8q+IxTiZFYrtWHRTTybZJwzZ8yUQWhBN+G
 H32KxWX/gUV88JAnJN3f6aPmjV0Qq7gBBS3GOSpuhS4vw/KAnSQUNhvo7
 Funyj4w0Lnsl+MEu4mRpNip4Xy1FPSCGBb/ytUF0+/Dge48uOoppPKr8j g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="353087579"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="353087579"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736056630"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="736056630"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:02 +0300
Message-Id: <6831c21567e8e84da424f32a8b7b48932803ab7b.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915/gem: drop unused but set
 variable unpinned
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5fb459ea4294..cfd7929587d8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -736,7 +736,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	struct eb_vma *ev;
 	unsigned int pass;
 	int err = 0;
-	bool unpinned;
 
 	/*
 	 * We have one more buffers that we couldn't bind, which could be due to
@@ -776,7 +775,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			pin_flags |= PIN_NONBLOCK;
 
 		if (pass >= 1)
-			unpinned = eb_unbind(eb, pass >= 2);
+			eb_unbind(eb, pass >= 2);
 
 		if (pass == 2) {
 			err = mutex_lock_interruptible(&eb->context->vm->mutex);
-- 
2.39.2

