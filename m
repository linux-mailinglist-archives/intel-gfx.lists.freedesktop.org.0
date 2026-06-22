Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xEThFdeqOWqSwAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:36:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DBB6B2845
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:36:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=D29CIhy1;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DC710E897;
	Mon, 22 Jun 2026 21:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C067B10E89C;
 Mon, 22 Jun 2026 21:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782164180; x=1813700180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xCkjLC1TGJcZIrsjCHhpMA00qsxfrQx9qoc997Cn4AM=;
 b=D29CIhy1JCQTw3xR/AlCEnlY5h/HNcmN8fRobaQGO6a38qDf8ecKz2OJ
 SNEOryD9ALQTluurFRb7bOKbmb1znugHjiBVcNiA+yy5W0JYZHYPPUWCD
 dKKrx6kbXSIraq2/Qix0L13lJu4nraa2IVrUrcY2BvfgtijPNlwx63USY
 cv96qIgneDbH6PDLsdA+ynuwj/BCPpWW4q5XD1Jgi7zH2NlvwV74hInQn
 Yqk7LHvon9esZJlGDupxvlxCUUmEXrzca/Blq0ChbpeVbpFFsTPswS56w
 sTepjhqwOhvU8hMMrvPc0q0b0B2NL5EQa/jHAyU+O7kyk8MiayXMDFDLM w==;
X-CSE-ConnectionGUID: h+/+hA43S7KhBjcmBee2IQ==
X-CSE-MsgGUID: W1T4f/ZwTvaZ7QIaW27LzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82673574"
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="82673574"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:36:20 -0700
X-CSE-ConnectionGUID: cNeoO2KuTLO+XcLqF3HpMQ==
X-CSE-MsgGUID: w9hxMiDwQZG7XX3jtxBuug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="246422680"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:36:17 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 2/5] drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
Date: Tue, 23 Jun 2026 00:35:59 +0300
Message-ID: <20260622213602.7244-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
References: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B7DBB6B2845

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a new mode matching flag DRM_MODE_MATCH_TIMINGS_VRR. This is
identical to DRM_MODE_MATCH_TIMINGS, except it requires the vsync
pulse to remain anchored to the end of vtotal, as opposed to the
start of the frame. VRR capable hardware can therefore treat
matching modes as just variants of the same mode with a different
vblank lengths.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_modes.c | 23 +++++++++++++++++++++++
 include/drm/drm_modes.h     |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 3f8e025fd6d9..e1eed13a8e94 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -1469,6 +1469,25 @@ struct drm_display_mode *drm_mode_duplicate(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_mode_duplicate);
 
+static bool drm_mode_match_timings_vrr(const struct drm_display_mode *mode1,
+				       const struct drm_display_mode *mode2)
+{
+	int mode1_vsync_start_offset = mode1->vtotal - mode1->vsync_start;
+	int mode1_vsync_end_offset = mode1->vtotal - mode1->vsync_end;
+	int mode2_vsync_start_offset = mode2->vtotal - mode2->vsync_start;
+	int mode2_vsync_end_offset = mode2->vtotal - mode2->vsync_end;
+
+	return mode1->hdisplay == mode2->hdisplay &&
+		mode1->hsync_start == mode2->hsync_start &&
+		mode1->hsync_end == mode2->hsync_end &&
+		mode1->htotal == mode2->htotal &&
+		mode1->hskew == mode2->hskew &&
+		mode1->vdisplay == mode2->vdisplay &&
+		mode1_vsync_start_offset == mode2_vsync_start_offset &&
+		mode1_vsync_end_offset == mode2_vsync_end_offset &&
+		mode1->vscan == mode2->vscan;
+}
+
 static bool drm_mode_match_timings(const struct drm_display_mode *mode1,
 				   const struct drm_display_mode *mode2)
 {
@@ -1538,6 +1557,10 @@ bool drm_mode_match(const struct drm_display_mode *mode1,
 	if (!mode1 || !mode2)
 		return false;
 
+	if (match_flags & DRM_MODE_MATCH_TIMINGS_VRR &&
+	    !drm_mode_match_timings_vrr(mode1, mode2))
+		return false;
+
 	if (match_flags & DRM_MODE_MATCH_TIMINGS &&
 	    !drm_mode_match_timings(mode1, mode2))
 		return false;
diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
index b9bb92e4b029..6e3eccc3c349 100644
--- a/include/drm/drm_modes.h
+++ b/include/drm/drm_modes.h
@@ -193,6 +193,7 @@ enum drm_mode_status {
 #define DRM_MODE_MATCH_FLAGS (1 << 2)
 #define DRM_MODE_MATCH_3D_FLAGS (1 << 3)
 #define DRM_MODE_MATCH_ASPECT_RATIO (1 << 4)
+#define DRM_MODE_MATCH_TIMINGS_VRR (1 << 5)
 
 /**
  * struct drm_display_mode - DRM kernel-internal display mode structure
-- 
2.53.0

