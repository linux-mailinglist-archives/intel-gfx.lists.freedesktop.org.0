Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1CCCA8CA7
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 19:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9FD10EB9B;
	Fri,  5 Dec 2025 18:28:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JfCDfgt8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 086A810EB9B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 18:28:20 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-42b3c5defb2so1372101f8f.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Dec 2025 10:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764959298; x=1765564098; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=K2spLu6N0DSR4ou+F0P8PP9863f25wbk/kJaa4ODHOI=;
 b=JfCDfgt8GRETsaFE59BvYpuBCRjOWjy4YQEInG/Jgkcb7QxsxfcHos6BdsTdGPv7FO
 lVIjkznSJlV5TwjyaS3cU4QcJMN4fW57J8WhJJ2oTSVpS+nkqiOidPxn3Hh+J7118unM
 sBTukFGmUDiRcUKXPjmPafopYnOU2n85pFfZy4Zr4YFt/+9lW2Cq3nugfoHFIoF9D+Yc
 wPXyv2LOpxyWnaxlPWQXPL4oGUBr1RKfLGINm22+lnGjlgEz/r5pawTGuscQtvoTNOX1
 rCuvf0s2Z6FUU7ZIh7i2edwfrtimi/6S9+jazv4DjCfUP1ABCOkRrMO7nL30SGAa6JOJ
 89Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764959298; x=1765564098;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=K2spLu6N0DSR4ou+F0P8PP9863f25wbk/kJaa4ODHOI=;
 b=Hi+DQ4dgsb2Ovmpk+UHE39MwMqaNluG5ECxRulhHDeTHkC0zQ9fIE3rZJkTQr7+Ash
 5d5P108laWo1+0GdU8gNuSgCOMKAuDYztCtpMB0v6xzexktk8xhpIIXEla8rdkXRy33s
 m5pbVBjecCte4fB0aberFr3UY5bj+G5sj27qjGqG7KVlF0XBVDlJgB4ISqd41XL+iEcw
 b4SMcbsW0yWB7atneO5TllZ7yq/vNf1b/IMl11fFLkxx0PACtjbEWFpc1DaUIHu6lPnn
 VIbIU82Xsu9X774TU9BZo+HT5SmrOkvAnRIrWvV3Aoq0JnbtyW8LSrAgV/mrTLuVQpNn
 oJEQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUmk4XMht6myaPRvwdv1ugCpEbnyxjcqQZQQvzhKKw3jD/AJ84roLIDi1mMRnGWyVaqduuMCycXJJs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxok5yNppbchAP6r9mN98NXyOv88+Vtr+WZXqM7KEQMxfH3VGGA
 IAdZkwqtyLrvJ4ML4mv5sfMVLIg7oAlHPsI0v966T1TWiZUPhGLOcYHT
X-Gm-Gg: ASbGncvyhcIZCCTx1ua3RPyse+Obvq7y/DqaSzgYlQ3o2ETiu9bRmUGL3X7ndpk42xp
 bswxpX3cuzeAx/zf8TBtjjFEz9wMj33UzOTtltu3P6+12vfRrVyL2Bi1fwACQFmnFZFMP3DH6lJ
 j6EJgl9rBDlYm+oNAyFXkXQ00vu47amTiUuC4lss4Dtww0wtCOEqlVegMpye94hGlZEo+IKGgTC
 Bumfn+bH3my9KWT9XPGHdNmaJQXO4rHAgdd2WnEPlG6eqdrFOhyQ90w2FBwnQ/Nung+PKmSgjxv
 KOD0F1Q4ahmgsSJ2Z2Wi2q0dPIDahaRrfPHw79moWErzauLObA+t4yazrbXSYQvxHKC5A6ASNFh
 tRMnA7AcqGobbJSjn84OUT51snlzkw21G/7e7x9og8KxQXdxBhXM24Cm0sAX2l2S4dZWd8k3gUJ
 5ANGgkXXsxi1R412PACh8boAOEh0wQSUM5cF1DdsA5l8hMPYyiDpv8
X-Google-Smtp-Source: AGHT+IEL7gGVq4z+x8DouC8qMVxh2BY+TMn22RIJ4pOpH3WFP25hMyFaF5VCRhYnBlYrXPo03rrM4g==
X-Received: by 2002:a05:6000:2211:b0:42f:8817:7ef with SMTP id
 ffacd0b85a97d-42f89f647f5mr122804f8f.60.1764959298355; 
 Fri, 05 Dec 2025 10:28:18 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-42f7d331aeasm9768523f8f.37.2025.12.05.10.28.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 10:28:18 -0800 (PST)
Date: Fri, 5 Dec 2025 18:28:13 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>, Ard Biesheuvel
 <ardb+git@google.com>, linux-kernel@vger.kernel.org, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/i195: Fix format string truncation warning
Message-ID: <20251205182813.09231c45@pumpkin>
In-Reply-To: <CAMj1kXFLaOZMXsUsvrshkwhvJSWm3V_iZB3n1rga=Q6zwrVY_g@mail.gmail.com>
References: <20251107164240.2023366-2-ardb+git@google.com>
 <14ca1b28-df1d-4065-ad7a-97a3ff81a5a4@ursulin.net>
 <CAMj1kXEgfykaf9oB4_tuAQqwXDN+NLy_Hb_+RnQmeicVgKt0bA@mail.gmail.com>
 <CAMj1kXFLaOZMXsUsvrshkwhvJSWm3V_iZB3n1rga=Q6zwrVY_g@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 5 Dec 2025 11:48:08 +0100
Ard Biesheuvel <ardb@kernel.org> wrote:

> On Sun, 9 Nov 2025 at 19:00, Ard Biesheuvel <ardb@kernel.org> wrote:
...
> > > But I guess much prettier fix would be to simply grow the buffer.
> > >  
> >  
> 
> OK, so something like
> 
> --- a/drivers/gpu/drm/i915/intel_memory_region.h
> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
> @@ -72,7 +72,7 @@ struct intel_memory_region {
>         u16 instance;
>         enum intel_region_id id;
>         char name[16];
> -       char uabi_name[16];
> +       char uabi_name[20];

The observant will notice the 7 bytes of padding following 'private',
and another 7 a little later on.
(I' pretty sure 'bool' is u8).

So extending the buffer doesn't even grow the structure.
The string is only used when printing some stats.
I got lost in a list of #defines and function pointers trying to find
the actual function that did the 'printf'.

	David

>         bool private; /* not for userspace */
> 
>         struct {
> 
> 
> 
> > > Also, hm, how come gcc does not find the mem->name vsnprintf from
> > > intel_memory_region_set_name?
> > >  
> >  
> 
> AFAICT, intel_memory_region_set_name() is never called with a format
> string that could produce more than 15/16 bytes of output.
> 

