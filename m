Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LYoO8sgBmpDewIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 21:21:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32745464EC
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 21:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBC710E0B6;
	Thu, 14 May 2026 19:21:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfQzAExR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D5810E0B6;
 Thu, 14 May 2026 19:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778786504; x=1810322504;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=m9VAUGiyuMu0ayVGps3APZ8Jr6vHYeM7XdtfUhDkgnc=;
 b=lfQzAExR+ZTg5G0Qhxbfkpx+7nlA/pHeFDHKh8MjgojzR4YoARCDJn6/
 I/xrLcFbchXkQqwMoAYoP9QMRKHjVtifCD8VAexm4WxnZl9GRw7b5oaeG
 7ZCYni9rU0T+L3eTVJ+LNqZrq1QL5egabsYPEou3+RRkr6IvJbhgRDWM5
 mxLVJIMetNUIVZphGOakYwWuY4dCpB3krYd1rdxsvCDWEEJRdx00azx8A
 GwYAMd6hr8ge8MC9gl1NWfW9GpSWWJgRYmsMtUog02+GfEmvf+Y5juKKa
 INVJBCC43jdZquV1cg69lnM+/HIs82qN7C2/+yWA0YebI2AU0de7JwOPl Q==;
X-CSE-ConnectionGUID: 9wWr5Aq4RzGuFgOvIOSrpQ==
X-CSE-MsgGUID: lWzYgVuuTeKXoyjOSge1UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="83351246"
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="83351246"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 12:21:44 -0700
X-CSE-ConnectionGUID: DLVbVy9xTYibCyR/je04fQ==
X-CSE-MsgGUID: 5esvQLU6Q0qo/+xwHvsyIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="237611801"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.189])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 12:21:44 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 14 May 2026 16:19:30 -0300
Subject: [PATCH v3 1/5] drm/i915/bw: Don't call intel_dram_info() too early
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-1-68727d6fe3ec@intel.com>
References: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
In-Reply-To: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Queue-Id: C32745464EC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

If we end-up bailing early from intel_bw_init_hw() due to
!HAS_DISPLAY(display), the call to intel_dram_info() to initialize
dram_info will be meaningless.  Move the call to be done after that
check.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 9c3a9bbb49f6..7eef693b51ad 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -791,11 +791,13 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
 
 void intel_bw_init_hw(struct intel_display *display)
 {
-	const struct dram_info *dram_info = intel_dram_info(display);
+	const struct dram_info *dram_info;
 
 	if (!HAS_DISPLAY(display))
 		return;
 
+	dram_info = intel_dram_info(display);
+
 	/*
 	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
 	 * enabled that would impact display bandwidth.  However, so far there

-- 
2.53.0

