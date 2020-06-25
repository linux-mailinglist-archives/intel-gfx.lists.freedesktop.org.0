Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1825209777
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355C96E894;
	Thu, 25 Jun 2020 00:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A76156E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:11:31 +0000 (UTC)
IronPort-SDR: 1KzXMqIvyy9FvZOIP5hhPqIFis36gSMLnsO22SpoNWLnzRwzJHYeBdKGvCGLWKB9lAI7G6gOCd
 p0HFQna13QFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="229392916"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="229392916"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:11:31 -0700
IronPort-SDR: KHhgGIV4d+5IJtGWvDxwAfL77BvEJ+g78Zb8xqpgkLKPgRxLQgFARBV33ZIomVn1pvM4A6cPUQ
 Nx7pS1Vh6vBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="310949032"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 24 Jun 2020 17:11:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:11:16 -0700
Message-Id: <20200625001120.22810-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200625001120.22810-1-lucas.demarchi@intel.com>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915/display: fix comment on skl
 straps
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are not checking for specific SKUs and feedback from HW team is that
it may not work since it was supposed to be fixed by the same time
straps stopped to be used. So, just update comment.

v2: Instead of removing the check, just update the comment since
feedback from HW team was that it actually may not work

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 49772c82a299..effd6b65f270 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16863,8 +16863,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		/*
 		 * Haswell uses DDI functions to detect digital outputs.
-		 * On SKL pre-D0 the strap isn't connected, so we assume
-		 * it's there.
+		 * On SKL pre-D0 the strap isn't connected. Later SKUs may or
+		 * may not have it - it was supposed to be fixed by the same
+		 * time we stopped using straps. Assume it's there.
 		 */
 		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
 		/* WaIgnoreDDIAStrap: skl */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
