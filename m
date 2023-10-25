Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B5D7D7399
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 20:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B9010E6D1;
	Wed, 25 Oct 2023 18:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C68C10E6CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 18:53:17 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-507ac66a969so31109e87.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 11:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1698259995; x=1698864795;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=OWfmfKqnYPPYgQ6+yx/cPVKlRsSm9gZz+0CuEi4JgDk=;
 b=LmsQdhoEg2pJnoMAVIOOn+WH7RMeaUN+bZ5cab1KpmbIqqQWx/TkuCjc1m+jqp8VDd
 NAbeWzszIvovUJSa5Wgv2JWtZCiQu4PNbe4ij0vx4CRMnZVEF08Eetk/Kd6jlO6lH4/Z
 ETR2gD+0YhNB7RNylZs0TKWKyWjxSc84TJcWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698259995; x=1698864795;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OWfmfKqnYPPYgQ6+yx/cPVKlRsSm9gZz+0CuEi4JgDk=;
 b=kymNrswtc4HCJk3LdqpHjpXVcA+jXso0welFk40I3yDCvEnUP3Our/TkvV4Izyi7BL
 hEWhOd/8tAECsdOPbvz/R+C1uLOB/9VPMku8v+sGxtiRgsBoAx2cNXybnM2XHNH10TRH
 +/MUd+JyqroGSQdQ11orl+ijbaPgAnDzKLqIQ6we/Vq3chQjh6YfQEQfiyeTau2jGULu
 IWNkgQby22PJc4f8YcUX+S9Wh8J1oituY/QyygWwyZqmXQKSznlcIeTd5kZmn3jQ0gsn
 SEvig8q88ffkNTM4qcVkXHvguDLgsw3jri66ufZqZHWz5w+QUUBAMCWshfhIFmdjf2s7
 /wlQ==
X-Gm-Message-State: AOJu0Yxws/AAxqqtjTOLlnJKayRYv85dwyShxQz0W1ivLF6aDi9dYELt
 jwULI0HAbBkCLJXpuqrJLHu+XCgzHwnIdDbqYkDsiWHZ
X-Google-Smtp-Source: AGHT+IFpTaSU2oSWPPSMiHVVlnI3WJKoTpc6T5sdBokZAY0LLxQ0aUcub0tI2dyKP5MM9fNoJQBt5g==
X-Received: by 2002:a05:6512:2034:b0:507:b0f7:ec92 with SMTP id
 s20-20020a056512203400b00507b0f7ec92mr10353402lfs.59.1698259995253; 
 Wed, 25 Oct 2023 11:53:15 -0700 (PDT)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com.
 [209.85.218.51]) by smtp.gmail.com with ESMTPSA id
 e24-20020a50a698000000b0052febc781bfsm10239932edc.36.2023.10.25.11.53.14
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Oct 2023 11:53:14 -0700 (PDT)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-9b9faf05f51so14577566b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 11:53:14 -0700 (PDT)
X-Received: by 2002:a17:907:9450:b0:9ad:f7e5:67d9 with SMTP id
 dl16-20020a170907945000b009adf7e567d9mr12171532ejc.4.1698259994083; Wed, 25
 Oct 2023 11:53:14 -0700 (PDT)
MIME-Version: 1.0
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
In-Reply-To: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Oct 2023 08:52:57 -1000
X-Gmail-Original-Message-ID: <CAHk-=wiPAM0MzHvtbD_=rO81DWO0ZPHE=Bp+TWqke_ZhEDOoZQ@mail.gmail.com>
Message-ID: <CAHk-=wiPAM0MzHvtbD_=rO81DWO0ZPHE=Bp+TWqke_ZhEDOoZQ@mail.gmail.com>
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

On Wed, 25 Oct 2023 at 02:01, Christian Brauner <brauner@kernel.org> wrote:
>
>         rcu_read_lock();
> -       file = get_file_rcu(&i915->gem.mmap_singleton);
> +       file = get_file_rcu_once(&i915->gem.mmap_singleton);
>         rcu_read_unlock();
>         if (file)
>                 return file;

Honestly, the get_file_rcu_once() function seems a bit pointless.

The above doesn't want a loop at all. Yet your "once" still does loop,
because "even get_file_rcu_once() is trying to deal with the whole
"the pointer itself changed".

And the i915 code is actually designed to just depend on the atomicity
of the mmap_singleton access itself, in how it uses

        cmpxchg(&i915->gem.mmap_singleton, file, NULL);
...
        file = READ_ONCE(i915->gem.mmap_singleton);

and literally says "I'll remove my singleton as it is released". The
important part there is that the 'map_singleton' pointer itself isn't
actually reference-counted - it's the reverse, where
reference-counting *other* instances will then auto-clear it.

And that's what then makes that get_file_rcu() model not work with it,
because get_file_rcu() kind of assumes that the argument it gets is
*part* of the reference counting, not a cached *result* of the
reference counting that gets cleared as a result of the ref going down
to zero.

I may explain my objections badly, but hopefully you get what I mean.

And I think that also means that using that new get_file_rcu_once()
may be hiding the actual problem, but it's still conceptually wrong,
because it still has that conceptual model of "the pointer I'm getting
is part of the reference counting", when it really isn't.

So I think we'd actually be better off with something that is more
clearly different from get_file_rcu() in naming, so make that
conceptual difference clearer. Make it be something like
"get_active_file(struct file **)", and make the implementation be just
exactly what your current __get_file_rcu() is with no loops at all.

Then thew i915 code ends up being

        rcu_read_lock();
        file = get_active_file(&i915->gem.mmap_singleton);
        rcu_read_unlock();

        if (!IS_ERR_OR_NULL(file))
                return file;

       .. create new mmap_singleton ..

and that's it.

If you don't want to expose __get_file_rcu() as-is, you could maybe just do

  struct file *get_active_file(struct file **fp)
  {
        struct file *file;
        rcu_read_lock();
        file = __get_file_rcu(fp);
        rcu_read_unlock();
        return file;
  }

and then the i916 code would just drop the RCU locking that it has no
business even knowing about.

I realize that my complaints are a bit conceptual, and that the
practical end result is pretty much the same, but I do think that it
is worth noting this conceptual difference between "file pointer is
ref-counted" and "file counter is *controlled* by ref-counting".

Add a comment to the effect at get_active_file() users.

The old i915 code is already racy, in that it's called a "singleton",
but if you have multiple concurrent callers to mmap_singleton(), they
all might see a NULL file at first, and then they all create
*separate* new "singleton" files, and they *all* do that

        smp_store_mb(i915->gem.mmap_singleton, file);

and one random case of them happens to win the race and set *its* file
as "THE singleton" file.

So your "let's loop if it changes" is not fixing anything as-is, and
it's just actually hiding what is going on.

If the i915 code wants to be consistent and really have just one
singleton, it needs to do the looping with some cmpxchg or whatever
itself. Doing the loop in some get_file_rcu_once() function for when
the file pointer changed isn't going to fix the race.

Am I missing something?

              Linus
