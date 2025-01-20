Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E1FA17EE2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08E910E5C9;
	Tue, 21 Jan 2025 13:31:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EtfltalA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A700B10E0DA;
 Mon, 20 Jan 2025 18:41:47 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-4362f61757fso49216505e9.2; 
 Mon, 20 Jan 2025 10:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737398506; x=1738003306; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DIBwpgd4nZZVUOe5igOTj25p3iSQrZ0QRAo6bvYlPtM=;
 b=EtfltalAO1jHaoH2C8X7TrnC7MtIA7h/lZmU5FSfh9Dq1hNSCOAH2WSqPs1lBhoA0O
 1bBOTDG6Rtvmhr/+ynF03rEAICb7djbhEMAbldjIeeP/rCI7lVbGCVlO8tK+QP9r8hne
 WFDMhPIg7qmhJjT71dyC1Vc76tsoG+1/rOm1+XwKPbEU7naD6V5FpTz4asK75h2yp0eO
 TxJq2UqZ1BGSRdenc/XNkb3euSNrfFxYzTTMx/AwD0ZtbhccVZA523M7h+bICjSE80W3
 ZUxe4ZuWXNXDHustAm1lxS8pj95ljzlS+XxBI8dkvnerFi1QaNdmY98tQ0PObBINfful
 SyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737398506; x=1738003306;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DIBwpgd4nZZVUOe5igOTj25p3iSQrZ0QRAo6bvYlPtM=;
 b=DwMtfdrjKtp+wADtb+EnEgU0WjbauaxUL9QECgN0DskdFcXKsmOZpjsxT/WoHw0nmo
 7V2PFimqk/Kh9jEL1WaxA9vhTLc/zUnWrS8mtcjqFaRo7TrcEDDkXJsLVToS3UJ2Lmui
 wlvPuMjGcjY7InvvNcqKpEl40I+Ntrs/86Sl/ZPKyDakRuqjCBz9SLlAhR/lNNsL15cX
 0FW27mtj6pMxz6vdX38XA+UFF6WcX7nHQA3B3Gpm3edNyNpPICCbJUMzL/TvfG/U7C+u
 uOTprRq9JtcHVRpELpAxrnw41KOumRQsUHSuvINJsZk56tLMxFSrwdc4HtTM0aaXZqpO
 7sGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZDVga/hqDaQqa+0t64JaWXA97/jOrvCPGvcA732UNsBa+KrC1WVM86i8YYGndII6SDCHM8N6IAC0=@lists.freedesktop.org,
 AJvYcCXtoZhz09N58NdfKDogofsQDF2NLebRO14411zcwMCGPPsr8c04imqcT0o7/SPoHzL2rRI2m4+uCrA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxk7eLcpw/0byEYgkmundYs5+e8fhgEHNtObV27APsDI2uT483S
 N9kgOwiX/xCRN6yc/7fDTttnk7tBRHddZYo5HsO8C1IPohwqEkZw
X-Gm-Gg: ASbGncthNKQ8pymYPZcJVx3oIhSNrPNkQMMoKlfVZfGT1PVeauP+kw8KVphKsbQ5GJk
 Cs653ELj+rg0M9wEnOos7go+75khmBp/dR0SZDUFFRPbW14s8KEiOeVJtDf53itHDiYkVvxyM3P
 NtFjeNx494VgmHAnEFuTXlJQchImYwMzdxufUBZ+cWU9pMLqx285D0y39Oa0pXwfmtprwy4WGbw
 2KV/avoN4vvsjaIs4C48ilVdn6jHkjhEohKb/EwvHZuhtECItQ9Oqa/Sg/aWZk0EZSuJbBpO6QY
 4MmwdUFohu7BbEccuuKqlimUqkff6T4m
X-Google-Smtp-Source: AGHT+IEn3fWuuB2LneTt6yQ3PstmeBWVOQXwkDbyDPfhPGTU6q73G1l86IByTH3i/KUxwcvQA0z7UA==
X-Received: by 2002:a05:600c:4f05:b0:434:fe62:28c1 with SMTP id
 5b1f17b1804b1-438913ef83bmr125983915e9.18.1737398505721; 
 Mon, 20 Jan 2025 10:41:45 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43890462195sm148506615e9.30.2025.01.20.10.41.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2025 10:41:45 -0800 (PST)
Date: Mon, 20 Jan 2025 18:41:43 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Linus Torvalds
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
Message-ID: <20250120184143.47615b21@pumpkin>
In-Reply-To: <0a65de6c-74d5-4d3e-be75-0aa9ecc82da1@roeck-us.net>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
 <20250119090935.7c690f85@pumpkin> <87ed0xrcb8.fsf@intel.com>
 <20250120111551.435176c4@pumpkin> <878qr5ras2.fsf@intel.com>
 <0a65de6c-74d5-4d3e-be75-0aa9ecc82da1@roeck-us.net>
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

