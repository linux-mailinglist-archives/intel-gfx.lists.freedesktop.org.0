Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC90D95CD33
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 15:09:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC6410E689;
	Fri, 23 Aug 2024 13:09:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kn92e0kH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F95110E68C;
 Fri, 23 Aug 2024 13:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724418557; x=1755954557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xBTBmpL924eHLaGaJlxfMEUf+QEa13q0knxeUnC7CKw=;
 b=Kn92e0kHtf0wQBySl9V+mIbBqvXYlLuFVxtaM0aISb3AOsRIwmE4Kr72
 n/aHdv/uBUck+9jPMpLsrbC0ZwPQ8zbwLl65x/+1kDHwJHWh5oB0FcdKB
 I/buQuLSqXFJnrIQEL/5vJTGGi9U4gn+iNq3J7Ricj40u+cq+5l1ZPQWp
 rX4gK82F7TxTelgIGHKSD5Yrnc8rLFrNIvPaqkPvnECJKc4Jxue/jyhez
 djt63zgZA3ASImGgnwj1NvRZjTYx+JnpFwnkH6l2GkvzsitRh+0NA3g03
 Jk1v9cplsF7B1FFhBUxHcYhjNpsgXIBPEbk3QibE4Lek7rG8fdDefpSQ6 g==;
X-CSE-ConnectionGUID: nMdmmUg6R4627crBdKH//w==
X-CSE-MsgGUID: KoBR6vM7S9u/2v+62Flt1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22406863"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="22406863"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 06:09:16 -0700
X-CSE-ConnectionGUID: K4o8q3eTSnKgyjMgD9GTng==
X-CSE-MsgGUID: CB5uoDGKR8ur7GzQ7z456w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="66714884"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.236])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 06:09:13 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v3 01/15] drm/i915/gt: Avoid using masked workaround for
 CCS_MODE setting
Date: Fri, 23 Aug 2024 15:08:41 +0200
Message-ID: <20240823130855.72436-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240823130855.72436-1-andi.shyti@linux.intel.com>
References: <20240823130855.72436-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

When setting the CCS mode, we mistakenly used wa_masked_en() to
apply the workaround, which reads from the register and masks the
existing value with the new one.

Our intention was to write the value directly, without masking
it.

So far, this hasn't caused issues because we've been using a
register value that only enables a single CCS engine, typically
with an ID of '0'.

However, in upcoming patches, we will be utilizing multiple
engines, and it's crucial that we write the new value directly
without any masking.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index bfe6d8fc820f..f3082fad3f45 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2745,7 +2745,7 @@ static void ccs_engine_wa_mode(struct intel_engine_cs *engine, struct i915_wa_li
 	 * assign all slices to a single CCS. We will call it CCS mode 1
 	 */
 	mode = intel_gt_apply_ccs_mode(gt);
-	wa_masked_en(wal, XEHP_CCS_MODE, mode);
+	wa_add(wal, XEHP_CCS_MODE, 0, mode, mode, false);
 }
 
 /*
-- 
2.45.2

