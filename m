Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 547134538F4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 18:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BD489FDE;
	Tue, 16 Nov 2021 17:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA366E064
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 17:56:09 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id c4so39131402wrd.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 09:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LNh3ndKlX3GBcDgYm73/1MopKtc0P8jwsBgahWBUZJI=;
 b=WYp38V6D3U2dAtWZzlaZf7tEDt8j1SLGHEcW4xto25CaYu5BsS0KEBelREFPn5NnIO
 4e2nt8L/eGfPQUHzTU3f7bSDUcPexkJ19Cx06O1qHJWhOYfWpVt4s1twLUwqemy4m5fq
 x4HHfVqUHMLZzI/jVGwpUxwRncEfrP3zEWZYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LNh3ndKlX3GBcDgYm73/1MopKtc0P8jwsBgahWBUZJI=;
 b=hYC+mcv77NH7D97DkrQmM8o/4k/9N1KUWh697lSMGeU91ujti17xpHJboWNzUefCGJ
 /K7vmiRuy08g6t/Tu1nQtGm9q9Q94MVr6tAHgmUQLj3ySWmDEDQxJhr3G03Cr2kA1ikq
 vXHthlpo6puNwN80vYSw5n7kb4FdnXFErSYeZZ1DdBJZukDHmCvSZJiNMSW0L+ddGQqv
 rbd6bmkUjWi0oYCgp4LcJ5tFn3b/oIgjBjjkcBKXkcIDQwEVcDH9sxS7yW39RTBPi7FU
 SQ0EUAbGzwyzorzqoMItNWu7Qo+IHbfM6D37Gzg1lsu+pEDjYpg/GE3ORkFmqgF58CKf
 uChg==
X-Gm-Message-State: AOAM533BDEtHRwF5MQRf/Rt1XER4fpI6obh/mn2ax80ziMlss12fqsH3
 x0B96ehbQ4UJVjFNgNTtFonKoHCWtSOZNw==
X-Google-Smtp-Source: ABdhPJyGNog0yXrBWNunt85+6L1NbPqWCxBQF5fmnWGqnh8k48ssEzu5ZIc4D+HhoJplcoM5Etar+A==
X-Received: by 2002:a5d:522e:: with SMTP id i14mr11827626wra.43.1637085367772; 
 Tue, 16 Nov 2021 09:56:07 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h7sm17489867wrt.64.2021.11.16.09.56.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Nov 2021 09:56:07 -0800 (PST)
Date: Tue, 16 Nov 2021 18:56:05 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YZPwtXx7o8jsB2N1@phenom.ffwll.local>
References: <20211116171434.20516-1-jani.nikula@intel.com>
 <20211116171434.20516-5-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211116171434.20516-5-jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: drop intel_display.h include
 from intel_display_power.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 16, 2021 at 07:14:34PM +0200, Jani Nikula wrote:
> Use forward declarations instead.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

On the series: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I'm assuming you've copypaste stuff correctly, at a glance it looks like
it :-)

Also I think that's a solid direction for untangling our include mess!
-Daniel

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 2777af09c711..686d18eaa24c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -6,10 +6,11 @@
>  #ifndef __INTEL_DISPLAY_POWER_H__
>  #define __INTEL_DISPLAY_POWER_H__
>  
> -#include "intel_display.h"
>  #include "intel_runtime_pm.h"
>  #include "i915_reg.h"
>  
> +enum dpio_channel;
> +enum dpio_phy;
>  struct drm_i915_private;
>  struct i915_power_well;
>  struct intel_encoder;
> -- 
> 2.30.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
