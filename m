Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C42639967
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Nov 2022 06:22:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5D010E18B;
	Sun, 27 Nov 2022 05:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E2710E186
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Nov 2022 05:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669526503; x=1701062503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UR9XHxPw6zY1iCVzPhXBi/SfOUkbyE2P8pz2lGGGcuI=;
 b=ec/kfoUebYsM/4t/11m8Z5zTrG6ELiqyAlxYeaIGqeUfiVI7VsJzjbpK
 kLdK39i8uIa8LyeA7gPoOf1hpAcgh/+9GE7UqZZkb7DusYGTtab/RkDLF
 dVX0rKRLHtnccqwub8bMDrCpwLhAH2AbgdxpyfSRaNp0tcO/bXd+3ke4O
 Oz2r/RBJ0zv3Gsxq8vklQz+kZNoCCIZFaO+rMUPFVftt/BZe+c5k3IBPC
 3Goku4bNbfOYZ771/WI4ZfC++VumD27Jhq4E/q2NY6fE5gcMxWF1VsREZ
 nVrhml2rg+Yq3v7DBQSCwVuDDwc8MXnJb6mocUwJqyMGJuDCM4DrW1y3R g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="315801841"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="315801841"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 21:21:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="748984455"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="748984455"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 21:21:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Nov 2022 10:52:32 +0530
Message-Id: <20221127052232.3942831-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
References: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/ddi: Add missing wait-for-active
 for HDMI aligning with bspec updates
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

After enabling DDI_BUF_CTL, wait for DDI_BUF_CTL to be active.
Bspec:4232,53339,49191,54145

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9e16db920bf2..13bf0142627b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2944,6 +2944,8 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	}
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 
+	intel_wait_ddi_buf_active(dev_priv, port);
+
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
 
-- 
2.25.1

