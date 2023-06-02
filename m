Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9892972040E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039CE10E69D;
	Fri,  2 Jun 2023 14:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3E610E69D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715144; x=1717251144;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xF1907D/qgWUPoUUuzud9W0aoD2VDWcrHzH0dxVJSvs=;
 b=m9fUjignpr2qQ+lPOzwP1BMPV0jhZx35vI70UBx+tN/6/xlw+V5Eun0D
 rExjMtbL2jJwCGu3SMGqzM+uVk94fSMKaqIjUqBFfwAflFdgrhSSMaCQc
 4bfTL9BcZ4PBLIfkhS+y3nUiKhvolb7xkRazqSxpw0TRN2rN4rs8nE5Ev
 IRB4S1fJQfHiUu7g2MSiUJQ0khk4NSZTwX0gCXemdgtgIBpZqpn4QUlpg
 ZUn4shEF3Gve1lji7FNa5sdnWEK+kQo6/33IK0UPsEOa4HveFZCEVIoSC
 YRol3iBJ2JailddYh7j1l3vPj1ZNfUfrLZMA4mcNVKwzZR+EmM8QBJxyg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="354723555"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="354723555"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:12:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="831995792"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="831995792"
Received: from gsavorni-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.46])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:12:21 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri,  2 Jun 2023 16:12:11 +0200
Message-Id: <20230602141211.291418-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/pxp: Fix size_t format specifier in
 gsccs_send_message()
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
Cc: Nathan Chancellor <nathan@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nathan Chancellor <nathan@kernel.org>

When building ARCH=i386 allmodconfig, the following warning occurs:

  In file included from include/linux/device.h:15,
                   from include/linux/node.h:18,
                   from include/linux/cpu.h:17,
                   from include/linux/static_call.h:135,
                   from arch/x86/include/asm/perf_event.h:5,
                   from include/linux/perf_event.h:25,
                   from drivers/gpu/drm/i915/i915_pmu.h:11,
                   from drivers/gpu/drm/i915/gt/intel_engine_types.h:21,
                   from drivers/gpu/drm/i915/gt/intel_context_types.h:18,
                   from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20,
                   from drivers/gpu/drm/i915/i915_request.h:34,
                   from drivers/gpu/drm/i915/i915_active.h:13,
                   from drivers/gpu/drm/i915/gt/intel_context.h:13,
                   from drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c:8:
  drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c: In function 'gsccs_send_message':
  include/drm/drm_print.h:456:39: error: format '%ld' expects argument of type 'long int', but argument 4 has type 'size_t' {aka 'unsigned int'} [-Werror=format=]
    456 |         dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
        |                                       ^~~~~~~~
  include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
    110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
        |                              ^~~
  include/linux/dev_printk.h:146:61: note: in expansion of macro 'dev_fmt'
    146 |         dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
        |                                                             ^~~~~~~
  include/drm/drm_print.h:456:9: note: in expansion of macro 'dev_warn'
    456 |         dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
        |         ^~~~
  include/drm/drm_print.h:466:9: note: in expansion of macro '__drm_printk'
    466 |         __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
        |         ^~~~~~~~~~~~
  drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c:146:17: note: in expansion of macro 'drm_warn'
    146 |                 drm_warn(&i915->drm, "caller with insufficient PXP reply size %u (%ld)\n",
        |                 ^~~~~~~~
  cc1: all warnings being treated as errors

Use the '%zu' format specifier, as the variable is a 'size_t'.

Fixes: dc9ac125d81f ("drm/i915/pxp: Add GSC-CS backend to send GSC fw messages")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Hi,

CI execution was interrupted at some point, so that I'm being
overzealous and respinning it. I bet within this weekend we will
have the results.

Andi

 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index 8dc41de3f6f74..a217821eb0fbb 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -143,7 +143,7 @@ gsccs_send_message(struct intel_pxp *pxp,
 
 	reply_size = header->message_size - sizeof(*header);
 	if (reply_size > msg_out_size_max) {
-		drm_warn(&i915->drm, "caller with insufficient PXP reply size %u (%ld)\n",
+		drm_warn(&i915->drm, "caller with insufficient PXP reply size %u (%zu)\n",
 			 reply_size, msg_out_size_max);
 		reply_size = msg_out_size_max;
 	}
-- 
2.40.1

