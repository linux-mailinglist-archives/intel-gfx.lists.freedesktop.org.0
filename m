Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8518473887
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8EE710E9DE;
	Mon, 13 Dec 2021 23:29:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E6410E8E5;
 Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438156; x=1670974156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K23jIMgTf68LNJxvwCgEf8vFcbgMNSJHYd721oiHrC8=;
 b=H2rd7xk/83LPCzJOZWJPuTULAZOOdjDoFPkQIBBZAy3BuoWx/lav0EUy
 3Laq/DdDQkP0nXJ41feE3TTeHf5INqJkoNacTYEmAUmml49/Qpp7cSZf5
 UZEfWIB6lgsd+90j0eGZFrxqDJgPV3qYI8nzkhfGou3RuMcbYJ6tffn85
 MVYEtWH7agpxswg7vHtlMqlcMZYjLv52QWGaMkJFRYlfOmPMPXhf5hgbb
 Tz05pQhGFLapBqQCiikCaSmZqQJcHjstyYUwln1aYYaPPkaRscNK1vNqe
 dzYbV8IGgbE4f5ZDwSzh55Qwof1zU0z5AKhqwpcCTluRhe0BkFZAvhO9t A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236385950"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236385950"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975929"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:09 -0800
Message-Id: <20211213232914.2523139-7-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 06/11] tests/i915/i915_hangman: Use the
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
---
 tests/i915/i915_hangman.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 2dd4e1e9f..b77705206 100644
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

