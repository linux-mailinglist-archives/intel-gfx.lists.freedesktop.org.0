Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD1FA172DA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 19:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A67210E0EF;
	Mon, 20 Jan 2025 18:55:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFvAl9J+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6C910E0EF;
 Mon, 20 Jan 2025 18:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737399344; x=1768935344;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=op5oAGTrMnHrTtMQubTxdXMZzxdcxLlUbJi6A9RKoMo=;
 b=kFvAl9J++kqXxw+iTf4gegBU1CW0bMQ/fXZrG65Glv5VazIRkIBXHHPU
 vmSxFQ2kFYsZJX9rCgdhmBp3qudaJkU9AG6RfLCLW4ndVQQkH005GmcLe
 S5IYEbnMwW2E7e4RhRInPfrATr4lqBIN7n29N3lWtgibkQWHousE7Ntnf
 EscLADCa4lflxV63j6a5hA+Sh3ANYNWvRQbJsQVDIgCb78KgwFRaDuD0Q
 rp7yjRgeg/87QYtACkzRzLXiPzzC+bWAHbRyv7lRyx6tbjIaEUB0a0riQ
 I1vU1vLzm/JjjtRgCcYn/CvrYBLcTfTxXaXoUOVsN3vhjmjKh0ZyssMbs w==;
X-CSE-ConnectionGUID: By8NL2GKSbGqw+Mo4gLBQQ==
X-CSE-MsgGUID: Oxntx4tYSC6sb5+yWJdWBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37718314"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37718314"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 10:55:43 -0800
X-CSE-ConnectionGUID: p5dQ9kclQL6q2hlmyNaNeg==
X-CSE-MsgGUID: yU17x0vTTAasbq8m/yd+eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="107205604"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 10:55:39 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1tZwvv-00000003XJZ-0XDD; Mon, 20 Jan 2025 20:55:35 +0200
Date: Mon, 20 Jan 2025 20:55:34 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: David Laight <david.laight.linux@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>,
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>,
 Mateusz Guzik <mjguzik@gmail.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: Buiild error in i915/xe
Message-ID: <Z46cJiyntl9eyXTI@smile.fi.intel.com>
References: <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
 <20250119090935.7c690f85@pumpkin> <87ed0xrcb8.fsf@intel.com>
 <20250120111551.435176c4@pumpkin> <878qr5ras2.fsf@intel.com>
 <0a65de6c-74d5-4d3e-be75-0aa9ecc82da1@roeck-us.net>
 <20250120184143.47615b21@pumpkin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250120184143.47615b21@pumpkin>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Jan 20, 2025 at 06:41:43PM +0000, David Laight wrote:
