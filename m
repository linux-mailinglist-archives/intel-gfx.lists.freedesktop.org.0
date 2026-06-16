Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id STFLOm9jMWqRiQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBF6690B16
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="ZFX/71/b";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3731E10EC48;
	Tue, 16 Jun 2026 14:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F4A10EC1B;
 Tue, 16 Jun 2026 14:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781621610; x=1813157610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xgGA+ugTjhJvibxqwV7pzmJMDXlgkaa4cZZXN3IlNP4=;
 b=ZFX/71/b0c35DnjIy5LJtSB3t0r4buf0KyVOA8Zqh+oFslv7Pnvc7/Ah
 ZhMZjjiidCxQe0OLo4FG9w/y5MttxBZ0VD+4wzNt2F5x3/2oymiGmySAw
 6aSwpwdvuL5wZerFcZZf+/1IRP27jiUYAr5W0GLdVCrx4b7tU13z1eIsE
 OzsgwaWyU5vmWWoad+lWyc62Xqh/GYaPXVgcS+ubXp7E7HF5Qi9D72q47
 kAMsngllMG9H0HFeZOnFJj/vyGEZvik9jdT2maZNu9+46evzbyrbOUYby
 bYNaLwH0x7uzeh7f0Ls7H4D2Ujxm7JFVHl6Hy09zv/0rzU/ox5kpE1dXV Q==;
X-CSE-ConnectionGUID: J0mPO9u5TLusJdRFqfTfHg==
X-CSE-MsgGUID: ov/+KJrNRo2q2uIRGU06rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="69932849"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="69932849"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 07:53:30 -0700
X-CSE-ConnectionGUID: tSEg4xcvRgCv9yXK8GT1+w==
X-CSE-MsgGUID: xijs1TAcTAGp+jOtrQNBCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="285896362"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 16 Jun 2026 07:53:28 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 10/11] drm/i915/vrr: Return from CMRR compute config in
 case of PSR2 enabled
Date: Tue, 16 Jun 2026 20:12:31 +0530
Message-ID: <20260616144233.832276-11-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCBF6690B16

CMRR is mutually exclusive to PSR2, hence return from CMRR if PSR2
is already computed.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 92ded2e68b01..2d5f0f17bf3c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -233,6 +233,9 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
 	if (!HAS_CMRR(display))
 		return;
 
+	if (crtc_state->has_sel_update)
+		return;
+
 	/* No CMRR ratio configured through debugfs */
 	if (!crtc->cmrr.numerator)
 		return;
-- 
2.48.1

