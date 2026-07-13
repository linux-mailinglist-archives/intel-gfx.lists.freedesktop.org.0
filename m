Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BnEjLxh6VGrOmQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4E47474AE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=h5iep9UX;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7A610E78B;
	Mon, 13 Jul 2026 05:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD09F10E556;
 Mon, 13 Jul 2026 05:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783921174; x=1815457174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nkd2O1E3fX+r/k7Iw4fqWBOCJhWDIMnCqcv57IslaRY=;
 b=h5iep9UXx+VkeJeNjIgtaLQ/+tcufhW1o57XwMr5ybPT+hVK6x4IvlN+
 ANlK5KdvLOwHfbiXD2VkMoACCJYd5Pf+xcYl4T1riSkf4fH8WlegaEkZ3
 urZsHRJZHeGqExom9TrANwjWDwnpHKPSBCqJQAIbN1hPOWP8CCL4BguUD
 zgMCt50lyS4agUx8WSDSau7BRbGeZ3shLAMf3B5dX3upEDliKXaLKsIIn
 mmQy+YdZB5UNa5czh+lgqE8/OeEPqBFLQ9S955sb8ovFImAUr1aUxLl1U
 LSy3cmjZ0CZA8WjrmjuvqB9xLJDyHCuo45W+ujC8ZmJnswfWVF/IFRNJY w==;
X-CSE-ConnectionGUID: Y2VdzO5jR4qmlbi60RATqA==
X-CSE-MsgGUID: t0GAlY/PT+ieeVK6cKI40A==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95669998"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95669998"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 22:39:34 -0700
X-CSE-ConnectionGUID: WKhZoUDZQTaJ7H1zas0kOw==
X-CSE-MsgGUID: xnmkxS7LQFmvcO8dkFuHaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="252066336"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 12 Jul 2026 22:39:32 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [CI v4 08/14] drm/i915/color: Add YUV range correction to SDR plane
 pipeline
Date: Mon, 13 Jul 2026 10:45:10 +0530
Message-Id: <20260713051516.4087420-9-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: 8B4E47474AE

Insert the INTEL_PLANE_CB_YUV_RANGE_CORRECT color block into the SDR
plane color pipeline. This enables YCbCr limited-to-full range expansion
ahead of the CSC block that expects full range pixel data. With this,
the pipeline can accept limited range framebuffers.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color_pipeline.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
index 7d25f4fbfa9b..7457fa51cb97 100644
--- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
+++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
@@ -44,6 +44,7 @@ static const enum intel_color_block hdr_plane_pipeline[] = {
 };
 
 static const enum intel_color_block sdr_plane_pipeline[] = {
+	INTEL_PLANE_CB_YUV_RANGE_CORRECT,
 	INTEL_PLANE_CB_CSC_FF,
 };
 
-- 
2.25.1

