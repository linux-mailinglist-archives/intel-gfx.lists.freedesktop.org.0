Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3B0A16B72
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 12:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C1510E3C2;
	Mon, 20 Jan 2025 11:21:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HM1dDPBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7913810E050;
 Mon, 20 Jan 2025 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737372087; x=1768908087;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Bqm7nHO1/aCxnCIrdM+FoX3RzC8TchksMVJHfy7cAHU=;
 b=HM1dDPBBsIYZdWlPR41rZxVvLDh6sPONg3bGF+D5CAshCIup077GKcFU
 JdXAfGwHn9RDgfWifj2WgwElNsnC/bJkXkIijLwNZ28Rza6JMFELjETVh
 Utp+GKLFCn29XKTVirb4h4QRjodOTrlw4mQfMJj0MXd3TI+oPhpUqEA1F
 rMXfyUEYZJYrgXp7zEijnynil1SQkWYWvreh63VHJkR0yQMOttlE/XRkg
 Ht18KTgcZKWZ1YE3r/0H7FcoRhCoebto8fQJ0MrMlGYl4MlTTANJwrKI9
 RzFe9g9TPFC9MUYvs7SJv4MLBSnaJFxA/hXpCrWS9nKFZ9/5FNxWrB0u0 w==;
X-CSE-ConnectionGUID: CMbhzMhjRDisixqqS0JZFg==
X-CSE-MsgGUID: R8SriYKcSVSTLfmy9aQhtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="37917874"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="37917874"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 03:21:27 -0800
X-CSE-ConnectionGUID: MvDLfc5CTomhxALmG/Ajug==
X-CSE-MsgGUID: SntxViPMT/+ezMNA1rOSfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="107017049"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 03:21:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: David Laight <david.laight.linux@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Linus Torvalds
 <torvalds@linux-foundation.org>, David Laight <David.Laight@aculab.com>,
 Arnd Bergmann <arnd@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>, Matthew
 Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>, Andrew
 Morton <akpm@linux-foundation.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Dan Carpenter
 <dan.carpenter@linaro.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>, Mateusz Guzik
 <mjguzik@gmail.com>, "linux-mm@kvack.org" <linux-mm@kvack.org>, Lorenzo
 Stoakes <lorenzo.stoakes@oracle.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Simona
 Vetter <simona@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: Buiild error in i915/xe
In-Reply-To: <20250120111551.435176c4@pumpkin>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
 <20250119090935.7c690f85@pumpkin> <87ed0xrcb8.fsf@intel.com>
 <20250120111551.435176c4@pumpkin>
Date: Mon, 20 Jan 2025 13:21:17 +0200
Message-ID: <878qr5ras2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 20 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:
> On Mon, 20 Jan 2025 12:48:11 +0200
> Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
>> On Sun, 19 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:
>> > On Sat, 18 Jan 2025 14:58:48 -0800
>> > Guenter Roeck <linux@roeck-us.net> wrote:
>> >  
>> >> On 1/18/25 14:11, David Laight wrote:  
>> >> > On Sat, 18 Jan 2025 13:21:39 -0800
>> >> > Linus Torvalds <torvalds@linux-foundation.org> wrote:
>> >> >     
>> >> >> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:    
>> >> >>>
>> >> >>> No idea why the compiler would know that the values are invalid.    
>> >> >>
>> >> >> It's not that the compiler knows tat they are invalid, but I bet what
>> >> >> happens is in scale() (and possibly other places that do similar
>> >> >> checks), which does this:
>> >> >>
>> >> >>          WARN_ON(source_min > source_max);
>> >> >>          ...
>> >> >>          source_val = clamp(source_val, source_min, source_max);
>> >> >>
>> >> >> and the compiler notices that the ordering comparison in the first
>> >> >> WARN_ON() is the same as the one in clamp(), so it basically converts
>> >> >> the logic to
>> >> >>
>> >> >>          if (source_min > source_max) {
>> >> >>                  WARN(..);
>> >> >>                  /* Do the clamp() knowing that source_min > source_max */
>> >> >>                  source_val = clamp(source_val, source_min, source_max);
>> >> >>          } else {
>> >> >>                  /* Do the clamp knowing that source_min <= source_max */
>> >> >>                  source_val = clamp(source_val, source_min, source_max);
>> >> >>          }
>> >> >>
>> >> >> (obviously I dropped the other WARN_ON in the conversion, it wasn't
>> >> >> relevant for this case).
>> >> >>
>> >> >> And now that first clamp() case is done with source_min > source_max,
>> >> >> and it triggers that build error because that's invalid.
>> >> >>
>> >> >> So the condition is not statically true in the *source* code, but in
>> >> >> the "I have moved code around to combine tests" case it now *is*
>> >> >> statically true as far as the compiler is concerned.    
>> >> > 
>> >> > Well spotted :-)
>> >> > 
>> >> > One option would be to move the WARN_ON() below the clamp() and
>> >> > add an OPTIMISER_HIDE_VAR(source_max) between them.
>> >> > 
>> >> > Or do something more sensible than the WARN().
>> >> > Perhaps return target_min on any such errors?
>> >> >     
>> >> 
>> >> This helps:
>> >> 
>> >> -       WARN_ON(source_min > source_max);
>> >> -       WARN_ON(target_min > target_max);
>> >> -
>> >>          /* defensive */
>> >>          source_val = clamp(source_val, source_min, source_max);
>> >> 
>> >> +       WARN_ON(source_min > source_max);
>> >> +       WARN_ON(target_min > target_max);  
>> >
>> > That is a 'quick fix' ...
>> >
>> > Much better would be to replace the WARN() with (say):
>> > 	if (target_min >= target_max)
>> > 		return target_min;
>> > 	if (source_min >= source_max)
>> > 		return target_min + (target_max - target_min)/2;
>> > So that the return values are actually in range (in as much as one is defined).
>> > Note that the >= cpmparisons also remove a divide by zero.  
>> 
>> I want the loud and early warnings for clear bugs instead of
>> "gracefully" silencing the errors only to be found through debugging
>> user reports.
>
> A user isn't going to notice a WARN() - not until you tell them to look for it.
> In any case even if you output a message you really want to return a 'sane'
> value, who knows what effect a very out of range value is going to have.

The point is, we'll catch the WARN in CI before it goes out to users.

BR,
Jani.

>
> 	David
>
>

-- 
Jani Nikula, Intel
