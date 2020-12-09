Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAE12D4134
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 12:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4901A6E140;
	Wed,  9 Dec 2020 11:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7F46E140
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 11:36:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23266118-1500050 for multiple; Wed, 09 Dec 2020 11:36:37 +0000
MIME-Version: 1.0
In-Reply-To: <20201209045246.2905675-3-lucas.demarchi@intel.com>
References: <20201209045246.2905675-1-lucas.demarchi@intel.com>
 <20201209045246.2905675-3-lucas.demarchi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 09 Dec 2020 11:36:36 +0000
Message-ID: <160751379675.31456.8430605901487850316@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: document masked registers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2020-12-09 04:52:46)
> Document what a masked register is according to bspec so we avoid
> developers using the wrong functions to implement WAs.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index fec099f6ae76..b5339a36d256 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -217,6 +217,17 @@ wa_write_clr(struct i915_wa_list *wal, i915_reg_t reg, u32 clr)
>         wa_write_clr_set(wal, reg, clr, 0);
>  }
>  
> +/*
> + * WA operations on "masked register". A masked register has the upper 16 bits
> + * documented as "masked" in b-spec. Its purpose is to allow writing to just a
> + * portion of the register without a rmw: you simply write in the upper 16 bits
> + * the mask of bits you are going to modify.
> + *
> + * The wa_masked_* family of functions already does the necessary operations to
> + * calculate the mask based on the parameters passed, so user only has to
> + * provide the lower 16 bits of that register.
> + */

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
