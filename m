Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2B54CB06C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 21:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D67FA10E19C;
	Wed,  2 Mar 2022 20:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236D810E18A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 20:59:30 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id o23so2638053pgk.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Mar 2022 12:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=R/oQqieG0aXWXHs93Td97reRxAIjZoSgBmUtDJFVhjU=;
 b=d2ZFN7FzXJICmnX4Tyt0wAx0nHny3V7g7RBF7BzoFi4JqvMjvTlFe6r9CSmtZHYpfY
 sI7cCbacBhQSn0c2nYjk/wWGRSWn9quhJSSynH9lMYRKPPdVW/LYlF+HQ4F3tfS4GoN+
 rfxT6gA9HHGJJFfNnOWheyqKpysRyPxkd0f8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R/oQqieG0aXWXHs93Td97reRxAIjZoSgBmUtDJFVhjU=;
 b=y61xNmiRS9/WxCHrQdWZrYtP6CxCcfi8EeerlUK+XZRpgjxYm2UddCFUwSPABZtjaY
 9wJEJ53XRHQk87/7DjRVqukvef0eV7yNLJaaptdAVHeX79zTKgIKjfmk+y5OZSTijNN3
 /76VNT5H8P0N4vHjwtCjAagDerV7D/ZYQ8iutxA+XjD+7ohaBJXLXissHKlpUvdaLQS2
 rEKLHgtgLIyopBwyFlycjIQqM5GM+LOPZRqdXhoJNKqEi6SpDzm67pP4OsoLnbDVBl9/
 7yOJ/hf4UgiwQ5O3TtG/gb4aKoz96TaHWt92/EhmcqR9z0l0bzN0ORTHhK5bmngAqHFj
 QGLg==
X-Gm-Message-State: AOAM531lHHF9AWVVdfVkRab3zAGuU0K7ara0Udl2XwSqzcjz3K38IqYO
 1SRjYrXMS2qGIBV/Oa4gnB36ag==
X-Google-Smtp-Source: ABdhPJwV5Vftpu3BNFYOd1YAI3xcgBfQbmCq2DPnKYT59xnVma61vCMoUamoUdgwMbiUWTPibOctJw==
X-Received: by 2002:a63:595e:0:b0:378:b203:a74e with SMTP id
 j30-20020a63595e000000b00378b203a74emr13280856pgm.328.1646254769698; 
 Wed, 02 Mar 2022 12:59:29 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 z9-20020a655a49000000b00373459df190sm58337pgs.35.2022.03.02.12.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 12:59:29 -0800 (PST)
Date: Wed, 2 Mar 2022 12:59:28 -0800
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <202203021256.69D7C4BCA6@keescook>
References: <7D0C2A5D-500E-4F38-AD0C-A76E132A390E@kernel.org>
 <73fa82a20910c06784be2352a655acc59e9942ea.camel@HansenPartnership.com>
 <CAHk-=wiT5HX6Kp0Qv4ZYK_rkq9t5fZ5zZ7vzvi6pub9kgp=72g@mail.gmail.com>
 <7dc860874d434d2288f36730d8ea3312@AcuMS.aculab.com>
 <CAHk-=whKqg89zu4T95+ctY-hocR6kDArpo2qO14-kV40Ga7ufw@mail.gmail.com>
 <0ced2b155b984882b39e895f0211037c@AcuMS.aculab.com>
 <CAHk-=wix0HLCBs5sxAeW3uckg0YncXbTjMsE-Tv8WzmkOgLAXQ@mail.gmail.com>
 <78ccb184-405e-da93-1e02-078f90d2b9bc@rasmusvillemoes.dk>
 <202203021158.DB5204A0@keescook>
 <CAHk-=wikKPC0LUqZ8++EC5JOvGdBqVH9uUaTX=DvBioDoReYww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wikKPC0LUqZ8++EC5JOvGdBqVH9uUaTX=DvBioDoReYww@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 2/6] treewide: remove using list iterator
 after loop body as a ptr
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 "samba-technical@lists.samba.org" <samba-technical@lists.samba.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 KVM list <kvm@vger.kernel.org>, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kgdb-bugreport@lists.sourceforge.net" <kgdb-bugreport@lists.sourceforge.net>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Arnd Bergman <arnd@arndb.de>, Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-sgx@vger.kernel.org" <linux-sgx@vger.kernel.org>,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 David Laight <David.Laight@aculab.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 dma <dmaengine@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 02, 2022 at 12:18:45PM -0800, Linus Torvalds wrote:
> On Wed, Mar 2, 2022 at 12:07 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > I've long wanted to change kfree() to explicitly set pointers to NULL on
> > free. https://github.com/KSPP/linux/issues/87
> 
> We've had this discussion with the gcc people in the past, and gcc
> actually has some support for it, but it's sadly tied to the actual
> function name (ie gcc has some special-casing for "free()")
> 
> See
> 
>     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94527
> 
> for some of that discussion.
> 
> Oh, and I see some patch actually got merged since I looked there last
> so that you can mark "deallocator" functions, but I think it's only
> for the context matching, not for actually killing accesses to the
> pointer afterwards.

Ah! I missed that getting added in GCC 11. But yes, there it is:

https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-malloc-function-attribute

Hah, now we may need to split __malloc from __alloc_size. ;)

I'd still like the NULL assignment behavior, though, since some things
can easily avoid static analysis.

-- 
Kees Cook
