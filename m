Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAh7CRhNAmpaqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2B051668A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42DEB10E1F0;
	Mon, 11 May 2026 21:41:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ysy2a/zt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0993710E8E9;
 Mon, 11 May 2026 21:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535699; x=1810071699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FdaOP7dEh2URLgggIA7vq0fTLFfNFD9SSxcNc9fajq4=;
 b=Ysy2a/zt4jSJuvOddWCqcJzZfIMGTl80tp5A7QkSnXy1oHFEBRMWnUVO
 XJPmjqMq+VMWBjOAYFRV90Pp05OS6cznV0ma8CRmsWToFUM83if7eYV4k
 Z1R22JfTW63al4ium/yUtvrpd2Lc+xMCIomJLyRsS5don5aDfy3qvV97G
 pgDzx6ExBhM+jGAIpb1U2929mpxE2vnV8Jd0eVeDvXTx4mq7e4fRCNr9G
 kZgUr1uYUCmVjmiCbP7LE6sLDawYKr7EZkdV4YNG8CIM3JrZ+6iJA8K4K
 vKbixY2UVPpx7atk5tjpOrDfaOe7IZnhw3GVOsz6DCSYyuvCpi4WmtC87 g==;
X-CSE-ConnectionGUID: wrRnVVdhQrO3KrzZJW+Htw==
X-CSE-MsgGUID: URo7IlW4RNOwBodFPjzVGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79618483"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79618483"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:39 -0700
X-CSE-ConnectionGUID: 9nOQgXgASq2opWtW4T2w1g==
X-CSE-MsgGUID: 5fjt619oQcWB2agddZnTmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="233097266"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:37 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/14] drm/i915: Throw away the BIOS fb if has the wrong
 depth/bpp
Date: Tue, 12 May 2026 00:41:11 +0300
Message-ID: <20260511214122.8468-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: AE2B051668A
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Respect the user's choice of depth/bpp for the fbdev framebuffer
and throw out the fb we inherited from the BIOS if it doesn't
match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index f9c135400453..3754810cc187 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -268,6 +268,8 @@ static bool bios_fb_ok(const struct intel_framebuffer *fb,
 	struct intel_display *display = to_intel_display(fb->base.dev);
 	int width = fb->base.width;
 	int height = fb->base.height;
+	int depth = fb->base.format->depth;
+	int bpp = fb->base.format->cpp[0] * 8;
 
 	if (sizes->fb_width > width || sizes->fb_height > height) {
 		drm_dbg_kms(display->drm,
@@ -276,6 +278,13 @@ static bool bios_fb_ok(const struct intel_framebuffer *fb,
 		return false;
 	}
 
+	if (sizes->surface_depth != depth || sizes->surface_bpp != bpp) {
+		drm_dbg_kms(display->drm,
+			    "BIOS fb using wrong depth/bpp (%d/%d), we require (%d/%d), releasing it\n",
+			    depth, bpp, sizes->surface_depth, sizes->surface_bpp);
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.52.0

