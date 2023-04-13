Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC5F6E0E13
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 15:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9222910E356;
	Thu, 13 Apr 2023 13:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0584710E342
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 13:08:41 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-2f45377dcc7so179907f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 06:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681391320; x=1683983320;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jLoclJUyhJUs3t9HEwpkULEyIVk1z3GNEgREpdph5TY=;
 b=WR8nlnbAolhrmolAasbtyU31sw2rzDBCA7YC2JHdwqRuA3GY/kNhp37VKKOc/rOSNE
 xg1kYQmwhrMYeE+0BKVYT7IoVImE10E1Ajj22Mpac+QOBUp/idpNyE2IE0bLIsUecBdE
 GletgOAOamyrQoSj5UTXvULAzzkDbAG0SKjg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681391320; x=1683983320;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jLoclJUyhJUs3t9HEwpkULEyIVk1z3GNEgREpdph5TY=;
 b=WCnXronViaLpilZN/uv0VaJVuOHFR9cOG4Zb4DNf8DuB5XQnPsZKZjS5dn9GIIVr+p
 YkzolUJG8j2FS+rb1fwU2BxjApqPeemnV7JL/s/IDSizpbHyQlpGb2yBNLMTDfdOlMKm
 U0O2JpByL6dBq1ermfRDo6MHbUCJp0iBbDyaYBHJY02plAF2z4lhbLwUKgCcq6OHeoxV
 NXTX5pW2ysO1wbWR5yPe/Dq4EjunAw2bwm3QJXqTaQz/uGmb6oerrJe5eVudp7RJkXLa
 x330OVo6ULUOOe94eAuTNfwMLItwsKkII8YVM++BGCE4RzvKObWv+bEs69FGgKg5LC3b
 UNAg==
X-Gm-Message-State: AAQBX9czPw1Lo1pE2PYzmtAB62h9e/h/VY1QexjzNNhTLrKJEus+bkAS
 3nrGH4ICq5bxtwwJAtdnZ1naXw==
X-Google-Smtp-Source: AKy350YcAOMm6Y0Lvru2wl5OrfKR1vJgtJo6T7FO3gZxLpHR3phM6n+jW9cl/jUbQDt+ZhkvVYSreg==
X-Received: by 2002:a05:6000:ce:b0:2d3:1c7d:a3a3 with SMTP id
 q14-20020a05600000ce00b002d31c7da3a3mr1267663wrx.7.1681391319971; 
 Thu, 13 Apr 2023 06:08:39 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 x17-20020a5d4911000000b002e55cc69169sm1276396wrq.38.2023.04.13.06.08.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Apr 2023 06:08:39 -0700 (PDT)
Date: Thu, 13 Apr 2023 15:08:37 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZDf+1Sl/PHB4VYNu@phenom.ffwll.local>
References: <877cugckzu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877cugckzu.fsf@intel.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 13, 2023 at 10:13:57AM +0300, Jani Nikula wrote:
> 
> Hi Dave & Daniel -
> 
> One DSI fix, stable material.
> 
> drm-intel-fixes-2023-04-13:
> drm/i915 fixes for v6.3-rc7:
> - Fix dual link DSI for TGL+
> 
> BR,
> Jani.
> 
> The following changes since commit 09a9639e56c01c7a00d6c0ca63f4c7c41abe075d:
> 
>   Linux 6.3-rc6 (2023-04-09 11:15:57 -0700)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2023-04-13

Pulled, thanks

> 
> for you to fetch changes up to 6b8446859c971a5783a2cdc90adf32e64de3bd23:
> 
>   drm/i915/dsi: fix DSS CTL register offsets for TGL+ (2023-04-11 11:41:57 +0300)
> 
> ----------------------------------------------------------------
> drm/i915 fixes for v6.3-rc7:
> - Fix dual link DSI for TGL+
> 
> ----------------------------------------------------------------
> Jani Nikula (1):
>       drm/i915/dsi: fix DSS CTL register offsets for TGL+
> 
>  drivers/gpu/drm/i915/display/icl_dsi.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
