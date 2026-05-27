Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLvbMavRFmowsgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 852165E32EE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9EBC10E77F;
	Wed, 27 May 2026 11:12:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1MP0JVA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E3310E152;
 Wed, 27 May 2026 11:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779880357; x=1811416357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bOK3L4pPhyRkYKfjEqE6s4PnKovf4DdzHS9FwpkDgwY=;
 b=S1MP0JVAExpLZIqUXCPD8k8GETb5HMPiWAJWtc5M6RLRUb0lBDOMuFfD
 detLujg3b2S80838ncQIc+cW52muN9dl4WISOXRUBJooo6T/ZEWdDl1jS
 TuIZxMZb2oU5aE9Xy0rvEQYrO911bRNX+nup03Y3KIVTSXScpwrKTNIkW
 xjUHltl63lPJCznqbLwzDW9F8V6AmY7cLvkOYRJEqwkuri/GcVBBHNlnc
 MFTLbmpYfPx1bxQXAnSO+DgF5IiGui6+TrPx5rN7LFdcYrBlU6woRaBMt
 gkW0mm996yeCBjNXtvesmIFYdyObLA7njP78URNeTk9Kn9VptoEk1KKiS w==;
X-CSE-ConnectionGUID: ehQ2t/ugRlGSCQ2Es6gblw==
X-CSE-MsgGUID: pPW8w/pUTDegIi6Ij3MV2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80818510"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80818510"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 04:12:37 -0700
X-CSE-ConnectionGUID: +kE7aS5kRrSAHnDmXpjvNA==
X-CSE-MsgGUID: znYCrxhvR0yESLDd9qp1lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="265803147"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 27 May 2026 04:12:35 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/4] drm/dp: Add DP_DSC_MAX_BPP_DELTA register
Date: Wed, 27 May 2026 16:38:46 +0530
Message-Id: <20260527110849.3943338-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260527110849.3943338-1-nemesa.garg@intel.com>
References: <20260527110849.3943338-1-nemesa.garg@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 852165E32EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The dsc max bpp delta masks were incorrectly placed
under the DP_DSC_BITS_PER_PIXEL_INC(0x06F) register.
Move these under correct DP_DSC_MAX_BPP_DELTA(0x06E)
register.

v2: Separate patch for correcting register. [Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 include/drm/display/drm_dp.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 829e4d98d61c..e65aafcccf99 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -354,9 +354,11 @@
 # define DP_DSC_20_PER_DP_DSC_SINK          (1 << 1)
 # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
 
-#define DP_DSC_BITS_PER_PIXEL_INC           0x06F
+#define DP_DSC_MAX_BPP_DELTA		    0x06E
 # define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
 # define DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
+
+#define DP_DSC_BITS_PER_PIXEL_INC           0x06F
 # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
 # define DP_DSC_BITS_PER_PIXEL_1_8          0x1
 # define DP_DSC_BITS_PER_PIXEL_1_4          0x2
-- 
2.25.1

