Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4D48AC71C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803B61128B5;
	Mon, 22 Apr 2024 08:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dfnXXK7p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00651128B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774902; x=1745310902;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yDyKBdEKr7iRxGmHsLghViis/yD9b2diLRRUqgM6B7E=;
 b=dfnXXK7pIqfGFuLYPp7huv0Yd1xzyYLm5yN0Mf8GAL45K2XT3PfwMyGJ
 c2XER0o9doocxg3kxWdFX4XB2JDlN5jJ2leFMco8tv3ZEjbB0zdadCcAC
 lVwVp33qnlbzkxrxKpgjmeoQNi5DpFtEpvnIgS9HYSm+U/IxmfF/CUKcV
 moA65d8c0Gw8J3WHn+28Qa4wVZDxCX0hhvuQz2KTIQcmr2yfH6xAmWAFs
 mSHycfIy1BCP1MVJ8RXie6IDR2vToDslbp+YKX8SRsnBQWXEsiZg1nrcH
 JzFMn0NsH3s+wQByWlkdbRXh4kC/dkCNQ1YdaKvdOducN18rq+gcLWfFL g==;
X-CSE-ConnectionGUID: L7fQSD/4S0WW5NpoOHApYQ==
X-CSE-MsgGUID: y/eqo4knTZ+kXCMbd4jYbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453446"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453446"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:02 -0700
X-CSE-ConnectionGUID: C2wbEHBXQNmTJOvtU4nEJQ==
X-CSE-MsgGUID: JCBfi2FRSnO39M6Ng9Xkcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021718"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:34:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/14] drm/i915/dpio: Remove pointless VLV_PCS01_DW8 read
Date: Mon, 22 Apr 2024 11:34:44 +0300
Message-ID: <20240422083457.23815-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

We don't use the result of the VLV_PCS01_DW8 read at all,
so don't read.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index c72b76b61dff..6cbee88e608f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1134,7 +1134,6 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	vlv_dpio_get(dev_priv);
 
 	/* Enable clock channels for this port */
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(port));
 	val = 0;
 	if (pipe)
 		val |= (1<<21);
-- 
2.43.2

