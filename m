Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D720BB17EDB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 11:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AD010E80F;
	Fri,  1 Aug 2025 09:10:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P11y1C5l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2BB10E80F;
 Fri,  1 Aug 2025 09:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754039424; x=1785575424;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=q1CH092Zo9xRyTD/hixNBYWK5AFnjZxGHSm10CfP4n8=;
 b=P11y1C5lKGPUSzrbJGA80NU+5jyS+l0Jl/2ODHYP6uz3uh5FrPKqtsRe
 OMM0WImjhLQRtwElOFh2sowWM/5GYdAAiYegYSXWDJbqEmhEt1hQNF4iR
 YsandGs+xWqW+ebEFyyIvlbHU8AdMmowTtXz2fFNktOABNs2c44jtEud2
 +P3eFFahc/zC6DMrbQTTm1AsRTPTsnLFJiefvI5OYt3SOXop2UKD4+cSP
 ptXdkxbQ+BwARj0rO6uecu63zPkQJJB7kTn7kfXzna49l5K7j1oJ6Idpb
 1Bh7KXmyNzSJHbH+7ZmnEcwnahh/YvFe61KuxEt/wOUx7AslNvCXcAAIW w==;
X-CSE-ConnectionGUID: TEJnxMLwRS6+z6CNcJnLCA==
X-CSE-MsgGUID: C1fjJak0Rs61pePzJ9UWLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56525860"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="56525860"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:10:23 -0700
X-CSE-ConnectionGUID: xHPWHnetRwO+A+yLEZNkQg==
X-CSE-MsgGUID: 62Guu68oQt6ONnjy3hvI3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="200671994"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.164])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:10:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/7] drm/i915/ddi: use intel_de_wait_custom() instead
 of wait_for_us()
In-Reply-To: <175396685525.2011.3239000262739473384@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1753956266.git.jani.nikula@intel.com>
 <232a554db6a327974c06f2491311b28f865467b9.1753956266.git.jani.nikula@intel.com>
 <175396685525.2011.3239000262739473384@intel.com>
Date: Fri, 01 Aug 2025 12:10:14 +0300
Message-ID: <87370c2448f5462416cab62d6a25fdaec2f6f259@intel.com>
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

On Thu, 31 Jul 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-07-31 07:05:09-03:00)
>>Prefer the register read specific wait function over i915 wait_for_us().
>>
>>v2: Wait for bits to clear in mtl_ddi_disable_d2d()
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++--
>> 1 file changed, 12 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>>index 0405396c7750..866ed3e46664 100644
>>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>@@ -2561,6 +2561,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>>         enum port port = encoder->port;
>>         i915_reg_t reg;
>>         u32 set_bits, wait_bits;
>>+        int ret;
>> 
>>         if (DISPLAY_VER(display) < 14)
>>                 return;
>>@@ -2576,7 +2577,11 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>>         }
>> 
>>         intel_de_rmw(display, reg, 0, set_bits);
>>-        if (wait_for_us(intel_de_read(display, reg) & wait_bits, 100)) {
>>+
>>+        ret = intel_de_wait_custom(display, reg,
>>+                                   wait_bits, wait_bits,
>>+                                   100, 0, NULL);
>
> Hm... Strictly speaking, in the previous version, we are waiting for the
> register value with wait_bits mask applied to be any non-zero value.
> But, since wait_bits is just a single bit, I think using
> intel_de_wait_custom() works fine here.
>
> Perhaps using plural in wait_bits was not precise?

Yeah, I guess you could say there's a slight semantic change here, but
no functional change.

And if you ask me, I usually dislike "bits" in naming, and generally
prefer "mask". When "mask" is not appropriate, I think I try to find a
more meaningful name than "bits". But I digress.

> Anyways,
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, pushed the series to din.

BR,
Jani.

>
>
>>+        if (ret) {
>>                 drm_err(display->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
>>                         port_name(port));
>>         }
>>@@ -3058,6 +3063,7 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
>>         enum port port = encoder->port;
>>         i915_reg_t reg;
>>         u32 clr_bits, wait_bits;
>>+        int ret;
>> 
>>         if (DISPLAY_VER(display) < 14)
>>                 return;
>>@@ -3073,7 +3079,11 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
>>         }
>> 
>>         intel_de_rmw(display, reg, clr_bits, 0);
>>-        if (wait_for_us(!(intel_de_read(display, reg) & wait_bits), 100))
>>+
>>+        ret = intel_de_wait_custom(display, reg,
>>+                                   wait_bits, 0,
>>+                                   100, 0, NULL);
>>+        if (ret)
>>                 drm_err(display->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
>>                         port_name(port));
>> }
>>-- 
>>2.39.5
>>

-- 
Jani Nikula, Intel
