Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC145729F5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 01:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0D8976B4;
	Tue, 12 Jul 2022 23:31:39 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A628976BA;
 Tue, 12 Jul 2022 23:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657668697; x=1689204697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qBe309PiRX8yFdfwVnKYrxKQ1Mrayni6ox1W/IA4huM=;
 b=KZPqkcfAv+t2pxWMaIRqFWO30zRH+wrMPSCHbk7HcMWxd64rhvYBHZ9c
 JA1zm0Z1bbF6nEpaZxlUTzLKzlhaJGIfxhU1WDLfKNLNDiOL/kkpYsa9K
 JA+0Hg2uG5/sTvoNaCtr19XtUujQJlcHj9a6PH5NtCo1mwL60CaGS3Jcp
 sPV+bfyg97nIWbFGLaUl2V2E0buEep9MoqPltQQZaEvTbQYsquAgdDNKa
 k8Ws7oGF9mEa282VwqUyybRfauKquZr4+RMEVxPk1pyla3puInXKM7oXk
 c7nYNnUwTKA1NP3nlf7t3RaaA4v7Eh8moAsnS3X3+5hFlJu84fohpgdDR A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="285812561"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="285812561"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 16:31:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="722137755"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga004.jf.intel.com with ESMTP; 12 Jul 2022 16:31:36 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 12 Jul 2022 16:31:25 -0700
Message-Id: <20220712233136.1044951-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220712233136.1044951-1-John.C.Harrison@Intel.com>
References: <20220712233136.1044951-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915: Remove bogus GEM_BUG_ON in
 unpark
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Brost <matthew.brost@intel.com>

Remove bogus GEM_BUG_ON which compared kernel context timeline seqno to
seqno in memory on engine PM unpark. If a GT reset occurred these values
might not match as a kernel context could be skipped. This bug was
hidden by always switching to a kernel context on park (execlists
requirement).

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index b0a4a2dbe3ee9..fb3e1599d04ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -68,8 +68,6 @@ static int __engine_unpark(struct intel_wakeref *wf)
 			 ce->timeline->seqno,
 			 READ_ONCE(*ce->timeline->hwsp_seqno),
 			 ce->ring->emit);
-		GEM_BUG_ON(ce->timeline->seqno !=
-			   READ_ONCE(*ce->timeline->hwsp_seqno));
 	}
 
 	if (engine->unpark)
-- 
2.36.0

