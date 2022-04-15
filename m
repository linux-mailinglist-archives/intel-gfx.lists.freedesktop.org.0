Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65908503026
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 23:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADEAA10E274;
	Fri, 15 Apr 2022 21:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B75510E274
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 21:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650059827; x=1681595827;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hxUOmSqQe7mX+LD+Z3LLtEAYESLBpuXRBgH7pLf0ZGA=;
 b=WeKH6K5HJkjuAZAah3qgScnU7uOsmNYjZLXAG22qw6FgNIsfQ/adQBpO
 tVrHhJVqA1AbBLKVtTjQzlRJiG1yRNkNiumL63BwPyo4cVYQXNEalDkyo
 01QU4Kn6Uci3XNIRCTXEtIsGe3iO7+ra0hQHMELDj5bOqyJMUv7Yp1yoa
 6v5jUrBczAMXe30Dqse9mWJbcHvyP4lk5xrUhS67/38KcFBFGXiIiThpc
 ZRTYrvZg3Qtw4A2RmIX1B419Loc03o/KhDgWIZWDk45waC/IiBxhWTGU5
 koftwKEIMlqFYdAGez4kp406uONEjqVLwsgLCg0DlmINXVIYXQynmvag+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="245122446"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="245122446"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 14:57:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="725930974"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 14:57:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 14:56:40 -0700
Message-Id: <20220415215640.2177403-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] HAX: drm/i915: Add softdep
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CI is having several issues due to unbinding i915 while the sound driver
is still doing something. It's particularly harmful when it's not idle
and we attempt to remove i915.

We still need to fix the snd driver so we can more reliably remove i915,
but this can't block other i915 tests. By adding a post softdep we make sure
that on module removal, kmod first removes snd_hda_intel, and only after
that removes i915.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---

From some local tests I had success when making sure sound driver got
unloaded before unloading i915. Submitting for CI and if nothing
explodes we may consider it for topic/core-for-CI.

 drivers/gpu/drm/i915/i915_module.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 65acd7bf75d0..4e3725a9c375 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -123,3 +123,5 @@ MODULE_AUTHOR("Intel Corporation");
 
 MODULE_DESCRIPTION(DRIVER_DESC);
 MODULE_LICENSE("GPL and additional rights");
+
+MODULE_SOFTDEP("post: snd_hda_intel");
-- 
2.35.2

