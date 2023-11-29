Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B317FDE7A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 18:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A16E810E644;
	Wed, 29 Nov 2023 17:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8530910E644
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 17:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701279311; x=1732815311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U5vYM9SgMN4xqjSiv45gVt+zzsJbG1gA3bBa3gS0WNI=;
 b=NJjrSwUX1agLQVGbc17Hzbibfcz7d45iuJ43uRdJMtWN6gOqORvBxTyj
 RaQcj9UB9GUQHKfNyECpoZ4CPibt6M0ToKfniwXu4zovnUPFm3rN0D2SQ
 bkoQeNTxFFtS2QIbouMxVirJZCfJZXm3A2hIujYq0vl+Pd3/8M1ywCu0R
 cPS/ZtPTeGS7er3Ztl42L0/l0mTJ+cl5G0xQqOjamhnyHR0YDyFVrz+u+
 rYuMBaB8I/Rcd2fcz3ZAq164StDdo1HAVuBaguE3POZWmXFsMsyJpZTBJ
 qcRrJKw5XgSG3NDNbGNiyYETd1ZAYUqMlM8gd5WRPy5d7eDOqd6Do5lDO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="424350604"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="424350604"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:35:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="839505778"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="839505778"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.61])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:35:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 19:35:06 +0200
Message-Id: <20231129173506.1194437-1-jani.nikula@intel.com>
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

