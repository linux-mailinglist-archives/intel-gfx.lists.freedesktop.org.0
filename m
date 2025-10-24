Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1289C06055
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 13:39:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9417F10EA5A;
	Fri, 24 Oct 2025 11:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="KlFEI83E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9582910EA51
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 11:39:16 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-63c4f1e7243so3142695a12.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 04:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1761305955; x=1761910755; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=oALJ4BFXS0wmn9T8ZjhghWD+JcsUYwNx3dHdq2BSp/4=;
 b=KlFEI83EikieLKG6Gt5CoQy6j2JCDVevde3deAz6I5FLvAAImAagFOXDkMI+wuLqM3
 MxMo/jr2G2sa8LxnPOxl+AmoDogpNEfxLFjWIKMtQ81rABqBOoLiWLUWZvLbc1DXvRe6
 XhqpF0Kg0Lw9NFt3rAEKQUlrXiivI7r4Vstsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761305955; x=1761910755;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oALJ4BFXS0wmn9T8ZjhghWD+JcsUYwNx3dHdq2BSp/4=;
 b=VmmFLSp0ALJMhIh89XDOAyJegMkqI7zdcS5IeEMTGx8t5U40Oh8BDYU6zyLusqSoin
 GKbS2bsLWdjwj8WVzntU9LV9hthf6sM8PVIvmiqe9M0L3btVQr6/TVK5q2OnjU3vj+Yt
 bsvs2OyFkj9ejMqvOc/Pnrz60NqvtQjdFNoHG8s0akAT+PFyizF9z4uGzE3JzcjIACPP
 SyqBwtV+VKV4e2OCKXo8Ma0m72Y9tzI++j4KCXktvtQQIy+1H/Kn1/Pjw4VdOtVecASG
 NVu8ZY+WvJ18l+Yw+jo2Va7crSvlCw2V/XI7iJlW8zu+1wUrB26RuQtL2+ccAMDLBI1J
 62yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3zI74GYgAqk8A6OZXwJ5LVtFq++JoatLCyo6PfG2sBIySvkLNNfPTh9f8KW3syFlch8OhbZlsQas=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyghuvtdnVbm/4vOwupkhPMBKL+1HgWXkBsOsMs/ktoK7tj/cru
 BRSIGdpwMYxn10TKAaDc7ZNEsK9VWMp8Ql3aBb3oExxXNRAzOs+6iKsOpR2+W2DqbxE=
X-Gm-Gg: ASbGnct2YbpICpFSmxClhBliF8fwzQxtki1/T//dcjGbf+g/H2ahos6cXvIVF53mk65
 LMI+7dCYlgIbrBANTozYWKpRSJXWtG9UMOtAO8HQ6hYH2s+iPKSROJjTEMZej7RqxzccaH1V89f
 5kmb8DwH+VjX5jyFd/oz46rYly7/22HGgAFJSIW66+XKqWug/hzfXdhRJRwTCC8PSvOoYX4NNMc
 J2BdthCb1SZy5XMT/8Utv8wnrx7j1aKLbNtNubvp6w+gqfkT2FjjPJ1VDWqh/xYKwUHTHpqogvs
 Q51gbMQn/7G8NXtXTMNQbXG0Rf+NvTXgn7WGP0A901wqm5KLDQ5+WnZ2sDOvzEM5Rv68bawVVRD
 OVgKMOT5JX3Zr70y4Kt/yMgoBEIp0v4C5OA6Y7Oqux1DQJDRGsSmbOdhOU/LxPF9HaF13+0CGyt
 iSV9Lrpgq7y50aTyEFZO142A==
X-Google-Smtp-Source: AGHT+IHuviw89OJ98pH99Dj0HbHVPFZjbGrY22q7RmBUEhgftWt2uXHRGFqpK7xgUG4k9NbTX8PxYw==
X-Received: by 2002:a05:6402:847:b0:63c:6ddd:fe35 with SMTP id
 4fb4d7f45d1cf-63c6dddfe90mr20584436a12.10.1761305955134; 
 Fri, 24 Oct 2025 04:39:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-63e3ebcd742sm4342843a12.15.2025.10.24.04.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Oct 2025 04:39:14 -0700 (PDT)
Date: Fri, 24 Oct 2025 13:39:12 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-intel-fixes
Message-ID: <aPtlYNb5S0ooNqY1@phenom.ffwll.local>
References: <aPojgsvNYOU0tN4U@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPojgsvNYOU0tN4U@intel.com>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 
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

On Thu, Oct 23, 2025 at 08:45:54AM -0400, Rodrigo Vivi wrote:
> Hi Dave and Sima,
> 
> Here goes our drm-intel-fixes PR with a single fix this round.
> 
> Thanks,
> Rodrigo.
> 
> drm-intel-fixes-2025-10-23:
> - Fix panic structure allocation memory leak (Jani)
> The following changes since commit 211ddde0823f1442e4ad052a2f30f050145ccada:
> 
>   Linux 6.18-rc2 (2025-10-19 15:19:16 -1000)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-fixes-2025-10-23
> 
> for you to fetch changes up to 789e46fbfca1875671717a20a916ca1a920268e4:
> 
>   drm/i915/panic: fix panic structure allocation memory leak (2025-10-20 12:53:57 -0400)

Pulled into drm-fixes, thanks!
-Sima

> 
> ----------------------------------------------------------------
> - Fix panic structure allocation memory leak (Jani)
> 
> ----------------------------------------------------------------
> Jani Nikula (1):
>       drm/i915/panic: fix panic structure allocation memory leak
> 
>  drivers/gpu/drm/i915/display/intel_fb.c | 25 +++++++++++++------------
>  1 file changed, 13 insertions(+), 12 deletions(-)

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
