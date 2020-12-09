Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1BD2D39E9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 05:53:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15186E0E8;
	Wed,  9 Dec 2020 04:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734846E0E9
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 04:53:07 +0000 (UTC)
IronPort-SDR: IO1oE00Z+rnUye6RbWZlLxiKBi/2Cbwq0kN/N0A+ZIFPgTnUwhHWBACRUqqBQ9cMPHCL9fC0hY
 jVJTTTzWwSvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="171446382"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="171446382"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 20:53:06 -0800
IronPort-SDR: 1FjIBm0rnUQFQpn6HXn5dOmyhc+9BXfyfMyT+pSaqQezKjc9ZKvt85CkSoDbc4PQhV9zcUtWh4
 o2YwDBPvpeJA==
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="363977073"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 20:53:06 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 20:52:46 -0800
Message-Id: <20201209045246.2905675-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201209045246.2905675-1-lucas.demarchi@intel.com>
References: <20201209045246.2905675-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: document masked registers
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Document what a masked register is according to bspec so we avoid
developers using the wrong functions to implement WAs.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index fec099f6ae76..b5339a36d256 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -217,6 +217,17 @@ wa_write_clr(struct i915_wa_list *wal, i915_reg_t reg, u32 clr)
 	wa_write_clr_set(wal, reg, clr, 0);
 }
 
+/*
+ * WA operations on "masked register". A masked register has the upper 16 bits
+ * documented as "masked" in b-spec. Its purpose is to allow writing to just a
+ * portion of the register without a rmw: you simply write in the upper 16 bits
+ * the mask of bits you are going to modify.
+ *
+ * The wa_masked_* family of functions already does the necessary operations to
+ * calculate the mask based on the parameters passed, so user only has to
+ * provide the lower 16 bits of that register.
+ */
+
 static void
 wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 {
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