On Mon, 20 Jan 2025 06:15:30 -0800
Guenter Roeck <linux@roeck-us.net> wrote:

> On 1/20/25 03:21, Jani Nikula wrote:
> > On Mon, 20 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:  
> >> On Mon, 20 Jan 2025 12:48:11 +0200
> >> Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >>  
> >>> On Sun, 19 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:  
> >>>> On Sat, 18 Jan 2025 14:58:48 -0800
> >>>> Guenter Roeck <linux@roeck-us.net> wrote:
> >>>>     
> >>>>> On 1/18/25 14:11, David Laight wrote:  
> >>>>>> On Sat, 18 Jan 2025 13:21:39 -0800
> >>>>>> Linus Torvalds <torvalds@linux-foundation.org> wrote:
> >>>>>>        
> >>>>>>> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:  
> >>>>>>>>
> >>>>>>>> No idea why the compiler would know that the values are invalid.  
> >>>>>>>
> >>>>>>> It's not that the compiler knows tat they are invalid, but I bet what
> >>>>>>> happens is in scale() (and possibly other places that do similar
> >>>>>>> checks), which does this:
> >>>>>>>
> >>>>>>>           WARN_ON(source_min > source_max);
> >>>>>>>           ...
> >>>>>>>           source_val = clamp(source_val, source_min, source_max);
> >>>>>>>
> >>>>>>> and the compiler notices that the ordering comparison in the first
> >>>>>>> WARN_ON() is the same as the one in clamp(), so it basically converts
> >>>>>>> the logic to
> >>>>>>>
> >>>>>>>           if (source_min > source_max) {
> >>>>>>>                   WARN(..);
> >>>>>>>                   /* Do the clamp() knowing that source_min > source_max */
> >>>>>>>                   source_val = clamp(source_val, source_min, source_max);
> >>>>>>>           } else {
> >>>>>>>                   /* Do the clamp knowing that source_min <= source_max */
> >>>>>>>                   source_val = clamp(source_val, source_min, source_max);
> >>>>>>>           }
> >>>>>>>
> >>>>>>> (obviously I dropped the other WARN_ON in the conversion, it wasn't
> >>>>>>> relevant for this case).
> >>>>>>>
> >>>>>>> And now that first clamp() case is done with source_min > source_max,
> >>>>>>> and it triggers that build error because that's invalid.
> >>>>>>>
> >>>>>>> So the condition is not statically true in the *source* code, but in
> >>>>>>> the "I have moved code around to combine tests" case it now *is*
> >>>>>>> statically true as far as the compiler is concerned.  
> >>>>>>
> >>>>>> Well spotted :-)
> >>>>>>
> >>>>>> One option would be to move the WARN_ON() below the clamp() and
> >>>>>> add an OPTIMISER_HIDE_VAR(source_max) between them.
> >>>>>>
> >>>>>> Or do something more sensible than the WARN().
> >>>>>> Perhaps return target_min on any such errors?
> >>>>>>        
> >>>>>
> >>>>> This helps:
> >>>>>
> >>>>> -       WARN_ON(source_min > source_max);
> >>>>> -       WARN_ON(target_min > target_max);
> >>>>> -
> >>>>>           /* defensive */
> >>>>>           source_val = clamp(source_val, source_min, source_max);
> >>>>>
> >>>>> +       WARN_ON(source_min > source_max);
> >>>>> +       WARN_ON(target_min > target_max);  
> >>>>
> >>>> That is a 'quick fix' ...
> >>>>
> >>>> Much better would be to replace the WARN() with (say):
> >>>> 	if (target_min >= target_max)
> >>>> 		return target_min;
> >>>> 	if (source_min >= source_max)
> >>>> 		return target_min + (target_max - target_min)/2;
> >>>> So that the return values are actually in range (in as much as one is defined).
> >>>> Note that the >= cpmparisons also remove a divide by zero.  
> >>>
> >>> I want the loud and early warnings for clear bugs instead of
> >>> "gracefully" silencing the errors only to be found through debugging
> >>> user reports.  
> >>
> >> A user isn't going to notice a WARN() - not until you tell them to look for it.
> >> In any case even if you output a message you really want to return a 'sane'
> >> value, who knows what effect a very out of range value is going to have.  
> > 
> > The point is, we'll catch the WARN in CI before it goes out to users.
> >   
> 
> It isn't going to catch the divide by 0 error, and it obviously doesn't
> catch the build problem on parisc with gcc 13.x because the CI isn't
> testing it.
> 
> How about disabling DRM_XE on architectures where it isn't supported,
> matching DRM_I915 ?

That'll just bite back later.
As Linus spotted the compiler is just 'optimising' some code paths.
It could happen for any architecture including x64.
The repeated tests are basically slightly odd, although you might only
expect them to be present in debug builds.

An alternative would be to replace the clamp() with:
	if (source_val <= source_min)
		return target_min;
	if (source_val >= source_max)
		return target_max;

	David

> 
> Thanks,
> Guenter
> 

