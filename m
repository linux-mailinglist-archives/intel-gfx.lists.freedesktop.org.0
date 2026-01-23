Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGpAHvaRc2ntxAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 16:21:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473D677BA8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 16:21:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BE010E2CF;
	Fri, 23 Jan 2026 15:21:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jkk17Olt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B7C110EB14
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jan 2026 15:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769181682; x=1800717682;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OiWufmkMLaAgJdny97d/dDUyRDpfn8SS8TLRJNdy+yM=;
 b=Jkk17OltJscUG4OwUC4J2H7qP4M8kOtFNwveg+FsqfwjhoBjXGtjkHgw
 IOaXPVYciLDjwrhCuEGrt2whDHy7Li4DlWpbvKxyhDBY+NUbv4k/zJ7tE
 2MEuOk7+JTfrXnggTWmGwzgIqrmiLSxWX040eBijX2PlPh6+LeyVFVUZe
 kgGuv5WG8RP8n5PnyIq/K7eZTUXaU/SptnfAT11tLPif71DA3qB4fkoSI
 4j68oP1OTW0g0tJn9JAqURfRM++J2rxcA3nkiKakFUoJRCxckLdeaiLHZ
 u6V5EWbKdNNUrdPkOk1721Ot4r+oyJTPtxHMhoG79TV97+zW/SrhZjgN+ Q==;
X-CSE-ConnectionGUID: HbW+troRQLy8V5xpHE3A7w==
X-CSE-MsgGUID: w5q/pgs0TfusTlR+ZRjhnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81806355"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81806355"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 07:21:22 -0800
X-CSE-ConnectionGUID: EDJbk8y6Seu1CmCH/X46TA==
X-CSE-MsgGUID: tWueOGGsQtm33QjfX5oCZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207469983"
Received: from live-gta-imageloader.fm.intel.com (HELO
 DUT4086LNL.fm.intel.com) ([10.105.10.116])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 07:21:22 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v2] drm/i915/display: PORT_NONE is not valid
Date: Fri, 23 Jan 2026 15:21:22 +0000
Message-ID: <20260123152121.7042-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 473D677BA8
X-Rspamd-Action: no action

Static analysis issue:

In assert_port_valid, add a check to ensure port != PORT_NONE, as that
is not a valid port.  The check must be explicit to prevent a bad bit
shift operation in the general case via short-circuiting.  It's not
likely this will ever come up in a real use case, but it's at least
worth guarding against.

It would probably also be pertinent to modify the behavior of the
port_name function to correctly print PORT_NONE in this case, as
currently the port would be reported as 'port @' by the debugger.  But
that should be done separately, and given port_name is mostly just a
debug printing helper function anyways, fixing it is a low priority.

v2:
- Conditional check was backwards.  Fix it.  (Jani)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7491e00e3858..0c3bb3f98ee4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7828,7 +7828,8 @@ static bool intel_ddi_crt_present(struct intel_display *display)
 
 bool assert_port_valid(struct intel_display *display, enum port port)
 {
-	return !drm_WARN(display->drm, !(DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),
+	return !drm_WARN(display->drm,
+			 !(port >= 0 && DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),
 			 "Platform does not support port %c\n", port_name(port));
 }
 
-- 
2.43.0

