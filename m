Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B42848EFBD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 19:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0FD10E20E;
	Fri, 14 Jan 2022 18:17:17 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEC810E1B5;
 Fri, 14 Jan 2022 18:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642184235; x=1673720235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OhEJyJXf2Vl7qR7dFgQg9nWj0g2brWMGkOkahhusPKA=;
 b=kaN0eXggJf/KJTpzB+KYMNbxuaik88MWbbn6t0yfvaa6WDbL//2aaptX
 18hWgjMm8enqois6IGMWMrDsr3V1wWv2ccURG8y/0ilgV67c8AESJFGw7
 ANPMvcgLfc5Kz5KsV5jKSGaPCBi0g7LIx+Ol+2aKp0d9McvhJQDPLUOB0
 bG1vIdkzJJ2aQXJafnKc7oCeIKEfEgx1LQ3Q3Rx4rt/llh6XcvKB1qB6c
 R49swUHA2JNiniHsd3m99wh3FNzky+XHhM5Q7aDA1AGeJI0NSUbr/2+ca
 7Kktfth0lE3gwsQnlQ7JBQtivpcYybn7IGgIz4AMYghxg1RhbRJU2Qb51 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="224988560"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="224988560"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 10:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="491602004"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2022 10:17:13 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri, 14 Jan 2022 10:17:04 -0800
Message-Id: <20220114181713.1798514-7-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
References: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 06/15] tests/i915/i915_hangman: Use the
 correct context in hangcheck_unterminated
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The hangman framework sets up a context that is valid for all engines
and has things like banning disabled. The 'unterminated' test then
ignores it and uses the default context. Fix that.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/i915_hangman.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 354769f39..6656b3fcd 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -347,6 +347,7 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = (uintptr_t)&gem_exec;
 	execbuf.buffer_count = 1;
+	execbuf.rsvd1 = ctx->id;
 
 	gem_execbuf(device, &execbuf);
 	if (gem_wait(device, handle, &timeout_ns) != 0) {
-- 
2.25.1

