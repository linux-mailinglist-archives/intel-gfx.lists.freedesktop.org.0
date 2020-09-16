Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D6026BE5A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 09:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3522890A8;
	Wed, 16 Sep 2020 07:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D325890A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 07:42:34 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id e17so1778001wme.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 00:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ot6iZWd98YQr5mHaX8FXKQBw+IpUt9BsD4MskvvQqpo=;
 b=BJLaewkh1jJeIx94d5rS5o5OhiIfCBOn/m+CGOnQ3cN9D60IaKLC5G0C2QG+DU5jNq
 V1NdXeQKtmKS+bpl3GQfhqSH4nBVCtQjRuEmMA1r1vhnANHhawnanHGqicGnxufKJJF9
 5vyA6Iv7lx2D07L4+9YoIV1Zgk+GzL0p7995w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ot6iZWd98YQr5mHaX8FXKQBw+IpUt9BsD4MskvvQqpo=;
 b=rNUretLKZpQrEy2cyg3Bf5YwwWuo37iHZMsGBYlWuYcYFGtFwf3B6cP9vnyqSz4DrH
 GEQrYSbvOcoNZQ6/DM5rznNV8uQ5LDECyaWwpmQpAfnG/WBqhsTo9bQoR9Pm+E5PV19q
 1+wIPFCMogRyhwHxvlPmvrmtep+SF3g8nZU71XOwKLUs8QVsdHSRjweUp/ekB87sLTgO
 KiuvxLeOzOwTsi2PKTtUhYhGAHsFLoJNxET3PpDz/tE8BDD2bEBawXQRYIgyk1/nX5tp
 LJISSTvUOyAW3DTRmgLlLeG9pnCk/+I1yXA7kSis9cfZy186t0PkXDFjW6hvN3pFkN3H
 /c0w==
X-Gm-Message-State: AOAM533EkJpYShaXZk0/HhYGE43565HBhLjUqwx+Zlc9ipU+FhfN38Ag
 /ah3buxb/YOnMCS3+mj/fD8L7w==
X-Google-Smtp-Source: ABdhPJz3yMmR1XwOGajN+KW42rvNn/OWzNC/FWXYl3XGMATka4cMHZSootWZ6ul86yXqmajpNgIDFA==
X-Received: by 2002:a7b:c8c9:: with SMTP id f9mr3317002wml.67.1600242153009;
 Wed, 16 Sep 2020 00:42:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y207sm4011619wmc.17.2020.09.16.00.42.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 00:42:32 -0700 (PDT)
Date: Wed, 16 Sep 2020 09:42:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200916074230.GS438822@phenom.ffwll.local>
References: <20200723172119.17649-1-chris@chris-wilson.co.uk>
 <20200723172119.17649-3-chris@chris-wilson.co.uk>
 <5e7f2c00-c72e-46ff-defe-404b5a847a02@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e7f2c00-c72e-46ff-defe-404b5a847a02@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gem: Serialise debugfs
 i915_gem_objects with ctx->mutex
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 "Nikunj A. Dadhania" <nikunj.dadhania@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 14, 2020 at 05:45:09PM +0100, Tvrtko Ursulin wrote:
> 
> On 23/07/2020 18:21, Chris Wilson wrote:
> > Since the debugfs may peek into the GEM contexts as the corresponding
> > client/fd is being closed, we may try and follow a dangling pointer.
> > However, the context closure itself is serialised with the ctx->mutex,
> > so if we hold that mutex as we inspect the state coupled in the context,
> > we know the pointers within the context are stable and will remain valid
> > as we inspect their tables.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: CQ Tang <cq.tang@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: stable@vger.kernel.org
> > ---
> >   drivers/gpu/drm/i915/i915_debugfs.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > index 784219962193..ea469168cd44 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -326,6 +326,7 @@ static void print_context_stats(struct seq_file *m,
> >   		}
> >   		i915_gem_context_unlock_engines(ctx);
> > +		mutex_lock(&ctx->mutex);
> >   		if (!IS_ERR_OR_NULL(ctx->file_priv)) {
> >   			struct file_stats stats = {
> >   				.vm = rcu_access_pointer(ctx->vm),
> > @@ -346,6 +347,7 @@ static void print_context_stats(struct seq_file *m,
> >   			print_file_stats(m, name, stats);
> >   		}
> > +		mutex_unlock(&ctx->mutex);
> >   		spin_lock(&i915->gem.contexts.lock);
> >   		list_safe_reset_next(ctx, cn, link);
> > 
> 
> Hm this apparently never got it's r-b and so got re-discovered in the field.
> +Nikunj
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

I'm not super thrilled about patch 1 in this, for debugfs imo better to
wrangle this in the driver. And without patch 1 and 2 this wont fix a
whole lot.
-Daniel


> 
> Regards,
> 
> Tvrtko
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
