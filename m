Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHo3HWuYFWqNWgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045C65D5DD9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9C410E4D2;
	Tue, 26 May 2026 12:56:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpJl2g47";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7380110E4B4;
 Tue, 26 May 2026 12:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779800169; x=1811336169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a4kGxY0JjFPkWrSgrbneeC0aHhlhPhwj+ZQ76sc+A1E=;
 b=UpJl2g47yQjecTZHU08LQSRN60ZWyMZ95+kxoVeZ7BH5eHLwqP6Ue5kL
 wgBuzhAoyISsGWX9EW1n/NH9JNTb4V6PrF8pjZZXrl23m7pE3Xl/86HVe
 QPhg7HWEl71KQnEyhxYPCxhktjUY58O/3HZcyxI8iGIcwYmxx6k1YlfyA
 UIoSsUtKDJYds6v43nabqeKMii6+E7QXTTYJV+vnCeXJYaSeXWmOjutOx
 vuaaQ/bWiLLlce7rLozqwAAENC2oNjlzaX1QVDyqC9PJedz4RHg7kDGVd
 qdc4NiH3NYq6DWUcNBUkiyr1vZE59vZoYDc846FimbGkMQa5xn3zG9uKA w==;
X-CSE-ConnectionGUID: lsyaICtiSNWz+qVTJ0Fc/g==
X-CSE-MsgGUID: 55fSBivtT8uvUnjtXHxnLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="84465961"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="84465961"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:09 -0700
X-CSE-ConnectionGUID: 2Uyg5uO9RmaBVPcpqdLnZA==
X-CSE-MsgGUID: lfxWRygcQVmKzIfdosryEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="238897515"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 1/3] drm/i915/power: make intel_power_domains_{suspend,
 resume}() static
Date: Tue, 26 May 2026 15:55:57 +0300
Message-ID: <bfb5f09794b6b5035839d0182d22980119da2165.1779800132.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1779800132.git.jani.nikula@intel.com>
References: <cover.1779800132.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.978];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 045C65D5DD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_power_domains_suspend() and intel_power_domains_resume() are only
used inside intel_display_power.c. Make them static.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 751e6b7d4a29..dbb8d78595f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2094,7 +2094,7 @@ void intel_power_domains_disable(struct intel_display *display)
  * It must be called with power domains already disabled (after a call to
  * intel_power_domains_disable()) and paired with intel_power_domains_resume().
  */
-void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
+static void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct ref_tracker *wakeref __maybe_unused =
@@ -2147,7 +2147,7 @@ void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
  * intel_power_domains_enable()) and must be paired with
  * intel_power_domains_suspend().
  */
-void intel_power_domains_resume(struct intel_display *display)
+static void intel_power_domains_resume(struct intel_display *display)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d616d5d09cbe..14806455c29e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -175,8 +175,6 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume);
 void intel_power_domains_driver_remove(struct intel_display *display);
 void intel_power_domains_enable(struct intel_display *display);
 void intel_power_domains_disable(struct intel_display *display);
-void intel_power_domains_suspend(struct intel_display *display, bool s2idle);
-void intel_power_domains_resume(struct intel_display *display);
 void intel_power_domains_sanitize_state(struct intel_display *display);
 
 void intel_display_power_suspend_late(struct intel_display *display, bool s2idle);
-- 
2.47.3

