Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCAC616DDD
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 20:33:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D092B10E5A2;
	Wed,  2 Nov 2022 19:33:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA1C810E5A5
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 19:33:35 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id 4so17577343pli.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Nov 2022 12:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Is8uxYlhyk8bBxYXj/AJ+5Ed7risnbmV/bZZuRONlGw=;
 b=YgTo3g4CWnxassQXwnQGCJRK8UV2dkG1gd5qUAMt9TS//89B3+EgDk8JBHMqQRWbqE
 SasIIt6rr9pasf/tRkH/JpmtucjEENqYnz4Ij31JPs/tyYvKfhh0Xab/ZL8Kv52Brl9z
 k+6eHolz1b5J42Hw8E/CNYhE3n7UgliU9iEI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Is8uxYlhyk8bBxYXj/AJ+5Ed7risnbmV/bZZuRONlGw=;
 b=JILWv0x9//xdJMuDb26PlOyIbl/zTMncFMLbLD89ismq/VE6tnfOnEfygkUEXLCAHH
 rQ2wgvVzoCyAiaxAVVXa2TFnkNzTiU0HJ9ugZy7LxBkZDzJ9lMUNXGOox8sD5v2HXWZv
 GJMqIYI+4n272GoMc8L4vGJcI1wzJX7bwHk7A9cd5OpM744IV/iozaoX8Z6gNe0S20fg
 FXCBoyomP5l4pQBbpue8xTODOlIOyMW568zezUYKNufdZxzCBwmUNSquP7XqAno5oREW
 reaoihVN1PzYf6AEIR/42ageLupTdsqknMkcIJQReWZQ2phgqAkaSPyUY2AkzImBXBxH
 MY5A==
X-Gm-Message-State: ACrzQf3hTtGbDPpcEBhPyCfnlmbY0RNymoXJsXvKcG0EeUXebktBWkvt
 Kar7k3BhjceWaylDkKsI+20T1g==
X-Google-Smtp-Source: AMsMyM53U0WVK/IltYw2wXUwLPZJui+ftOfV8T9ZqcZx2iahytioyLerdzpOUR84Yg1+mPoG2ixzFA==
X-Received: by 2002:a17:902:7446:b0:186:a3a1:782d with SMTP id
 e6-20020a170902744600b00186a3a1782dmr26452013plt.76.1667417615186; 
 Wed, 02 Nov 2022 12:33:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 s7-20020a170902988700b001811a197797sm8605891plp.194.2022.11.02.12.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Nov 2022 12:33:34 -0700 (PDT)
Date: Wed, 2 Nov 2022 12:33:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Message-ID: <202211021233.02BF0D38@keescook>
References: <20220926191109.1803094-1-keescook@chromium.org>
 <20221024201125.1416422-1-gwan-gyeong.mun@intel.com>
 <307b90cb-b80d-6ce3-14ae-4a0b2ee5e447@prevas.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <307b90cb-b80d-6ce3-14ae-4a0b2ee5e447@prevas.dk>
Subject: Re: [Intel-gfx] [PATCH v5] overflow: Introduce overflows_type() and
 castable_to_type()
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
Cc: airlied@linux.ie, trix@redhat.com, dlatypov@google.com,
 dri-devel@lists.freedesktop.org, gustavoars@kernel.org,
 linux-hardening@vger.kernel.org, linux-sparse@vger.kernel.org,
 llvm@lists.linux.dev, arnd@kernel.org, intel-gfx@lists.freedesktop.org,
 nathan@kernel.org, rodrigo.vivi@intel.com, mchehab@kernel.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 vitor@massaru.org, luc.vanoostenryck@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 02, 2022 at 12:52:32PM +0100, Rasmus Villemoes wrote:
> On 24/10/2022 22.11, Gwan-gyeong Mun wrote:
> > From: Kees Cook <keescook@chromium.org>
> > 
> > Implement a robust overflows_type() macro to test if a variable or
> > constant value would overflow another variable or type. This can be
> > used as a constant expression for static_assert() (which requires a
> > constant expression[1][2]) when used on constant values. This must be
> > constructed manually, since __builtin_add_overflow() does not produce
> > a constant expression[3].
> > 
> > Additionally adds castable_to_type(), similar to __same_type(), but for
> > checking if a constant value would overflow if cast to a given type.
> > 
> 
> > +#define __overflows_type_constexpr(x, T) (			\
> > +	is_unsigned_type(typeof(x)) ?				\
> > +		(x) > type_max(typeof(T)) ? 1 : 0		\
> > +	: is_unsigned_type(typeof(T)) ?				\
> > +		(x) < 0 || (x) > type_max(typeof(T)) ? 1 : 0	\
> > +		: (x) < type_min(typeof(T)) ||			\
> > +		  (x) > type_max(typeof(T)) ? 1 : 0)
> > +
> 
> Can't all these instances of "foo ? 1 : 0" be simplified to "foo"? That
> would improve the readability of this thing somewhat IMO.

Oh, good point. :P I'll fix these.

-- 
Kees Cook
