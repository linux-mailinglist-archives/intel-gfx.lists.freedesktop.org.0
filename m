Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC38CA17ED6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BA910E591;
	Tue, 21 Jan 2025 13:31:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NkDdpuhH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B6010E050;
 Mon, 20 Jan 2025 11:15:56 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-4364a37a1d7so43046845e9.3; 
 Mon, 20 Jan 2025 03:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737371754; x=1737976554; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Grk9J6/b9VBuQn2GFV1dMGR5fuj1yzKJkHNAQSI0qz8=;
 b=NkDdpuhH83HJiCvOa9U0dzgJ9HRhJpHKXnoyQ5wL9tAu9RKL7+5c5puIbIcKzISvAp
 2ffVxJSc8m9446krYUdph8WPl8RJgstsewthELH4lBgnXin3FXfIo9Hv1/NGe6PePjr/
 kyqix9yZ7kQb/Sp7Q1xfLMhTk1on+5WLZ0P50F39EQwOeMkL5wvIyfvbdHHiZ1B3+yHM
 w1/WlGj3QzIBGa0rGB1Fywdj/gJFnzZCop3seldBEcPVWrcoXevRgebIAYqXVp2jbRlt
 jfvYosQPVI4/MDy3K5Fdj6H99FpLkx2m7o2VvPJ+N4i3gVcBdmqETIdMZgPCxFjLtSjJ
 oVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737371754; x=1737976554;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Grk9J6/b9VBuQn2GFV1dMGR5fuj1yzKJkHNAQSI0qz8=;
 b=rpp5QktoiM+5qPhCL8ozEi15d4YK+kH1qZvPLyjFldHQHzMu2o+V4cEHIf7+3rJicM
 7Bia8M0kPKjaK7GVZu5fjUXbybMb74vsRJvUt8ESvaZo90IKnBRE62hh493IdCkOkHQA
 DfcRlhLNa3sGX6EPt0E7CwBRE4Vrc7k91HTgg+iABxz5YvE61Otv/3GAeo3ofLmTnmT4
 2ryUWgh6RHHdCRrjr8Pt69p9ApnPpubjxK31f5TxS4AzszsnWwKZv12XXc0NsY4V7V/U
 yLPbtPFv58Q2pPo+huIIP0Dg4AplBxq3jGkDXD1eYMZVNLNpX4Jh/j1t+qpPYrsGaDQY
 vtLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVqmyY7o52T4bBtT2N6dLTcR6HK5e1B3lYJ9bjn8o3A2xSxvnH4cpBK8hYVmyeqsFmDdu9PSBk6PUs=@lists.freedesktop.org,
 AJvYcCW7yKejYz3ggyLAy4O/sIZohaEpjjjsdBEvDtkGL13O2/mB4gLNzpO4hoNEDMntqzjxSdfv5D1RDdk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxrDk7gak+kiacwWHnW+jE7bSlMc+lOvly5wXPGg0DHA/Hc03SY
 QrJpTDy+Db6jXjDkkLH9oOROuSceBqSjhpc9PDGBt0m8fhzP13fRqF+0qQ==
X-Gm-Gg: ASbGncs9ckZXD1FNfVDTOkl3oR2PLK1R8VHpO8UE7xX4rG17BRGFIvEIFOsJM3rabap
 Bt0Jl9aNJLCCApJVaHoSuExxv0q3yQ7c++h8ncc2hITWD92mQSmVRhCQ7IaSGb5qpAHhoQE3zxr
 XtJxh/Iyu08PVCLi77NZKa48hNat5QWFtfGGf3vAhEeVSjyY9ljdVyWtr1fvZnebq23GjpPnq8A
 8o67JKacEomxRAw/ojbtj/bElgkxrDkhNE/Y8ERV8G4fVYcWSkkyldeBON0TV5JLHqdHAHHI5Mw
 KktIZdeU9rO+ouzmI3IeAvUV8/lSdUHV
