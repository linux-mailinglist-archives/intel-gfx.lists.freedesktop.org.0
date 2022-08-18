Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333BA5A0189
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 20:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D950C1404;
	Wed, 24 Aug 2022 18:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3769B055
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 00:12:35 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 r15-20020a17090a1bcf00b001fabf42a11cso284898pjr.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 17:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc; bh=youYpgIRDFxAeu4mwecp1uJBQGmjys1bezqPW12aWgE=;
 b=UCR5LbWjsytFslgCsE0jphSKIIfHXLrwqVIdtaHJDqbOgD76Dl4Wr+qhYX7/IvKijD
 4WoEsIzUrGO9kQPjVWIJsenuCTuX+zowr58KIuH8GsCEt2r1CYv4lazX3ywSlxgEYYul
 kdhWZJQ1Y8XGyCRBm1RimSxKT///eHxsN2DlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc;
 bh=youYpgIRDFxAeu4mwecp1uJBQGmjys1bezqPW12aWgE=;
 b=KOKiR12KVXl6jdQ5Kb8meLNlrLVSY7tcvDViqQOLlum6ssP6d+B/4PciRXXAExKIqw
 fYIT+g6skZRB2FMe10owHTiaVyixT1HnYHwcoGh3fXxi86apejcRgxv9Yi1/uMX+Y8gz
 LQWEyz9cUhT2+kgVN7QHdTqYn/iRbCy2SqJX9q7gLPHAi6T/1Sk/9tUwGn/tg1j4RROx
 pW/9vvOTGmxACjeBUUe7JHJwSgmfTg6A0TZJeV7KEVJs18ChiwZRfor5F8UWM9hMA6hA
 3Yoq5tDlsmoIsQzrjoBUv+yroTouxzzfRJywsLjxSQOZugof/Ok7cpABIprI3XeVfy3g
 b3ug==
X-Gm-Message-State: ACgBeo0USxTXZM3HQ82OzPIm9TWlGt+pRodTUDoZvuOwxAeuWhelkd/m
 qVp6/RkZkrqUF031Cr0GTLksKw==
X-Google-Smtp-Source: AA6agR5mRAF7yxfBbQaw/DoOtsDOwwfqBAVdzxdq+NcFYZRSYoRPkqalUG4Twt7hthHtdMe/eERHLg==
X-Received: by 2002:a17:902:7682:b0:170:a235:b5a2 with SMTP id
 m2-20020a170902768200b00170a235b5a2mr328051pll.113.1660781555349; 
 Wed, 17 Aug 2022 17:12:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 q28-20020a63f95c000000b00428c216467csm65439pgk.32.2022.08.17.17.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Aug 2022 17:12:34 -0700 (PDT)
Date: Wed, 17 Aug 2022 17:12:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <202208171657.63AE7AC@keescook>
References: <20220816093525.184940-1-gwan-gyeong.mun@intel.com>
 <20220816093525.184940-2-gwan-gyeong.mun@intel.com>
 <Yv10sQADwdZrIV42@alfio.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yv10sQADwdZrIV42@alfio.lan>
Subject: Re: [Intel-gfx] [PATCH v7 1/8] overflow: Move and add few utility
 macros into overflow
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
Cc: thomas.hellstrom@linux.intel.com, andrzej.hajda@intel.com,
 jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 chris@chris-wilson.co.uk, airlied@linux.ie, linux-hardening@vger.kernel.org,
 matthew.auld@intel.com, daniel@ffwll.ch, mchehab@kernel.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 18, 2022 at 01:07:29AM +0200, Andi Shyti wrote:
> Hi Kees,
> 
> would you mind taking a look at this patch?

Hi! Thanks for the heads-up!

