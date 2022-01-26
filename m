Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7B649C50B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 09:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323DA10E36E;
	Wed, 26 Jan 2022 08:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D87C10E36E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 08:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643184948; x=1674720948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sCpI3kCE30w/criHNQ0sPN3Ets+GuZ0JidTwJZRaM5g=;
 b=hcKf6btjI/o304YCjvvP+6LOVIt24XP3J6h7LQwrCpgv4fxz9CJSDcdL
 5dSaPFiyyrpj1QBKVcIg4vOpq9e7S8ZACbAXc/AjAJeL2s2tmVyRLqN9T
 xfcuLI4vMIe9ZRwIU15zK7pU6q125G5+Z8uyQryacCMPUunlwSqYnz1NX
 wha8kiQQuIM078d9LHCWHcWXhlmwgOytdBYLSz35s0oUzV9AvJE5NSpq1
 mc0EXsrWfq7zYLmOAP/RHZHj6/XK7rnu1/r2aCDzIjJjI1kEjUWo/3EE8
 k5gFEFrWfveOIbX64wLTvUr/6SfHQZR/Sr9bmN2EfgOoaC/In8KV3yMft w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="270954554"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="270954554"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 00:15:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="674285885"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 26 Jan 2022 00:15:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jan 2022 10:15:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 10:15:39 +0200
Message-Id: <20220126081539.23227-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
References: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Enable rpm wakeref tracking
 whether runtime pm is enabled or not
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
Cc: Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Vlastimil Babka <vbabka@suse.cz>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Don't see why we should skip the wakeref tracking when the
platform doesn't support runtime pm. We still want all the
code to be 100% leak free so let's track this unconditionally.

Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Marco Elver <elver@google.com> # stackdepot
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 64c2708efc9e..3293ac71bcf8 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -77,9 +77,6 @@ track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 	depot_stack_handle_t stack, *stacks;
 	unsigned long flags;
 
-	if (!rpm->available)
-		return -1;
-
 	stack = __save_depot_stack();
 	if (!stack)
 		return -1;
-- 
2.34.1

