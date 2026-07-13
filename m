Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dAvYHyR6VGremQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0957474E7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Kam+rE0A;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B9910E7A4;
	Mon, 13 Jul 2026 05:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED91C10E79F;
 Mon, 13 Jul 2026 05:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783921185; x=1815457185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QXM6kN8y0jm0X/adCMbIt+oj2kR++CxjonAU0QJOvhs=;
 b=Kam+rE0A3PTCKqbAu+aGnrL02qgSiD+4jJTolebueeOd+lPr3hGn1/fJ
 MMxECDEdtu5Ym+67hVNmY+iSX3JOqcimFb/DUUbeX9Zc9R6CWu1WEGtEk
 ocfR/VFlej9LoAKVk64Z0ZfTeXJ0V+4K3BiZF76jmYNijgqxtUq39YEK3
 biAOETPJiFsn5SP98L9dXJl2j82+J4WOrosAUZZnrcmFKJuvuWPKQXyhw
 MJkKbG3B8j274Gz0SGnHabw/3Y+3r9tB47qOz9A92WbHXMwhqAe/4mVvl
 nISFURr/Es9gZvhje220wq7CrDEJ3EMaSGi6YMjo+FQu1vBkZ94XuQ9Sf w==;
X-CSE-ConnectionGUID: ULL1ZzK8TNy52bbOjZnRXA==
X-CSE-MsgGUID: clUJik6GQkqaYX8L/l7k5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95670009"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95670009"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 22:39:45 -0700
X-CSE-ConnectionGUID: cES7nrCiTGqgTelfxN4bKQ==
X-CSE-MsgGUID: XYGgV8RKSJy/uaktO0MvGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="252066360"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 12 Jul 2026 22:39:43 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [CI v4 14/14] drm/i915/color: Add color pipeline support for SDR
 planes
Date: Mon, 13 Jul 2026 10:45:16 +0530
Message-Id: <20260713051516.4087420-15-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260713051516.4087420-1-chaitanya.kumar.borah@intel.com>
References: <20260713051516.4087420-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F0957474E7

Now that everything is in place expose the SDR plane color pipeline
to user-space.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color_pipeline.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
index 136b9378ca48..a99b6eb20448 100644
--- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
+++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
@@ -188,17 +188,11 @@ int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_en
 
 int intel_color_pipeline_plane_init(struct drm_plane *plane, enum pipe pipe)
 {
-	struct drm_device *dev = plane->dev;
-	struct intel_display *display = to_intel_display(dev);
 	struct drm_prop_enum_list pipelines[MAX_COLOR_PIPELINES] = {};
 	int len = 0;
 	int ret = 0;
 	int i;
 
-	/* Currently expose pipeline only for HDR planes */
-	if (!icl_is_hdr_plane(display, to_intel_plane(plane)->id))
-		return 0;
-
 	/* Add pipeline consisting of transfer functions */
 	ret = _intel_color_pipeline_plane_init(plane, &pipelines[len], pipe);
 	if (ret)
-- 
2.25.1

