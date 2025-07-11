Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDE5B023D5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 20:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3702F10EAC4;
	Fri, 11 Jul 2025 18:37:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="OaODnWna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7118410EAB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 18:37:49 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id
 4fb4d7f45d1cf-60c9d8a16e5so4609703a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 11:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1752259068; x=1752863868;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NqSyi099qnjScevbzt/A0T/7PehrNF3qhUlbAV32+2s=;
 b=OaODnWnaN5CivgXgPSCd+ru572xlTwIy1fnSyrok3/qU/LfTy4StEXm7i2NaHknrjA
 CzLhtXATAiii6rnVk1K5zkBvQiAFuhTcPT31gLvwFE9bX29w6Zb8bOFscL8ZRpJc+AlD
 11D3GhOe/osO7pg8BJzsIJzIpNHRVO9gXUoVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752259068; x=1752863868;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NqSyi099qnjScevbzt/A0T/7PehrNF3qhUlbAV32+2s=;
 b=dtJc8IO4hkvU6IaD5Xn7lX3oHT7qhgIPZNe98y7UM2ni9foInJGx9TDSDMc13bEgaA
 SKDfJAiWQzpY0qIf7x+/W6/cYAcdX4D3fzyeLELpRrEhwmTeudMdkjpxis5DZdcmukuQ
 3IXmHQysnzKs1WFdlir2G0qLtUKyjoNy62N1V6FT/oiVzxmpGCDM83EqDzm/5LIDZKZT
 CgGLiDSQFqnBIcw6AickguzWVzvBU3XhyJQQvWMyBVhTIYanhPngTvGdHkoZmiEqXagd
 eMgth3BL2iuX0IuLrtXkfaPt/E39XkF8mnT8YZG3Y1IXLv3TaYd9SFmFP/SXbeQ9m6PR
 hW8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsl5d9XMmcR45HdOU7cAjWaoNjlyBW7AG+9KWZH+6qUdE1h5St82KzaPopbvElYdzsmv49lGUi41g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz5gtRaNnbnz6wYaDDI8Z3R8HI0QjCU1uDEUbyn0hWjuIewgroC
 /tGstEsft+44XNw6WOlxNBQPHvOjxhE6aUvAdQg7gO/Q/w/e2JDjh5p9djtmvZojrsI6KO5WWdx
 GOWlueniEXA==
X-Gm-Gg: ASbGncs6NHkka4KchRepTn7lA3UyMD5+Lsse5hjOZZPxjH1NaaXMJtwzlpYaJrCjN8+
 pE9zQ6/w/fCN5pZULZUJb36ojP0oEjw3YU+Umq0VWNN6cszHmoWIXFSiL/lvcQDkx0lcNAz1DH8
 bTFj+7BDuDUCP46AMbCZ+TYGWphYX5359rPpHFkdDkDy/mSB3SMyxJwXf9uwnSMU1lT9+M83UDw
 H1UT0XXee/ylU3s8vFYUe0S7X+3vyVEpifgfec+FhNtqjUgbFWi88VtRA4nGw4hDzuSm5GFGYFG
 F8Kz9X1pJ4I5A+D203faNoNoyIvWAc5Ys1jn/8sGvvQfZIkfu69TQQVRURCHY7OeNsf2zQa5seS
 kngv4Akq5JK3eILfecgtA6vdDaM9BDfWaN6/fsKm9Iqh6yTzNQ9GoGqEmUAoCOmLInev3vXT5
X-Google-Smtp-Source: AGHT+IFCVVR0w5Abg8Y9CjEYeCvCm9Gmzu0kcTcTlLyeUQjj9bonq/7Awfgg2dAWYsA81e5u8I60Hg==
X-Received: by 2002:a17:906:f599:b0:ae3:d5f2:393a with SMTP id
 a640c23a62f3a-ae6fbf96972mr421035866b.44.1752259067608; 
 Fri, 11 Jul 2025 11:37:47 -0700 (PDT)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com.
 [209.85.208.51]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae6e82e9341sm338503766b.177.2025.07.11.11.37.46
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Jul 2025 11:37:47 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-607ec30df2bso4733082a12.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 11:37:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWt4H+eatRVOkkrCNokOFRmBHPpqqf9wgX9OC+mJkXT3AuPde2OUQDh4NrKZhLX4Uqy2CWTUrOFi1E=@lists.freedesktop.org
X-Received: by 2002:a05:6402:1d4e:b0:607:5af9:19b6 with SMTP id
 4fb4d7f45d1cf-611e7c107efmr3549154a12.15.1752259066540; Fri, 11 Jul 2025
 11:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250711093744.120962-1-tzimmermann@suse.de>
 <CAHk-=whnUp7M-RZ6yzOyF6bzA4cmbckaH4ii_+6nBm0PqKOaQg@mail.gmail.com>
 <CAHk-=wif6u3C4gk7BtR1M+0SvHruXZ7xycP5oDdg-SF1D=ELqQ@mail.gmail.com>
In-Reply-To: <CAHk-=wif6u3C4gk7BtR1M+0SvHruXZ7xycP5oDdg-SF1D=ELqQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Jul 2025 11:37:30 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi3Fbiii2K9fgmoAgoJYoLuRyWfOZhh57FmREE15RbiUg@mail.gmail.com>
X-Gm-Features: Ac12FXz4IEMNfmtixe8DP0mDcYY7Ge-_C9kKvhQh3DPD6bVXdbf7Bxr8kqE2eLE
Message-ID: <CAHk-=wi3Fbiii2K9fgmoAgoJYoLuRyWfOZhh57FmREE15RbiUg@mail.gmail.com>
Subject: Re: [PATCH 0/9] drm: Revert general use of struct
 drm_gem_object.dma_buf
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: simona@ffwll.ch, airlied@gmail.com, christian.koenig@amd.com, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, l.stach@pengutronix.de, 
 linux+etnaviv@armlinux.org.uk, kraxel@redhat.com, christian.gmeiner@gmail.com, 
 dmitry.osipenko@collabora.com, gurchetansingh@chromium.org, olvaffe@gmail.com, 
 zack.rusin@broadcom.com, bcm-kernel-feedback-list@broadcom.com, 
 dri-devel@lists.freedesktop.org, etnaviv@lists.freedesktop.org, 
 virtualization@lists.linux.dev, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

On Fri, 11 Jul 2025 at 10:35, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> I'm hoping the login time timeout / hang ends up being due to a known
> netlink regression, and it just happened to look like a drm issue
> because it exposes itself as a hang at the first graphical login
>
> A netlink regression *might* fit the pattern, in that it might just
> cause first login dependency issues and resulting timeouts.

Well, considering the random timing behavior of this bug, it's hard to
be really sure, but two boots with the alleged "fix" for the netlink
issue made the behavior worse, so it does look like my problems on
this machine were a combination of the drm refcounting issue and the
netlink thing.

I guess I'll have to do a lot more rebooting to be sure, since the
hangs and timeouts have been so random. But the netlink "fixes" did
give me a hang that was very different from the previous ones I've
seen, so I think the drm code is off the hook on this one.

                 Linus
