Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD++F895EGreXwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 17:44:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E6A5B7149
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 17:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25FB110F5A7;
	Fri, 22 May 2026 15:44:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8K+EWUe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4253E10F5A7;
 Fri, 22 May 2026 15:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779464651; x=1811000651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3hPN50lE7sE9kvVCaDHALMpPcktKyFGVGRLMr9kW2GY=;
 b=Y8K+EWUeTO/Q2I8AWMY3zQ4J3HSWW70nGESJnbGpoO0/JWsedwrEiAk3
 Bke96vMeaH68COHPWcgVxCPbqqN6R7LC3hRvwfVpxb3C3vLAtjfU5a1e1
 Oj6dOLRfP00XLSO/1tev7EmRLufYI+ljTja/Cd1TUdNjkhLkHQG7QfAFk
 QHvThpYWH22VqXQFjff03zyngWFQYC2wB+4UeBNsHY8qjBemqY3TDJtHJ
 TwH+i6dp7dOUmeLPyurTebC0VHAlfoitEn5mCd3YNxX0Kw9HGoCmrh9vD
 /KbzizbIZ/SDeUQ775r+vZ/FBMmBQNKgC0rNtz49UsPN8/qDC2qZJo4Zb w==;
X-CSE-ConnectionGUID: MB6jdKmnRS2sM86WPVhKkg==
X-CSE-MsgGUID: kuOrG6JwS/2IFdYq3nA0Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="79545726"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="79545726"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 08:44:11 -0700
X-CSE-ConnectionGUID: T1MP5dJSTwyUCv87yk6fAw==
X-CSE-MsgGUID: ITx4K2EFQ+OM0pztxedTZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="236511547"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.34])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 08:44:08 -0700
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: [PATCH] drm/i915: Remove drm_dev_unregister() from the error path
 during i915_driver_register()
Date: Fri, 22 May 2026 17:43:57 +0200
Message-ID: <20260522154356.47588-2-krzysztof.niemiec@intel.com>
X-Mailer: git-send-email 2.45.2
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.niemiec@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: E2E6A5B7149
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

During driver probe, in i915_driver_register(), if drm_dev_register()
fails, the code enters into an error path. In it, a call to
drm_dev_unregister() is made as part of cleanup in case drm_dev_register()
returns an error. However, this is unnecessary, as in case of an error
drm_dev_register() undoes its own setup in its own error path.

Calling drm_dev_unregister() after a failed drm_dev_register() also
generates a superfluous WARN_ON() from drm_client_sysrq_unregister().
drm_client_sysrq_register() is only called in drm_dev_register() if
there was no error in the latter. drm_dev_unregister() calls
drm_client_sysrq_unregister() as it expects to be called after a successful
drm_dev_register(), in which case the _sysrq_register() counterpart is
called. However, if the call to drm_dev_register() failed,
_sysrq_register() is never called; calling drm_dev_unregister() will
cause _sysrq_unregister() to be called (unconditionally) with no
corresponding _sysrq_register() call before it, which is caught in the
aforementioned WARN_ON().

Remove the redundant call to drm_dev_unregister() in case
drm_dev_register() returns an error.

Signed-off-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c10cab38935a..10e16002050a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -638,7 +638,6 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
 	if (ret) {
 		i915_probe_error(dev_priv,
 				 "Failed to register driver for userspace access!\n");
-		drm_dev_unregister(&dev_priv->drm);
 		i915_pmu_unregister(dev_priv);
 		i915_gem_driver_unregister(dev_priv);
 		return ret;
-- 
2.45.2

