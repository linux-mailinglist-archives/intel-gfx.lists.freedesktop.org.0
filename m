Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AEC5ED224
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657C710E20E;
	Wed, 28 Sep 2022 00:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF1A10E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325623; x=1695861623;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lZPliYL7qnWGEg0cNqbqxnIAwibp5RuN+dTbbN98q5E=;
 b=S/rnsbv7K1LITbc7nxjqQpL4pFLnCb/AtHjuiQ9tGmOMpQTxXjMrcMVe
 6cMfzaox7newG8wpn7VAGMjZX7t1FFER91J2DRVbrGBSwH6v2jmLONx03
 HI0Ai4/wovH1wSil/zpSmbXwaYyKuEeqAJSdp4etLjYo/3ubdC5Vr6O26
 vxADRRwQaq38jKYvm9xNQm4kz00nNaPTN23ZrIb3xHBz46qc0bzkkMb6B
 d58T5l/adL6+4oAISjSfg4LRKBzj+qPSFrRGH3glHpPVXp98l1dDpRAK7
 PthQ1JWgdBjmM7oqDtIPVr0VK/XU6ErWRdxGgNLj0547ECOZfaYwvAO5A w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752066"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752066"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841169"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841169"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:23 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:36 -0700
Message-Id: <20220928004145.745803-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 06/15] mei: pxp: support matching with a gfx
 discrete card
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

From: Tomas Winkler <tomas.winkler@intel.com>

With on-boards graphics card, both i915 and MEI
are in the same device hierarchy with the same parent,
while for discrete gfx card the MEI is its child device.
Adjust the match function for that scenario
by matching MEI parent device with i915.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/misc/mei/pxp/mei_pxp.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_pxp.c
index f221464c4009..8dd09b1722eb 100644
--- a/drivers/misc/mei/pxp/mei_pxp.c
+++ b/drivers/misc/mei/pxp/mei_pxp.c
@@ -156,17 +156,24 @@ static int mei_pxp_component_match(struct device *dev, int subcomponent,
 {
 	struct device *base = data;
 
+	if (!dev)
+		return 0;
+
 	if (!dev->driver || strcmp(dev->driver->name, "i915") ||
 	    subcomponent != I915_COMPONENT_PXP)
 		return 0;
 
 	base = base->parent;
-	if (!base)
+	if (!base) /* mei device */
 		return 0;
 
-	base = base->parent;
-	dev = dev->parent;
+	base = base->parent; /* pci device */
+	/* for dgfx */
+	if (base && dev == base)
+		return 1;
 
+	/* for pch */
+	dev = dev->parent;
 	return (base && dev && dev == base);
 }
 
-- 
2.37.3

