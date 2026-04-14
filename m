Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPgVONBN3mndqAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 16:23:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA473FB192
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 16:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C2210E5D4;
	Tue, 14 Apr 2026 14:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F2VbuY4u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8376510E278;
 Tue, 14 Apr 2026 14:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776176589; x=1807712589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nFF+YT8G4d5ofUKL+n32oiFve/DWJGPgt+ca1e9axT8=;
 b=F2VbuY4u1V8v1jqHGg3NGYb/DRJrQPjNotKB+Dn5TbcZdCpveX4rPIhv
 puBSuGhZVPsxPStMaeVubpDU2I5J7gRGSNyi5VGZU9azSf1KkoRbbkjcN
 WwErtVlQK2Wotj/LZ3Q7ZaO3f7ccLupdXSrA9uyEKxy709/lKPhquJ6UJ
 0edQXaCwXmlMAlH1pBuiskClBNEL4Rj4F8N1TzKoHl8cr87jm0pWiXy62
 118E7K7wqOorGgpT6p37pPsnq+YRAH9acChRCnwSZ+R5XSNuSIjMGU383
 EovcYRUVa9i6NcKyc+VLWHKGeFDzwktJuOhQrRGpEbJmHQd5rRjqeqjNl Q==;
X-CSE-ConnectionGUID: JOwfoPA4QR6jcKcjYFxU1g==
X-CSE-MsgGUID: JIihQZTySjC3lwbat/XOfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76297598"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76297598"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 07:23:08 -0700
X-CSE-ConnectionGUID: BfBUnUVrRXO9wcDo2xFALQ==
X-CSE-MsgGUID: ST11tRUcQ9SkJ8ejBClIUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="234149876"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.235])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 07:23:07 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 3/5] drm/xe/display: Add init_clock_gating.h stubs
Date: Tue, 14 Apr 2026 17:22:45 +0300
Message-ID: <20260414142247.651-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260414142247.651-1-ville.syrjala@linux.intel.com>
References: <20260414142247.651-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 7BA473FB192
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add static inline stubs for init_clock_gating.h functions
so that we don't need ifdefs in the actual code. We already
have one in intel_display_power.c, and now I need to bring
over intel_display_reset.c.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c     |  2 --
 .../drm/xe/compat-i915-headers/intel_clock_gating.h    | 10 +++++++++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 8a7afe2a94bc..80ecf373fb19 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1420,9 +1420,7 @@ static void hsw_disable_pc8(struct intel_display *display)
 	intel_init_pch_refclk(display);
 
 	/* Many display registers don't survive PC8+ */
-#ifdef I915 /* FIXME */
 	intel_clock_gating_init(display->drm);
-#endif
 }
 
 static void intel_pch_reset_handshake(struct intel_display *display,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h
index ce986f0e8f38..552975a30ba2 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h
@@ -3,4 +3,12 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "../../i915/intel_clock_gating.h"
+#ifndef __INTEL_CLOCK_GATING_H__
+#define __INTEL_CLOCK_GATING_H__
+
+struct drm_device;
+
+static inline void intel_clock_gating_init(struct drm_device *drm) {}
+static inline void intel_clock_gating_hooks_init(struct drm_device *drm) {}
+
+#endif /* __INTEL_CLOCK_GATING_H__ */
-- 
2.52.0

