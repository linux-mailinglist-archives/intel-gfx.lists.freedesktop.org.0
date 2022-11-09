Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7617A623338
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 20:10:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8127610E626;
	Wed,  9 Nov 2022 19:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B1F10E626
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668021054; x=1699557054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e6o2iw5GGxg52ODYXfhWmxxEkXpHYpZprWDIoibYlmQ=;
 b=MBHyOTq0w38wrQYXzpvnT1LQBCrZ6w594UNAdEw1z+JDiovV5a5QP+Aq
 coagYcBXMtMYiRKxiuZXKiuq4ts1CDkJYLzb53KL2tY4yGxpqONBtQw/Y
 V5/A9a2MmuGXuelX+cfJWkJY8zN6GlkWhW7KfqmE/1PyA2guFEvjvaYSI
 zRC/hj1uZix+WXomWnX+zpRjINFCmNpfnYw2DBhvuzIT8ghcd7FXKKIyW
 IG0vXMRmxxJAzDbn16w8V+/gG+bB0JGMy70zT4aEV0y0okd7mok0isXoq
 fnVZ0ULYwEc0cSSC/rxB4+2ah4g+JTqBvbp+cRODza5WwEYPpb0fizdXk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="312874877"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="312874877"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="668105834"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="668105834"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.6.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:25 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed,  9 Nov 2022 20:09:36 +0100
Message-Id: <20221109190937.64155-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
References: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Fix unintended submission flush
 after retire times out
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If wait on request DMA fence times out while we are retiring requests,
-ETIME is stored as remaining time.  Then, flush_submission() called
thereafter proceeds with its work instead of returning immediately due to
the value of timeout passed to it not equal 0.  That's probably not what
was intended.

Fix it by replacing -ETIME value of the argument with 0.

Fixes: 09137e945437 ("drm/i915/gem: Unpin idle contexts from kswapd reclaim")
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 6c3b8ac3055c3..309d5937d6910 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -204,7 +204,7 @@ out_active:	spin_lock(&timelines->lock);
 	list_for_each_entry_safe(tl, tn, &free, link)
 		__intel_timeline_free(&tl->kref);
 
-	if (flush_submission(gt, timeout)) /* Wait, there's more! */
+	if (flush_submission(gt, timeout > 0)) /* Wait, there's more! */
 		active_count++;
 
 	if (remaining_timeout)
-- 
2.25.1

