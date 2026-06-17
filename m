Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HC7dMs5pMmqIzgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAC8697F34
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IKQAIbnb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D8B10EF2B;
	Wed, 17 Jun 2026 09:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579E510EF25;
 Wed, 17 Jun 2026 09:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688772; x=1813224772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hXRIXYwzreVUsLlB6mcXIQK+qfTNL2/Nk99X+a7Z+AM=;
 b=IKQAIbnbOY6+URoijqzRjME9ZQIeUFAJMgsrKwTwbXiWsq00/wyRaFRn
 +ZRwQMynl1oeeDcdX2ZQ7CxlMNdMyHtwloE+qC3O+NhyQNqQo4c0ZMdHd
 yZCvkfQrA2/16ZDJBMl4OMSDe7s+sOkZWB84lJkFt0T4lBbpYSqyswxzY
 jUkMX7BeY8bPqWu+eU2HdQtRqwKs8TPixFWNUawCLjPOjGyyhqBpkcBE4
 pdy015vKtuIE5A3enqnHpmk+974Yu+/SJa4DgPkw470nTBaD5tBHlz2U0
 QCfEsIiTdqu0F9H78h9wpMTB0p+0FmVSnP7+zVshUOUlLwPYdQQTWegSi g==;
X-CSE-ConnectionGUID: bnbojfAUSOymuICVbJ7+hg==
X-CSE-MsgGUID: /VEj9U/HR/+jmj14jGTYuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605281"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605281"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:32:52 -0700
X-CSE-ConnectionGUID: GzRKnt85QYKcdG3h13m7EA==
X-CSE-MsgGUID: ibK6cEn1Sy2/KS0wJFHIgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245114455"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jun 2026 02:32:51 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v3 08/14] drm/i915/color: Add YUV range correction to SDR plane
 pipeline
Date: Wed, 17 Jun 2026 14:38:13 +0530
Message-Id: <20260617090819.1735153-9-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AAC8697F34

Insert the INTEL_PLANE_CB_YUV_RANGE_CORRECT color block into the SDR
plane color pipeline. This enables YCbCr limited-to-full range expansion
ahead of the CSC block that expects full range pixel data. With this,
the pipeline can accept limited range framebuffers.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
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

