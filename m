Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qx1DNwhJMGp4QwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA816894AD
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=oD1yFcOl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A5410E5CB;
	Mon, 15 Jun 2026 18:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBA610E5CB;
 Mon, 15 Jun 2026 18:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781549318; x=1813085318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NI55BDCmNqMNfR1pX8jjx4l31bhLrw5TA8JuyIMZLJ8=;
 b=oD1yFcOldsQxVOmaOr76QJGhlpkjF/d3oxV850Sd32cOLF33lGtYkibf
 1m8MFMleLT6OtXhYpZIWtnkfOZCQ7VP0k1yFNC2gb8VXkoPxSYJ4NjSqt
 lxE/HVdRWHvPZvNK+md6tZH3JMFYavFr5fr1E5oIEFtH0nigb9l+uOeJR
 bfCEkd176J6C1WCZcaILqf72N6iGnzQYzmrBTbRlGS4zIdXDR2ZoZroHv
 roktjlzGF1N6IFD9XETdAEie0pIEBamgU9aKHYI6RjZA+RlBWMkdyzJ8M
 ZrY83C1uL6VIHadjXRJqdwTGL8co+Vi3aHIVWjKRlq9ns5SdqHAJ85GlR g==;
X-CSE-ConnectionGUID: 65LYDOo5RMGP2aHV8TPlhg==
X-CSE-MsgGUID: cci54TG3RUCCAyMmKi2pcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81438594"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="81438594"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:37 -0700
X-CSE-ConnectionGUID: rdyMAXrkSiusGVgs3oueyA==
X-CSE-MsgGUID: frAHjDv6QkSreUJFuTDHWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="247628634"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/6] drm/{i915, xe}: move intel_hpd_cancel_work() to
 intel_display_driver_remove_noirq()
Date: Mon, 15 Jun 2026 21:48:03 +0300
Message-ID: <6be8d033a6c8d0038dc14100d3ee6612d6204770.1781549229.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1781549229.git.jani.nikula@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADA816894AD

intel_hpd_cancel_work() gets called before
intel_display_driver_remove_noirq(). Move it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
 drivers/gpu/drm/i915/i915_driver.c                  | 1 -
 drivers/gpu/drm/xe/display/xe_display.c             | 1 -
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index a1c91fbf737c..bb5301b90231 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -622,6 +622,8 @@ void intel_display_driver_remove_noirq(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	intel_hpd_cancel_work(display);
+
 	intel_display_driver_suspend_access(display);
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 68ab96b8195b..3ac7dc66085f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -948,7 +948,6 @@ void i915_driver_remove(struct drm_i915_private *i915)
 	intel_display_driver_remove(display);
 
 	intel_irq_uninstall(i915);
-	intel_hpd_cancel_work(display);
 
 	intel_display_driver_remove_noirq(display);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 8be3e600838b..92a4573db28a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -81,7 +81,6 @@ static void xe_display_fini_early(void *arg)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_hpd_cancel_work(display);
 	intel_display_driver_remove_noirq(display);
 	intel_display_driver_remove_nogem(display);
 	intel_display_power_cleanup(display);
-- 
2.47.3

