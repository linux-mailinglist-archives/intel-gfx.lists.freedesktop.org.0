Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D24F54B076
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 14:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129C210F98A;
	Tue, 14 Jun 2022 12:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106E110F909
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 12:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655209361; x=1686745361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rlo2EuZP6gqrfngbD2J7qDKhifkxZY5sLuyGMooFZ4E=;
 b=gyKA5/ZlISp761QPCC6L84VOzsLaveHGkzpaw8BjiBJeuqOpIQOnjYWu
 98939mWXICAGSL2ky1sUfh+W2N4lHooz0+K1y381sYzjlVPswq6O4KQkH
 wKlwvM4PFcUr0TSLnnCrozqrGMiNQuuvUWMrZsR04A5BMLpkSBr30OB/A
 tHTFpfy7/Wmw6lzp0cWQbPmGGZV4ea/PjY/TsXu94tqJbjYu8aX9tcBmZ
 iAPV7M/bH5FLAhLvf7wOfojDRE4LA2wRIesLFjNYeM2+2ra4D358vNVEO
 IW7lJ5oSF/dMerKlpgW7CmQJpSED3ALWKM0XFz1TSDR1AxJNzz3eDabnv g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279317383"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="279317383"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 05:22:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="686640522"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga002.fm.intel.com with ESMTP; 14 Jun 2022 05:22:38 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 15:22:57 +0300
Message-Id: <20220614122257.10925-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220614122257.10925-1-stanislav.lisovskiy@intel.com>
References: <20220614122257.10925-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Do not enable PSR2/selective
 fetch if there are no planes
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

We seem to enable PSR2 and selective fetch even if there are no active
planes. That seems to causes FIFO underruns at least for ADLP.
Those are gone if we don't do that. Just adding simple check
in intel_psr2_sel_fetch_config_valid seems to do the trick.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7d61c55184e5..03add69cfdca 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -747,6 +747,12 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (hweight32(crtc_state->active_planes) == 0) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR2 sel fetch not enabled, no active_planes\n");
+		return false;
+	}
+
 	/* Wa_14010254185 Wa_14010103792 */
 	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
 		drm_dbg_kms(&dev_priv->drm,
-- 
2.24.1.485.gad05a3d8e5

