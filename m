Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C0162BBC2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 12:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E32A10E487;
	Wed, 16 Nov 2022 11:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 501C410E47D;
 Wed, 16 Nov 2022 11:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668597963; x=1700133963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eqH3EStze88zMcUpQM7CyuSzBu94jD0o2LohB7AWFeQ=;
 b=K5VxSEEg4aF5dXnOGA6EKCrPXaPyOQS8esJcf6pRENJzxZ8mVaiYU2/n
 YtPdJCTLKrfDskm2PcXCCLXLaruvtShvBQaSks6gbQzQkQqpdpcwkdMLi
 a5IXZkdYJiY41lYC+CtiqPCzjBzD3qCueAgr2W+y4+aXSNdl6ZRZhSkoR
 seOwvEVzZEoguwrQF66tKlnX5PoFiGIeamfAfNl8yTqUP5UN7a9IpaRd3
 cd02JxVHgCsD/NQ+bUJUnbPlwlaW/WZXIR7e7s2r5cSobfRoXdQZRzEEs
 RTVTS9UjytVuBa9HIKep7G0d1oDxKk0nk3ZBLOfZvMknmk7Dg1IHMVhEE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="295885164"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="295885164"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 03:26:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="670468952"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="670468952"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.12.208])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 03:25:59 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed, 16 Nov 2022 12:25:31 +0100
Message-Id: <20221116112532.36253-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221116112532.36253-1-janusz.krzysztofik@linux.intel.com>
References: <20221116112532.36253-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Never return 0 on timeout when
 retiring requests
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Users of intel_gt_retire_requests_timeout() expect 0 return value on
success.  However, we have no protection from passing back 0 potentially
returned by dma_fence_wait_timeout() on timeout.

Replace 0 with -ETIME before using timeout as return value.

Fixes: f33a8a51602c ("drm/i915: Merge wait_for_timelines with retire_request")
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: stable@vger.kernel.org # v5.5+
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index ccaf2fd80625b..ac6b2b1861397 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -213,6 +213,9 @@ out_active:	spin_lock(&timelines->lock);
 	list_for_each_entry_safe(tl, tn, &free, link)
 		__intel_timeline_free(&tl->kref);
 
+	if (!timeout)
+		timeout = -ETIME;
+
 	if (flush_submission(gt, timeout)) /* Wait, there's more! */
 		active_count++;
 
-- 
2.25.1

