Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBE59491B8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 15:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506F110E364;
	Tue,  6 Aug 2024 13:38:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wt82ZlIj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEABB10E364
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 13:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722951535; x=1754487535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AGeQDE+5rNekvHiaIRobZhsGbrmwdv/NNtvM36qo2Yw=;
 b=Wt82ZlIjpwbCAhtlwj14wTcZrDX9T/uh8Y03lybiBHIOT83FgDbT4QL7
 OxVf9HmSPvyY1QTYY4X/RfNnrIR8loKC2Cz0D9nMXMkt20jJqp7EOSM3W
 eMJrUnIT39A+cJXbHtKEFcdkooFlR97fkSdWMv6UXMqrAuPfiAc6wzIee
 /jQIPOjTH7NjDk6HEyrfrOJDQNWHvscOZv0zZ+XG3Y9TCnN8drHfqkNhy
 aVWItXdbQHvhLXwd+2K1FTVeutRPnJxFlk5L58CyNo+a2+YPEYa5TXNI8
 et3ONBkiKbyyhSObR35TxvspFhUwKpVHl7Tuq2VMqzn/mofdIIE5hb7yk Q==;
X-CSE-ConnectionGUID: csIB+cFHTkWhVfOYgwr9Tg==
X-CSE-MsgGUID: TLxYooigRlapKD6dxYEXDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="24756952"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="24756952"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:38:55 -0700
X-CSE-ConnectionGUID: eGQo/WPJTPqU1UiCyVs6xQ==
X-CSE-MsgGUID: Po4k/93eR+evyaFIpjzZrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="57090115"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:38:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915: remove a few __i915_printk() uses
Date: Tue,  6 Aug 2024 16:38:30 +0300
Message-Id: <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722951405.git.jani.nikula@intel.com>
References: <cover.1722951405.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

__i915_printk() does nothing for notice/info levels. Just use the
regular drm_notice() and drm_info() calls.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index 6f9e7b354b54..bee32222f0fd 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -54,8 +54,8 @@ __i915_printk(struct drm_i915_private *dev_priv, const char *level,
 
 void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
 {
-	__i915_printk(i915, KERN_NOTICE, "CI tainted:%#x by %pS\n",
-		      taint, (void *)_RET_IP_);
+	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
+		   taint, __builtin_return_address(0));
 
 	/* Failures that occur during fault injection testing are expected */
 	if (!i915_error_injected())
@@ -74,9 +74,9 @@ int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
 	if (++i915_probe_fail_count < i915_modparams.inject_probe_failure)
 		return 0;
 
-	__i915_printk(i915, KERN_INFO,
-		      "Injecting failure %d at checkpoint %u [%s:%d]\n",
-		      err, i915_modparams.inject_probe_failure, func, line);
+	drm_info(&i915->drm, "Injecting failure %d at checkpoint %u [%s:%d]\n",
+		 err, i915_modparams.inject_probe_failure, func, line);
+
 	i915_modparams.inject_probe_failure = 0;
 	return err;
 }
-- 
2.39.2

