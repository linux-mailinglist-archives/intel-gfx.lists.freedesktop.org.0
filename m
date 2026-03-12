Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCGVOoF2sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:17:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B631D26EC1C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF83110E9AB;
	Thu, 12 Mar 2026 08:17:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHgz5vCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC8B10E198;
 Thu, 12 Mar 2026 08:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773303423; x=1804839423;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hDFyFgYXgAMe7GBPGtKTfOBh/QsvVOCyjf26FXBF53E=;
 b=XHgz5vCMoThc6TG+hwc0s6DnoBIjemNYIxpZBjRWlUUGBpa0NjaoCOls
 jdMoe9weexBC0XzkaLr2q3GX9NTsRtswAf/iL2x9TBfIdvqYXQ0Croprx
 1H59fdkkEzEaF9MNqDCLE9Wg0Pp4JNvesdWVHRwEdVtcW5TG8SNM3tXu3
 hn0UXzAClR6aLbbMeBo5GAgqoV9F86GJXiNtIKuCf6Ont/KNO/pgq/CjC
 W1ftb0Sx+1dTKI57Bkf4cXzOkY+uKzKYgDZwdKrUK735xYkqcG5Dpxlkb
 ZFrKvqhx+dEV/L4arnea4zES3pv0WeUSFHcxe4XC0XLprqitsS2GLUkmC Q==;
X-CSE-ConnectionGUID: EsOvHp+bRoCU21ItXzc4Rw==
X-CSE-MsgGUID: 0T/0HmB5SWqqqi6plY4m/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74428342"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74428342"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:17:01 -0700
X-CSE-ConnectionGUID: z+ArkpgSRz2kN+YQ7rf4Bg==
X-CSE-MsgGUID: uya2K5dKRcaCTwPghnrXSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="225198438"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.94])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:17:00 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH] drm/i915/display: fail compilation on intel_display_wa() with
 invalid enums
Date: Thu, 12 Mar 2026 10:16:46 +0200
Message-ID: <20260312081647.1083777-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: B631D26EC1C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In a previous commit, the intel_display_wa() was changed so it
wouldn't receive an integer as the workaround number, but the enum
value itself.  This caused compilation not to fail anymore when the
enum passed didn't exist.

Bring this back by using BUILD_BUG_ON() to check that the enum passed
sits within the range of defined enums.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 15fec843f15e..4239e4295ec7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -60,11 +60,14 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_22012358565,
 	INTEL_DISPLAY_WA_22014263786,
 	INTEL_DISPLAY_WA_22021048059,
+
+	INTEL_DISPLAY_WA_COUNT
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
 
-#define intel_display_wa(__display, __wa) \
-	__intel_display_wa((__display), __wa, __stringify(__wa))
-
+#define intel_display_wa(__display, __wa) ({				  \
+		BUILD_BUG_ON(__wa >= INTEL_DISPLAY_WA_COUNT);		  \
+		__intel_display_wa((__display), __wa, __stringify(__wa)); \
+	})
 #endif
-- 
2.51.0

