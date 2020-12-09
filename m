Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFBB2D4114
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 12:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5ED6E9FA;
	Wed,  9 Dec 2020 11:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F0436E9FA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 11:31:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23266029-1500050 for multiple; Wed, 09 Dec 2020 11:31:12 +0000
MIME-Version: 1.0
In-Reply-To: <20201209045246.2905675-1-lucas.demarchi@intel.com>
References: <20201209045246.2905675-1-lucas.demarchi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 09 Dec 2020 11:31:11 +0000
Message-ID: <160751347196.31456.13901907159558018579@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: stop ignoring read with
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2020-12-09 04:52:44)
> When using masked registers, there is nothing to clear since a masked
> register has the mask in the upper 16b: we can just write to the
> location we want and use the mask to control what bits we are writing
> to.
> 
> However that doesn't mean we don't want to read back the register and
> check the value actually matched what we wanted to write, i.e. that
> the WA stick. That should be an explicit opt-out for registers that are
> either write-only or that are affected by hardware misbehavior.
> 
> Moreover both wa_masked_en() and wa_masked_dis() check the WA stick, so
> skipping the check just because the field is more than 1 bit is
> surprising and error-prone.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 2db1e68d7464..70d4ca2776a3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -233,7 +233,7 @@ static void
>  wa_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
>                     u32 mask, u32 val)
>  {
> -       wa_write_masked_or(wal, reg, 0, _MASKED_FIELD(mask, val));
> +       wa_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask);

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
