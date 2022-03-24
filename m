Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEFC4E686B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 19:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3914210E8D0;
	Thu, 24 Mar 2022 18:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8E610E217
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 18:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648145562; x=1679681562;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=miLGiipe2WJkj7rQbt8koghTWlVYUAiUsjEfKFWS47s=;
 b=E9WfWLJvZl1eqPwmldIYDM6J2pSyFV5vaVj2rO1qwCdT6WgtUGNMnQ4Y
 3Lym4LfF3MtGqW4FuEHl7zbPdmX5iaC9z99Hr2UUDhAMMYKJFEHfM4oid
 GvEhAVL2aiNV2PhB/mZwlChHhtmaziJp2EjEFGEE4XnEoIyRGvqs6ey/R
 G56VKyXmA25OuC6GmwG1tXeAsr2Q7rY3Wm2iBJSwFYFxg/5TJswApMrJh
 SLomZOsemdcg9WofMXk2BhH9qg61mrU5VznkeiaPrSlznlrLugrdjeXG/
 8/e9FNkzik73tXW+WyT2kGXOkMya9bM/9yCjwGWWtJTkfa9pRdkejNIdg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="256019052"
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="256019052"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 11:12:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="601779623"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 11:12:40 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 11:13:46 -0700
Message-Id: <20220324181347.129378-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display/psr: Set partial frame
 enable when forcing full frame fetch
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

Following up what was done in commit 804f46885317 ("drm/i915/psr: Set
"SF Partial Frame Enable" also on full update") and also setting
partial frame enable when psr_force_hw_tracking_exit() is called.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 80002ca6a6ebe..d87b357806c91 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1457,7 +1457,8 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	if (intel_dp->psr.psr2_sel_fetch_enabled)
 		intel_de_rmw(dev_priv,
 			     PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0,
-			     man_trk_ctl_single_full_frame_bit_get(dev_priv));
+			     man_trk_ctl_single_full_frame_bit_get(dev_priv) |
+			     man_trk_ctl_partial_frame_bit_get(dev_priv));
 
 	/*
 	 * Display WA #0884: skl+
-- 
2.35.1

