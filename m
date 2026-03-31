Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHsHEanry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DD136BF40
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66ECC10EA76;
	Tue, 31 Mar 2026 15:43:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BlAs7Xd9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202E710EA97;
 Tue, 31 Mar 2026 15:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971814; x=1806507814;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f/J0fVRi8eJW6AhFjDNox4oml+6lz+TDosj01rN3JRk=;
 b=BlAs7Xd9BiNDJjbybK9rYQkLFPckKKn8GyQ2geDYk7deFFhmqtHpt5Eh
 0vmaSAakZqhbdKocR3dnqKs/yfG/vhV4Pgkjlg3ndKL1D+8XTdHLCIU/D
 0QY829yVXzqGeoH5bh4TBQis+b/pzbIuC2har73/zp2Cb9CJjFTafoDNN
 JIC/Oe1tJoqNKltqgwTgCDJrbTgIg1Mf9rNbwpve36u7SWNeas2VQ6MvF
 CsIknS+YE658z0beMTD6jxm0QSNna9alXzowv6I5YWILfRvroFWdwMmcb
 jNvFg5lk5DawD1zIuCA0i16V0l+cRz/yUj9q6+z1RS8mys9HRarnSfMqr w==;
X-CSE-ConnectionGUID: E9CQ6qKhQd+evAEKZ7DHZw==
X-CSE-MsgGUID: T5hCMu6ITrSMD2GKsezETA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76180996"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="76180996"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:33 -0700
X-CSE-ConnectionGUID: 0Gqc9tqfQXmaoWGLfqOL/w==
X-CSE-MsgGUID: Nou8uKmIStSfN4BNu9PQsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="223519272"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:31 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 07/12] drm/i915/de: Add intel_de_read16()
Date: Tue, 31 Mar 2026 18:42:54 +0300
Message-ID: <20260331154259.24600-8-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: D5DD136BF40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We'll need a replacement for intel_uncore_read16() in order to
untangle intel_mchbar_read16() from uncore. As with the 8 bit
counterpart this doesn't need to work on modern platforms
so we can forgo all the DMC wakelock stuff and whatnot.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_de.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i915/display/intel_de.c
index d2a418da2d54..a96e83d76eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_de.c
+++ b/drivers/gpu/drm/i915/display/intel_de.c
@@ -176,3 +176,11 @@ void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val)
 
 	intel_uncore_write8(__to_uncore(display), reg, val);
 }
+
+u16 intel_de_read16(struct intel_display *display, i915_reg_t reg)
+{
+	/* this is only used on MCHBAR registers on pre-SNB */
+	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 6);
+
+	return intel_uncore_read16(__to_uncore(display), reg);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index f87b84ab9d6d..3f9861b7a589 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -19,6 +19,7 @@ static inline struct intel_uncore *__to_uncore(struct intel_display *display)
 
 u8 intel_de_read8(struct intel_display *display, i915_reg_t reg);
 void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val);
+u16 intel_de_read16(struct intel_display *display, i915_reg_t reg);
 
 static inline u32
 intel_de_read(struct intel_display *display, i915_reg_t reg)
-- 
2.52.0

