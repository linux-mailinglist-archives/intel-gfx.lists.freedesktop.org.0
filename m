Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950CEAB4FBB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDAD10E1BA;
	Tue, 13 May 2025 09:28:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oAhx68js";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1C110E1BA;
 Tue, 13 May 2025 09:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128504; x=1778664504;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QqJzbs+1/nm6qUHoGcqjSGqpOI330vcDrbjag84FeVQ=;
 b=oAhx68jswDYm1WBEH+nkwmLqsZ6xKa8+siKmVBlPbtDZY/wZtpC/PaYK
 E1gFn6/6G6fwrsRlLLXQ9uDge2nUtTL6rh+iDAlGViZJkquJzj+TzA9dM
 GXtRYQ335Bo1ULq1qIUicj4cy/nyw3Tby2L0n+V83UAOwhiHtb7T4qz1w
 k8rAnkwFeQxDvntyPqJlQy4eEfSruHCLSRjL11KfTNMvhYMs2zcmB+3IK
 mIN0LK7XfhHtSxCF9YNru8/iUawHL6CPrX5WQFrq6JMy/AhOTvQdpo0os
 OmcUp58l9UQOYiy5/qFWAN1HznY3WqeIlSNpL28Iuxp95j38iIdIK1itO g==;
X-CSE-ConnectionGUID: SaKapm7DTz2XjyKNQwDztg==
X-CSE-MsgGUID: IEm1RE06RQa9J7l2bcHuCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48956275"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="48956275"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:28:24 -0700
X-CSE-ConnectionGUID: Fh3AwUA8RgaXWxl/kBORpg==
X-CSE-MsgGUID: EUxJEhVlSwClh1yFF/4rdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="142767941"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.221])
 by orviesa005.jf.intel.com with SMTP; 13 May 2025 02:28:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 May 2025 12:28:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915: Indicate which pipe lied about its interrupts
Date: Tue, 13 May 2025 12:28:20 +0300
Message-ID: <20250513092820.18715-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Indicate which pipe signalled the spurious DE PIPE interrupt.
Might help with debugging a bit if we know where the interrupt
is supposedly coming from.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 3e73832e5e81..a3261c7aad72 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1418,7 +1418,8 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 		iir = intel_de_read(display, GEN8_DE_PIPE_IIR(pipe));
 		if (!iir) {
 			drm_err_ratelimited(display->drm,
-					    "The master control interrupt lied (DE PIPE)!\n");
+					    "The master control interrupt lied (DE PIPE %c)!\n",
+					    pipe_name(pipe));
 			continue;
 		}
 
-- 
2.49.0

