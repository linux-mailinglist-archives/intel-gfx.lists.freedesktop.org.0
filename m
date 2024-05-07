Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C9C8BE61C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 16:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543E910FB86;
	Tue,  7 May 2024 14:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="HRESktVM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AE6710F708
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 14:36:24 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id
 38308e7fff4ca-2e27277d2c1so42481221fa.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 May 2024 07:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1715092582; x=1715697382; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=W46Kt5yvQlfhtjiIgYjggG1nDCwThUkmABq3UaihB1c=;
 b=HRESktVMreONeZ7BQxDPPGZZ6yet2DrmcxTN12PAOh/FJX/DS9whasfvX7NhrzkXMw
 XrCmHytD8GIBXM/FdgVR1bLQDgkDVKoPz1ABkXfKQaNTeqIL8bHnh1SKWudmSsaAMCaO
 Bz+h4SsELtkClanBct1MHHkt8WegOfVURtI7TMrsSZU39pGP+XPxBFpc8+JzKiVfMjJQ
 jdQ/hT2KtLsVmmPZTykwKyElnIMvxqSFBqzZPS/y+9puKDES9U1Jq55xRPsGaM9vBTt5
 fiCc6Xgr8HonKx3kT3xHxGUul+M8Mha+PAMvwv3xUTj1lDK5vxlfQwRk3ZNcnUvntjPc
 3OQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715092582; x=1715697382;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W46Kt5yvQlfhtjiIgYjggG1nDCwThUkmABq3UaihB1c=;
 b=mlmXeBuHXl6k5piwtPohYW1PUccTvGEMmp2bhJZ6mocomzxIis7aUuHIHK5N26zw5N
 bT5sqIvoIWtk0DyE0u1Eyq9gknjNHXETLdzYsoJXebjh2vbNZaUx8Dzsg9v7Bxvl12Ld
 6Y4D3vUy3Yl9zUF1l8+Q5TJ5sgHclpWs+AdHcfdxTiV8ban/Vr2/KNEN3ZuGpds2NYYa
 V+HgtRe8Z3c4GRDfQnxPwu5uRMwWZ5gOE1wp2BRduKjQxglWf9M7HdPEsp1rEyzkhyKJ
 ZpIO9A1YtxDI0t1RbmyMG6Jode4wj2rHf0r1FmkNfXbLomi3a15cb60kvM2HjeBVgOyu
 UmBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmtaTR67CYaQWXT8vTHkIWaZ+cL3Vzx8Is7Q+P0+coHme9g7x6twDBziSOFEWJziZ1q7ZsXP9smv8Q2nu/lFvMq71hoor3Gi068DtVrJMM
X-Gm-Message-State: AOJu0YzADAhVtbmdl3HKhXg7zqv0jji1AUtvxKcTxftGIZ1iEwNxvPQr
 2qFRx0ITkPBnMrzDe10ySXQVg4M8dM5SwJUO/+fPQLH5H+ziBYI7G7r0gmplowU=
X-Google-Smtp-Source: AGHT+IGKxhVmc5WDuZG7EwSJbTPcSCGzUEMYnRH99AthqRDNVlt54D+51cUwkFZpTtI1PoUNyGcm0w==
X-Received: by 2002:a2e:a555:0:b0:2de:3421:9edd with SMTP id
 e21-20020a2ea555000000b002de34219eddmr10229313ljn.33.1715092581990; 
 Tue, 07 May 2024 07:36:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
 by smtp.gmail.com with ESMTPSA id
 r20-20020a2eb614000000b002e0e3467465sm2053575ljn.12.2024.05.07.07.36.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 May 2024 07:36:21 -0700 (PDT)
Date: Tue, 7 May 2024 17:36:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: javierm@redhat.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, inki.dae@samsung.com, sw0312.kim@samsung.com, 
 kyungmin.park@samsung.com, linux@armlinux.org.uk, krzk@kernel.org,
 alim.akhtar@samsung.com, 
 patrik.r.jakobsson@gmail.com, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, 
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, robdclark@gmail.com, 
 quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org, 
 tomi.valkeinen@ideasonboard.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, 
 Xinhui.Pan@amd.com, thierry.reding@gmail.com, mperttunen@nvidia.com, 
 jonathanh@nvidia.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/11] drm/msm: Use fbdev client helpers
Message-ID: <pkjjp5x3stoow7omrvawbsxe6tc63q7zrl2djtjnjrs3azdva4@qrdgdwz6cwjb>
References: <20240507120422.25492-1-tzimmermann@suse.de>
 <20240507120422.25492-10-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507120422.25492-10-tzimmermann@suse.de>
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

On Tue, May 07, 2024 at 01:58:30PM +0200, Thomas Zimmermann wrote:
> Implement struct drm_client_funcs with the respective helpers and
> remove the custom code from the emulation. The generic helpers are
> equivalent in functionality.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/msm/msm_fbdev.c | 58 ++-------------------------------
>  1 file changed, 3 insertions(+), 55 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
