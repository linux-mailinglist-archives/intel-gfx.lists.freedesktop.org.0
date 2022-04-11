Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF78F4FB5A5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 10:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7ACC10F0D4;
	Mon, 11 Apr 2022 08:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25D110F097
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649664654; x=1681200654;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k8E4U6zr6ETso+nJiXQW780VrhLnRM7rTqhp2Y1sJ8M=;
 b=ZIoQna37lGftIx+BFUOiiff+PEoittaXjokZc0boSM0mPpXS9LpuVruI
 Y3E0jyTUyktYnbDtD8IvAtzABFoQwXfD/zmy4SN2614P/kGV9xNCerfu8
 7Xo1L4ql5BTkG/cccyU7qjUXCuZ2mNrE9hX4WEOkRNn7U4ieZwJmS0Jgh
 jYvffquKCRMIjFqwMsqV8+Cwx0ZVi389O0agPUkaKI8jgeD4y02VzLw51
 3Uu9vYs9/txgensh0p4b2XcyA5qKLCttu/TkFKalHVBhxxub9hCC0oaq5
 +W+h5FeNkpzXd4EEbPZalYBbQaQ9mpJ1QQu8vjtHdI6QDy/vMTehRF3M0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="259658697"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="259658697"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 01:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="589793105"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 11 Apr 2022 01:10:52 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Apr 2022 11:11:42 +0300
Message-Id: <20220411081142.17979-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
References: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Swap ret and status returned from
 skl_pcode_request
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

If ret isn't zero, it is almost for sure ETIMEDOUT, because
we use it in wait_for macro which does continuous retries
until timeout is reached. If we still ran out of time and
retries, we most likely would be interested in getting status,
to understand what was the actual error propagated from PCode,
rather than to find out that we had a time out, which is anyway
quite obvious, if the function fails.

v2: Make it status ? status : ret(thanks Vinod for the hint)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index fb6c43e8a02f..ac727546868e 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -202,7 +202,7 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 
 out:
 	mutex_unlock(&i915->sb_lock);
-	return ret ? ret : status;
+	return status ? status : ret;
 #undef COND
 }
 
-- 
2.24.1.485.gad05a3d8e5

