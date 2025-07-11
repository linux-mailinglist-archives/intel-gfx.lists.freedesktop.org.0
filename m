Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED26BB01803
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 11:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B81F10E9EF;
	Fri, 11 Jul 2025 09:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="f2mEa21S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 001EF10E9F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 09:35:33 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-3a4fb9c2436so1264989f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 02:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1752226532; x=1752831332; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6PLErhzIHgqUceJ8uGn53LmGP1iH03CQT0Hs7uBS3qA=;
 b=f2mEa21SSGPHWKBzmXSdvPi3C30XyllcBQXCJz58La3XwsWQ+AzgmIHmORuN/9C77q
 zkJ0R8zNi3djfLOH9Da2eFY1oU8QsijpoEFvezHkP6rsoKRkKiKCuqVtpWQEoE1ji+C/
 vQhdpd2O/bjpMg+2aCZIiC2xn4+4zYEXznBlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752226532; x=1752831332;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6PLErhzIHgqUceJ8uGn53LmGP1iH03CQT0Hs7uBS3qA=;
 b=Fd7IuUZ69qEnQIWppT07FdFtKIO424TVOlVgN35LJdutIU1FZhB5i3aLr7KZsUss2U
 gKaEIlzsKRlIwkMUL4Ehm9RHiuq3Jk7V8spKW1EvcXM9wHZsO27Ndzr09jnMeSFU05OK
 61bqWQWQCAxLYCYyUKbL/d+wf9gKuMmWvYfLhtHBXbAz3iChkhda+ULNPLvO84h5OAx9
 TYDTUKOCYB8QG+6LKF9+dQzMafT6wy8JSJeR7hEeE1cVY1kzPXg40YTm3I9yHWvv2ijB
 niL9XZ9tu3TsRlmZp95GBmKxRCziyc+5E8nHhzz8YE7ooxetww3JkiVftZk048vkoc9i
 a1Yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXB9N0crvzvMfN86x4q8EzRMtxWvjFYjS1OBDjvYuc4QQPFbya3wPY4G5iV/VaPeK7IVKKSgDER2Hw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxvznH5XaGqhvWdOmwLoOckK1j7aCgt0e0FQFFNjfB8AvmPRt02
 QXekbwpAGQZgc9Mw5n3uzHFUeMXCis/bD6mHQJB0O/AjE0CtrYwTZm7y72zz9zU5MxI=
X-Gm-Gg: ASbGncurVioJK/XruN+kiawMCT9AOPJ41m5tYTh/ghRWjVHGOBogWJIkhx6kRgwOXFx
 RM4YueOVp7igJ8z4R745yDVdR/s6IIEe2OTxRBYqjJ6zviWRlgaZ5dOVQefEkJv/SR9BJ+6Tg5j
 tNUp2PfCDsBcAeUoI07yzWAbTYfO/azSp154CxA4uNePUlJ8R4e/z2vaGOtUAuXRDIM4945Bn1l
 8ZqzZ+B2/AcxpdGTnoq/k7H0z1f61CbZ1qMMdQn2GgofG9LTikJL9MObxsIxAPPs1u2KUXSW1Q6
 XHJ67kaLGpXD5vIk0OHzpiVouWcPoUtt6XEF4OWif+nTeBGoGVqKAhgxvm9PyuBvu+sRfrAAs58
 UkqkFg7SxE4Jock9fKORgnajxuuVOMUhLpw==
X-Google-Smtp-Source: AGHT+IEEFFDoIZs2u4Er2i46k4rasQ+FDPQ5hGoZxxNHWviqtk0UW2VaXCZ2Y1m3dLN3tIkdk1NcpQ==
X-Received: by 2002:a05:6000:d46:b0:3a4:f90c:31e3 with SMTP id
 ffacd0b85a97d-3b5f18ceb8emr1948425f8f.31.1752226532338; 
 Fri, 11 Jul 2025 02:35:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-454d511bd6dsm82049245e9.38.2025.07.11.02.35.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jul 2025 02:35:31 -0700 (PDT)
Date: Fri, 11 Jul 2025 11:35:29 +0200
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
Message-ID: <aHDa4ctAtd9pPvP2@phenom.ffwll.local>
References: <aHA_eR0G7X2P6_ib@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aHA_eR0G7X2P6_ib@intel.com>
X-Operating-System: Linux phenom 6.12.30-amd64 
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

On Thu, Jul 10, 2025 at 06:32:25PM -0400, Rodrigo Vivi wrote:
> Hi Dave and Sima,
> 
> Here goes the drm-intel-fixes of this week as I'm covering for Joonas here.
> 
> Also, only the single DSI fix from Hans.
> 
> Thanks,
> Rodrigo.
> 
> drm-intel-fixes-2025-07-10:
> Short summary of fixes:
> - DSI panel's version 2 mipi-sequences fix (Hans)
> The following changes since commit d7b8f8e20813f0179d8ef519541a3527e7661d3a:
> 
>   Linux 6.16-rc5 (2025-07-06 14:10:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-fixes-2025-07-10

Pulled into drm-fixes, thanks!
-Sima

> 
> for you to fetch changes up to e778689390c71462a099b5d6e56d71c316486184:
> 
>   drm/i915/bios: Apply vlv_fixup_mipi_sequences() to v2 mipi-sequences too (2025-07-10 11:35:20 -0400)
> 
> ----------------------------------------------------------------
> Short summary of fixes:
> - DSI panel's version 2 mipi-sequences fix (Hans)
> 
> ----------------------------------------------------------------
> Hans de Goede (1):
>       drm/i915/bios: Apply vlv_fixup_mipi_sequences() to v2 mipi-sequences too
> 
>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
