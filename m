Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2522E623334
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 20:10:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E958510E069;
	Wed,  9 Nov 2022 19:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50BF310E069
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 19:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668021025; x=1699557025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DsqDFyDE3Xf+Eud5zTFYaL4RaK2z0k0BfhahtubW9bI=;
 b=kE336X6z+b2bXzyS5UTEaD2lBKjSsIZqzcfLTLt1CtBSIP9qpvO0e572
 0PL8kmVMkdZY7ao1rFMnY1R+yi5dQxCB9D/WwGMfIMPyXzb8ULd+YsV8A
 htIlURBUh7eed/uMxujGfGo7EyC7a11xUDWLXXi7Tsxb40JWRNFzrsJ6u
 YC4vty0AI8oAOex3rrNTCLyHXd4dJODD+GY1PKHNzNtIAjgslk+sb76yZ
 6cEJBPUo5b/3p68DvL+N1wVsokeRy9QnyOnnC0XBt0aIJ3ncNb0OBuscs
 KR1x9ub4fVPMpAzz/zbi/a9TxViZmPqQYc2dKVnhkwLKH9Qcth1neBJZI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291465750"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="291465750"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="668105815"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="668105815"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.6.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:22 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed,  9 Nov 2022 20:09:35 +0100
Message-Id: <20221109190937.64155-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
References: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Fix timeout handling when
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I believe that intel_gt_retire_requests_timeout() should return either
-ETIME if all time designated by timeout argument has been consumed while
waiting for fences being signaled, or remaining time if there are requests
still not retired, or 0 otherwise.  In the latter case, remaining time
should be passed back via remaining_timeout argument.

Remaining time is updated with return value of each consecutive call to
dma_fence_wait_timeout().  If an error code is returned instead of
remaining time, a few potentially unexpected side effects occur:
- we no longer wait for consecutive timelines' last request fences being
  signaled before we try to retire requests from those timelines -- while
  expected in case of -ETIME, that's probably not intended in case of
  other errors that dma_fence_wait_timeout() can return,
- the error code (a negative value) is passed back as remaining time and
  if no more requests happen to be left pending despite the error, a user
  may pass that value forward as a remaining timeout -- that can
  potentially trigger a WARN or BUG,
- potentially unexpected error code is returned to user when a
  non-critical error that probably shouldn't stop the user from retrying
  occurs while active requests are still pending.
Moreover, should dma_fence_wait_timeout() ever return 0 (which should mean
timeout expiration) while we are processing requests and there are still
pending requests when we are about to return, that 0 value is returned to
user like if all requests were successfully retired.

Ignore error codes from dma_fence_wait_timeout() other than -ETIME and
don't overwrite remaining time with those error codes.  Also, convert 0
value returned by dma_fence_wait_timeout() to -ETIME.

Fixes: f33a8a51602c ("drm/i915: Merge wait_for_timelines with retire_request")
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: stable@vger.kernel.org # v5.5+
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index edb881d756309..6c3b8ac3055c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -156,11 +156,22 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout,
 
 			fence = i915_active_fence_get(&tl->last_request);
 			if (fence) {
+				signed long time_left;
+
 				mutex_unlock(&tl->mutex);
 
-				timeout = dma_fence_wait_timeout(fence,
-								 true,
-								 timeout);
+				time_left = dma_fence_wait_timeout(fence,
+								   true,
+								   timeout);
+				/*
+				 * 0 or -ETIME: timeout expired
+				 * other errors: ignore, assume no time consumed
+				 */
+				if (time_left == -ETIME || time_left == 0)
+					timeout = -ETIME;
+				else if (time_left > 0)
+					timeout = time_left;
+
 				dma_fence_put(fence);
 
 				/* Retirement is best effort */
-- 
2.25.1

