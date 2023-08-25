Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 336B87888DA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 15:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07DF10E69F;
	Fri, 25 Aug 2023 13:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5621310E6A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 13:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692971094; x=1724507094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AXi3vMC+8hs5t2bIhW+DkRU0oFwmQ791KvXnrsS4c5Q=;
 b=c258vG9sC3eMN7CsQY7uZMRmsSGbEo0Ki+hocRU8tY4Gl4KniOG3i8lQ
 ltKYvm9UQRrITaS1ElWAUb0nx1fe9X0+2o0FWJ5L3LdChoqIwIuM+Xw4R
 EFPLHGRRY2F8ROUvLhNoEExI7AHfmibvLCl/ABw6h9Nm2CtCyRc8qW0hg
 LjJJT3IZ0q742gMw4B/ZcKoHJhU+zGN+g8zbV9tpM6XF8LMW3Q+OM3NHp
 aoeqjahuqPqrE4uFXtMKOwRCL0QUAfQRfNuKynZcdh66kjzKx0aQ7V5C8
 gS3q88Pmp+rZFZhbc4Jot/98q6Sqgzl+24GWrf9sGCMFc1ot7gzXd3/re A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="461076896"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="461076896"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:44:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="1068246423"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="1068246423"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga005.fm.intel.com with SMTP; 25 Aug 2023 06:44:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Aug 2023 16:44:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:44:31 +0300
Message-ID: <20230825134431.24391-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
References: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/sdvo: Print out the i2c pin and
 slave address
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

To reduce the guesswork a bit let's print out the SDVO
device i2c bus and slave address during init.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d77a56460019..b988e05274c1 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2616,6 +2616,10 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 	else
 		pin = GMBUS_PIN_DPB;
 
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] I2C pin %d, slave addr 0x%x\n",
+		    sdvo->base.base.base.id, sdvo->base.base.name,
+		    pin, sdvo->slave_addr);
+
 	sdvo->i2c = intel_gmbus_get_adapter(dev_priv, pin);
 
 	/*
-- 
2.41.0

