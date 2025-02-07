Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB47DA2C1DE
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 12:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C33010EAE6;
	Fri,  7 Feb 2025 11:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="vVtr0oXt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18A710EAE6
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2025 11:48:49 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-4364a37a1d7so19477645e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2025 03:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1738928928; x=1739533728; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=dHNJ8Eew7Hg7Pyzt2+hfw+RIo9hE4aetoeK/N/PeZXw=;
 b=vVtr0oXtiaN93nkz5r6icQ8XmmcmZGjX5WLO0Qyuy8NMS5Ixb5hiDODrQA/GBfCBPm
 beQWBI5tuQVZV2316JAimX2Sq+azSvso4MNAvrCCUuOcn9DRjLbb3yZveG56ItRH7hZO
 JObbTEqATtwjvTMVdF30k+qLlOAB0Qm4t/Sk53XSQa6u3EBsUmJEi+BgeSDYStdetjIN
 22RLG59GM5TvmH02u4WhR9quWC9ztx98YGFscJcVn5Wa2aYQiiuBnlkDh7P3SC2kQv+C
 34RoAeOOE+XZQuw5zJkoYVYzXiWqB+aoJ51oDuH6VlRqOSnlZut93OB2e4VNWGuHX4fg
 Oczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738928928; x=1739533728;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dHNJ8Eew7Hg7Pyzt2+hfw+RIo9hE4aetoeK/N/PeZXw=;
 b=GIHQQ02eI0n98zeGUXDlQUPQnkZ0U23bp0QyU1yekWS3HVNJcYMl8K/A7wliEDVwTF
 JGArIZ9BU0DAx4iUG4n4qSjReanm+L9O+h6Lluj1mVw0/6qaIDd7fqipobuxdrQhpM74
 l6Yhdx3vKPFnaYelm8diX5E3W3yI9b81iwiEcwKaATDSv4oZL3j6djCn4VdszprEnU5y
 IaMEnUysgkXyk5RxqGau6YnwmfA/+1HEK0aCBDCiVp9nFIewG/hJxIsg5kkHI0rsagzt
 arQP0KA8bmu3itxpUSzBF8ryp6aRSM9Qj0xU8GFkEHDt2drFfmt+v4KbfdsyxI/m6wN4
 vbYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUH32VbdvJH16e/vxVOc+dYVUXylOjnIxpR98Js5I+47980o3sok2uC+qD7Us5/nmq41EI14RMCjk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxfnJNCBl02akWyDb/KIGVYGCHW6bHkSmDteZKJAh/RpdC1NFJ1
 3LIgMubexOj1qgG7xX5OB37W29AD4pKDa+JX2qji0scK81Nj+rpskPBXtzwW85s=
X-Gm-Gg: ASbGncsctLGvfcKLAZcwf9cUScQsKUNfh0OeVxi+I4t4kGu+5tnilVvGICuCsqWDb7o
 5cTOhGNFBe2uEtIAJMWD53DujrtFJy+CDfUWLz2X33cESNVfO3MUejs1AKuZNx1UU0pF2/kmsJd
 T88scNEj/Mf6Bh9eKptOawwCa3wMIszee53dmgLaShAZ08yeCd/qRSzyM5q5Dihwfd1mLQHJz0l
 BNyqX0TLUlA3C6stxPHbAsYfpBogClAZSmjPBhIZE3c/claWtd3RCTFA/lWh+Vvl+8tk1RmrtER
 sk+/tlGGf4LjH5NnPSis
X-Google-Smtp-Source: AGHT+IEr0OWNf6abQpoX6y1vt4hzbn9/9cpFB6IqywNlb0ApAbUXKRVMlqvR2p9ieTmDj/CQ8gYdUQ==
X-Received: by 2002:a05:600c:1d0c:b0:434:ff30:a159 with SMTP id
 5b1f17b1804b1-439248d395cmr28322995e9.0.1738928928439; 
 Fri, 07 Feb 2025 03:48:48 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4390d94d753sm87464535e9.11.2025.02.07.03.48.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2025 03:48:48 -0800 (PST)
Date: Fri, 7 Feb 2025 14:48:44 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andi Shyti <andi.shyti@linux.intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@redhat.com>, Josef Bacik <josef@toxicpanda.com>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Brian Geffon <bgeffon@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
Subject: Re: [PATCH next] drm/i915: Fix NULL vs IS_ERR() check in
 __shmem_writeback()
Message-ID: <1d15e298-4e37-467d-9527-bfd6215cf276@stanley.mountain>
References: <7f99a56b-d517-40b0-92b7-421c4fd813f2@stanley.mountain>
 <Z6XoU6GopCT-CxNK@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6XoU6GopCT-CxNK@ashyti-mobl2.lan>
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

On Fri, Feb 07, 2025 at 12:02:43PM +0100, Andi Shyti wrote:
> Hi Dan,
> 
> On Thu, Feb 06, 2025 at 11:17:02AM +0300, Dan Carpenter wrote:
> > The filemap_lock_folio() function doesn't return NULL, it returns error
> > pointers.
> > 
> > Fixes: 25dd342f0cc8 ("drm/i915/gem: convert __shmem_writeback() to folios")
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > index a784fb44e59c..fb263b421958 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > @@ -319,7 +319,7 @@ void __shmem_writeback(size_t size, struct address_space *mapping)
> >  		struct folio *folio;
> >  
> >  		folio = filemap_lock_folio(mapping, i);
> > -		if (!folio)
> > +		if (IS_ERR(folio))
> 
> I don't see this patch yet in -next yet (and of course not in
> drm-tip), which branch is it based on?
> 

This was in linux-next but it's not there now.  It came via -mm.  I
guess it's been dropped and Kirill will fix this in his devel branch
before resending.

regards,
dan carpenter

