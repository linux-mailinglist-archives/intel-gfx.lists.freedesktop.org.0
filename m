Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BF45B2B02
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 02:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2217510E8AB;
	Fri,  9 Sep 2022 00:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D2F10E87C;
 Fri,  9 Sep 2022 00:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662682606; x=1694218606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/pvbPW3wwaX2jC/RyOHzw1x6ZqHDyTDvKOqsKADVME=;
 b=c09tQ4OGXCs7iK7uvs5HjyWag1Fz3UoW5AGb5bh20b57JoyhC6fTA760
 ZTfydIVh0LKdR6dKUkIbDHrn6PytapSY+J7o8C+rlmQh40WUzqjqu/CFE
 u00fu4XU0VsalUqNFbl3L+fMJrpp4rB/pSLMuj2TiODe6UJkvflqKQjuq
 uSIIzeboqoZSJNYSkT7NuDxpsLjkW5ElAAtG8iaiDcn7Q9zU0j4TsuhYg
 A+mMaOVTbqbZF3e03Zo3mIqd/Bck9u+QJU4QosiRN/PRQH4v3OCFteaag
 lHIp/jIvpWmOGJnXN22iSNPLBjWrHit4CVyW4zS+fuSIVQ7fIQfjl0Y2l g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="294938846"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="294938846"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 17:16:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676933213"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 17:16:43 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 17:16:03 -0700
Message-Id: <20220909001612.728451-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
References: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/15] mei: pxp: support matching with a gfx
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

With on-boards graphics card, both i915 and MEI
are in the same device hierarchy with the same parent,
while for discrete gfx card the MEI is its child device.
Adjust the match function for that scenario
by matching MEI parent device with i915.

V2:
 1. More detailed commit message
 2. Check for dev is not null before it is accessed.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/misc/mei/pxp/mei_pxp.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_pxp.c
index 17c5d201603f..afc047627800 100644
--- a/drivers/misc/mei/pxp/mei_pxp.c
+++ b/drivers/misc/mei/pxp/mei_pxp.c
@@ -159,17 +159,24 @@ static int mei_pxp_component_match(struct device *dev, int subcomponent,
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
2.37.2

