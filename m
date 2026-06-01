Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBORAWxgHWojZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:35:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE0961D936
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5891130D7;
	Mon,  1 Jun 2026 10:35:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kjtBk0Xj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B5A1130CE;
 Mon,  1 Jun 2026 10:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780310121; x=1811846121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mD1eIrq6FrXMRchkARB+zPAOx4hwVnhaRRr6OVZwHt8=;
 b=kjtBk0Xj4PuMoVPB1bOfW3PkUfcoH3B7CW0m9iI+KQ3W3DmbIJBda0v+
 S/xhsfZf8IlsodTbrXQp3QxWIbmHvFXPpJhapPy3u8z1jP3x8m4xXA/dW
 BdFclwpxLIwrn/fkR7YOLh6NxaNXc/NkazbPdYCTAfldEZx3q1on3U/3J
 UlO523ipgQs6gNX32YeVnKdPvDR0H6jHpCsQ7GYtXHA8mmyehoEABF45o
 pHNmVPSUuaT8K67R6pDfGdQIz7/+jbGu2pIpCZ7uoOavzslfN8YOHppuQ
 gR62Q+Tog8bqG8Cx1iuoTx18PFPtjP8eRquA7lLYLabPkX62GeJYMTezn A==;
X-CSE-ConnectionGUID: 4B8KnbSkTAiKdTL8LEORWA==
X-CSE-MsgGUID: 8umXNzd0QoSBwstPKaQVqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80797241"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80797241"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 03:35:21 -0700
X-CSE-ConnectionGUID: xXeEiXZjT+a8CIHv6h4VtQ==
X-CSE-MsgGUID: kYBSL6rXQ+KNaSA9qVNEHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="242728421"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.121])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 03:35:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [CI 2/5] drm/i915/xe: Enable HPD polling later during system resume
Date: Mon,  1 Jun 2026 13:34:57 +0300
Message-ID: <f9803b937ba3044052a81e1673ac374809548ba7.1780310011.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780310011.git.jani.nikula@intel.com>
References: <cover.1780310011.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: CEE0961D936
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Imre Deak <imre.deak@intel.com>

The detect hook of connectors - called by HPD polling - will check if
user accesses are enabled and prevent the connector detection if that's
not the case. Accordingly enable user accesses during system resume by
calling intel_display_driver_enable_user_access() before enabling HPD
polling.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 810d93fefcbc..c0d3e7d12823 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -452,8 +452,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	if (intel_display_device_present(display)) {
 		intel_display_driver_resume(display);
-		drm_kms_helper_poll_enable(&xe->drm);
 		intel_display_driver_enable_user_access(display);
+		drm_kms_helper_poll_enable(&xe->drm);
 	}
 
 	if (intel_display_device_present(display))
-- 
2.47.3

