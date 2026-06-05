Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id elAsDF00I2qQkQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 22:41:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7DF64B315
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 22:41:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZMXU0Fql;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B0C10E53B;
	Fri,  5 Jun 2026 20:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 224AB10E50D;
 Fri,  5 Jun 2026 20:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780692057; x=1812228057;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DFwEbM0UdJfjkt5Es8i/CqBZMVoUCNpKhD3XKMVNcVg=;
 b=ZMXU0FqlaBlN3kQvZsIz1zxSRVzNxCjqHWaWV2mvYRP4xi7MpLqrnXKr
 37W+kai7lQQWCoUUERovVyCUq7K5GmTJHrYZQG5IKyoE0U8rqoFQeSWez
 8XEKm9t/kqBp2yEs9VEmVup9PH/+ZXFlxFr4kZjjKeaP36wL8OAtz7SXO
 7rn5Az+FvmgcQmLA4bKCdDvmlUzJCAoZxsTwFkKU/qpvpNY2PlEonRfKV
 M0E6pdjiGFW6VHEWKd01qIKJePNPtC2+AM7XJ4zTYT6lbiwX5bcMAKDCz
 xGftY4f+DJwpIFykULT+iFe9B7soX01gbNBHt34JE4PcBwmahDJE2dOL2 w==;
X-CSE-ConnectionGUID: jNmvPn/lSueEDg8kzcmkdA==
X-CSE-MsgGUID: hzEUEqPTTruoOgWVsl6HSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="84108057"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="84108057"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 13:40:57 -0700
X-CSE-ConnectionGUID: p9huUQI7T2KCQkGz5WsLVw==
X-CSE-MsgGUID: q/UaYMk6QNqRtzKJZnxkuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="243839403"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 13:40:55 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com, Michal.Wajdeczko@intel.com
Subject: [PATCH v2 2/5] drm/xe/heci: Use xe print functions in xe_heci_gsc.c
Date: Sat,  6 Jun 2026 04:40:44 +0800
Message-ID: <20260605204047.3840459-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260605204047.3840459-1-jonathan.cavitt@intel.com>
References: <20260605204047.3840459-1-jonathan.cavitt@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF7DF64B315

Update xe_heci_gsc.c to use the xe error reporting helper functions in
xe_printk.h instead of directly calling the associated drm print
functions from drm_print.h.  While we're here, we should update the
error messages to print the error codes in a more friendly way.

v2:
- Update the error messages to print the error codes in a more friendly
  way (Wajdeczko)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Michal Wajdeczko <Michal.Wajdeczko@intel.com>
---
 drivers/gpu/drm/xe/xe_heci_gsc.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
index 5af8903e10af..13123990c4e2 100644
--- a/drivers/gpu/drm/xe/xe_heci_gsc.c
+++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
@@ -8,12 +8,11 @@
 #include <linux/pci.h>
 #include <linux/sizes.h>
 
-#include <drm/drm_print.h>
-
 #include "xe_device_types.h"
 #include "xe_heci_gsc.h"
 #include "regs/xe_gsc_regs.h"
 #include "xe_platform_types.h"
+#include "xe_printk.h"
 #include "xe_survivability_mode.h"
 
 #define GSC_BAR_LENGTH  0x00000FFC
@@ -112,13 +111,13 @@ static int heci_gsc_irq_setup(struct xe_device *xe)
 
 	heci_gsc->irq = irq_alloc_desc(0);
 	if (heci_gsc->irq < 0) {
-		drm_err(&xe->drm, "gsc irq error %d\n", heci_gsc->irq);
+		xe_err(xe, "GSC: irq allocation failed (%pe)\n", ERR_PTR(heci_gsc->irq));
 		return heci_gsc->irq;
 	}
 
 	ret = heci_gsc_irq_init(heci_gsc->irq);
 	if (ret < 0)
-		drm_err(&xe->drm, "gsc irq init failed %d\n", ret);
+		xe_err(xe, "GSC: irq initialization failed (%pe)\n", ERR_PTR(ret));
 
 	return ret;
 }
@@ -151,7 +150,7 @@ static int heci_gsc_add_device(struct xe_device *xe, const struct heci_gsc_def *
 
 	ret = auxiliary_device_init(aux_dev);
 	if (ret < 0) {
-		drm_err(&xe->drm, "gsc aux init failed %d\n", ret);
+		xe_err(xe, "gsc aux init failed %d\n", ret);
 		kfree(adev);
 		return ret;
 	}
@@ -159,7 +158,7 @@ static int heci_gsc_add_device(struct xe_device *xe, const struct heci_gsc_def *
 	heci_gsc->adev = adev; /* needed by the notifier */
 	ret = auxiliary_device_add(aux_dev);
 	if (ret < 0) {
-		drm_err(&xe->drm, "gsc aux add failed %d\n", ret);
+		xe_err(xe, "gsc aux add failed %d\n", ret);
 		heci_gsc->adev = NULL;
 
 		/* adev will be freed with the put_device() and .release sequence */
@@ -190,7 +189,7 @@ int xe_heci_gsc_init(struct xe_device *xe)
 	}
 
 	if (!def || !def->name) {
-		drm_warn(&xe->drm, "HECI is not implemented!\n");
+		xe_warn(xe, "HECI is not implemented!\n");
 		return 0;
 	}
 
@@ -215,7 +214,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
 		return;
 
 	if (!xe->info.has_heci_gscfi) {
-		drm_warn_once(&xe->drm, "GSC irq: not supported");
+		xe_warn_once(xe, "GSC: unexpected irq %#x\n", iir);
 		return;
 	}
 
@@ -224,7 +223,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
 
 	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
 	if (ret)
-		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
+		xe_err_ratelimited(xe, "GSC: irq handling failed (%pe)\n", ERR_PTR(ret));
 }
 
 void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
@@ -235,7 +234,7 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
 		return;
 
 	if (!xe->info.has_heci_cscfi) {
-		drm_warn_once(&xe->drm, "CSC irq: not supported");
+		xe_warn_once(xe, "CSC: unexpected irq %#x\n", iir);
 		return;
 	}
 
@@ -244,5 +243,5 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
 
 	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
 	if (ret)
-		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
+		xe_err_ratelimited(xe, "CSC: irq handling failed (%pe)\n", ERR_PTR(ret));
 }
-- 
2.53.0

