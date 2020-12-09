Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6707F2D39EA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 05:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046226E0EA;
	Wed,  9 Dec 2020 04:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 590CC6E0E8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 04:53:07 +0000 (UTC)
IronPort-SDR: iCttl7zDo1k/qRhGg2X0xzOJ7GjcGySWLze7MnU9q4DteCUx/6HSvp9IDlpstVW2YjQ9oAz7qH
 tQa9N3HtkaTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="171446381"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="171446381"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 20:53:06 -0800
IronPort-SDR: nolT3q+ngEZ78SMDRjX4v2SabfuTnC5hx6B/WuPkPElN3LlBk7o2hXkuWKqd5YGO/DGm/9Tr7+
 OWOxqYRT+c3Q==
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="363977070"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 20:53:06 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 20:52:44 -0800
Message-Id: <20201209045246.2905675-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: stop ignoring read with
 wa_masked_field_set
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

When using masked registers, there is nothing to clear since a masked
register has the mask in the upper 16b: we can just write to the
location we want and use the mask to control what bits we are writing
to.

However that doesn't mean we don't want to read back the register and
check the value actually matched what we wanted to write, i.e. that
the WA stick. That should be an explicit opt-out for registers that are
either write-only or that are affected by hardware misbehavior.

Moreover both wa_masked_en() and wa_masked_dis() check the WA stick, so
skipping the check just because the field is more than 1 bit is
surprising and error-prone.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2db1e68d7464..70d4ca2776a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -233,7 +233,7 @@ static void
 wa_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
 		    u32 mask, u32 val)
 {
-	wa_write_masked_or(wal, reg, 0, _MASKED_FIELD(mask, val));
+	wa_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask);
 }
 
 static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
