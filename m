Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICnSIFVgEGobWwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:55:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6D55B59AC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CD310F6FB;
	Fri, 22 May 2026 13:55:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WikDEulD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0184510F6FB;
 Fri, 22 May 2026 13:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779458129; x=1810994129;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bPqJSQ47GlWgp+pLethlMx4kvQobbYT6SsHYJLPahBA=;
 b=WikDEulD0MpcS6df72jggImo7dgQjtZeEIx9FqRKzt0lb1djn8IM2pzW
 SNuDX0aIVzJ1P/z9H5MZEhBSrc1bki3MKjgN3uz8GcWMrbIfnCagWn9Pw
 zXVoTba9xvMCYg1hITNr5gkuxkSOF6PP1pFriKkVGpnUGY3OBwaH1xMyU
 bPmnCKNIHU1naP5ASzl2yVgnjpXWXBcK/uzHzs1cjHC7YXwXHaXAGU9nV
 nEQCEChNHIlgbHqsKzKyBT6u9GA872Qyj8yGhqMtjjbqfLtASeVmwpla6
 npz2xU1F+HtHtUEwOBeJmw301MGShEPq2sDFbMBvgC6sly5FCPF5SBQ6M A==;
X-CSE-ConnectionGUID: HTlO+jyBSZ2QXw3J+xqGpg==
X-CSE-MsgGUID: mhN9rT/DReaIFtbejvfInA==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="97809510"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="97809510"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:55:29 -0700
X-CSE-ConnectionGUID: 38Ue5ePITaKmxt8PygncIw==
X-CSE-MsgGUID: sTO2tt3xRWaOwmmGSow4mQ==
X-ExtLoop1: 1
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa003.fm.intel.com with ESMTP; 22 May 2026 06:55:27 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 1/2] drm/print: describe 6th & 9th bit of drm.debug
Date: Fri, 22 May 2026 15:55:19 +0200
Message-ID: <20260522135520.1862848-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260522135520.1862848-1-michal.grzelak@intel.com>
References: <20260522135520.1862848-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	URIBL_MULTI_FAIL(0.00)[intel.com:server fail,gabe.freedesktop.org:server fail];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2F6D55B59AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Setting 6th or 9th bit of drm.debug change debug logging. Meanwhile
`modinfo drm` does not inform about it at all.

Add info to MODULE_PARAM_DESC(debug, ...) about setting 6th and 9th bit
basing on DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, ...). Match
description of corresponding bits with enum drm_debug_category. Include
9th bit in the example with enabling all possible logging provided at
comment at include/drm/drm_print.h.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/drm_print.c | 4 +++-
 include/drm/drm_print.h     | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
index ded9461df5f2..86cef1a37678 100644
--- a/drivers/gpu/drm/drm_print.c
+++ b/drivers/gpu/drm/drm_print.c
@@ -50,8 +50,10 @@ MODULE_PARM_DESC(debug, "Enable debug output, where each bit enables a debug cat
 "\t\tBit 3 (0x08)  will enable PRIME messages (prime code)\n"
 "\t\tBit 4 (0x10)  will enable ATOMIC messages (atomic code)\n"
 "\t\tBit 5 (0x20)  will enable VBL messages (vblank code)\n"
+"\t\tBit 6 (0x40)  will enable STATE messages (atomic state code)\n"
 "\t\tBit 7 (0x80)  will enable LEASE messages (leasing code)\n"
-"\t\tBit 8 (0x100) will enable DP messages (displayport code)");
+"\t\tBit 8 (0x100) will enable DP messages (displayport code)\n"
+"\t\tBit 9 (0x200) will enable DRMRES messages (managed resources code)");
 
 #if !defined(CONFIG_DRM_USE_DYNAMIC_DEBUG)
 module_param_named(debug, __drm_debug, ulong, 0600);
diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index ab017b05e175..2adc5ac688e1 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -87,7 +87,7 @@ extern unsigned long __drm_debug;
  *  - drm.debug=0x2 will enable DRIVER messages
  *  - drm.debug=0x3 will enable CORE and DRIVER messages
  *  - ...
- *  - drm.debug=0x1ff will enable all messages
+ *  - drm.debug=0x3ff will enable all messages
  *
  * An interesting feature is that it's possible to enable verbose logging at
  * run-time by echoing the debug value in its sysfs node::
-- 
2.45.2

