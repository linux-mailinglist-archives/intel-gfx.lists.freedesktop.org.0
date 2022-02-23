Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E374C0C59
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 06:59:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5D210E9DA;
	Wed, 23 Feb 2022 05:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F5810E982;
 Wed, 23 Feb 2022 05:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645595946; x=1677131946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+4fxoeo1X3wkXnyPCqzjiVcmIl8E747SJuJxMweCvxk=;
 b=UTtyL3FOBpC12hXC7CbNkFejQgu0i3kYMpoxDg1AxWN2hk5s7/qYCnzw
 pjrQw9FARfMBlmVqRN6MGmDfcqbzw9RPsmYJgWsTkH9pB/ooQ//4+1Z5Y
 eNKo6dtfD+bOec0ptZep4qSt7hqNagII/Er3XHcm5NUE3zbKOo8GfCLF3
 rMEBQXjmWlYoUWSTkfyCtiEZqaiQaxCsiLlJvvF6WuzWV94aqCxqopjdj
 +FB/BX7dvGXd5dvGyPw1XjhzRfE+rMb9o21X0BcL/tgFbueW6844fZdzQ
 SacpfZNQSnz3szBRqnwoxjIRvnOnrI9NQGAomTW+s16Mv3Fj4yN30lV0u Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="312606228"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="312606228"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 21:59:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="706908165"
Received: from shreyasj-mobl1.amr.corp.intel.com (HELO
 mvcheng-desk2.intel.com) ([10.209.93.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 21:59:05 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 21:58:58 -0800
Message-Id: <20220223055900.415627-5-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220223055900.415627-1-michael.cheng@intel.com>
References: <20220223055900.415627-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 4/6] drm/i915/gt: Re-work reset_csb
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use drm_clflush_virt_range instead of directly invoking clflush. This
will prevent compiler errors when building for non-x86 architectures.

v2(Michael Cheng): Remove extra clflush

v3(Michael Cheng): Remove memory barrier since drm_clflush_virt_range
		   takes care of it.

v4(Michael Cheng): Get the size of value and not the size of the pointer
		   when passing in execlists->csb_write. Thanks to Matt
		   Roper for pointing this out.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e5e73a1b2e4e..89aef3ce53f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2945,9 +2945,8 @@ reset_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 
-	mb(); /* paranoia: read the CSB pointers from after the reset */
-	clflush(execlists->csb_write);
-	mb();
+	drm_clflush_virt_range(execlists->csb_write,
+			       sizeof(execlists->csb_write[0]));
 
 	inactive = process_csb(engine, inactive); /* drain preemption events */
 
-- 
2.25.1

