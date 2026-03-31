Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL2MI7Dry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC3036BF58
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C020710EA9F;
	Tue, 31 Mar 2026 15:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="foo+domh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5B810EAB1;
 Tue, 31 Mar 2026 15:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971821; x=1806507821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wj9OF8OrwhWSTB72UWcYBvdMcc6R4Ws9T7WilB1n6z4=;
 b=foo+domh/yHbF3TXZlUy0iXvO8jbt5Q6P+N8havfFnLH4j5t/3js3ksS
 lDFTnP5hSkcHfr5G0n0mcGa+qvisuXFzLVND6DvAB4LCOC/JGgcSggNrX
 vn3sIQGiBOGeIYzqGgg1Pr9QQ3eOWJRTzBoIUFtEGKhTLQHK8vlcmHHK7
 ClsC9hW/NK0Ia79r20I9aI9i+o5JX1ecPMLNY+tASorQRoVSo64qHa82v
 O/KLZ0qeDag3L1in/6Ii6HwXtcmPiMKRRhmdvxnKxrrhuGr5QNFhJD+fa
 VvQybWkNA/3EwD8V7JC7TMI13eLkmniWUsw2BnI5n7yMTgJKzpLgBzbNH A==;
X-CSE-ConnectionGUID: ycFMiOz0Sgyxq9kb6OWU7A==
X-CSE-MsgGUID: XI6PXsMtSJiq1RSmkzjCIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76181008"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="76181008"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:41 -0700
X-CSE-ConnectionGUID: rdOavY9NQXO5KVueSaVV1Q==
X-CSE-MsgGUID: a0jjiN4HTvSU7H0PAXoNWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="223519330"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:39 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/12] drm/i915/de: Add a simple intel_de_read64_2x32()
Date: Tue, 31 Mar 2026 18:42:56 +0300
Message-ID: <20260331154259.24600-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 2FC3036BF58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_de_read64_2x32_volatile() is a complex beast because
it needs to deal with volatile register values. For simpler
cases we can simply do a pair normal intel_de_read()s.

My main reason for hating overuse of intel_de_read64_2x32_volatile()
is that it makes register tracepoints confusing. It always
does three accesses in the somewhat weird udw,ldw,udw order,
confusing the reader of the trace. Much more clear if we just
observe the two reads in the natural little endian order.

We also have no non-volatile use case where the LDW and UDW
are stored in non-consecutive registers, so we can just pass
along a single register offset.

v2: Put the function arguments on one line (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 295e7176b732..14f9dc7b6dfd 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -53,6 +53,18 @@ intel_de_read64_2x32_volatile(struct intel_display *display,
 	return val;
 }
 
+static inline u64
+intel_de_read64_2x32(struct intel_display *display, i915_reg_t reg)
+{
+	i915_reg_t upper_reg = _MMIO(i915_mmio_reg_offset(reg) + 4);
+	u32 lower, upper;
+
+	lower = intel_de_read(display, reg);
+	upper = intel_de_read(display, upper_reg);
+
+	return (u64)upper << 32 | lower;
+}
+
 static inline void
 intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
 {
-- 
2.52.0

