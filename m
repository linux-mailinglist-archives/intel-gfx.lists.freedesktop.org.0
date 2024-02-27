Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DF3868C63
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 10:38:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF1910E8C2;
	Tue, 27 Feb 2024 09:38:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="aXB1hHab";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B01110E29E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 09:38:15 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-2d2991e8c12so4767541fa.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 01:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google; t=1709026693; x=1709631493;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=34nlE/jYLVlVaZ7lND+aFhIBs6PO2OjuB13sd0/fnLU=;
 b=aXB1hHabqSlYB8jHnlCaFyeByCMjjhyd8gaTxteO+34x/o287QF3bQ4+484fUz2Eqm
 A19gkfX1QvBqi5cMnb228vaqXrcv1/V8fb81IQZ47kDW6n+nbTXtz9vOCoM5JWwPLwo9
 Gpa+0rlMDvXN3gWgnyJISUYMNc7KPDUczQjLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709026693; x=1709631493;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=34nlE/jYLVlVaZ7lND+aFhIBs6PO2OjuB13sd0/fnLU=;
 b=ZUJjewzclp1KUXhrfCqIzmnzdzMy8AowwNY8+fudtTjwPd/fQiFMNPFpZ07ac1+29w
 2zA8jTpTrRNUnuiW8HDpeVodHboCfcZ/YfXyHbvoyPSHCtBCiCUvRoFK6HpbtpXhfAOr
 t6Z865ORcN5dt/LvzzcixlheNnpTj6kPvdUQM5GRrxjyc0z96moVQCiT0XBJQsQgxJjw
 rYW1s4GKagw8p8J2HgUsg+G+fT99uV4ecHgVyMz+gPWcN9vY3bth1ixeJ5GqSTlHFiOW
 442i10QhRy9lRDDvdxtW1LwmOydu630bRHfGTS3qpfpAnIu0F+huqWmVcuADXd6A+SjV
 qEsg==
X-Gm-Message-State: AOJu0YxSHyKNUL/4ncrkn9Jl24Ozow8lahSdsTq+Y9NgaZ2cDRgvTZyR
 6OUyKosSNe6UO+/Uy+YNbhqDZecfqW8q/YKhkHGYkgKXXcsE1e7Fxb6j6MVeN04=
X-Google-Smtp-Source: AGHT+IFIS3pGCJaWAL8RMc5RJT5ivWEGBl+2mS/Sffs1nscQknt84kpwUa3IyS43C3isau2OTSqjwA==
X-Received: by 2002:a2e:a165:0:b0:2d2:3fa3:5af8 with SMTP id
 u5-20020a2ea165000000b002d23fa35af8mr2877025ljl.3.1709026692679; 
 Tue, 27 Feb 2024 01:38:12 -0800 (PST)
Received: from [172.16.11.116] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id
 p18-20020a2e7412000000b002d0f8b3e259sm1128939ljc.65.2024.02.27.01.38.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Feb 2024 01:38:12 -0800 (PST)
Message-ID: <1013ff2d-76b2-41f9-a5d4-39a567a3b0cc@rasmusvillemoes.dk>
Date: Tue, 27 Feb 2024 10:38:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] drm/i915: Indicate which pipe failed the fastset
 check overall
Content-Language: en-US, da
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Petr Mladek <pmladek@suse.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, linux-kernel@vger.kernel.org
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-2-ville.syrjala@linux.intel.com>
 <ZdfApN1h97GTfL1t@intel.com> <Zdj2ONs8BZ6959Xb@intel.com>
 <87bk83mfwp.fsf@intel.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <87bk83mfwp.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

On 26/02/2024 15.57, Jani Nikula wrote:

> Personally I suck at remembering even the standard printf conversion
> specifiers, let alone all the kernel extensions. I basically have to
> look them up every time. I'd really love some %{name} format for named
> pointer things. And indeed preferrably without the %p. Just %{name}.

Sorry to spoil the fun, but that's a non-starter.

foo.c: In function ‘foo’:
foo.c:5:24: warning: unknown conversion type character ‘{’ in format
[-Wformat=]
    5 |         printf("Hello %{function} World\n", &foo);
      |                        ^

You can't start accepting stuff that -Wformat will warn about. We're not
going to start building with Wno-format.

> And then we could discuss adding support for drm specific things. I
> guess one downside is that the functions to do this would have to be in
> vsprintf.c instead of drm. Unless we add some code in drm for this
> that's always built-in.

If people can be trusted to write callbacks with the proper semantics
for snprintf [1], we could do a generic

typedef char * (*printf_callback)(char *buf, char *end, void *ctx);

struct printf_ext {
  printf_callback cb;
  void *ctx;
};

#define PRINTF_EXT(callback, context) &(struct printf_ext){ .cb =
callback, .ctx = context }

// in drm-land

char* my_drm_gizmo_formatter(char *buf, char *end, void *ctx)
{
  struct drm_gizmo *dg = ctx;
  ....
  return buf;
}
#define pX_gizmo(dg) PRINTF_EXT(my_drm_gizmo_formatter, dg)

   printk("error: gizmo %pX in wrong state!\n", pX_gizmo(dg));

Then vsprintf.c doesn't need to know anything about any particular
subsystem. And if a subsystem breaks snprintf semantics, they get to
keep the pieces. With a little more macro magic, one might even be able
to throw in some type safety checks.

Rasmus

[1] You can't sleep, you can't allocate memory, you probably can't even
take any raw spinlocks, you must attempt to do the full formatting so
you can tell how much room would be needed, but you must of course not
write anything beyond end. Calling vsnprintf() to format various integer
members is probably ok, but recursively using %pX to print full
subobjects is likely a bad idea.
