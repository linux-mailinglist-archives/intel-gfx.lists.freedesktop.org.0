Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643864A034F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 23:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A822910E1A6;
	Fri, 28 Jan 2022 22:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0944210E16A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 22:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643407829; x=1674943829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=11J5sPY1q+j655IojBKmL8NFVvoFQ538N23aefaI9vk=;
 b=N5qJevynHIZwakvgAY6sr1NIcz8IoMjyZuLBxfikDeWeGifriO/KezQm
 COjlU28RyVWtgnxQAxg4mDKwgZYup59/56wrfnMfLFak6SaSh9bxXc8Qf
 D8q6l+Qu8V1YrajUi0MCXuUI+Mhb2e/DNI8QESheE+R4YePOe7VAzvNwC
 66QTHQS75+v8+qrk+rZvvvD+ekEnhoiHAiAHbYo6stVQZw3YS53bo1K9l
 kzoO9D3qGDp1KTydcZINaXnFhCFiCoMh4gdh9RJ/42ZmbZ+/ND431L3MI
 FaHOS1fE1mFDCbTzjucx3t4vMkWcB/uW/VnYKhk9DOQ6Zm+ZlTX3zF5pa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="247155720"
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="247155720"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="496265926"
Received: from bainsko-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.109.18])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:27 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 14:10:19 -0800
Message-Id: <20220128221020.188253-4-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128221020.188253-1-michael.cheng@intel.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/gt: Re-work reset_csb
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, matthew.auld@intel.com,
 mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use drm_clflush_virt_range instead of directly invoking clflush. This
will prevent compiler errors when building for non-x86 architectures.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 90b5daf9433d..e8a2e2683b81 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2951,6 +2951,8 @@ reset_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 
 	mb(); /* paranoia: read the CSB pointers from after the reset */
 	clflush(execlists->csb_write);
+	drm_clflush_virt_range(execlists->csb_write,
+			sizeof(execlists->csb_write));
 	mb();
 
 	inactive = process_csb(engine, inactive); /* drain preemption events */
-- 
2.25.1

