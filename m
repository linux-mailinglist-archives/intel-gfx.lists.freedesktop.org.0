Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D258D704742
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 10:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E3710E319;
	Tue, 16 May 2023 08:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701BB10E319
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 08:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684224044; x=1715760044;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U5vYM9SgMN4xqjSiv45gVt+zzsJbG1gA3bBa3gS0WNI=;
 b=STjYmrT8fwO9b6XSM3p+H+8CAFoNEKiXpy6NAFi9H4t78+/p750LJFiq
 AMAY86vpvdkCdJi+tWJz90Ir3UCaQNwaYxPYyvV51GDeyK94i5yiURV4s
 9lNMsyn8kOqZ5hLqtkorE7trTdt6EyL0EHnJGQlgq+mL/ahwmoxactXLx
 mXxAcsV4oSsR/E63xTuFLuBtInD3K2C29BsX2GiQenUX6MUNTNE3L5WAo
 qpfuRM7eyjvMNUbHFYAea4dmNZdKNkkNmYpAKGqWcw+AijJQ3pLAd/aGn
 A08TAQOjXFTtXJo7uoD4lOPSRcJbZbACU1oe+FMAYb5w/1bDAcFWFtTt9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="331028908"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="331028908"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 01:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="825480863"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="825480863"
Received: from khach-mobl.ger.corp.intel.com (HELO localhost) ([10.252.49.69])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2023 01:00:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 11:00:38 +0300
Message-Id: <20230516080038.2647317-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND] drm/i915/syncmap: squelch a sparse warning
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

The code is fine, really, but tweak it to get rid of the sparse warning:

drivers/gpu/drm/i915/selftests/i915_syncmap.c:80:54: warning: dubious: x | !y

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_syncmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_syncmap.c b/drivers/gpu/drm/i915/selftests/i915_syncmap.c
index 47f4ae18a1ef..88fa845e9f4a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_syncmap.c
+++ b/drivers/gpu/drm/i915/selftests/i915_syncmap.c
@@ -77,7 +77,7 @@ __sync_print(struct i915_syncmap *p,
 		for_each_set_bit(i, (unsigned long *)&p->bitmap, KSYNCMAP) {
 			buf = __sync_print(__sync_child(p)[i], buf, sz,
 					   depth + 1,
-					   last << 1 | !!(p->bitmap >> (i + 1)),
+					   last << 1 | ((p->bitmap >> (i + 1)) ? 1 : 0),
 					   i);
 		}
 	}
-- 
2.39.2

