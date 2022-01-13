Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5816E48E128
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFDC510E834;
	Thu, 13 Jan 2022 23:51:24 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4636910E81E;
 Thu, 13 Jan 2022 23:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117881; x=1673653881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OhEJyJXf2Vl7qR7dFgQg9nWj0g2brWMGkOkahhusPKA=;
 b=L969wQwONYtWuHPxSGuUO4wNepOvz1RgrSUDXaFubFLp4yBedTVIAUgR
 rQorDDlcuJ9MQK9R9Xed5nlF1mz9UYRIMfFVEcv+ckgSEzO+j2YZOmQPs
 erNe84/YGw1a71+rQwFUxG5FinwtfPJK0+Nm6wtG4RQC0VFt+9OokmrRx
 UqXv0xxoCfaoEjBk/hryUXiRcObBO3qN6Ut4QY4oX9aBUL+0/zldnOAEw
 PHHA4XQ9vrqMpgxowlhjmhw3eYBw9FUdsbiTbk8qqaSZZpEObzrz2VA63
 1FgW0njeLS0tqYEBgVpQizGe9/e7l5AISddIOsb7XH19agUi5qGduaAhV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244096544"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244096544"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620783001"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:19 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:09 -0800
Message-Id: <20220113235118.1575410-7-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 06/15] tests/i915/i915_hangman: Use the
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

