Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646BA4FE9B2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 22:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C5210E752;
	Tue, 12 Apr 2022 20:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A3B10E752
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 20:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649796842; x=1681332842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IUw12+f7FS2Nno3qNXmHbcaAKfxEtEbXCA19tQsm4vw=;
 b=mQawR6Hu1tz20EodsF1aJHK303nyGqB60gEbmTo7zBnUVWluQE1p48oN
 7AoDBQ58FOJTLpLrmWiLr/yBg4TTfx4vOuENIQ4VIbbq+XPyqkNWJbrcb
 VWv5D/dtVonwITOGIASSZ1nkQIuoRT1ygdAuHaDkRghFbC8A+vB0PR57x
 5qsATx5pbECNr2fCOHGODyQCTjX2SZFB2rMNGRRMcYAznOIi7vOI0l9dl
 EOjdphZ02dTkOVHvTjgC7BOeyu6K+XZ+lTncpxQjoPi9C+q3COBnhPx9d
 XyVf/WhBG+WvaIk+2zEXELzgQVDb8efPN5NRGQTOWHtR0DFKS4JdBz4q0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="244387764"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="244387764"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 13:54:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="551904104"
Received: from klo15-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.134.75.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 13:54:01 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Apr 2022 13:55:27 -0700
Message-Id: <20220412205527.174685-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412205527.174685-1-jose.souza@intel.com>
References: <20220412205527.174685-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/psr: Clear more PSR state
 during disable
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

After commit 805f04d42a6b ("drm/i915/display/psr: Use continuos full
frame to handle frontbuffer invalidations") was merged we started to
get some drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE))
in tests that are executed in pipe B.

This is probably due psr2_sel_fetch_cff_enabled being left set during
PSR disable in the pipe A, so the PSR2_MAN_TRK_CTL write in
intel_psr2_program_trans_man_trk_ctl() is skipped in pipe B and then
we get the warning when actually enabling PSR after planes programing.
We don't get such warnings when running tests in pipe A because
PSR2_MAN_TRK_CTL is only cleared when enabling PSR2 with hardware
tracking.

Was not able to reproduce this issue but cleaning the PSR state
disable will not harm anything at all.

Fixes: 805f04d42a6b ("drm/i915/display/psr: Use continuos full frame to handle frontbuffer invalidations")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5634
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8ec7c161284be..06db407e2749f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1353,6 +1353,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
 
 	intel_dp->psr.enabled = false;
+	intel_dp->psr.psr2_enabled = false;
+	intel_dp->psr.psr2_sel_fetch_enabled = false;
+	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 }
 
 /**
-- 
2.35.1

