Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 529887D78D3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 01:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82CE710E5FD;
	Wed, 25 Oct 2023 23:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D6E10E5FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 23:44:26 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id
 38308e7fff4ca-2c514cbbe7eso4192251fa.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 16:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1698277464; x=1698882264;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=w5rhIdCdUtqfizStztse15cYuhOAm7LN/qZ3HnvXmpI=;
 b=B7kiMpwe0l/zhIp37GY+3ToZcym4OsDATzm6ef+hB+NXS45VtZPa6oCsgk8ELXgxLX
 pPysA6EhiHkyK8JCLAESdwSkODf6S30bn0nsMeTa6y/Y+U+J1ylFJIPmYdetHZO0BLwg
 AoRdJe09LJVDIw3zo8L6cLEVpTwg9OIy5lUjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698277464; x=1698882264;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=w5rhIdCdUtqfizStztse15cYuhOAm7LN/qZ3HnvXmpI=;
 b=YYYC8ID2vK+KfX4meFr8XhfLhaoyKKRn3KcIlSskVJffGeEWfnFxh0Go4Fl/4zTNUy
 5N3douQl7RIvprz5jo5vxxxLmrDWHxud95KOk2cX1Ou46MSPPWE6buuCrJpxiJlPjDla
 upP9cpW0nti4/TwFQbe8yOQeFxkvQEvKakvmdOxtAlL1nr3ByEBbYwfqZcq13x9K5wBd
 IZnz85xAtHP0gQMQ+iTgw0gcHPXxmAMOyZLDGUxh6INR4YQ/t+/TlzlQAkK/yxbbGsgO
 jigVW5+lHfVaXGxUMozvqBpiiDDmt4jFUxoxuTeD1YRZ5ISmQBdzp5tK+ZiNEfsYlgm2
 7f7w==
X-Gm-Message-State: AOJu0YxcNRVFLFib1VYJ7+RuUh6zes/52n/+pJSr4OnVLo3u/CGiK7VP
 ne0ocvZSIT6ys/q3/XpbDSjr6fAQ1A+xYbHRnTDlsdko
X-Google-Smtp-Source: AGHT+IFKOJ2nFV1NHqkZYXZKtjIUgMUoPQ9wvPGtjjzqQ0jbuyA3Uwtk8iZ5uqgha6IWsC3zqC6GGA==
X-Received: by 2002:a05:651c:b20:b0:2c5:19f2:4fde with SMTP id
 b32-20020a05651c0b2000b002c519f24fdemr13811239ljr.23.1698277464340; 
 Wed, 25 Oct 2023 16:44:24 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com.
 [209.85.208.169]) by smtp.gmail.com with ESMTPSA id
 i65-20020a2e2244000000b002b9f4841913sm2632660lji.1.2023.10.25.16.44.23
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Oct 2023 16:44:23 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id
 38308e7fff4ca-2c514cbbe7eso4191931fa.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 16:44:23 -0700 (PDT)
X-Received: by 2002:a2e:81d7:0:b0:2c5:3a9:7467 with SMTP id
 s23-20020a2e81d7000000b002c503a97467mr11474587ljg.8.1698277462720; Wed, 25
 Oct 2023 16:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
 <CAHk-=wiPAM0MzHvtbD_=rO81DWO0ZPHE=Bp+TWqke_ZhEDOoZQ@mail.gmail.com>
 <20231025-isolieren-flaschen-db0224eff8f0@brauner>
In-Reply-To: <20231025-isolieren-flaschen-db0224eff8f0@brauner>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Oct 2023 13:44:04 -1000
X-Gmail-Original-Message-ID: <CAHk-=wh7YtPS6m8OtFDQ7mAyR4Rqs72inB+EdC-5mcmVonThTg@mail.gmail.com>
Message-ID: <CAHk-=wh7YtPS6m8OtFDQ7mAyR4Rqs72inB+EdC-5mcmVonThTg@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] file,
 i915: fix file reference for mmap_singleton()
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
Cc: Jann Horn <jannh@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Oct 2023 at 10:36, Christian Brauner <brauner@kernel.org> wrote:
>
> I did think that the loop didn't really matter for this case but since
> it seemingly does paper over the weird semantics here let's drop it.
> Anyway, pushed to:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git/commit/?h=vfs.misc

LGTM.

We could then make the i915 mmap_singleton() do the proper loop over
the whole thing. Not quite the way Jann suggested - which would not
increment the file refcount properly, but instead of the current

        smp_store_mb(i915->gem.mmap_singleton, file);
        drm_dev_get(&i915->drm);
        return file;

it could do something much more complicated like

        drm_dev_get(&i915->drm);
        if (cmpxchg(&i915->gem.mmap_singleton, NULL, file) == NULL)
                return file;

        // mmap_singleton wasn't NULL: it might be an old one in the
        // process of being torn down (with a zero refcount), or a new
        // one that was just installed that we should use instead
        fput(file);
        file = READ_ONCE(i915->gem.mmap_singleton);
        if (!file)
                goto repeat;
        // Is it valid? Just try again
        if (atomic_read(&file->f_count))
                goto repeat;

        // We have a file pointer, but it's in the process of being torn
        // down but gem.mmap_singleton hasn't been cleared yet. Yield to
        // make progress.
        sched_yield();
        goto repeat;

which is disgusting, but would probably work.

Note the "probably work". I'm handwaving: "something like the above".

Presumably not even worth doing - I assume a correct client always
just does a single mmap() before starting work.

               Linus
