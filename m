Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EDA54588C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 759A812B06C;
	Thu,  9 Jun 2022 23:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 584EE12B06C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816869; x=1686352869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FjAXhzEQmYxLwY+g/4hY4+gHGiqgsaQxVLrepmVKNKI=;
 b=i2ou2nsnxJYVdi/TEI0lVlq/8x/7P+MRJzBqWcTqwAVQOhpLav8B9iij
 h2h1vS6sisKIsXMV8oyCVCS728CkWWH8Ij5g8mUUBCJT6fDzXhqBX5chc
 hSJZBFF94t6B3cSVniLQgxLRL+BoNN+8NMSnOmqVyQVC36RAF31AFSdBu
 N/rWapS82lR6JP6R0QmiojCyQbf9uzRjhJfIcV/0QDm30x6lJPYaNGyKh
 XFi6xER7hCpz7utM6DDqPOGdA5EdY2rEsd1mU9rkN3NUdusHtCi+tcl2j
 MxWqCgueWr0sxtCO2BGeBjONHHTqLOVcFTZnW9BWQgo9mAqvrgO+YLw0j w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="278257623"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="278257623"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586440"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:05 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:46 -0700
Message-Id: <20220609231955.3632596-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] mei: pxp: support matching with a gfx
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Support matching with a discrete graphics card.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
---
 drivers/misc/mei/pxp/mei_pxp.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_pxp.c
index 94d3ef3cc73a..645862f4bb38 100644
--- a/drivers/misc/mei/pxp/mei_pxp.c
+++ b/drivers/misc/mei/pxp/mei_pxp.c
@@ -162,13 +162,20 @@ static int mei_pxp_component_match(struct device *dev, int subcomponent,
 	    subcomponent != I915_COMPONENT_PXP)
 		return 0;
 
-	base = base->parent;
-	if (!base)
+	if (!dev)
 		return 0;
 
 	base = base->parent;
-	dev = dev->parent;
+	if (!base) /* mei device */
+		return 0;
 
+	base = base->parent; /* pci device */
+	/* for dgfx */
+	if (base && dev == base)
+		return 1;
+
+	/* for pch */
+	dev = dev->parent;
 	return (base && dev && dev == base);
 }
 
-- 
2.25.1

