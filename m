Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCYJK1cvxGkAxQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFE932AD6B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFDD610E856;
	Wed, 25 Mar 2026 18:54:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A0JJcXJS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E182D10E83F;
 Wed, 25 Mar 2026 18:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774464853; x=1806000853;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xhr0T8NnrIS3u3QDv4tMYAwFlZ4yBdDTKlUn8LB4r8c=;
 b=A0JJcXJSMP978XeoLFoS64pZci8b+3IDdCr8QbqBlh4f2br3Q7E/+ZIP
 nUqx74mz89MTzi2Txnyks6/pAb4iamgEovQS180CJxOoPLHJSl//TIEjb
 Rzkq0nrffyNDVIyLY4+km3NuNwcT/IBKen6QeEeNQqN6Lnd6miA9+kjmh
 JBSrwR9aQMcswo4tErJUZZiX9tVeicePAzsbyaPzLdjFaEzXL2AukZFwN
 KQnsFtfRSYaT6fMFZF8dI4y0IMQJXCEyVjgF/TYTCgmZ3A97OWw4dhOhz
 Y+wlKQ+h5f9Jo4lzaECYKn481IEUfA81PEWmqmmMlgCdHzVJOZGf09a4Z w==;
X-CSE-ConnectionGUID: +ikKU5cLTKu7t1yZiVatlQ==
X-CSE-MsgGUID: kB2sXJPmSjikaHvfdQdHQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86991621"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86991621"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:12 -0700
X-CSE-ConnectionGUID: PWEUb7qWQJqwDSYZva7J2Q==
X-CSE-MsgGUID: PgX5T3sZTWOxDHTkNtN5lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221448611"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:11 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/12] drm/i915/de: Add intel_de_read16()
Date: Wed, 25 Mar 2026 20:53:36 +0200
Message-ID: <20260325185342.11482-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7EFE932AD6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We'll need a replacement for intel_uncore_read16() in order to
untangle intel_mchbar_read16() from uncore. As with the 8 bit
counterpart this doesn't need to work on modern platforms
so we can forgo all the DMC wakelock stuff and whatnot.

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

