Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EDeGXwqhWnG9QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7CAF8686
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17F510E205;
	Thu,  5 Feb 2026 23:40:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPfYJU7g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7626010E20D;
 Thu,  5 Feb 2026 23:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770334842; x=1801870842;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=cNaopX3s+X+eUirC4PQ6jRxQ2HXG7iKDjh+9jMfxcu8=;
 b=FPfYJU7g2mrerh1DosZu/dQxGv6RNTs1pa83/vVTemPGEP2vRrAf1a3s
 DpqpocGloArwloSUjNFT8PmsiqS6T2e7Zqc/gKW7ea2S84+ZrQm62XGG2
 m2wR0oPQvEW5teRAgHsFPm6KcnCsbe8x2jhb7vh+QUEb5MOl87hCvoQDv
 AsDqAxRH67qmEgnlDscB55CO+SkSHRA274zU8zU7KJnjg8sFq8NYkVj0q
 yIpLtgIN6eSIVmfwDPUCs3pKrebzd7xitOpyrM3AlvQJkMOcgQFsrwGrW
 sFJ4wF8BtMTCkPPmPHJMIwsfaqNhEvRdbji8+Cf9jOR6ZmSXTGR+/uw2/ g==;
X-CSE-ConnectionGUID: E/v/gtikRiCN1eTKOqqHtA==
X-CSE-MsgGUID: VHpAczM1SH+1VrqPYfs6rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82658696"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="82658696"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:42 -0800
X-CSE-ConnectionGUID: FHKzIKQHRJWrncR7WJ92cw==
X-CSE-MsgGUID: 5BY/vGBVT3myqPQ7wkHMvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210500164"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.82])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:40 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 05 Feb 2026 20:39:43 -0300
Subject: [PATCH v2 15/15] drm/xe/nvlp: Bump maximum WOPCM size
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-nvl-p-upstreaming-v2-15-9ec14f00cc6c@intel.com>
References: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
In-Reply-To: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
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
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3E7CAF8686
X-Rspamd-Action: no action

On NVL-P, the primary GT's WOPCM gained an extra 8MiB for the Memory
URB.  As such, we need to bump the maximum size in the driver so that
the driver is able to load without erroring out thinking that the WOPCM
is too small.

FIXME: The wopcm code in xe driver is a bit confusing.  For the case
where the offsets for GUC WOPCM are already locked, it appears we are
using the maximum overall WOPCM size instead of the sizes relative to
each type of GT.  The function __check_layout() should be checking
against the latter.

Bspec: 67090
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/xe_wopcm.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_wopcm.c b/drivers/gpu/drm/xe/xe_wopcm.c
index dde4f4967ca3..900daf1d1b1b 100644
--- a/drivers/gpu/drm/xe/xe_wopcm.c
+++ b/drivers/gpu/drm/xe/xe_wopcm.c
@@ -55,8 +55,6 @@
 #define MTL_WOPCM_SIZE			SZ_4M
 #define WOPCM_SIZE			SZ_2M
 
-#define MAX_WOPCM_SIZE			SZ_8M
-
 /* 16KB WOPCM (RSVD WOPCM) is reserved from HuC firmware top. */
 #define WOPCM_RESERVED_SIZE		SZ_16K
 
@@ -186,6 +184,14 @@ u32 xe_wopcm_size(struct xe_device *xe)
 		WOPCM_SIZE;
 }
 
+static u32 max_wopcm_size(struct xe_device *xe)
+{
+	if (xe->info.platform == XE_NOVALAKE_P)
+		return SZ_16M;
+	else
+		return SZ_8M;
+}
+
 /**
  * xe_wopcm_init() - Initialize the WOPCM structure.
  * @wopcm: pointer to xe_wopcm.
@@ -227,8 +233,11 @@ int xe_wopcm_init(struct xe_wopcm *wopcm)
 		 * When the GuC wopcm base and size are preprogrammed by
 		 * BIOS/IFWI, check against the max allowed wopcm size to
 		 * validate if the programmed values align to the wopcm layout.
+		 *
+		 * FIXME: This is giving the maximum overall WOPCM size and not
+		 * the size relative to each GT.
 		 */
-		wopcm->size = MAX_WOPCM_SIZE;
+		wopcm->size = max_wopcm_size(xe);
 
 		goto check;
 	}

-- 
2.52.0

