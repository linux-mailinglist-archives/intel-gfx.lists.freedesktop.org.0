Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF4E9EBBB5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:20:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDBF10E993;
	Tue, 10 Dec 2024 21:20:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="GYXTu5hw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E560410E98F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:20:31 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id
 2adb3069b0e04-53f22fd6887so3390000e87.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 13:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733865630; x=1734470430; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yF3vBmNZS9MU6AYhmkZOCnnb/mhvQHCH0jIPUUHFQrU=;
 b=GYXTu5hwODkGHe3hMDIcBzdLz6sd9WCs7EzNK6Om4e7iKZAAcSNcbiyzgRSRzlm7Tr
 rbfPtowRZd3CNp7MV0pstXKaazTyMu2dzMECG1CBtETWYjegBzEgUm0RFZF1IrPb8d9o
 /pl/sVcHUOASLTsrwpii3CEn8hbrcXj3ga9Q4iYui5IN5R4VyEWdSN+DmDh1Y2Df2kme
 lGICeYQJH4sTSrMlOYRxNXEb+bSCylhSVo+9z/Q27NVpawUSqDne4FJbZyoTV+AusPMZ
 VDheN79kYFbTMaBGEna8GkRddHl1+2qCn9r6+7KtHu7bGFii9KdMogSewWjRUcyvv9mN
 55WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733865630; x=1734470430;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yF3vBmNZS9MU6AYhmkZOCnnb/mhvQHCH0jIPUUHFQrU=;
 b=n/FScJWPVsLY+/oKmJJq49zBdDM9xwQFw/aD65rh4cKIE/VM4qirJoBXEoEzGE+nIk
 P8TBioJGHx925bAQkHdUsEUJIcmYZjwxUUj8p4bXPLM4P4bPbhMAixcryHXIAepzl1yi
 Fye325Fx0RHNFBPjPYDY+OPaq4M05RyitxI5Zt98nlaguNqG1lDI4O3WD7o38riq1+2E
 bIrbHZHuWmPhbomEwNp9pucQf8FQfaIDGPIehqW0xINLXezgKW3hCz5DH/FWju25MAU/
 4n8h4K/2CIZmINMQHthyGQFhamIuk45PwcutooVyYBL2wY9ZEGUmc0tju/RBqvfyjATe
 ftXA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkACSJ6k6MxX+C8yBqIamqX6Q5TC7ki6f9Wwo7HjVLkyHepd1VGYngxBK/MjCw7gWAPo0jl0SrDIM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyKfR1TB9x1Vl+iv/uq4jSk2BzbAHKYQgpDOvFCl9ZZa5duAbvO
 GffVCwu3eiYk+ZEKaKMxCcsGp+aqwkEcnYw7qJZSXwkKk1na6agejOBQXXYt1LI=
X-Gm-Gg: ASbGncuX1ToLov0kC2qkXrbaOh77UHTP373Oo1XRcwlchjqZoeo6f8I4yjyIBfEN7+1
 j3k0IdpQXVshziyEnEdGqahNH2FD9MYwrUhyBllDQGnou0S7+V0ThzakOeoNhmhdzZv3A6Dz7Rq
 vs4OxzwLhQj6qtZOixATxLGjeVKEy5Mt2qhrTubMY5OnOWTzR3iGGRc9saMgPbknSnXApmmaM7Q
 SnpiosOnwGKHk6KbFWCKTwhDvbHRUuTEkN1GueOnQ8Cs7yuDaZ2HVQE0x9Hbf5NPvEOyQu1LjVn
 vSHrN6Z/Mj0xfY8NXiP7oFakEgWcYU22bw==
X-Google-Smtp-Source: AGHT+IHCODZIQ0z4mmWtV1wEX8j8zg9S/BNFluONyQd2XvnZpEGUwS4bPVxg3YoPJtWqjVmMgWar/A==
X-Received: by 2002:a05:6512:3990:b0:53e:368c:ac4f with SMTP id
 2adb3069b0e04-5402a5d3d6cmr107076e87.9.1733865629981; 
 Tue, 10 Dec 2024 13:20:29 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53e34569209sm1395827e87.128.2024.12.10.13.20.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2024 13:20:28 -0800 (PST)
Date: Tue, 10 Dec 2024 23:20:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Xinhui Pan <Xinhui.Pan@amd.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 Alain Volmat <alain.volmat@foss.st.com>,
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v2 04/10] drm/amd/display: use eld_mutex to protect
 access to connector->eld
Message-ID: <pgi7p3aemxm3db2k27vi5euh6q6ppayrw6y7tcfeq4g5z23hzr@xousag2qhobp>
References: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
 <20241206-drm-connector-eld-mutex-v2-4-c9bce1ee8bea@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241206-drm-connector-eld-mutex-v2-4-c9bce1ee8bea@linaro.org>
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

On Fri, Dec 06, 2024 at 11:43:07AM +0200, Dmitry Baryshkov wrote:
> Reading access to connector->eld can happen at the same time the
> drm_edid_to_eld() updates the data. Take the newly added eld_mutex in
> order to protect connector->eld from concurrent access.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 2 ++
>  1 file changed, 2 insertions(+)

Harry, Leo, Rodrigo, Alex, Christian, Xinhui, any response to this one
and to the radeon patches? I'd like to be able to pick the series for
drm-misc and these two are not reviewed by you.

> 
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index 19a58630e774029767bf2a27eb4ddf17e3c21129..04c68c320252b5ce9647f0606fb86fe57f347639 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -1037,8 +1037,10 @@ static int amdgpu_dm_audio_component_get_eld(struct device *kdev, int port,
>  			continue;
>  
>  		*enabled = true;
> +		mutex_lock(&connector->eld_mutex);
>  		ret = drm_eld_size(connector->eld);
>  		memcpy(buf, connector->eld, min(max_bytes, ret));
> +		mutex_unlock(&connector->eld_mutex);
>  
>  		break;
>  	}
> 
> -- 
> 2.39.5
> 

-- 
With best wishes
Dmitry
