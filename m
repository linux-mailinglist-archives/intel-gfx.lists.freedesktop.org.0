Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D547A6B74
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 333C810E242;
	Tue, 19 Sep 2023 19:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A0610E1D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151285; x=1726687285;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0IvrU6G3MbD7LutKWjGiaAlR8TMQPtdz6/qjdb8DGpM=;
 b=lyzpqemvItOirMtcBWrKVNPbKsL7qR0B0kHjBdQaZEoV+MXttMj7NcoO
 GMhExScx5kt4mHCXPt3e7XoP8K7F2IoBx7lQkFReFUZ8ZurEIMQwQBdp4
 KLX4yHoy0NSI9iPlUcStJ4kxO2r/h9Br/XRmtGflLmSXyO1wIVydHgK7O
 HrU9UjR3iEi9cM78tPw01DhZSZ2hPAtjSmnDg7l5yRWK1CE8C0NHlIrJR
 PGfOx5rdRslkb7VcQ8iq3BSd4Sd/TH03x/4hTmJ4y97kEXEomRzZ3oI/j
 IrUpmikzteRBUMy67LP4f0ZNL9Vmd7EmD/8syPSHQygiBFtkM/mng8I/8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423128"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423128"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350057"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350057"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:11 -0700
Message-Id: <20230919192128.2045154-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 05/22] drm/i915: Re-order if/else ladder in
 intel_detect_pch()
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

Follow the convention of checking the last platform first and reword the
comment to convey there are more platforms than just DG1.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 19a8f27c404e..dfffdfa50b97 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -218,13 +218,16 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	unsigned short id;
 	enum intel_pch pch_type;
 
-	/* DG1 has south engine display on the same PCI device */
-	if (IS_DG1(dev_priv)) {
-		dev_priv->pch_type = PCH_DG1;
-		return;
-	} else if (IS_DG2(dev_priv)) {
+	/*
+	 * South display engine on the same PCI device: just assign the fake
+	 * PCH.
+	 */
+	if (IS_DG2(dev_priv)) {
 		dev_priv->pch_type = PCH_DG2;
 		return;
+	} else if (IS_DG1(dev_priv)) {
+		dev_priv->pch_type = PCH_DG1;
+		return;
 	}
 
 	/*
-- 
2.40.1

