Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E541D9DAC5F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783BA10E110;
	Wed, 27 Nov 2024 17:25:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cdSNEPfJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E35010E110;
 Wed, 27 Nov 2024 17:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732728303; x=1764264303;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=z6lYj3XqyRF01Zm5W1AiSdqHxbrxN4aA6QHY7KP2Nc4=;
 b=cdSNEPfJ+HdYAZl0R/LNWdrRW4obeePU/YsGx/mbE3CsNWwPJxVvNxw8
 96ln211eTh4qufvi3FPGSesKKJmKy53Y7V5zB4LP6ksDcbypXaXib1HUw
 R95lSawvST/1pS1i7GZkVBNK4ABx3/imheWmm4hwxl3FQvuw35YQ2jcPO
 glbsjQMlAtfJhGzJ0Ce2vf7gIWLnJmDk2QufG4xxlJs1UE5N0ACgZ8Gth
 /Cr4szoDhKS4bGyn67g9pXGZzZ1BRyk0Vnjjw5guPLIXpkSbXuTqxAIkx
 qroOgi7EcC7Z4eikCr616CyeBCls7zy+/itq1PSblEguyIalAAEH55kGU g==;
X-CSE-ConnectionGUID: A3GOPfqdRxmrBtyIpGaahw==
X-CSE-MsgGUID: 3ipphpTGTsKr2GVeSzIKQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="33098466"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="33098466"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:25:02 -0800
X-CSE-ConnectionGUID: Mw/ye2vPQGu1Rk4BcKo3/w==
X-CSE-MsgGUID: ZeiOAPNHSUSncgFe+j76SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91936622"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:25:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: use seq buf for printing rates
In-Reply-To: <173272067132.9041.672991565423824805@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241127131838.3268735-1-jani.nikula@intel.com>
 <173272067132.9041.672991565423824805@intel.com>
Date: Wed, 27 Nov 2024 19:24:58 +0200
Message-ID: <87mshkwpw5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 27 Nov 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-11-27 10:18:38-03:00)
>>Hand rolling the buffer overflow handling with snprintf() is a bit
>>tedious. The seq_buf interface is made for this. Switch to it.
>
> Cool! Today I learned a new kernel interface. :-)

\o/

>>
>>Use struct intel_display while at it.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++---------------
>> 1 file changed, 14 insertions(+), 22 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>index 053a9a4182e7..4471c8fcd478 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>@@ -28,6 +28,7 @@
>> #include <linux/export.h>
>> #include <linux/i2c.h>
>> #include <linux/notifier.h>
>>+#include <linux/seq_buf.h>
>> #include <linux/slab.h>
>> #include <linux/sort.h>
>> #include <linux/string_helpers.h>
>>@@ -1506,41 +1507,32 @@ bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
>>         return DISPLAY_VER(i915) >= 10;
>> }
>> 
>>-static void snprintf_int_array(char *str, size_t len,
>>-                               const int *array, int nelem)
>>+static void seq_buf_print_array(struct seq_buf *s, const int *array, int nelem)
>> {
>>         int i;
>> 
>>-        str[0] = '\0';
>>-
>>-        for (i = 0; i < nelem; i++) {
>>-                int r = snprintf(str, len, "%s%d", i ? ", " : "", array[i]);
>>-                if (r >= len)
>>-                        return;
>>-                str += r;
>>-                len -= r;
>>-        }
>>+        for (i = 0; i < nelem; i++)
>>+                seq_buf_printf(s, "%s%d", i ? ", " : "", array[i]);
>> }
>> 
>> static void intel_dp_print_rates(struct intel_dp *intel_dp)
>> {
>>-        struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>-        char str[128]; /* FIXME: too big for stack? */
>>+        struct intel_display *display = to_intel_display(intel_dp);
>>+        DECLARE_SEQ_BUF(s, 128); /* FIXME: too big for stack? */
>
> I wonder if just using drm_dbg_printer() would make things simpler,
> without requiring a buffer.

Mmh, that's always line based, isn't it? It would result in each rate
getting printed on its own line, which is too spammy.

> Anyway, the patch looks good to me, so:
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks!

>
>> 
>>         if (!drm_debug_enabled(DRM_UT_KMS))
>>                 return;
>> 
>>-        snprintf_int_array(str, sizeof(str),
>>-                           intel_dp->source_rates, intel_dp->num_source_rates);
>>-        drm_dbg_kms(&i915->drm, "source rates: %s\n", str);
>>+        seq_buf_print_array(&s, intel_dp->source_rates, intel_dp->num_source_rates);
>>+        drm_dbg_kms(display->drm, "source rates: %s\n", seq_buf_str(&s));
>> 
>>-        snprintf_int_array(str, sizeof(str),
>>-                           intel_dp->sink_rates, intel_dp->num_sink_rates);
>>-        drm_dbg_kms(&i915->drm, "sink rates: %s\n", str);
>>+        seq_buf_clear(&s);
>>+        seq_buf_print_array(&s, intel_dp->sink_rates, intel_dp->num_sink_rates);
>>+        drm_dbg_kms(display->drm, "sink rates: %s\n", seq_buf_str(&s));
>> 
>>-        snprintf_int_array(str, sizeof(str),
>>-                           intel_dp->common_rates, intel_dp->num_common_rates);
>>-        drm_dbg_kms(&i915->drm, "common rates: %s\n", str);
>>+        seq_buf_clear(&s);
>>+        seq_buf_print_array(&s, intel_dp->common_rates, intel_dp->num_common_rates);
>>+        drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
>> }
>> 
>> static int forced_link_rate(struct intel_dp *intel_dp)
>>-- 
>>2.39.5
>>

-- 
Jani Nikula, Intel
