Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC44470168
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0472B10E2C0;
	Fri, 10 Dec 2021 13:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DEBF10E2C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142272; x=1670678272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xhC87COuz3tSOeDAaQT8WrE5CvSimpBacmgqyIFMITw=;
 b=L2ui0SbyBnXL/GdyK79QXKCiAcN+2sUuSHIn3dOxAH+hhUeGn+r7Lcld
 Vt1WcZWlbAGgIZ8HBjPTcZixDACPQNL/jrD3Z4NibHOA0Hvsb8LdJMAAD
 lhRGDK1qg/Kxgh352ya4iaOnBdkJvJCMd6oAKAyMq/ziZJdRKhFnHAq8V
 PuuvvR6nFE8M+OYPQC+2V3OGcKP/Dxu6ErotRCbFCTGb/jkaNrV1I85Gc
 eBmubsi/YrDiqCY2sLx5b8br7scpnfSivDB1td9d3MFPSi53GoyRMUccr
 7hv/dFkrOg8lZGZkaDnai3eh1UwevcsMcT6GZeLGL4UrdzSIbY0KIrNdW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="262454462"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="262454462"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="543976985"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:17:01 +0200
Message-Id: <01c4ea0cea17eead027c83dc9eaca3c181ce3a24.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
References: <cover.1639142167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915/pxp: remove useless includes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not needed.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 73ef7d1754e1..7ce5f37ee12e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -7,9 +7,7 @@
 #define __INTEL_PXP_TYPES_H__
 
 #include <linux/completion.h>
-#include <linux/list.h>
 #include <linux/mutex.h>
-#include <linux/spinlock.h>
 #include <linux/types.h>
 #include <linux/workqueue.h>
 
-- 
2.30.2

