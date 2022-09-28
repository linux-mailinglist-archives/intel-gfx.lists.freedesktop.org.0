Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B225EE2DE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 19:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0962910E4C4;
	Wed, 28 Sep 2022 17:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C5710E4C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 17:16:29 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id u8so2920131qvv.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 10:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=7vQ2L03NmZjTjKW7aYlNCJZqth3/yEDQLyW9BQRTAy8=;
 b=A+bgUQTLuISMRGKf3gH1kVvGmP3b/AaIOap7gHgA/PD0nbgpIKholTwlPXLri1af0K
 cnXmQYCXr6Teuy/PYE/inGfAxECxd/mCvZF/wqKa528cfQv970CHoLHSzLvnxIGoeg2I
 Wt438dq+Wr6ck6v+tRyZuqUTQ439HqIxvfrIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=7vQ2L03NmZjTjKW7aYlNCJZqth3/yEDQLyW9BQRTAy8=;
 b=AGSKAWGMiF0/NU4CkEYjJVD1jqrhkPdSgJR0jacbqGZ8s/DXndruL4f+Lv1/uxbMEu
 O6hqk8W6+n0s9mdU+GlSbMbf4z7HfKsiUgIieCbVDHh3ImKibfrUJsv5Q8IqVOcnYpvN
 LredFuU8OnO/LBehWvbowA/+oigCj5uITvDmFPnEV5Przu1SWjqp/SszmpTQOEaSb8iI
 AYMrUuLAJG6408tAV0hlscFzADDw6F2YSmNnPvyMblmHqGZhocyqO1l7SEGgqUodelA/
 UeSDm80fcoHyusqe8VO0TBGN5yD6in650bG3exGRdyFdtQBJUb/jyaUmSF6PC9PfPzg9
 39Rg==
X-Gm-Message-State: ACrzQf0gb9BbPtBnITS2RuXHjZ+gAAw2r2y9RSrfEkNIwwTMlh5xhhTI
 2mMfGXVaoZolvvwkh93DnY3a+vifsnMJ3w==
X-Google-Smtp-Source: AMsMyM7Sk7PU85Ksxcsw4FQm9Kw373WhnPdcuj8GWC2eEW3CUfqY3X8ZoI2CjA85l1x2ELQB6M9sow==
X-Received: by 2002:ad4:5aa3:0:b0:4a8:821d:5e69 with SMTP id
 u3-20020ad45aa3000000b004a8821d5e69mr27220276qvg.25.1664385388337; 
 Wed, 28 Sep 2022 10:16:28 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com.
 [209.85.219.175]) by smtp.gmail.com with ESMTPSA id
 dt39-20020a05620a47a700b006bbd2c4cccfsm3724506qkb.53.2022.09.28.10.16.27
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Sep 2022 10:16:28 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id 4so8592287ybe.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 10:16:27 -0700 (PDT)
X-Received: by 2002:a9d:2de3:0:b0:638:e210:c9da with SMTP id
 g90-20020a9d2de3000000b00638e210c9damr14921820otb.69.1664384960424; Wed, 28
 Sep 2022 10:09:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220928081300.101516-1-gwan-gyeong.mun@intel.com>
 <20220928081300.101516-6-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220928081300.101516-6-gwan-gyeong.mun@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 28 Sep 2022 10:09:04 -0700
X-Gmail-Original-Message-ID: <CAHk-=wivJwvVbMUKma8600F6qaVLZHT=BY90SEnjiHWw2ZUVEg@mail.gmail.com>
Message-ID: <CAHk-=wivJwvVbMUKma8600F6qaVLZHT=BY90SEnjiHWw2ZUVEg@mail.gmail.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v13 5/9] drm/i915: Check for integer
 truncation on scatterlist creation
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
Cc: gustavoars@kernel.org, trix@redhat.com, dlatypov@google.com,
 llvm@lists.linux.dev, linux@rasmusvillemoes.dk,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 linux-hardening@vger.kernel.org, andrzej.hajda@intel.com,
 linux-sparse@vger.kernel.org, matthew.auld@intel.com, airlied@redhat.com,
 thomas.hellstrom@linux.intel.com, keescook@chromium.org, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, nathan@kernel.org, mchehab@kernel.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 vitor@massaru.org, luc.vanoostenryck@gmail.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 28, 2022 at 1:15 AM Gwan-gyeong Mun
<gwan-gyeong.mun@intel.com> wrote:
>
> +       if (check_assign(obj->base.size >> PAGE_SHIFT, &npages))
> +               return -E2BIG;

I have to say, I find that new "check_assign()" macro use to be disgusting.

It's one thing to check for overflows.

It's another thing entirely to just assign something to a local variable.

This disgusting "let's check and assign" needs to die. It makes the
code a completely unreadable mess. The "user" wersion is even worse.

If you worry about overflow, then use a mix of

 (a) use a sufficiently large type to begin with

 (b) check for value range separately

and in this particular case, I also suspect that the whole range check
should have been somewhere else entirely - at the original creation of
that "obj" structure, not at one random end-point where it is used.

In other words, THIS WHOLE PATCH is just end-points checking the size
requirements of that "base.size" thing much too late, when it should
have been checked originally for some "maximum acceptable base size"
instead.

And that "maximum acceptable base size" should *not* be about "this is
the size of the variables we use". It should be a sanity check of
"this value is sane and fits in sane use cases".

Because "let's plug security checks" is most definitely not about
picking random assignments and saying "let's check this one". It's
about trying to catch things earlier than that.

Kees, you need to reign in the craziness in overflow.h.

                 Linus
