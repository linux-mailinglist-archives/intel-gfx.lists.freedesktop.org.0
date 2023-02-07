Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B6668D6F5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 13:40:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F9D10E4EB;
	Tue,  7 Feb 2023 12:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5963A10E20B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 12:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675773641; x=1707309641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dOZcVgbEXEsCs6DmyXDzKbbzsldeDoja/CHskM+a+4w=;
 b=NTbQSLH9YGikEYYmOEBCR3uB7mhLZH9qsSqpXSB5tJYPbakbIKQGqOef
 oZKtk+OYKOgeSRutqknXHfzRBVYPm7KEhOq5xholm5+on7SF+aaP8kUGy
 zEpfgOFz2ZPYNaQUGS5TSnVR0OHyQK6maLLuf9/5AAz8FAEyhvMsDEaCI
 ueVIvsZXhyFP4yUKCYZWr0tRAEGfxvBe2MQoRbCnypZQkKGkJ0/gjAAyt
 Gmw77+h/Esf9lqfssSYobJ82BPuO42wMFVQfLiUDbgFxwo20bqkue7Rv9
 om5qAFeeQc6PcsAMN6Yg7kVOWTfiBx6j+htKPFaHFHXNWCd+lydZXfRFM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="328136544"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328136544"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="790791951"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="790791951"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 14:40:25 +0200
Message-Id: <20230207124026.2105442-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207124026.2105442-1-jani.nikula@intel.com>
References: <20230207124026.2105442-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/syncmap: squelch a sparse warning
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
2.34.1

