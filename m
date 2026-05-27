Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJH6JK/RFmowsgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 699DA5E3310
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE07810E798;
	Wed, 27 May 2026 11:12:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ifD3hyAR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E9E10E78D;
 Wed, 27 May 2026 11:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779880360; x=1811416360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T/lCvgVFpvLp9yGiGIWrtht79D66gSCOzOaAwFziY8I=;
 b=ifD3hyARZSKefVh1M7bkr/e8VNvN26xFBVI97Tj70VEVh2uHhr2KOTDZ
 PlK5gP24pYowvVEZr8LMpmWtPBigLRIcrwfHXsxqp2qShG/qZXErPSDir
 AvnMwe+WBsFAUE5pEFFKxzmc9cIJoj3dclOqkNbsSZ62Cd/oe4kXK9kXo
 Tq4XF5eplrjUpa36AwDpfCYVVEUcLvhpD76wrjxMZa55ddULYX5+ylOVd
 5a+wZsh5FC35L1IPBqm7SANvnoggdUgwZSk526gf1Oat4bsZncERg4IhF
 Bs4zvc/Au2dVVkOd8bXxWvSqxEPHgURpjnnG2eEFJ68W90FYlLby2pfd1 g==;
X-CSE-ConnectionGUID: 0sdF8LByTneMQKJaWcdYmA==
X-CSE-MsgGUID: RqI5bC7iTwmfo4Vgaq+Okw==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80818517"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80818517"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 04:12:40 -0700
X-CSE-ConnectionGUID: KlpykEDSQCSTmNYFP0GbXw==
X-CSE-MsgGUID: rOKDYCKIQpytrFdmZiXEIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="265803175"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 27 May 2026 04:12:38 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/4] drm/dp: Add max bpp delta computation constants
Date: Wed, 27 May 2026 16:38:48 +0530
Message-Id: <20260527110849.3943338-4-nemesa.garg@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 699DA5E3310
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define macros used for decoding DSC max bpp delta values
from the sink DPCD. This includes per-format masks for
RGB/YCbCr444 and YCbCr420, as well as definitions for delta
scaling and the YCbCr420 bit shift. Also add version_1 as
suffix to MAX_DELTA_BPP.

v2: Move constants under 0x6E register. [Ankit]
    Add mask for Native 422 also. [Ankit]
v3: Rename _DSC_NATIVE4222 to _DSC_NATIVE_YCbCr422. [Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 include/drm/display/drm_dp.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index dce290acf735..a905aa49d1d0 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -354,10 +354,14 @@
 # define DP_DSC_20_PER_DP_DSC_SINK          (1 << 1)
 # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
 
-#define DP_DSC_MAX_BPP_DELTA		    0x06E
+#define DP_DSC_MAX_BPP_DELTA_VERSION_1		0x06E
 # define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
 # define DP_DSC_NATIVE_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
 
+# define DP_DSC_BPP_DELTA_444			16
+# define DP_DSC_BPP_DELTA_420			12
+# define DP_DSC_BPP_DELTA_SHIFT_420		5
+
 #define DP_DSC_BITS_PER_PIXEL_INC           0x06F
 # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
 # define DP_DSC_BITS_PER_PIXEL_1_8          0x1
@@ -365,6 +369,8 @@
 # define DP_DSC_BITS_PER_PIXEL_1_2          0x3
 # define DP_DSC_BITS_PER_PIXEL_1_1          0x4
 # define DP_DSC_BITS_PER_PIXEL_MASK         0x7
+# define DP_DSC_NATIVE_YCbCr422_MAX_BPP_DELTA_MASK  0x78
+# define DP_DSC_BPP_DELTA_NATIVE_422		16
 
 #define DP_PSR_SUPPORT                      0x070   /* XXX 1.2? */
 # define DP_PSR_IS_SUPPORTED                1
-- 
2.25.1

