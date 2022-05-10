Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1EB52126F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663C710F3B8;
	Tue, 10 May 2022 10:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B27410F10F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179381; x=1683715381;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9C21TVBtBzQDtq53kMx4CRLwDu6d79RNq5EonDO4UTo=;
 b=E7fg+t8UFtLfzl4/ZW8g2vxTZ6mv0EXeIF/ruMKDJWuz5BRnt3FPmDyZ
 /TGWa+vXyNXUTjMXIVCB1IMeL+HHpnRfWMGrqm4m/Hp/glRv76wdHF9r7
 bEkLGLH9BD73kImwfA+uBc41sMzMHIdGpBkuow9faa/blmj2I/wMg2m7z
 IUCk2t887w83s7vffloGiTWn6nLDssKINFkKv9E4exlyIsvFvz9lCuo09
 uOG1M1qf3MWUtM43OJinlRXsq42ouokKE/WsKHwV0PHZT6zjbSHfADSlo
 BJW6ppcE2ZJUyav1UDxqfGDe4eeSU0W1Tfn8RzjDIblS0mLZLn72fxwqF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="256870715"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="256870715"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="710968541"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 10 May 2022 03:42:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:42:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:32 +0300
Message-Id: <20220510104242.6099-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/15] drm/i915/pps: Don't apply quirks/etc. to
 the VBT PPS delays if they haven't been initialized
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

Skip QUIRK_INCREASE_T12_DELAY and the t11_t12 adjustment of the
VBT PPS delays if we've not yet initialized them. Will be important
later when the PPS delay init can happen before VBT parsing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index d1ce7dafce10..25f1962dbddf 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1184,6 +1184,9 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 
 	*vbt = dev_priv->vbt.edp.pps;
 
+	if (!pps_delays_valid(vbt))
+		return;
+
 	/* On Toshiba Satellite P50-C-18C system the VBT T12 delay
 	 * of 500ms appears to be too short. Ocassionally the panel
 	 * just fails to power back on. Increasing the delay to 800ms
-- 
2.35.1

