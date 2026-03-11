Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBVoMsN5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6732653D4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED0A10E8AE;
	Wed, 11 Mar 2026 14:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iW/p+XLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD3610E291;
 Wed, 11 Mar 2026 14:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238720; x=1804774720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kg4MrGpWlR+LO1U0ZFfn7UPACmzllVM920/Nejs9CZw=;
 b=iW/p+XLG4HguQQWewWtRPaKGElZzjVVLV05JO1hz0xlegXDieF8wQ+jQ
 2CVdyVgPgXED4HnCO2DB8N7mrJ8w/fQo/SS7yBwtW8QHiAKKtiixMduZA
 3jA2X935k0wnBQIcOLYsVIJHol6a8vBkmoVkKqaErGRgdi4MNrd64Qfgr
 3EFajexIqQcNW8Br1PUQidtox4Vnrh3CPsJu6WCnDF2/ZTkfjx3KJq4LF
 79upeHGatBUHt/EJblXKrTggsTTuN1SFcjKie8huBi35g0xtcAaFPJENB
 OKuT5B5nl/5NxlinsKKgDIh/ZzO257J1PntfS3ENrNSXDSjIwz17XryMl A==;
X-CSE-ConnectionGUID: wQwxew0TSxGuJ3cLeIeRBg==
X-CSE-MsgGUID: i2NG+CnNRHm2//MRcW1dkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74427371"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74427371"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:36 -0700
X-CSE-ConnectionGUID: ikpsoH9FTGavGlJG7DcowQ==
X-CSE-MsgGUID: oVZcw6Z+SMmQs9TdJAQCSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="219729412"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/xe: rename intel_bo.c to xe_display_bo.c
Date: Wed, 11 Mar 2026 16:18:15 +0200
Message-ID: <2f73eda5117462407f12113ce096496282ee3fcc.1773238670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773238670.git.jani.nikula@intel.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: DF6732653D4
X-Rspamd-Server: lfdr
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Follow the xe_ prefixed file naming in xe. With xe_bo.[ch] already being
a thing in xe core, use xe_display_bo.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/Makefile                                | 2 +-
 drivers/gpu/drm/xe/display/{intel_bo.c => xe_display_bo.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/gpu/drm/xe/display/{intel_bo.c => xe_display_bo.c} (100%)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 50608312bc66..aeede4423680 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -211,10 +211,10 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
 
 # Display code specific to xe
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
-	display/intel_bo.o \
 	display/intel_fb_bo.o \
 	display/intel_fbdev_fb.o \
 	display/xe_display.o \
+	display/xe_display_bo.o \
 	display/xe_display_pcode.o \
 	display/xe_display_rpm.o \
 	display/xe_display_wa.o \
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/xe_display_bo.c
similarity index 100%
rename from drivers/gpu/drm/xe/display/intel_bo.c
rename to drivers/gpu/drm/xe/display/xe_display_bo.c
-- 
2.47.3

