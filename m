Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GpiE0uf5mmyywEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 23:48:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BE84345EB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 23:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DDA10E75B;
	Mon, 20 Apr 2026 21:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jax8Cxh3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5302C10E75A;
 Mon, 20 Apr 2026 21:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776721737; x=1808257737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dzt0BSeFQfpBdyGeNacNDlZUMlVkDpK6DCsnREmKu9E=;
 b=jax8Cxh3yXolZgyzucSxjqonttSv+k3N7W3MHGmqmLRdNbAJu3JWBjCS
 a7y9k6BnuHQxP8a1szKRkT1dDsZAwjLTkeyaEllBcTBgtCdDK3ybnrs8r
 UhHgxzlY2Bn07rjeEUpaHT7vKtW050AK2JimNlG0LTbVsxpOZJgusnfdK
 XhKjgt9S1z7vK2oV+9B0HnIyIpKS2LEKTTuA55UoRjxgcfDjTwnMj3YEK
 12SiFqx3L2AyNQB2x550+aW7IwV9LSvoyZTJCK9+S27AdrLF98Ufc4DJ4
 /Y+GTIel3nqbYr0EqowDdQ0VRmZs1Fevyas71xOGsKYY9lKXuZrKuLt7R w==;
X-CSE-ConnectionGUID: U8tVB+67RwSsmC7e1al9Mg==
X-CSE-MsgGUID: D/oUkvKnRmupnrGyNAN85Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81521025"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="81521025"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 14:48:56 -0700
X-CSE-ConnectionGUID: Vpo8lMkIS+iRFIqbocnB+Q==
X-CSE-MsgGUID: 5MYfKhI4T6iRSgcuYD57UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="233609858"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.159])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2026 14:48:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/gmbus: Swap locks vs. wakeref in
 intel_gmbus_output_aksv()
Date: Tue, 21 Apr 2026 00:48:43 +0300
Message-ID: <20260420214843.17514-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260420214843.17514-1-ville.syrjala@linux.intel.com>
References: <20260420214843.17514-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 23BE84345EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Normal GMBUS transfers lock the mutexes first, the grab the power
domain wakeref. Do it the same way around for the HDCP stuff,
for consistency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 4d0b8c82f6ff..66f1366e74ef 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -833,10 +833,10 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	struct ref_tracker *wakeref;
 	int ret;
 
-	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
-
 	adapter->lock_ops->lock_bus(adapter, 0);
 
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
+
 	/*
 	 * In order to output Aksv to the receiver, use an indexed write to
 	 * pass the i2c command, and tell GMBUS to use the HW-provided value
@@ -844,10 +844,10 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	 */
 	ret = do_gmbus_xfer(adapter, msgs, ARRAY_SIZE(msgs), GMBUS_AKSV_SELECT);
 
+	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
+
 	adapter->lock_ops->unlock_bus(adapter, 0);
 
-	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
-
 	return ret;
 }
 
-- 
2.52.0

