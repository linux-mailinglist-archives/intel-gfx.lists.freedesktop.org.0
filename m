Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PM9BMY0hmneKQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B596010205A
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BDF10E8E0;
	Fri,  6 Feb 2026 18:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IYOZGYjY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A8D10E8E0;
 Fri,  6 Feb 2026 18:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770403011; x=1801939011;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=hwipaFZji6Ao4MHsgvVxkY7MRutGphXzmE+HJOCntXA=;
 b=IYOZGYjYCzbrYR8hTMGEuPEVtVgPP677pCewV8kiFfLZi9SE9ikPu5kP
 ckE+e2gZmPqLIiU8Xa3wTB/cDVG34dsutrkZS6Dx2B/mOFxiAlYe6JSbe
 CIXUdUA9upQqq2pbKN90pZ4as+psK83Racfq2nnEP+n1Et4+lU/J6lbMe
 hiDN5e/ewUruAXGb0JCx1hgtllnCGhjMawMl0CpyNPxTQniFHn8qazLTq
 XAn00ErieY+KAmtA6wOBk3/+MX3Hb6vowZYVgewk/86teCxRfZi6jlmpS
 iCqnQacrBKLGfCljNcQEA0H1VGpMtzDx8e6Z7VI/WuiCJXlwi4fQmO7tb w==;
X-CSE-ConnectionGUID: uxr+WA3dT8yobRf5SBvQIA==
X-CSE-MsgGUID: XbW7D5C6S6iyZQhHMSsEAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71516967"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71516967"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:51 -0800
X-CSE-ConnectionGUID: iu1Ulc4GRYeqGsJc3Y9jrg==
X-CSE-MsgGUID: L4wXhT+mRLqoHfL6tN7U1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210224785"
Received: from vverma7-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.159])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:50 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 06 Feb 2026 15:36:10 -0300
Subject: [PATCH v3 14/15] drm/i915/nvlp: Hook up display support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-nvl-p-upstreaming-v3-14-636e1ad32688@intel.com>
References: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
In-Reply-To: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B596010205A
X-Rspamd-Action: no action

From: Matt Roper <matthew.d.roper@intel.com>

Although NVL-S and NVL-P are quite different on the GT side, they use
identical Xe3p_LPD display IP and should take all the same codepaths.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 471f236c9ddf..1a7f3ca079e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1500,6 +1500,7 @@ static const struct {
 	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 	INTEL_NVLS_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
+	INTEL_NVLP_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
 };
 
 static const struct {

-- 
2.52.0