X-Google-Smtp-Source: AGHT+IFbr5mR//NKB/G8R+Pcmr8O/z0UAE/kTlXY81rkDpzp5l4T8SB64QRh8jdEVqTvLMPJctdhdw==
X-Received: by 2002:a05:600c:a45:b0:436:faeb:2a0b with SMTP id
 5b1f17b1804b1-438913e32bemr123863535e9.15.1737371752518; 
 Mon, 20 Jan 2025 03:15:52 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43890413053sm136694905e9.10.2025.01.20.03.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2025 03:15:52 -0800 (PST)
Date: Mon, 20 Jan 2025 11:15:51 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
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
Message-ID: <20250120111551.435176c4@pumpkin>
In-Reply-To: <87ed0xrcb8.fsf@intel.com>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
 <20250119090935.7c690f85@pumpkin> <87ed0xrcb8.fsf@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 21 Jan 2025 13:31:29 +0000
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

On Mon, 20 Jan 2025 12:48:11 +0200
Jani Nikula <jani.nikula@linux.intel.com> wrote:

> On Sun, 19 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:
> > On Sat, 18 Jan 2025 14:58:48 -0800
> > Guenter Roeck <linux@roeck-us.net> wrote:
> >  
> >> On 1/18/25 14:11, David Laight wrote:  
> >> > On Sat, 18 Jan 2025 13:21:39 -0800
> >> > Linus Torvalds <torvalds@linux-foundation.org> wrote:
> >> >     
> >> >> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:    
> >> >>>
> >> >>> No idea why the compiler would know that the values are invalid.    
> >> >>
> >> >> It's not that the compiler knows tat they are invalid, but I bet what
> >> >> happens is in scale() (and possibly other places that do similar
> >> >> checks), which does this:
> >> >>
> >> >>          WARN_ON(source_min > source_max);
> >> >>          ...
> >> >>          source_val = clamp(source_val, source_min, source_max);
> >> >>
> >> >> and the compiler notices that the ordering comparison in the first
> >> >> WARN_ON() is the same as the one in clamp(), so it basically converts
> >> >> the logic to
> >> >>
> >> >>          if (source_min > source_max) {
> >> >>                  WARN(..);
> >> >>                  /* Do the clamp() knowing that source_min > source_max */
> >> >>                  source_val = clamp(source_val, source_min, source_max);
> >> >>          } else {
> >> >>                  /* Do the clamp knowing that source_min <= source_max */
> >> >>                  source_val = clamp(source_val, source_min, source_max);
> >> >>          }
> >> >>
> >> >> (obviously I dropped the other WARN_ON in the conversion, it wasn't
> >> >> relevant for this case).
> >> >>
> >> >> And now that first clamp() case is done with source_min > source_max,
> >> >> and it triggers that build error because that's invalid.
> >> >>
> >> >> So the condition is not statically true in the *source* code, but in
> >> >> the "I have moved code around to combine tests" case it now *is*
> >> >> statically true as far as the compiler is concerned.    
> >> > 
> >> > Well spotted :-)
> >> > 
> >> > One option would be to move the WARN_ON() below the clamp() and
> >> > add an OPTIMISER_HIDE_VAR(source_max) between them.
> >> > 
> >> > Or do something more sensible than the WARN().
> >> > Perhaps return target_min on any such errors?
> >> >     
> >> 
> >> This helps:
> >> 
> >> -       WARN_ON(source_min > source_max);
> >> -       WARN_ON(target_min > target_max);
> >> -
> >>          /* defensive */
> >>          source_val = clamp(source_val, source_min, source_max);
> >> 
> >> +       WARN_ON(source_min > source_max);
> >> +       WARN_ON(target_min > target_max);  
> >
> > That is a 'quick fix' ...
> >
> > Much better would be to replace the WARN() with (say):
> > 	if (target_min >= target_max)
> > 		return target_min;
> > 	if (source_min >= source_max)
> > 		return target_min + (target_max - target_min)/2;
> > So that the return values are actually in range (in as much as one is defined).
> > Note that the >= cpmparisons also remove a divide by zero.  
> 
> I want the loud and early warnings for clear bugs instead of
> "gracefully" silencing the errors only to be found through debugging
> user reports.

A user isn't going to notice a WARN() - not until you tell them to look for it.
In any case even if you output a message you really want to return a 'sane'
value, who knows what effect a very out of range value is going to have.

	David


