Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Nw2B2o/F2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD545E9531
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1F910E94B;
	Wed, 27 May 2026 19:00:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iDUNymL6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39DD10E948;
 Wed, 27 May 2026 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779908454; x=1811444454;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xD2UBmkjRwVK6FNujK9g7E/huM0Duim7awciomOSXAQ=;
 b=iDUNymL64VnOHE2sjEkWmL4kQwE/u9GquNQbSgkJWF91UofD0Gwly9UA
 NIezWvsieZtFHpcEV7iJSyfG69dPQOGpqrePyIDb36t8U+oAL/IAs+EeN
 iKJ1ZonvUIv+U8jymdtamZDPCGQsiRVUz+YTjsNJuMwiGbNAPE3/9eEKZ
 tWLybqUK8KWTyYomDHFgnkTQHBZNcRmNT73SZ11c388ySwYMqhtf4WeG2
 cmfkdSJAhL530dxc4lDRQ0SDuwPaTQsyxzz7cP9+juf0jGMM2KvomDFRV
 wWXxQtj3BqV+9j4stNwhZ6NE+clWASPo9hX3tRMpIr+aLGZn40T/F1x0d w==;
X-CSE-ConnectionGUID: jKh1L4NET9GsqldwleLzmA==
X-CSE-MsgGUID: c9nivC6pRPqyp+K3y9k+2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80602158"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80602158"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:54 -0700
X-CSE-ConnectionGUID: XZkwD+hdSLmLdF3WrB7UJA==
X-CSE-MsgGUID: DhWgy9kuS3S2sC8xgqFcsA==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:52 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI 17/17] drm/i915/display: Enable DC3CO for display version 35+
Date: Thu, 28 May 2026 00:30:04 +0530
Message-ID: <20260527190004.118730-18-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: DBD545E9531
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Display version 35+ supports DC3CO power state. Set max_dc to 4
for these platforms to allow DC3CO along with DC6 state.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3ea51064a06c..0bb4f9d9c36f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1010,7 +1010,9 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
-	if (DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VER(display) >= 35)
+		max_dc = 4;
+	else if (DISPLAY_VER(display) >= 20)
 		max_dc = 2;
 	else if (display->platform.dg2)
 		max_dc = 1;
-- 
2.43.0

