Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F58712749
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 15:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F67C10E1A6;
	Fri, 26 May 2023 13:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A8610E1A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 13:14:32 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-309382efe13so464868f8f.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 06:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685106870; x=1687698870;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1uP0c83ESIjrbA6T16gcSHrkcwMv/FlpyLO+N8zd+gg=;
 b=TOwehJhodC6gHEBRUE1HAPxSsz0zl1mkzHQPqgdBpCzJKwhHc6W/J+QUvHy+dGJ18F
 P5LLWX2HbAykVl/0A1DyGiPpg9vb9B53HX9ZWFcLcjS9GN9tMDVGat49EFuBR/pnY5+B
 dS1mSZbVzoO02rQt7dtPjBHz9vIH+gY9EybiRWmU5vX7Ix4Ilil+EKsVF3Wh+VeiUpp8
 HdGLNgFBT/wwbUEhd4pgWmpKPFLuBm1uZop+IxEAmr9w0IqtVI+OcCa2NQmKDNd0/USi
 /D/6kv9XOzG7I0CzLumnyuWKNPpJTmYk+HChqvgPv1J0QJNt2dx5bBZ9yPYn7H3uMiyV
 +PlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685106870; x=1687698870;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1uP0c83ESIjrbA6T16gcSHrkcwMv/FlpyLO+N8zd+gg=;
 b=N2biKzmqRkYrD/lDxHB8jouXd7X2m3Jb+SGpVADkMOKSPPDy9Y6KlwL4a29J5OjsUS
 9V+AGxySs2C363WxnqhyAmR4TpDvT2yj945mbygzn10kVzAm+nW3OfIxcB+oQR9h5ryx
 LNIDhslTTiwNrxn8CGxgJAdARwnTqQbOujizetkhDGKDJKHWlsGIqS2bHRkdGTwR75gN
 lXGxoIrqDOg70nH6LiaRsvv/3IM8Yui6e3IoLvGjCoyNzk1YwQXIn0PNGxA0m5DgidH5
 0992gMDO75Hxo17vk5194Jo2dGZqim9RIBhLnDupjx985aLaC4Hyg5ELd7BdPcyLi7oo
 5Taw==
X-Gm-Message-State: AC+VfDzJT1ngjlwaiJu1XGiV+LlSBAluudF/ygw69xCbYrsYHUz94Q6I
 VepmDz/uMe6JgXZT6rTJiXJuaA==
X-Google-Smtp-Source: ACHHUZ7r0ceAaklYYM0XDBW9/Wk+dbQUUKjvZm2DDJGNirpQg/drCOQyIw6wYmb4JwqnB4+sdjGALA==
X-Received: by 2002:a5d:590d:0:b0:309:3bc3:7d25 with SMTP id
 v13-20020a5d590d000000b003093bc37d25mr1360702wrd.62.1685106870526; 
 Fri, 26 May 2023 06:14:30 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 o9-20020a5d6849000000b003078c535277sm5052766wrw.91.2023.05.26.06.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 May 2023 06:14:27 -0700 (PDT)
Date: Fri, 26 May 2023 16:14:25 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <6b5fd74c-b98f-4e97-a562-e9739fd03873@kili.mountain>
References: <f6b876f1-4dd7-4d96-bee5-966817cc1644@kili.mountain>
 <ZHCs2RU6+SNkq0GA@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZHCs2RU6+SNkq0GA@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix an error code in
 copy()
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 26, 2023 at 02:58:01PM +0200, Andi Shyti wrote:
> Hi Dan,
> 
> On Fri, May 26, 2023 at 02:59:31PM +0300, Dan Carpenter wrote:
> > Return the error code if i915_gem_object_create_internal() fails,
> > instead of returning success.
> > 
> > Fixes: cf586021642d ("drm/i915/gt: Pipelined page migration")
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_migrate.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> > index e677f2da093d..a26429fd5326 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> > @@ -55,8 +55,10 @@ static int copy(struct intel_migrate *migrate,
> >  
> >  	sz = src->base.size;
> >  	dst = i915_gem_object_create_internal(i915, sz);
> > -	if (IS_ERR(dst))
> > +	if (IS_ERR(dst)) {
> > +		err = PTR_ERR(dst);
> >  		goto err_free_src;
> > +	}
> 
> I think it was intentional to return '0' when
> i915_gem_object_create_internal() failed, as we are not testing
> object creation here.
> 
> I don't really mind this patch, but, on the other hand, returning
> an error value here might provide a biased information.

Something we could consider is to make it more obvious that it's
intentional.  Smatch counts it as intentional if there is an "err = 0;"
within a few lines of the goto.

But let's just leave it.  I've already marked this static checker
warning as dealt with.  If I see it again and maybe that will motivate
me to add an err = 0; assignment.  People imagine that kernel code must
be 100% perfect with no static checker warnings etc but really it's
almost the weekend and this is fine.

regards,
dan carpenter

