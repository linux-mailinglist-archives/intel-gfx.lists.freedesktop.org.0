Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32541248F69
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 22:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D54F89BFE;
	Tue, 18 Aug 2020 20:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF2E89BE8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 20:10:17 +0000 (UTC)
Received: by mail-pj1-x1042.google.com with SMTP id l60so43931pjb.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 13:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TVHg8iic3jhifLJcBgUbuICf6X+/XJrx7XucziWHTh4=;
 b=XJIRNe3GC5+ESqXN1Xu3abO5ZefKkTKOYHKBaOfb9ueeT+8D0u27nucOFMVEcVEIlU
 jmvz6dATQFCtEO6g5yNeaZR33qILQindJ5FbeJ6y98srbza53yHyzyYR5Ae2HVSridP4
 36Xq5I+k5oTWeayZlqu4WxkJBY7w5Y8AAm/NE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TVHg8iic3jhifLJcBgUbuICf6X+/XJrx7XucziWHTh4=;
 b=IK+eKMjn04rWVonjluEoSHsbAm9aZXxw4gxRDdSFHb9dO2rH24U2U8aRyTT1DVA7sO
 DA5CTSDQ0nvWqks4E2OnCOYL0S5E65wlU/RswcMjJadvuVovqrWdcBFpVZIzSLEfLINy
 OcuQwpKIAZtQNnRzy4mZiF6ZoGa2WZoPh3A6geZyJpq+UBFoX5TRD3HhrzqqD/R+UFr+
 IzAM1ClJ5pkxDLsmUz+2CEJvfZdSl+kkvBe1Ysnamjbd0gA2Ozg3YfPxM6ko2zt0HAlh
 iBdpRiCPmeGKySPJK0fXfzAJikKRElVj9rTrMhBltg5HYPJ6qHrbCadvPFjorBEZfMK1
 Oo0A==
X-Gm-Message-State: AOAM533LuA5lsfzv2VZ0u1vHkO3zA8F9oDP/XpnBTSpFY8pprHzYLlMt
 jXwagQmSwyI6eZQvdJNea3hubw==
X-Google-Smtp-Source: ABdhPJxuNmuIkhrqM6bpbnFGPMCC2Ooxj9YFPlaOufZ98RpuJ8EhlSYOLxahQ/MIWXdKo1mkyqnaIw==
X-Received: by 2002:a17:902:6b05:: with SMTP id
 o5mr16351190plk.173.1597781417356; 
 Tue, 18 Aug 2020 13:10:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t25sm26530806pfl.198.2020.08.18.13.10.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 13:10:15 -0700 (PDT)
Date: Tue, 18 Aug 2020 13:10:14 -0700
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <202008181309.FD3940A2D5@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1597780833.3978.3.camel@HansenPartnership.com>
Subject: Re: [Intel-gfx] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, kys@microsoft.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 oakad@yahoo.com, s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 linux-ntb@googlegroups.com, Romain Perier <romain.perier@gmail.com>,
 shawnguo@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 18, 2020 at 01:00:33PM -0700, James Bottomley wrote:
> On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> > On 8/17/20 12:48 PM, Kees Cook wrote:
> > > On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> > > > On 8/17/20 12:29 PM, Kees Cook wrote:
> > > > > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> > > > > > On 8/17/20 2:15 AM, Allen Pais wrote:
> > > > > > > From: Allen Pais <allen.lkml@gmail.com>
> > > > > > > 
> > > > > > > In preparation for unconditionally passing the
> > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > and from_tasklet() to pass the tasklet pointer explicitly.
> > > > > > 
> > > > > > Who came up with the idea to add a macro 'from_tasklet' that
> > > > > > is just container_of? container_of in the code would be
> > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > from_tasklet is doing.
> > > > > > 
> > > > > > I'd fix that up now before everything else goes in...
> > > > > 
> > > > > As I mentioned in the other thread, I think this makes things
> > > > > much more readable. It's the same thing that the timer_struct
> > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > ever-repeating use of typeof(), long lines, etc.
> > > > 
> > > > But then it should use a generic name, instead of each sub-system 
> > > > using some random name that makes people look up exactly what it
> > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > adding private variants of this doesn't seem like the best way
> > > > forward. Let's have a generic helper that does this, and use it
> > > > everywhere.
> > > 
> > > I'm open to suggestions, but as things stand, these kinds of
> > > treewide
> > 
> > On naming? Implementation is just as it stands, from_tasklet() is
> > totally generic which is why I objected to it. from_member()? Not
> > great with naming... But I can see this going further and then we'll
> > suddenly have tons of these. It's not good for readability.
> 
> Since both threads seem to have petered out, let me suggest in
> kernel.h:
> 
> #define cast_out(ptr, container, member) \
> 	container_of(ptr, typeof(*container), member)
> 
> It does what you want, the argument order is the same as container_of
> with the only difference being you name the containing structure
> instead of having to specify its type.

I like this! Shall I send this to Linus to see if this can land in -rc2
for use going forward?

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