> 
> Thanks,
> Andi
> 
> On Tue, Aug 16, 2022 at 06:35:18PM +0900, Gwan-gyeong Mun wrote:
> > It moves overflows_type utility macro into overflow header from i915_utils
> > header. The overflows_type can be used to catch the truncation between data
> > types. And it adds safe_conversion() macro which performs a type conversion
> > (cast) of an source value into a new variable, checking that the
> > destination is large enough to hold the source value. And the functionality
> > of overflows_type has been improved to handle the signbit.
> > The is_unsigned_type macro has been added to check the sign bit of the
> > built-in type.
> > 
> > v3: Add is_type_unsigned() macro (Mauro)
> >     Modify overflows_type() macro to consider signed data types (Mauro)
> >     Fix the problem that safe_conversion() macro always returns true
> > v4: Fix kernel-doc markups
> > v6: Move macro addition location so that it can be used by other than drm
> >     subsystem (Jani, Mauro, Andi)
> >     Change is_type_unsigned to is_unsigned_type to have the same name form
> >     as is_signed_type macro
> > 
> > Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Nirmoy Das <nirmoy.das@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org> (v5)
> > ---
> >  drivers/gpu/drm/i915/i915_utils.h |  5 +--
> >  include/linux/overflow.h          | 54 +++++++++++++++++++++++++++++++
> >  2 files changed, 55 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> > index c10d68cdc3ca..eb0ded23fa9c 100644
> > --- a/drivers/gpu/drm/i915/i915_utils.h
> > +++ b/drivers/gpu/drm/i915/i915_utils.h
> > @@ -32,6 +32,7 @@
> >  #include <linux/types.h>
> >  #include <linux/workqueue.h>
> >  #include <linux/sched/clock.h>
> > +#include <linux/overflow.h>
> >  
> >  #ifdef CONFIG_X86
> >  #include <asm/hypervisor.h>
> > @@ -111,10 +112,6 @@ bool i915_error_injected(void);
> >  #define range_overflows_end_t(type, start, size, max) \
> >  	range_overflows_end((type)(start), (type)(size), (type)(max))
> >  
> > -/* Note we don't consider signbits :| */
> > -#define overflows_type(x, T) \
> > -	(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
> > -
> >  #define ptr_mask_bits(ptr, n) ({					\
> >  	unsigned long __v = (unsigned long)(ptr);			\
> >  	(typeof(ptr))(__v & -BIT(n));					\
> > diff --git a/include/linux/overflow.h b/include/linux/overflow.h
> > index f1221d11f8e5..462a03454377 100644
> > --- a/include/linux/overflow.h
> > +++ b/include/linux/overflow.h
> > @@ -35,6 +35,60 @@
> >  #define type_max(T) ((T)((__type_half_max(T) - 1) + __type_half_max(T)))
> >  #define type_min(T) ((T)((T)-type_max(T)-(T)1))
> >  
> > +/**
> > + * is_unsigned_type - helper for checking data type which is an unsigned data
> > + * type or not
> > + * @x: The data type to check
> > + *
> > + * Returns:
> > + * True if the data type is an unsigned data type, false otherwise.
> > + */
> > +#define is_unsigned_type(x) ((typeof(x))-1 >= (typeof(x))0)

I'd rather not have separate logic for this. Instead, I'd like it to be:

#define is_unsigned_type(x) (!is_signed_type(x))

> > +
> > +/**
> > + * overflows_type - helper for checking the truncation between data types
> > + * @x: Source for overflow type comparison
> > + * @T: Destination for overflow type comparison
> > + *
> > + * It compares the values and size of each data type between the first and
> > + * second argument to check whether truncation can occur when assigning the
> > + * first argument to the variable of the second argument.
> > + * Source and Destination can be used with or without sign bit.
> > + * Composite data structures such as union and structure are not considered.
> > + * Enum data types are not considered.
> > + * Floating point data types are not considered.
> > + *
> > + * Returns:
> > + * True if truncation can occur, false otherwise.
> > + */
> > +#define overflows_type(x, T) \
> > +	(is_unsigned_type(x) ? \
> > +		is_unsigned_type(T) ? \
> > +			(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
> > +			: (sizeof(x) >= sizeof(T) && (x) >> (BITS_PER_TYPE(T) - 1)) ? 1 : 0 \
> > +	: is_unsigned_type(T) ? \
> > +		((x) < 0) ? 1 : (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
> > +		: (sizeof(x) > sizeof(T)) ? \
> > +			((x) < 0) ? (((x) * -1) >> BITS_PER_TYPE(T)) ? 1 : 0 \
> > +				: ((x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
> > +			: 0)

Like the other, I'd much rather this was rephrased in terms of the
existing macros (e.g. type_min()/type_max().)

> > +
> > +/**
> > + * safe_conversion - perform a type conversion (cast) of an source value into
> > + * a new variable, checking that the destination is large enough to hold the
> > + * source value.
> > + * @ptr: Destination pointer address
> > + * @value: Source value
> > + *
> > + * Returns:
> > + * If the value would overflow the destination, it returns false.
> > + */
> > +#define safe_conversion(ptr, value) ({ \
> > +	typeof(value) __v = (value); \
> > +	typeof(ptr) __ptr = (ptr); \
> > +	overflows_type(__v, *__ptr) ? 0 : ((*__ptr = (typeof(*__ptr))__v), 1); \
> > +})

I try to avoid "safe" as an adjective for interface names, since it
doesn't really answer "safe from what?" This looks more like "assign, but
zero when out of bounds". And it can be built from existing macros here:

	if (check_add_overflow(0, value, ptr))
		*ptr = 0;

I actually want to push back on this a bit, because there can still be
logic bugs built around this kind of primitive. Shouldn't out-of-bounds
assignments be seen as a direct failure? I would think this would be
sufficient:

#define check_assign(value, ptr)	check_add_overflow(0, value, ptr)

And callers would do:

	if (check_assign(value, &var))
		return -EINVAL;

etc.


-- 
Kees Cook
