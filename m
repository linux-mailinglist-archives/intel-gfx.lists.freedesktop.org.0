Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8AA65EF7F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 15:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D617110E749;
	Thu,  5 Jan 2023 14:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B29410E749
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 14:57:29 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id m21so53054937edc.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Jan 2023 06:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cnMM9dmDy0UYjeQdM2kdFONVbeL3DmCLOSrpZuenzSE=;
 b=cxKT+08iQLqdxLo/NZzTA1i0br5L9ZplMKdcirhtOLcAQF3rkk9Jv/xsU/bPbLjqqa
 oz1C9ww38gkWy30ndY6dBZQKU1YrBUuE2USGalgGHYyzjqMXneCKV27UK83dZ7PijZJL
 ZKDPZ0dJ4q21zEGC6qIQuNWraOSz/KGkssJi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cnMM9dmDy0UYjeQdM2kdFONVbeL3DmCLOSrpZuenzSE=;
 b=UdsVcFgOhknB3OJQTJ7ou6ciBrfEWVXTrzjaLUZ9p9zZtAvxDYTnrEOtboZtQOfM2G
 NPwJ3JUP/axplh7wuNE0zBLI8GnaCnV1Do1+g1nZU05PHipnAt8Jga5fXbArk5pKb0hw
 H8d28SGFRjlFivI6vWpoFxs+aSMFm2dYYDGIa0sNXdoZPFD2TeOko6G5lLCcbPbHu9T7
 54qU6li8w7GRkp1Q3URi/JBkiBMRJHGNLE0vk+oHReqYn3b7NVYz305WezUKyC6Fkt1u
 jbClgCTSOYVPPVsU5kKJj7TWY6IQlB7vzcNESbmumEF2OpvFY3C9KO1qowVrl9vzjaQw
 kLRg==
X-Gm-Message-State: AFqh2kpnphQfHPI1ofNhYt1KKhVaLAnQCN6aTVIRpVUSA/rebSX3htLv
 E1UwT7p94eHTRP1ktdL4xG7ugA==
X-Google-Smtp-Source: AMrXdXvF7L5B5GBanECOafcWepySfexWzyi2K8fAorebrbfRZUrRPP/2pXvmSKokuD1NVf3YmTXEWw==
X-Received: by 2002:aa7:d653:0:b0:47e:15ec:155e with SMTP id
 v19-20020aa7d653000000b0047e15ec155emr42265233edr.26.1672930648017; 
 Thu, 05 Jan 2023 06:57:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 h26-20020a0564020e9a00b004822681a671sm15048873eda.37.2023.01.05.06.57.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Jan 2023 06:57:27 -0800 (PST)
Date: Thu, 5 Jan 2023 15:57:25 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: David Laight <David.Laight@aculab.com>
Message-ID: <Y7blVTSogV2miG8+@phenom.ffwll.local>
Mail-Followup-To: David Laight <David.Laight@aculab.com>,
 'Jani Nikula' <jani.nikula@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 'Andrzej Hajda' <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20221209154843.4162814-1-andrzej.hajda@intel.com>
 <f58ab17e5c6c4a4e8b0d687b44618c51@AcuMS.aculab.com>
 <Y7bK8drngH/NIlOa@phenom.ffwll.local> <875ydlw1p4.fsf@intel.com>
 <733cd0037bd14a269b54d701e1b80323@AcuMS.aculab.com>
 <Y7ba8UlkhjpJI4F0@phenom.ffwll.local>
 <6617dfb150f94cbb9654a585843e3287@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6617dfb150f94cbb9654a585843e3287@AcuMS.aculab.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/5] linux/minmax.h: add non-atomic version
 of xchg
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
Cc: 'Andrzej Hajda' <andrzej.hajda@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 'Daniel Vetter' <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 02:41:43PM +0000, David Laight wrote:
> From: Daniel Vetter
> > Sent: 05 January 2023 14:13
> ...
> > > > So here we are, with Andrzej looking to add the common helper. And the
> > > > same concerns crop up. What should it be called to make it clear that
> > > > it's not atomic? Is that possible?
> > >
> > > old_value = read_write(variable, new_value);
> > >
> > > But two statements are much clearer.
> > 
> > Yeah this is my point for fetch_and_zero or any of the other proposals.
> > We're essentially replacing these two lines:
> > 
> > 	var = some->pointer->chase;
> > 	some->pointer->chase = NULL;
> > 
> > with a macro. C is verbose, and sometimes painfully so,
> 
> Try ADA or VHDL :-)
> 
> > if the pointer
> > chase is really to onerous then I think that should be refactored with a
> > meaningfully locally name variable, not fancy macros wrapped around to
> > golf a few characters away.
> 
> Provided 'var' is a local the compiler is pretty likely to only do the
> 'pointer chase' once.
> You can also do:
> 	var = NULL;
> 	swap(some->pointer->chase, var);
> and get pretty much the same object code.
> 
> > But what about swap() you ask? That one needs a temp variable, and it does
> > make sense to hide that in a ({}) block in a macro.
> 
> Sometimes, but not enough for the 'missed opportunity for swap()'
> message. 
> 
> > But for the above two
> > lines I really don't see a point outside of obfuscated C contexts.
> 
> Indeed.
> 
> Isn't the suggested __xchg() in one of the 'reserved for implementation'
> namespaces - so shouldn't be a function that might be expected to be
> actually used.

It's more fun, for the atomic functions which don't have the atomic_
prefix in their names, the __ prefixed versions provide the non-atomic
implementation.  This pattern was started with the long * bitops stuff for
managing really big bitmasks.

And I really don't think it's a great function name scheme that we should
proliferate.

The "reserved for implementation" only applies to the standard C library
in userspace, which the kernel doesn't use, so can fairly freely use that
namespace.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
