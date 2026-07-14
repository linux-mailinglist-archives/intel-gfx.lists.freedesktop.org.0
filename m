Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tO8HOGcUVmqQywAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1082753941
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="askr1aU/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3634510ECF6;
	Tue, 14 Jul 2026 10:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAD710E060;
 Tue, 14 Jul 2026 10:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784026214; x=1815562214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uwffkij6CNpLnIGm9VgcDZKdtaAxVqVyYDQl6auC5vQ=;
 b=askr1aU/tW/lNdkyH1ZhxvHAkcMWPYT78BzucVdX/zrU/ruEPnSN644U
 3MGgBy+VV7FkPxVbXBCIprb4rjEH5M9zRgO7jssE6sEMVIGM10FQd7mAQ
 ko+o89InMAARg2eWw0oQS/aHvN3yIFRHpGcm5NebEdAgw5Xc/hScS8TCw
 xzXSC5l3SMxxiznF542bLlpVMxtd4Wdulz0qEjT/mVg/RrMAzj2xlfsPH
 hvdz5EaN9W1wSMpyTXIRJndJdRMCjejIAIZzVK+A0K1zfqbgAJg8LmGQJ
 Cr2kfMbWTQh4eXOuQZNJWFcrTnpjh3qeWoFRjbFuXP5DeaHAmhG8fNYY4 w==;
X-CSE-ConnectionGUID: LV7b9BBdS6OJYy7aftvExQ==
X-CSE-MsgGUID: e+13u9wfTParRYGt+bI4WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88544456"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88544456"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 03:50:14 -0700
X-CSE-ConnectionGUID: xe3keGWiTjSjbMLWvquw7w==
X-CSE-MsgGUID: 7ZQrkQgcS3a+ogK9tTKl+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="260134532"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 14 Jul 2026 03:50:12 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v3 8/8] drm/i915/vrr: Enable cmrr
Date: Tue, 14 Jul 2026 16:09:37 +0530
Message-ID: <20260714103938.2371448-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1082753941

Enable CMRR during compute config and add related state
checker for the same.

--v2:
- Everything else except enable compute to handle before this patch
(Chaitanya)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ca3cac5aa6ab..ce4148fa1687 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -256,6 +256,8 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
 						   crtc_state->vrr.cmrr.cmrr_n,
 						   &crtc_state->vrr.cmrr.cmrr_m);
 
+	crtc_state->vrr.cmrr.enable = true;
+
 	return;
 }
 
-- 
2.48.1