> On Mon, 20 Jan 2025 06:15:30 -0800
> Guenter Roeck <linux@roeck-us.net> wrote:
> > On 1/20/25 03:21, Jani Nikula wrote:
> > > On Mon, 20 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:  
> > >> On Mon, 20 Jan 2025 12:48:11 +0200
> > >> Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > >>> On Sun, 19 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:  
> > >>>> On Sat, 18 Jan 2025 14:58:48 -0800
> > >>>> Guenter Roeck <linux@roeck-us.net> wrote:
> > >>>>> On 1/18/25 14:11, David Laight wrote:  
> > >>>>>> On Sat, 18 Jan 2025 13:21:39 -0800
> > >>>>>> Linus Torvalds <torvalds@linux-foundation.org> wrote:
> > >>>>>>> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:  
> > >>>>>>>>
> > >>>>>>>> No idea why the compiler would know that the values are invalid.  
> > >>>>>>>
> > >>>>>>> It's not that the compiler knows tat they are invalid, but I bet what
> > >>>>>>> happens is in scale() (and possibly other places that do similar
> > >>>>>>> checks), which does this:
> > >>>>>>>
> > >>>>>>>           WARN_ON(source_min > source_max);
> > >>>>>>>           ...
> > >>>>>>>           source_val = clamp(source_val, source_min, source_max);
> > >>>>>>>
> > >>>>>>> and the compiler notices that the ordering comparison in the first
> > >>>>>>> WARN_ON() is the same as the one in clamp(), so it basically converts
> > >>>>>>> the logic to
> > >>>>>>>
> > >>>>>>>           if (source_min > source_max) {
> > >>>>>>>                   WARN(..);
> > >>>>>>>                   /* Do the clamp() knowing that source_min > source_max */
> > >>>>>>>                   source_val = clamp(source_val, source_min, source_max);
> > >>>>>>>           } else {
> > >>>>>>>                   /* Do the clamp knowing that source_min <= source_max */
> > >>>>>>>                   source_val = clamp(source_val, source_min, source_max);
> > >>>>>>>           }
> > >>>>>>>
> > >>>>>>> (obviously I dropped the other WARN_ON in the conversion, it wasn't
> > >>>>>>> relevant for this case).
> > >>>>>>>
> > >>>>>>> And now that first clamp() case is done with source_min > source_max,
> > >>>>>>> and it triggers that build error because that's invalid.
> > >>>>>>>
> > >>>>>>> So the condition is not statically true in the *source* code, but in
> > >>>>>>> the "I have moved code around to combine tests" case it now *is*
> > >>>>>>> statically true as far as the compiler is concerned.  
> > >>>>>>
> > >>>>>> Well spotted :-)
> > >>>>>>
> > >>>>>> One option would be to move the WARN_ON() below the clamp() and
> > >>>>>> add an OPTIMISER_HIDE_VAR(source_max) between them.
> > >>>>>>
> > >>>>>> Or do something more sensible than the WARN().
> > >>>>>> Perhaps return target_min on any such errors?
> > >>>>>>        
> > >>>>>
> > >>>>> This helps:
> > >>>>>
> > >>>>> -       WARN_ON(source_min > source_max);
> > >>>>> -       WARN_ON(target_min > target_max);
> > >>>>> -
> > >>>>>           /* defensive */
> > >>>>>           source_val = clamp(source_val, source_min, source_max);
> > >>>>>
> > >>>>> +       WARN_ON(source_min > source_max);
> > >>>>> +       WARN_ON(target_min > target_max);  
> > >>>>
> > >>>> That is a 'quick fix' ...
> > >>>>
> > >>>> Much better would be to replace the WARN() with (say):
> > >>>> 	if (target_min >= target_max)
> > >>>> 		return target_min;
> > >>>> 	if (source_min >= source_max)
> > >>>> 		return target_min + (target_max - target_min)/2;
> > >>>> So that the return values are actually in range (in as much as one is defined).
> > >>>> Note that the >= cpmparisons also remove a divide by zero.  
> > >>>
> > >>> I want the loud and early warnings for clear bugs instead of
> > >>> "gracefully" silencing the errors only to be found through debugging
> > >>> user reports.  
> > >>
> > >> A user isn't going to notice a WARN() - not until you tell them to look for it.
> > >> In any case even if you output a message you really want to return a 'sane'
> > >> value, who knows what effect a very out of range value is going to have.  
> > > 
> > > The point is, we'll catch the WARN in CI before it goes out to users.
> > 
> > It isn't going to catch the divide by 0 error, and it obviously doesn't
> > catch the build problem on parisc with gcc 13.x because the CI isn't
> > testing it.
> > 
> > How about disabling DRM_XE on architectures where it isn't supported,
> > matching DRM_I915 ?
> 
> That'll just bite back later.
> As Linus spotted the compiler is just 'optimising' some code paths.
> It could happen for any architecture including x64.
> The repeated tests are basically slightly odd, although you might only
> expect them to be present in debug builds.
> 
> An alternative would be to replace the clamp() with:
> 	if (source_val <= source_min)
> 		return target_min;
> 	if (source_val >= source_max)
> 		return target_max;

Excuse me if I am missing something, but clamp() has a warning inside it, correct?
Why do wee need an additional warning on top of that?

P.S. However, I agree that ideally clamp() should work independently on the
caller to use WARN*() or other similar stuff.

-- 
With Best Regards,
Andy Shevchenko


