Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D77544CBD86
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 13:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D1F10E2FE;
	Thu,  3 Mar 2022 12:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5155910E301
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 12:18:30 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id b5so7566170wrr.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Mar 2022 04:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W95klwG+EWnuJlXqfneyIPG4bMJIpYFCGfgCPBAo/s4=;
 b=BVoUYAMy6igzOx7YCxgmD2obGVeA4FBbFy39UaDXpcyotfQj1WSs4cD2dBmZ3jehpH
 Xv0H27JfD7LtNc3KTOYt5JsPQaESLbVZdrRIjVdCS/EqEN+LtHV3OI92ZhbhaxnOPsMB
 zwIbvmQMtvcWtqQz/AOpNYfJzkMTFsv4hojr0PuJEFUbZHgxYNi3BKpDV1mgkUzm+fR0
 4lMaaRE5yh5PGutSdpreHiYAqhMDl6KUHTvi2q6aV5S93rhbYz2wGWOzwPq3hB3YVbYG
 uAhL64o8wkOM/gpLUr2Hb7oB/DraMZLkoBj2jGHmKGFPjyxdoWyrLbd/6WyXGtmMO48w
 vp2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W95klwG+EWnuJlXqfneyIPG4bMJIpYFCGfgCPBAo/s4=;
 b=r+3v2z1H5sX+TTLM6ij853GSp2aUDSzi9R5NyPSR28GaU55gQeRRAf9zH5k+5pCN4u
 EzvLvA8HXArEHTO8m5BKqrU/2eeAmI/9qsiu2FYnjMvSnGCfE02aQF6ZbbcGcJ49FwRQ
 5a+L5BPfikq9SpuGpd6lkGzLCj3qR3G7ihfJGzltfa9NkyNVHIUSg5uhWWM7iGffMRYs
 I7nfFC5zvu9tJDAzY2ngkL542Bo42X+Sv7K6iKXCdXpiYMqhqpJRUPyZyC1BMDVH18Tp
 f7CgGHho4ABK1OOT49z1ZsIHE407TPIU4wA4ziHH6lxepK7staQa4zLMRzOZ/jGYuige
 QpEw==
X-Gm-Message-State: AOAM530vRkMLLMOoMhvG394kxb9C5ADO2HRt3CU87ibFECYoNI0iOj5a
 +a/OD2yvitirOrBar66v6/90xg==
X-Google-Smtp-Source: ABdhPJwgYeUN7RS9hQRShRziePljKQd/1cMutSSEkk4MeQ2QRRtTjZSLz5QSndDd2pML49XlqkHAqw==
X-Received: by 2002:a5d:6d0d:0:b0:1e8:7b6a:38e7 with SMTP id
 e13-20020a5d6d0d000000b001e87b6a38e7mr26568054wrq.625.1646309908722; 
 Thu, 03 Mar 2022 04:18:28 -0800 (PST)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net.
 [80.7.220.175]) by smtp.gmail.com with ESMTPSA id
 p6-20020a5d4586000000b001f0436cb325sm1774600wrq.52.2022.03.03.04.18.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 04:18:28 -0800 (PST)
Date: Thu, 3 Mar 2022 12:18:24 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Xiaomeng Tong <xiam0nd.tong@gmail.com>
Message-ID: <20220303121824.qdyrognluik74iph@maple.lan>
References: <39404befad5b44b385698ff65465abe5@AcuMS.aculab.com>
 <20220303072657.11124-1-xiam0nd.tong@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220303072657.11124-1-xiam0nd.tong@gmail.com>
Subject: Re: [Intel-gfx] [Kgdb-bugreport] [PATCH 2/6] treewide: remove using
 list iterator after loop body as a ptr
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
Cc: linux-wireless@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-aspeed@lists.ozlabs.org, gustavo@embeddedor.com,
 linux-iio@vger.kernel.org, kgdb-bugreport@lists.sourceforge.net,
 linux@rasmusvillemoes.dk, dri-devel@lists.freedesktop.org, c.giuffrida@vu.nl,
 amd-gfx@lists.freedesktop.org, linux1394-devel@lists.sourceforge.net,
 drbd-dev@lists.linbit.com, linux-arch@vger.kernel.org,
 linux-cifs@vger.kernel.org, kvm@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev, h.j.bos@vu.nl,
 jgg@ziepe.ca, intel-wired-lan@lists.osuosl.org, nouveau@lists.freedesktop.org,
 bcm-kernel-feedback-list@broadcom.com, dan.carpenter@oracle.com,
 linux-media@vger.kernel.org, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linuxppc-dev@lists.ozlabs.org, bjohannesmeyer@gmail.com,
 linux-block@vger.kernel.org, dmaengine@vger.kernel.org,
 christophe.jaillet@wanadoo.fr, jakobkoschel@gmail.com,
 v9fs-developer@lists.sourceforge.net, linux-tegra@vger.kernel.org,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-sgx@vger.kernel.org,
 nathan@kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, david.laight@aculab.com,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 akpm@linux-foundation.org, torvalds@linux-foundation.org,
 christian.koenig@amd.com, rppt@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 03, 2022 at 03:26:57PM +0800, Xiaomeng Tong wrote:
> On Thu, 3 Mar 2022 04:58:23 +0000, David Laight wrote:
> > on 3 Mar 2022 10:27:29 +0800, Xiaomeng Tong wrote:
> > > The problem is the mis-use of iterator outside the loop on exit, and
> > > the iterator will be the HEAD's container_of pointer which pointers
> > > to a type-confused struct. Sidenote: The *mis-use* here refers to
> > > mistakely access to other members of the struct, instead of the
> > > list_head member which acutally is the valid HEAD.
> >
> > The problem is that the HEAD's container_of pointer should never
> > be calculated at all.
> > This is what is fundamentally broken about the current definition.
> 
> Yes, the rule is "the HEAD's container_of pointer should never be
> calculated at all outside the loop", but how do you make sure everyone
> follows this rule?

Your formulation of the rule is correct: never run container_of() on HEAD
pointer.

However the rule that is introduced by list_for_each_entry_inside() is
*not* this rule. The rule it introduces is: never access the iterator
variable outside the loop.

Making the iterator NULL on loop exit does follow the rule you proposed
but using a different technique: do not allow HEAD to be stored in the
iterator variable after loop exit. This also makes it impossible to run
container_of() on the HEAD pointer.


> Everyone makes mistakes, but we can eliminate them all from the beginning
> with the help of compiler which can catch such use-after-loop things.

Indeed but if we introduce new interfaces then we don't have to worry
about existing usages and silent regressions. Code will have been
written knowing the loop can exit with the iterator set to NULL.

Sure it is still possible for programmers to make mistakes and
dereference the NULL pointer but C programmers are well training w.r.t.
NULL pointer checking so such mistakes are much less likely than with
the current list_for_each_entry() macro. This risk must be offset
against the way a NULLify approach can lead to more elegant code when we
are doing a list search.


Daniel.
