Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDInKzKjb2l7DgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:45:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D1D46970
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0693410E621;
	Tue, 20 Jan 2026 15:45:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NZebrndr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1667510E621;
 Tue, 20 Jan 2026 15:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768923951; x=1800459951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/hAaQXjJJkKz3hAFojPmHIyO2Bsti6RJCH6OAr/kxVE=;
 b=NZebrndrY2QnZ+0XqZGo5R1LEHLgoOxVL4tCD8XvkfqzER0jIvg8XTll
 iMT82QOkQS8CEMDSkAbprsbX0AXeQFctama4zpGtWZKwMko2bG6et3ncB
 U2XEQXX/127G031vtAJRL8nUyo+uzAAYFARthyfHqLr8NnTXChlxis4C3
 vYY1K9rB4dkKWGNOU/7EWiG26SiSgHNiheVYZSIBVLOBUoy4GtnY4X3vY
 KFBDsacc57s3AAXS1xouXpcN7WLC0439UCZP1Gh7BXJIEXLpwgujpiDgc
 jL07XKV0Izm9hSeuPxLz0RQ/JWfzfHb7ehrugA/usTIJct1qRAixhdVYo Q==;
X-CSE-ConnectionGUID: NfwPTNhTQXKJjyyeAp+3BQ==
X-CSE-MsgGUID: lsWJdpclQD2HPJq45LyHHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70040634"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70040634"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:45:51 -0800
X-CSE-ConnectionGUID: rXJqSk6IRS6PS2K9hWUoHg==
X-CSE-MsgGUID: Cg7hk09yT12D5oRKBIllJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="211004153"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:45:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/2] drm/i915/dsb: move i915 specific DSB buffer
 implementation to i915
Date: Tue, 20 Jan 2026 17:45:40 +0200
Message-ID: <a01b3e69a3f79713eacf437af00dbe23d2f9c8dd.1768923917.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768923917.git.jani.nikula@intel.com>
References: <cover.1768923917.git.jani.nikula@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 64D1D46970
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DSB buffer implementation is different for both i915 and xe. Move
the i915 specific implementation from display to i915 core.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                                   | 2 +-
 .../drm/i915/{display/intel_dsb_buffer.c => i915_dsb_buffer.c}  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_dsb_buffer.c => i915_dsb_buffer.c} (98%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 241b1d2e2603..7d726e8c21bf 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -77,6 +77,7 @@ i915-$(CONFIG_PERF_EVENTS) += \
 # core display adaptation
 i915-y += \
 	i915_display_pc8.o \
+	i915_dsb_buffer.o \
 	i915_hdcp_gsc.o \
 	i915_initial_plane.o \
 	i915_panic.o
@@ -274,7 +275,6 @@ i915-y += \
 	display/intel_dram.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
-	display/intel_dsb_buffer.o \
 	display/intel_fb.o \
 	display/intel_fb_bo.o \
 	display/intel_fb_pin.o \
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/i915_dsb_buffer.c
similarity index 98%
rename from drivers/gpu/drm/i915/display/intel_dsb_buffer.c
rename to drivers/gpu/drm/i915/i915_dsb_buffer.c
index 50faf3869b6c..de30d3896f4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/i915_dsb_buffer.c
@@ -3,11 +3,11 @@
  * Copyright 2023, Intel Corporation.
  */
 
+#include "display/intel_dsb_buffer.h"
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "i915_vma.h"
-#include "intel_dsb_buffer.h"
 
 struct intel_dsb_buffer {
 	u32 *cmd_buf;
-- 
2.47.3

