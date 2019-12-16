Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB441206EF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 14:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB1C26E525;
	Mon, 16 Dec 2019 13:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DE56E525
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 13:19:38 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id x18so4077221vsq.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 05:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nbhXZqPwdc7owYKXMlyeozjPSUEpklxacQ0+DRDTBSI=;
 b=I72m6axyhwGVnVcmV7lPa2l/dutfF2Q0I5T5iGQTXL5jxIuoZ0GCzKbGfVcmSzN7CC
 ReLUDQM+U4YVgQbN7iGoiMmw9F3tJX47EeQgQAwbPgjy9rq/xJUbEs5FGp9kvquF/ZL2
 w7kIWooCEW858jiTe4xdJKterAw/R+izdnpZZO5QyhIudd7C4rXc5nctY6+IK5tGR2Xt
 ABrp4/9CP8i37rojY1Ql6r/1+2VUrtpX11CSEnr1NMljo7yNLRa/4ze1pmWwG6/dC/FK
 d/mPTIz4gpZJiRB7ThRKVuQ8C4sVbnU19lcAQWZQYHR70v4S6izXkLj5rD6j35nvFDA7
 PSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nbhXZqPwdc7owYKXMlyeozjPSUEpklxacQ0+DRDTBSI=;
 b=HDh3b82rMKt4JfZ7O7niRMaSN3ZHr+vpFYTMOGNwZBliR+6+HCHOzZK5fvxSqK3A/o
 yI+EtMe34/6eoHnZhQ69wD/nvFTm3DgWYQrEVuC8fB645yDr35uxbpJAugSwl0stU50K
 t6OkLb1bWAcN460TgMs/RaEQD+QkDo73e6oSKWNqSvgalmCdlOrkUmXaTx4xisq8VfYm
 hXVbR5isqfnzMeMm1zWYOG9RRD8IoR4NrqdaAHYFtEU7LTNTCunFPL79tcfGxplCGOZm
 9mS2WllWcZ5YOlc0uKASXOq9C0vklR6HjNLwbw4Pjq29qs8u26ZLBHNIrB6WYQu6w+3r
 qC3w==
X-Gm-Message-State: APjAAAUWkpFurm1r/2ohe0txk4+mjqqZhQWNQ0vZNera1pcSZY5GRe6i
 TlqEC1RHX+0Ay58FpO+slsqVVhfMfx38R3laUtcEhQ==
X-Google-Smtp-Source: APXvYqyCRUED41JqprCsHloxk5d/25PP91+eyTuC/ejbnpsq5s9fLJr2tNik6xoyVUhCXzftzZLFW8YjQXJ61JlM9BQ=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr20908375vsv.178.1576502377055; 
 Mon, 16 Dec 2019 05:19:37 -0800 (PST)
MIME-Version: 1.0
References: <20191216122603.2598155-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191216122603.2598155-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 16 Dec 2019 13:19:08 +0000
Message-ID: <CAM0jSHMtkDSbeQotW19JNF4=JvsqgmW53MJR_NguWEFbrx1Xnw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Apply lmem size restriction
 to get_pages
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 16 Dec 2019 at 12:26, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> When creating a handle, it is just that, an abstract handle. The fact
> that we cannot currently support a handle larger than the size of the
> backing storage is an artifact of our whole-object-at-a-time handling in
> get_pages() and being an implementation limitation is best handled at
> that point -- similar to shmem, where we only barf when asked to
> populate the whole object if larger than RAM. (Pinning the whole object
> at a time is major hindrance that we are likely to have to overcome in
> the near future.) In the case of the buddy allocator, the late check is
> preferable as the request size may often be smaller than the required
> size.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

I think we just need:

@@ -1420,7 +1420,7 @@ static int igt_ppgtt_smoke_huge(void *arg)

                err = i915_gem_object_pin_pages(obj);
                if (err) {
-                       if (err == -ENXIO) {
+                       if (err == -ENXIO || err == -E2BIG) {
                                i915_gem_object_put(obj);
                                size >>= 1;
                                goto try_again;

?

Or whatever takes your fancy,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
