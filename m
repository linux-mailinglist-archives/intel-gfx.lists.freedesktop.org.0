Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56006748ECD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DAE10E3CF;
	Wed,  5 Jul 2023 20:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E7710E3CF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588524; x=1720124524;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HlgHyAJrFMc29/lkfEOeXHKUp7zigtYi9qIk6P0vNUw=;
 b=PTPOfBvGK5owqVaXYH3apF/BVi6TnG7oC8MbOU5BMZ2LSxGNiYyuzVfM
 rR58z4Rdx9Cdfb3MXv4/cTyIT1U6hBGUZy6/DoFUgf2O+xxMiw6FJISqB
 kzG3/4lZBJeLYnZjKF64pbiWjuXbASihRQ4j56UdiE76UdpY1+c4zNWaa
 +AsTyKxwomw26KeIJmelAoG1Za1ES1mhUGju6KCp/3bfHJEqtI3z1l4+q
 Lbzevb1SAm0ejLE1JdpIJx6uSs2cEO6gBdNa8jkt8J/w5ZSnfMBz9oa0R
 6LEcXXDswwEjE1//npz6bm4T8PnkbX0cugzwuGKUof+0BUIsQacKMxuh8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269115"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269115"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491237"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491237"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:22:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:22:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:22 +0300
Message-Id: <20230705202122.17915-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915/sdvo: Print out the i2c pin and
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

To reduce the guesswork a bit let's print out the SDVO
device i2c bus and slave address during init.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d7edb5714c4c..f0494b9aefe5 100644
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
2.39.3

