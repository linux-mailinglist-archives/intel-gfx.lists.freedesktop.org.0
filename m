Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D554D4D1F48
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F391C10E3B6;
	Tue,  8 Mar 2022 17:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0699C10E3B6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761363; x=1678297363;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JkZbN6gD1afd/RpQvPRe+TAZ18d4sniYfW88CXAyid4=;
 b=cqMITS4q70ilUVGv8Dn3Q+HsxtFd9BIbu0EgNOj5xOWo8U0YI0/o2Zfe
 8o8IKKDpnD9faYF30Emeua2BwlJloVLSHkEWOFpTjCYLt5LJ4dp2JUcf6
 cemwyWWcaZ4hBdxjwEtzYwKXfmDsp1OPWh8u9nucf+/ih0J51r8cMhLmJ
 obsNlTnIgrFX+9SZoUI5C2mToLm6LCuW52Q2X9MieTZoG0mBmxfSRJ9dP
 RFnVzbn2HxpM652KzZtvbqCLqrcpG/JHI8ualHOSQccQ1G2vTpzzzfL61
 RwVEHIo4P7s+nEhRd+untaoisggbxrko76kIAwBRSfqvzKU0SrISsvv8/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="252332550"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="252332550"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:32:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="632310358"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 08 Mar 2022 09:32:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 19:32:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 19:32:25 +0200
Message-Id: <20220308173230.4182-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Remove leftover cnl SAGV block
 time
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

GLK doesn't support SAGV, so with CNL gone there is no
use for having a DISPLAY_VER==10 SAGV block time in the code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f70eb10ab24d..8ee31c9590a7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3689,9 +3689,6 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
 	} else if (DISPLAY_VER(dev_priv) == 11) {
 		dev_priv->sagv_block_time_us = 10;
 		return;
-	} else if (DISPLAY_VER(dev_priv) == 10) {
-		dev_priv->sagv_block_time_us = 20;
-		return;
 	} else if (DISPLAY_VER(dev_priv) == 9) {
 		dev_priv->sagv_block_time_us = 30;
 		return;
-- 
2.34.1

