Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FCA147E98
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 11:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9BD720AA;
	Fri, 24 Jan 2020 10:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14EF0720AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 10:17:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 02:17:19 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="230234777"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.22.229])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 02:17:18 -0800
MIME-Version: 1.0
In-Reply-To: <20200123152602.1432282-1-chris@chris-wilson.co.uk>
References: <20200123151406.51679-1-colin.king@canonical.com>
 <20200123152602.1432282-1-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Fri, 24 Jan 2020 12:17:15 +0200
Message-ID: <157986103514.5358.9906484164679250663@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Prevent NULL pointer
 dereference on missing ctx->vm
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
Cc: Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-23 17:26:02)
> If the ctx->vm is freed before we can acquire a local reference to it,
> we proceed to call i915_vm_put(NULL), which is invalid.
> 
> Reported-by: Colin Ian King <colin.king@canonical.com>
> Fixes: 5dbd2b7be61e ("drm/i915/gem: Convert vm idr to xarray")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 5d4157e1ccf7..8873db5be123 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1002,13 +1002,14 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
>         if (!rcu_access_pointer(ctx->vm))
>                 return -ENODEV;
>  
> -       err = -ENODEV;
>         rcu_read_lock();
>         vm = context_get_vm_rcu(ctx);
> -       if (vm)
> -               err = xa_alloc(&file_priv->vm_xa, &id, vm,
> -                              xa_limit_32b, GFP_KERNEL);
>         rcu_read_unlock();
> +       if (!vm)
> +               return -ENODEV;
> +
> +       err = xa_alloc(&file_priv->vm_xa, &id, vm,
> +                      xa_limit_32b, GFP_KERNEL);

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
