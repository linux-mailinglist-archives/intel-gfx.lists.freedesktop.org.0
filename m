Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A65E89975B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 10:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2363113A18;
	Fri,  5 Apr 2024 08:00:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="YvvtP7jp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7847810EC91
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 08:00:33 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id
 38308e7fff4ca-2d4979cd8c8so17294981fa.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Apr 2024 01:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712304030; x=1712908830; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+9x96bA3r57hfPsK4xMCm58MJka7xFNfOb92VjqBSaw=;
 b=YvvtP7jp+xAsHyAo1VJM1CeAdBwdV0yx+/Y0EqDk14o94EQmc7ppSE4hpaaAGlITn6
 jg6yser3p/i1MJ9TAVqf31q9vHTe9EzNUMjHQ/vlEPHpySftikHvYZMCyr9gQUPuRE5q
 6fBm+hym6/xx8GrfE7VmNIAeh/AID3mLG0ZVdae+NVYB+nLF75GSgXCt5QI460LDqilJ
 1N3MLkXvTcxJKj2b6NlLIYknkf9akZbcRdttMEVapVM3kWEcH35xMZOPKps/KV7W+79L
 tmeAHpHu4JGd99LBR5QYq3LUTFSLvuW+R203kpQQ1uCXU6oRSGgi/sC2iGUa6UcmN7tR
 T9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712304030; x=1712908830;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+9x96bA3r57hfPsK4xMCm58MJka7xFNfOb92VjqBSaw=;
 b=IzKPS/5IYXlN9FKPZTyvoM/jBK9D0lxaiaMovy6QloXh7Y3QWFeBGmVWysMKjgqFSd
 rkhUa3z1UVxRRp9LIlPo2KmhrTwhptfzSvQHAGI6BPD1Faf6/WoFcElXWYydi07zuwzD
 F545W8G+1hPkvEhAR29DdxvLZJf37JIFksEUrNLaZMDLYE8rQIIJ/D8f8Bj1W3hfY8ML
 plaHy19NQwvpkTzIarl00jBhIJ/g+KzOPYv4fAWYgwxPW7Qn0eq03rDa2Mp6kND98eET
 aMaWDXymD1Fxflf8gBeTjsosbftR7JeGJzhNEodRoRSHHxVDpsysW/5IeB/uYHwryHqM
 Ex2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdYEuS3doWacSpzDnBEY2eQyeetWyD1bB3XpXneHil/B10IKnpk/EvLsLPKHeMmSXaX0kX8pN1BrZJt/YHc0I7mNc2O3oKPwMrh5Rj6tHv
X-Gm-Message-State: AOJu0Yx+i/XvrbSTjp43T4PXqtAhU23YUyHJDwf1UJWnnyHKyUTzYrmR
 fq+Ve9JtpJDByIVJIeh/Av6Ylvj8l8n/xzz09ycmxeGd8xP8GVvv9MGlLAAXTrJyoWWfxsTXov2
 M
X-Google-Smtp-Source: AGHT+IHhQcFFw2NX2nE+TGwiJ1vC1Yiesn3mmq9hqNfWnNxJA0S39gMci7oqai/gpEKSqsj2RpWZWA==
X-Received: by 2002:a2e:9019:0:b0:2d8:3a6a:16f6 with SMTP id
 h25-20020a2e9019000000b002d83a6a16f6mr531748ljg.4.1712304030327; 
 Fri, 05 Apr 2024 01:00:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
 by smtp.gmail.com with ESMTPSA id
 w24-20020a2e9bd8000000b002d3f3da0702sm100314ljj.107.2024.04.05.01.00.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Apr 2024 01:00:29 -0700 (PDT)
Date: Fri, 5 Apr 2024 11:00:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 ankit.k.nautiyal@intel.com, jani.nikula@intel.com, sfr@canb.auug.org.au
Subject: Re: [PATCH] drm/dp: correct struct member name in documentation
Message-ID: <f2vywgdibdgkxabo3thzch3hcbycyeu7pbzoawhwoolr4ur5qp@a77a4xez4o52>
References: <20240405065159.439145-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405065159.439145-1-mitulkumar.ajitkumar.golani@intel.com>
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

On Fri, Apr 05, 2024 at 12:21:59PM +0530, Mitul Golani wrote:
> Correct struct member name to 'mode' instead of 'operation mode'
> in 'drm_dp_as_sdp' structure description.
> 
> Fixes: 0bbb8f594e33 ("drm/dp: Add Adaptive Sync SDP logging")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  include/drm/display/drm_dp_helper.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
-- 
With best wishes
Dmitry
