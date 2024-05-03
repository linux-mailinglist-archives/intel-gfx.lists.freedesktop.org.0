Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2F08BA458
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 02:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B169210F9BB;
	Fri,  3 May 2024 00:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="U/BTwfdP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD63410F9BB
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 00:10:19 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-1ecff927a45so10765035ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2024 17:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1714695019; x=1715299819;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yvQ96PVcBTjB1DlDAHvZFWsvHSveciEwekt2iZelkZw=;
 b=U/BTwfdPF7ldGAqXvOA1BTDXmxCX8bgMOu83khAFWYw9z0dyf+qoC/rydy6n6NOvK0
 X/p9elHu0R5Xt7Ppk6EtBoeaKxmouYsG7JP1Bzdw8FYZeSj3GVSD8Rm/Gtkk18FGnK33
 CBw9kWbD2L1sonTW2jFd6sW578pmRWEHsY/BQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714695019; x=1715299819;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yvQ96PVcBTjB1DlDAHvZFWsvHSveciEwekt2iZelkZw=;
 b=DgVRRw8UJluNFXde//9Uw//C+L4vq68q0SRX4VXp6yukOJ7/c99dxF3WIykK+sdoYP
 jHeaILXjOFhf6LQHlOMorLp6uB+CdsFemw0/mkPAoSLd5bW3aAi6gULrfAHlnfu5JHp3
 lho0P3EGFVE3TXTfvIFU6BxXgviZ70q39axtrbQ1qiS+2qo3dN+pC98iA3q3UgCCnEf5
 y6G9UwMrSdTJwvPjsE2kCiFcdT3YfAW6QFCV0CNq154HMJZ9oDUbbQJUkW/kk/Pxe9RI
 ozWTnfo5mGcyAkFlgvat+lFqluleZ1JqnBiMbvXT6x4miQwYvxSMV9NXhF8HQweSwf7d
 p5gQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUBWN5+v9DurcAI7Euir9BTKm488ovXcVoVTABQ2Hj0MP2sQIuFiKfMKm8mufoE6bdo9q3SIbg2WH6dyI+YWe/jelESC6YTHapLayCvdYke
X-Gm-Message-State: AOJu0Yxijs8VIXQZkPg4zg5w+rAPCUW2LYBEy7W+mjUHL1yQtAZmAQF/
 BS2+gSfU0Ci9+izhA0ok4mEr4FyxwbH7G+XBj1hIXN15xCT6LYg4KH/XmI2IZg==
X-Google-Smtp-Source: AGHT+IFkLXUnyQMj2OIKX8j+BzYHRt/RqitCOGt4Mqy98jeuCfO60gH63IL3cwkWZr8dM72N35IMEw==
X-Received: by 2002:a17:902:e747:b0:1e3:e380:8724 with SMTP id
 p7-20020a170902e74700b001e3e3808724mr1684558plf.48.1714695018965; 
 Thu, 02 May 2024 17:10:18 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 a12-20020a170902b58c00b001e4881fbec8sm1942415pls.36.2024.05.02.17.10.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 May 2024 17:10:18 -0700 (PDT)
Date: Thu, 2 May 2024 17:10:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 linux-fsdevel@vger.kernel.org, Zack Rusin <zack.rusin@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kbuild@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: Re: [PATCH 5/5] fs: Convert struct file::f_count to refcount_long_t
Message-ID: <202405021708.267B02842@keescook>
References: <20240502222252.work.690-kees@kernel.org>
 <20240502223341.1835070-5-keescook@chromium.org>
 <20240502224250.GM2118490@ZenIV> <202405021548.040579B1C@keescook>
 <20240502231228.GN2118490@ZenIV> <202405021620.C8115568@keescook>
 <20240502234152.GP2118490@ZenIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240502234152.GP2118490@ZenIV>
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

On Fri, May 03, 2024 at 12:41:52AM +0100, Al Viro wrote:
> On Thu, May 02, 2024 at 04:21:13PM -0700, Kees Cook wrote:
> > On Fri, May 03, 2024 at 12:12:28AM +0100, Al Viro wrote:
> > > On Thu, May 02, 2024 at 03:52:21PM -0700, Kees Cook wrote:
> > > 
> > > > As for semantics, what do you mean? Detecting dec-below-zero means we
> > > > catch underflow, and detected inc-from-zero means we catch resurrection
> > > > attempts. In both cases we avoid double-free, but we have already lost
> > > > to a potential dangling reference to a freed struct file. But just
> > > > letting f_count go bad seems dangerous.
> > > 
> > > Detected inc-from-zero can also mean an RCU lookup detecting a descriptor
> > > in the middle of getting closed.  And it's more subtle than that, actually,
> > > thanks to SLAB_TYPESAFE_BY_RCU for struct file.
> > 
> > But isn't that already handled by __get_file_rcu()? i.e. shouldn't it be
> > impossible for a simple get_file() to ever see a 0 f_count under normal
> > conditions?
> 
> For get_file() it is impossible.  The comment about semantics had been
> about the sane ways to recover if such crap gets detected.
> 
> __get_file_rcu() is a separate story - consider the comment in there: 
> 	* atomic_long_inc_not_zero() above provided a full memory
> 	* barrier when we acquired a reference.
>          *
>          * This is paired with the write barrier from assigning to the
>          * __rcu protected file pointer so that if that pointer still
>          * matches the current file, we know we have successfully
>          * acquired a reference to the right file.
> 
> and IIRC, refcount_t is weaker wrt barriers.

I think that was also fixed for refcount_t. I'll need to go dig out the
commit...

But anyway, there needs to be a general "oops I hit 0"-aware form of
get_file(), and it seems like it should just be get_file() itself...

-- 
Kees Cook
