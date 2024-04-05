Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667558993D7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 05:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 176AC113802;
	Fri,  5 Apr 2024 03:27:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="G+3U1UFo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FED113802
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 03:27:13 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id
 2adb3069b0e04-516d3a470d5so378788e87.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Apr 2024 20:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712287631; x=1712892431; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=7tYJPo22VzBlznam25aHas2BsH7xPSY4Ji6JEH6e6sw=;
 b=G+3U1UFoX1GeI0x6U37ZISubZZBYFdaG4Y3eR/ZNcr3STJ/YvBae+kC/nk8meCbd4y
 aS4ySdCP/wkpfMElJ8ibgDsNuPeFSuiVPExG/FGAS48R8vGCKAlmEwj53D9ZWnMC9H/S
 4ur/QJZkg4R9vm14nMs4stF5gD42bHkEwdTK+dv0sR4gbds63DMcbt1nyLXsPDyBqN6R
 kU5F4gRpN/dsg5Gc5S692AONQbvu214UphTWrn/XDJcWqm4tJMM/88T0qsf57/IFXhJi
 eDA1NwSSMldjAVFr0dKJHhw8e8dqJnJp9xMYcSJugY7S0NdWAPKip/1vmd5bQzZ85mEU
 iZ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712287631; x=1712892431;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7tYJPo22VzBlznam25aHas2BsH7xPSY4Ji6JEH6e6sw=;
 b=vCZGjGeMr7DllGyc6gi2M6oZC6zqcX52hlShGv2TX/0g40jpDpoK99n1omIlM8JC52
 KagOcs/CxReH0m0Zf9O7Jr4pvuEw5iqr4ynylf4mwR77oQID0WcCF9nqqgdUP/XKjfqm
 PtDHWzSl5t/yTE7m5PlRYT2CH3Po/c0pTLQ3QP0+zhgdF/0uzCfquDs0YQpoRbN4W+tI
 lWXbNHtzB86dtwp0Tj/JjvvovFR1FTMzyxMhADk21+xm5rA1kQ8uQzkOm6OCXCCw8OS7
 bDu8yiKrtFPR4QMPYma1Vx8I5WJIe2ny+RCrjZ8KL+DUVP2qO+3o4tBSeVO3rFXUMFCV
 5f9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCX4i/L4q6PlvN/Oqy9ctiOTgGQ3CjP7k6qizyKhIseQaSgmQRHIpbbhlEGyrzYHc0i2CBolNS/38g3hn1QqqgEdM6SA44evyF23o73BidhW
X-Gm-Message-State: AOJu0Yx2zpJL3LvUccN+0FCmGKxgWneYd92K6yskJk9YWl2Abz5KGAXY
 +oiogySzdlpcS3EjSBaPGQuqGkzDr8MDgJkfz166m4JeL2chETnfwl/xvtQfZosiRBifNk8tKKh
 g
X-Google-Smtp-Source: AGHT+IHFJZJ3gdNJonX+Zg/MSISiUg0Yv6Uo2gRmelwXmAUm6U2Zq11HFHthyJDvwPTp/gVQFE1AjA==
X-Received: by 2002:a19:c514:0:b0:515:c7c9:b14e with SMTP id
 w20-20020a19c514000000b00515c7c9b14emr103793lfe.57.1712287631312; 
 Thu, 04 Apr 2024 20:27:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
 by smtp.gmail.com with ESMTPSA id
 n1-20020ac24901000000b00516a08ce8f8sm70503lfi.269.2024.04.04.20.27.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Apr 2024 20:27:11 -0700 (PDT)
Date: Fri, 5 Apr 2024 06:27:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/12] drm/client:
 s/drm_connector_has_preferred_mode/drm_connector_preferred_mode/
Message-ID: <paprepg2j6j66qymuelpkfwt736mdveqlffkiwnznfift5hgkc@h4t2jmsjr4yh>
References: <20240404203336.10454-1-ville.syrjala@linux.intel.com>
 <20240404203336.10454-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240404203336.10454-3-ville.syrjala@linux.intel.com>
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

On Thu, Apr 04, 2024 at 11:33:26PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Drop the "has" from drm_connector_has_preferred_mode() to better
> describe what it does.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_client_modeset.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
