Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C55378993DE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 05:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD2710EC59;
	Fri,  5 Apr 2024 03:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="W6vpk3e1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144D910EC59
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 03:28:55 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-516ab4b3251so2027023e87.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Apr 2024 20:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712287733; x=1712892533; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=SWruzgAwzGHwZyzf69pJQ30RyBSIKVFWwUeV1X/UA+o=;
 b=W6vpk3e1R/3B4dMoVkqu1vUrB9/LS9vNY4c1hNoIG38l9pIGpR3K0oOTPh7ilQo6IL
 N6taKEQHjp3h8NlmTzoqCYpcXbOWTUr73o+R/j1dWeMPCPHxcqWih77B7XmkdI3bvKkz
 23hC8K9etBTmy1Ncix7Dd9zj16dFaQ7rf6rp0XHef/D4/uCppjBg6EzEX0PyRGFca3iU
 nwa3sZs9DVHFkNT1dvAILLEA+8QYV2yrvO/a9CheppRX2Z3RYrNTvqg2VaosrwEUIvMI
 e9JeyQFxCgsReDIPsD+Lcp1wNi1W3LFByoAvkLPqoR79UqSPT6HevzlyfF/xkS48+Hxl
 jlrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712287733; x=1712892533;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SWruzgAwzGHwZyzf69pJQ30RyBSIKVFWwUeV1X/UA+o=;
 b=ggTEVlmKcjaHxbDV5HTZpx2yrd2TwAgf8Y2mD1rVzGBGr+zNiBcKSCSxxvW6KwCVZS
 QSJ+MPO0UpZYZGFAI7z1j6VPd6pJTSNlM4zgXhC1xi8iFeuJggGXF0+Q6nquQbcS5H7h
 N8keZGBVyQJDPZq4PQ5Sndjruk09t5uZJOKKRD9kZNRqstipVOTkBg6N9gDdyYstKR8f
 R7ED8yQiBddWAvlrIrXlp4t1JL0mZcKmcaI07sYABRz9m+GlfhLk9wn0dA/8IhWjuIId
 tItfNHhzNQONbS3/n/wZL5Jwtltzp770KROzp9Em405xqZjR+fWkVm1suF5Kz5lCAajW
 F/TQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUR/c4LNypfhMzIC7o1kSB8I6zILt5nkXd0eSnLhrbRZCS1hG8QfZErUMPK5wB/kCSJWT7q/WX/QErbjJaS8nvfxRYbtAp9D7UgosWMHEjR
X-Gm-Message-State: AOJu0Yx1JJRYJXnyFOaJn52tz++isNH1s56//iY3IHc2CqtmyIepG3M1
 0V+a5PcF9fforQgg5AbMQaYgUga3+Uh4yzhGfmIMYXzcW2hJltYLJOca4D2mrT4=
X-Google-Smtp-Source: AGHT+IH4c5iALdjq//1h57nzWtlJWr2lSaPBK7tAH7LWcCILCZruNZ5HWEvE1EPbNF4YNQIfLA0OtA==
X-Received: by 2002:ac2:5f81:0:b0:516:d18b:eaed with SMTP id
 r1-20020ac25f81000000b00516d18beaedmr206875lfe.30.1712287733213; 
 Thu, 04 Apr 2024 20:28:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
 by smtp.gmail.com with ESMTPSA id
 d19-20020ac25453000000b00516c580b640sm75424lfn.13.2024.04.04.20.28.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Apr 2024 20:28:52 -0700 (PDT)
Date: Fri, 5 Apr 2024 06:28:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/12] drm/client: Use drm_mode_destroy()
Message-ID: <g5dnshb4q64ualfj4sgv5il2btrpnshanssvefnr4vdns72num@rqlg3ime3rda>
References: <20240404203336.10454-1-ville.syrjala@linux.intel.com>
 <20240404203336.10454-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240404203336.10454-4-ville.syrjala@linux.intel.com>
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

On Thu, Apr 04, 2024 at 11:33:27PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Prefer drm_mode_destroy() over bare kfree(), for consistency
> and setting a good example.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_client_modeset.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
