Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9B37C6654
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 09:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECA410E426;
	Thu, 12 Oct 2023 07:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFEB610E426
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 07:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697095335; x=1728631335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qwA9kzCiivcicnAydtg1lxWFtZkQzQBAk8RSGJLc8YE=;
 b=bmEcOuIdpiDvq4kKrEcli7a0qb7AXHh3tLHJwmJoCN20JO65HUNmHSln
 t1VKlsFXKNYiRmnst1zNhuS5GBU+RRb+N3vdH3sFGA72+oWNbybYzr719
 q8eDHGoKLN0zxZQedh99SQlbyUwtbPbIfkThiUWjT1OMBYmazGCJrFb57
 E2TsUDuvcjkkbNFDcmx76h6SrL3husFcYru7SU8bQCqectCsgu6Wih5b1
 l3VFpw3VssgtHHjbC3IieKM0L1WYYAJHTlY7IjZ3kvHSL7WftYUozYTw+
 ziW21YYZOmf1l59hL+2fERY+Xz6upudgrQkib02gNjgMGmHyBAIoWjThK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="471109098"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="471109098"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897976731"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="897976731"
Received: from sidorovd-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.58.103])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:20:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 10:21:58 +0300
Message-Id: <20231012072158.4115795-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012072158.4115795-1-jouni.hogander@intel.com>
References: <20231012072158.4115795-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Use intel_bo_to_drm_bo
 instead of obj->base
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Xe and i915 objects have differing implementation. Use intel_bo_to_drm_bo
instead of obj->base as xe_bo doesn't have base pointer.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e7678571b0d7..e1d298efc510 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1930,10 +1930,10 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 	if (!atomic_read(&front->bits))
 		return 0;
 
-	if (dma_resv_test_signaled(obj->base.resv, dma_resv_usage_rw(false)))
+	if (dma_resv_test_signaled(intel_bo_to_drm_bo(obj)->resv, dma_resv_usage_rw(false)))
 		goto flush;
 
-	ret = dma_resv_get_singleton(obj->base.resv, dma_resv_usage_rw(false),
+	ret = dma_resv_get_singleton(intel_bo_to_drm_bo(obj)->resv, dma_resv_usage_rw(false),
 				     &fence);
 	if (ret || !fence)
 		goto flush;
-- 
2.34.1

