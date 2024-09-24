Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2075B984307
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 12:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B205810E6AE;
	Tue, 24 Sep 2024 10:06:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="WYYMw28W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C681610E6AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 10:06:32 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id
 a640c23a62f3a-a8d4093722bso434819866b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 03:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1727172391; x=1727777191; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=eDD1S5nlO1CXzwvB4ji+65j5J/BztHtz4bGD3A6G45I=;
 b=WYYMw28Wn7WoBX0WoplFORmVy0D8cAch1Kpmsp2HvrNjPxKzgne3T8kAkZqwu1baIz
 jnY7g/6swtRs/uQVvbzqW0K7I1X7Sa7FLjzcBfmhANlcpL8TB48B1SkMlfyjiYfTVww7
 JLKNyPkOdZDmoR0y44Vm9yegSInn5PUnFn6EQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727172391; x=1727777191;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eDD1S5nlO1CXzwvB4ji+65j5J/BztHtz4bGD3A6G45I=;
 b=lTRrJN/lEdO69nV4yVoPd69bQMOXGriVoBLZA12hasn1hBBo0UcFnopuLSey94J8N8
 evsLdYq5nzMBINmyoi0jnuEPpjLfQrma3HcOgkoqbBb62Z4dveV2SH2jUHFX+GCq4O/D
 8B0t5u3m9U8umoTxVrz2c8a2tMxHHpOk8qln0Wu8nHzwAqgDcojlO8S4/3yDA5/+S9nm
 B6heKphIy5ONhCOjKtOmmpJTYeA0J9nZpTmpgWg4hpE+o2BGxeXgpSewXMtBsCdmD+PG
 pP6lFkEDlSrZFPIUnZi/fTU4Ka2mlJw6UID76fwq6tVP161gEaGZzbH7hmvJjD/PGx27
 mohQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8p4+iGwA+cph7AQ3xQ/yE/KDaMyMJSX/Gfsn6YVPDO66cNuEPyV7wgo/dOm/9se+k/WmAi6k7avc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwzasysR9ckpLYHixk0eLKaf9qZHvGjf9jvRa0frE9/J93W2dWS
 6SF2cUO93Q2qjP5KBur2flt89ak5A/OKunMc2UzGWD4UaQZv7FfV3k5pSTUIDw8=
X-Google-Smtp-Source: AGHT+IFo3ilPbqgDfq/DGleei74Oeqsyw5ng45qCATU2/WJbCw4dQY4/O4LRiibIAD1UxoCH/oa8ZQ==
X-Received: by 2002:a17:907:e25b:b0:a8a:91d1:5262 with SMTP id
 a640c23a62f3a-a90d56afa53mr1342398066b.28.1727172391072; 
 Tue, 24 Sep 2024 03:06:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9392f347fdsm66589266b.16.2024.09.24.03.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2024 03:06:30 -0700 (PDT)
Date: Tue, 24 Sep 2024 12:06:28 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Carlos Eduardo Gallo Filho <gcarlos@disroot.org>,
 Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jeff Johnson <quic_jjohnson@quicinc.com>
Subject: Re: [PATCH 0/2] drm: revert some framebuffer API tests
Message-ID: <ZvKPJGQyZmdWNOmd@phenom.ffwll.local>
References: <cover.1726594684.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1726594684.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 6.10.6-amd64 
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

On Tue, Sep 17, 2024 at 08:43:50PM +0300, Jani Nikula wrote:
> The tests consistently trigger WARNs in drm_framebuffer code. I'm not
> sure what the point is with type of belts and suspenders tests. The
> warnings *are* the way to flag erroneous API usage.
> 
> Warnings in turn trigger failures in CI. Filtering the warnings are
> error prone, and, crucially, would also filter actual errors in case the
> kunit tests are not run.
> 
> I acknowledge there may be complex test cases where you'd end up
> triggering warnings somewhere deep, but these are not it. These are
> simple.
> 
> Revert the tests, back to the drawing board.

Yeah I think long-term we might want a kunit framework so that we can
catch dmesg warnings we expect and test for those, without those warnings
actually going to dmesg. Similar to how the lockdep tests also reroute
locking validation, so that the expected positive tests don't wreak
lockdep for real.

But until that exists, we can't have tests that splat in dmesg when they
work as intended.

Reviewed-by: Simona Vetter <simona.vetter@ffwll.ch>

Cheers, Sima

> 
> BR,
> Jani.
> 
> 
> Cc: Carlos Eduardo Gallo Filho <gcarlos@disroot.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jeff Johnson <quic_jjohnson@quicinc.com>
> 
> 
> Jani Nikula (2):
>   Revert "drm/tests: Add test for drm_framebuffer_free()"
>   Revert "drm/tests: Add test for drm_framebuffer_init()"
> 
>  drivers/gpu/drm/drm_framebuffer.c            |   1 -
>  drivers/gpu/drm/drm_mode_object.c            |   1 -
>  drivers/gpu/drm/tests/drm_framebuffer_test.c | 134 -------------------
>  3 files changed, 136 deletions(-)
> 
> -- 
> 2.39.2
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
