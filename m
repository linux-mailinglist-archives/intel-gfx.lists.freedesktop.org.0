Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6445583654
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CEC10E382;
	Thu, 28 Jul 2022 01:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F336010E6D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972081; x=1690508081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yN95QpT/tJFQnVFJsaqxyXWJ8cPNfEJOXDLc8VLZOX0=;
 b=DHrKrNsgqc/KIdBEmw8eShjYd4x8/4CBPy0sNnt1Zp6RzVaUYVOFr22d
 Z12LoeGHibUPbKn4JX/wA5jspK2JDSNa6Z5oOtdJOVqOQZzJTaqHr1wPB
 BwdhAFVkj6ODe2O2ATknkxCD7WKzifgYZwy+zpMnVBLZBDSsVkOqvfOOV
 me6dIBCqhgl4z9Ur2NIlOtdIU9+jQEDIPnbb4TGTsoXl1K93hVMlkGFKZ
 F4jRHulYRETDaxUvHGGszjRKdFaxG6iNFO4+VDoXkLSE7ZN89IFT7nRMz
 CiVHzn/z/vtVq3aAhMaMqUYoL41wG1I9YQ1Eoo32fmy5YlMe9CQD5HMQw g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693660"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693660"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457007"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:09 -0700
Message-Id: <20220728013420.3750388-13-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/23] drm/i915/mtl: Fix rawclk for Meteorlake
 PCH
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

From: Clint Taylor <clinton.a.taylor@intel.com>

MTL has a fixed rawclk of 38400Mhz. Register does not need to be
reprogrammed.

Bspec: 49304

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 86a22c3766e5..390a198b0011 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3036,6 +3036,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		freq = dg1_rawclk(dev_priv);
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
+		/*
+		* MTL always uses a 38.4 MHz rawclk.  The bspec tells us
+		* "RAWCLK_FREQ defaults to the values for 38.4 and does
+		* not need to be programmed."
+		*/
+		freq = 38400;
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		freq = cnp_rawclk(dev_priv);
 	else if (HAS_PCH_SPLIT(dev_priv))
-- 
2.25.1

