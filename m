Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8EYAEOSZKWrnaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D33266BDBA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=I5KoGRob;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9993710EB37;
	Wed, 10 Jun 2026 17:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A3B10EB30;
 Wed, 10 Jun 2026 17:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111265; x=1812647265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4gMcGGoYjVXu3KkJp8IgI8Mp8I62jvvQepLI0W0BmoU=;
 b=I5KoGRob57mP4IGIJ5ViAMZoAVJSE6xCRI3HP6X0wsnERFhq+Lq7UEOW
 +M0XukgIy7KrDHV+I5jPx2HRSbQvLsAJJiplG1DLjWOeu3jO1a23H8b+c
 9cDJE98JDJ8BWNAT2+I+lvqdep87l1zYuOhlvQIKZHzItUVTgMFBPnpQx
 PD8uezrmm4BzwHEQzxnh/Sc118dFNs1oNeOEcuxzcuibB8wu39XFiSmvT
 ZtVCBQhkwv6yAdO/IPhfESqUb/koYu56ahUveInY8iKa9Nooh4nEPfryW
 2AlRr5JKPpGFWRdJRdrhk7AGQiJeFU9A6ddAZSr354wM7Kop1J4MvE/ur A==;
X-CSE-ConnectionGUID: q9A4Q6DKQ+OnU7aox5ZIcQ==
X-CSE-MsgGUID: QTDd6ywOQhCOQ/qUVIFLMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92479100"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92479100"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:44 -0700
X-CSE-ConnectionGUID: VXE5xPjxRYG9Rgcbn9M0BQ==
X-CSE-MsgGUID: AyzZiMEET6Gp8SMd9hcXgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="239882498"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:43 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/14] drm/i915/cdclk: Extract bdw_cdclk_pcode_{pre,
 post}_notify()
Date: Wed, 10 Jun 2026 20:06:47 +0300
Message-ID: <20260610170652.5320-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,linux.intel.com:mid,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D33266BDBA

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the BSW pcode notify stuff to a few small helpers. The
plan is to unify these between all the platforms and turn them
into vfuncs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 542724256d0f..041b1fc8b3ee 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -872,6 +872,19 @@ static u32 bdw_cdclk_freq_sel(int cdclk)
 	}
 }
 
+static int bdw_cdclk_pcode_pre_notify(struct intel_display *display)
+{
+	return intel_parent_pcode_write(display, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ,
+					0x0);
+}
+
+static int bdw_cdclk_pcode_post_notify(struct intel_display *display,
+				       const struct intel_cdclk_config *cdclk_config)
+{
+	return intel_parent_pcode_write(display, HSW_PCODE_DE_WRITE_FREQ_REQ,
+					cdclk_config->voltage_level);
+}
+
 static void bdw_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -888,7 +901,7 @@ static void bdw_set_cdclk(struct intel_display *display,
 		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
-	ret = intel_parent_pcode_write(display, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
+	ret = bdw_cdclk_pcode_pre_notify(display);
 	if (ret) {
 		drm_err(display->drm,
 			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
@@ -918,8 +931,7 @@ static void bdw_set_cdclk(struct intel_display *display,
 	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
-	ret = intel_parent_pcode_write(display, HSW_PCODE_DE_WRITE_FREQ_REQ,
-				       cdclk_config->voltage_level);
+	ret = bdw_cdclk_pcode_post_notify(display, cdclk_config);
 	if (ret)
 		drm_err(display->drm,
 			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);
-- 
2.53.0

