Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eyjoFnd4MWqxkAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E860B692034
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ha4oK9Eo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6374E10ECB0;
	Tue, 16 Jun 2026 16:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13FF10ECAC;
 Tue, 16 Jun 2026 16:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781626997; x=1813162997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E5Ytt8VuR5xUZZ1ZiMuTLN9GoyoURWZbnOiO6+ZgV3Y=;
 b=Ha4oK9Eonmu1HUEq0rAjGTRdg+XiRfBIVYHA8swoHVbypiH2EAaxnxSI
 2F74mM4TzH1LT8w+WGW4EJ4JGSTPWIs9CoektJY9pIJJ5DrjZsmJemYNw
 bZAUNv0JojTrYNT3OKEavQZ8jPNdA9p+uBcgCGwm4d9OIMQQC9mDtNC6B
 KDM+zshmAeWQAuHbyOqMfzbHn3bkVopUTiMw8W3kS2x4oE2VnZUdKKi53
 PXkDf7hgJ81Ip6+5cGI/6gxvrM9U+7V23cqTgx8Thw7YitJHbeAuN5WIx
 SBc//TEjRnXnbrcn0ATzSdNDcMUpdvgreOqdqeMtX/U6uVl8u9hENLj3w g==;
X-CSE-ConnectionGUID: tNYMkFcjQP2bl0Wse+Lanw==
X-CSE-MsgGUID: c2aqJ0TZRsiGECnmag+AuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93781305"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93781305"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:16 -0700
X-CSE-ConnectionGUID: VSDrM2wmRB6FMV5wDXqKlQ==
X-CSE-MsgGUID: BLfvY3bMTUWDYoAD69SFiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247693507"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:15 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, animesh.manna@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v6 06/16] drm/i915/display: Add DC3CO support check
Date: Tue, 16 Jun 2026 21:51:44 +0530
Message-ID: <20260616162154.2630995-7-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E860B692034

Add intel_display_power_dc3co_supported() helper to query DC3CO
support from allowed_dc_mask.

Changes in v5:
- Add HAS_DC3CO() check to intel_display_power_dc3co_supported().

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_power.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e313d719fea1..9e66f9a4fcdc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -381,6 +381,16 @@ u32 intel_display_power_get_current_dc_state(struct intel_display *display)
 	return current_dc_state;
 }
 
+bool intel_display_power_dc3co_supported(struct intel_display *display)
+{
+	struct i915_power_domains *power_domains = &display->power.domains;
+
+	if (!HAS_DC3CO(display))
+		return false;
+
+	return (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;
+}
+
 static void __async_put_domains_mask(struct i915_power_domains *power_domains,
 				     struct intel_power_domain_mask *mask)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index b9c9b68072af..41b4be9018b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -184,6 +184,7 @@ bool intel_display_power_get_and_reset_dc3co_to_dc6(struct intel_display *displa
 void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 u32 intel_display_power_get_current_dc_state(struct intel_display *display);
+bool intel_display_power_dc3co_supported(struct intel_display *display);
 
 void intel_display_power_runtime_suspend(struct intel_display *display);
 void intel_display_power_runtime_resume(struct intel_display *display);
-- 
2.43.0

