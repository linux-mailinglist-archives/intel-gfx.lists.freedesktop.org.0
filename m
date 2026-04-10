Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C7CAEWo2GkhgggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 09:35:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A1E3D3662
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 09:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106E910E8D4;
	Fri, 10 Apr 2026 07:35:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kumo/kmx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EEF110E8C7;
 Fri, 10 Apr 2026 07:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775806530; x=1807342530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nFF+YT8G4d5ofUKL+n32oiFve/DWJGPgt+ca1e9axT8=;
 b=kumo/kmxxdRZz08fPDfeS+bDySA0kwo7U0quan7fwDHn25kmJQLl8BGs
 m45wJlNTmTdaeUcV+S+zlmywZsFracIJ3Bi9iuP4Y3MASht6/vFj6hJTw
 ptDYxqjqOeI/ImdKhyelmTC4QtL/UJgxqYqr9oXQ4QDD9ILBv1q4V63jO
 bX5XTqnY6iBLz3te+639LTBs+vxgJNMyi7PSNhK+dzx28XeQyOidivQCE
 JUcH/eNcXW7DLeROZf1FPZ58N384h8L+QRtzZRmb36fWmALbpd6Fc/hRL
 +OSZ9zLsqLCrxFLLr1EQzOl3VdDjJhGLO26EHIzJvwhJNRxdbDqIt1Zmw g==;
X-CSE-ConnectionGUID: DmBXBTYfQMO740oHI7MnNA==
X-CSE-MsgGUID: QbvNJF55R+uQHyP3StGIIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="80709903"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="80709903"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:35:30 -0700
X-CSE-ConnectionGUID: qKqdM4LKT7OdYwMs9fhQwA==
X-CSE-MsgGUID: fPx83mgzT06ItA5OlXML3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="225854411"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:35:27 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 3/4] drm/xe/display: Add init_clock_gating.h stubs
Date: Fri, 10 Apr 2026 10:34:59 +0300
Message-ID: <20260410073500.32308-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410073500.32308-1-ville.syrjala@linux.intel.com>
References: <20260410073500.32308-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: C6A1E3D3662
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

