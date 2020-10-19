Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA1B2922A0
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 08:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04F436E8D4;
	Mon, 19 Oct 2020 06:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321CA6E8D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 06:43:23 +0000 (UTC)
IronPort-SDR: S6Zkd8yxupU5ROhsAU3ZTXfQsLvTQtUr59wplvNMjx3MRuMKcgRb0GoF2VJ9cY4ggFZr5XR+OP
 tMAWF+8wu52Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="167053956"
X-IronPort-AV: E=Sophos;i="5.77,393,1596524400"; d="scan'208";a="167053956"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2020 23:43:20 -0700
IronPort-SDR: fr80jlmgluxsrlngIvwH9H4IS2y9c7Z9lyMr4lkqG6er7vrl2/MWQHSQg3nzfOm9DLUZf/L3Bg
 z9DJnPLeF4GA==
X-IronPort-AV: E=Sophos;i="5.77,393,1596524400"; d="scan'208";a="523000067"
Received: from gmanojku-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.4.169])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2020 23:43:17 -0700
MIME-Version: 1.0
In-Reply-To: <20201016152340.15906-1-sf@sfritsch.de>
References: <20201016152340.15906-1-sf@sfritsch.de>
To: Stefan Fritsch <sf@sfritsch.de>, intel-gfx@lists.freedesktop.org,
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160308979457.4267.13628612734509793218@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 19 Oct 2020 09:43:15 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Rate limit 'Fault errors' message
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
Cc: Stefan Fritsch <sf@sfritsch.de>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Zhenyu & Zhi,

Should not we instead fix the reason why the errors happen instead of
rate-limiting them?

Regards, Joonas

Quoting Stefan Fritsch (2020-10-16 18:23:40)
> If linux is running as a guest and the host is doing igd pass-through
> with VT-d enabled, this message is logged dozens of times per second.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Stefan Fritsch <sf@sfritsch.de>
> ---
> 
> The i915 driver should also detect VT-d in this case, but that is a
> different issue.  I have sent a separate mail with subject 'Detecting
> Vt-d when running as guest os'.
> 
> 
>  drivers/gpu/drm/i915/i915_irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 759f523c6a6b..29096634e697 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2337,7 +2337,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  
>                 fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>                 if (fault_errors)
> -                       drm_err(&dev_priv->drm,
> +                       drm_err_ratelimited(&dev_priv->drm,
>                                 "Fault errors on pipe %c: 0x%08x\n",
>                                 pipe_name(pipe),
>                                 fault_errors);
> -- 
> 2.28.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
