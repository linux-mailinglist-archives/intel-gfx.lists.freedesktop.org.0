Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5EA00D95
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 19:21:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D7110E914;
	Fri,  3 Jan 2025 18:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Ncg2bYaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A5210E914
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 18:20:57 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-aa6b4cc7270so1798813166b.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2025 10:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1735928396; x=1736533196; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=a4NhGUz7I3CAC37MMfl5it+wA4D/a3jTss78eeeM00E=;
 b=Ncg2bYaB/faHfaZXwQgfgPjeMimih4+t5AShg4EguRSwmLskMC2uJ5013u8vKLzJXg
 EY6dNuESBKTgMSrH0pSyzp+8xCpZ/yY+kW4MtGy/WjGajF2z2vpxDuHlfkOF3dWm3Bu4
 OgE40k4r3R1Lv4RsRBsGXTntPXUmCis3tVeR+G9LU1d8QK8R50oWMrKSSXUu1kwBYxJD
 uMuNe0GMEffaCEo6G7I9LkvGA0m4ApBeXRjhDQNM0KXHzKaZBN4TgUuAJ/PrKCDSpRUh
 4eTLTi/EFtD6Ym4+5ff2zTrljMsQq3hocWZND+TmObCsYeA6l0BbenFP5Jo0YYD+fQZC
 dWHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735928396; x=1736533196;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=a4NhGUz7I3CAC37MMfl5it+wA4D/a3jTss78eeeM00E=;
 b=TeSKGVwgRK70m8kqnC+/Pgk8dilWnLEqjZeSNeA5OM2DDh4eFcw2p5gN4mTygSyNFz
 9L2/v/Uy+sfKw7rJRa1uFrVKnbmJtsNiotI+REKTXaQX81KTtdN/wQFSg4zWhT9AKZiz
 J7nXTX5GpMZFc2NEK5Uv1EdNVc5iNSdhwDxkO8htxhVmk0uRTVFOuk3v1fjAo3CRbW4q
 lOkUlCmcfq9Mw1ghGtzTJ6Hb5wFEoEtQhCO43Dzd39a0wpEYUa2So2KuaYy+GMHaelHx
 ICe5qsd8GOTtD/HxocqGKqCn6WnRJQdHnicSxEnKZ+5/9l5FiG9dHxPgoPeFlIbtB2Dr
 vFZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3jQtP3NnRza2+gvSowgno+tzTkeJv6dcgnpEExhNsARIGVbkpy7HzU5assbwJt46mw3B/m/P0blk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzey5x1L5qPI6CfUUto21XPH+joNMfK5FAUAzO6dqyLU8185Fva
 rEkVEG55vsWemfWzFsQ9DvN9fZH6w/tuw4hyzM9IzSnD283qMhFrjiHxXvAZV50iXOILY45nE4F
 HFBM=
X-Gm-Gg: ASbGncvU+VqfxeZiii6fLjNqisrXo8fMNecr8QG6ucVWqEVyqrFMcdXIFq8zlNqbpRJ
 5gXjBli0lcwz6GEZkQS+sBgrAfECaKVqtZPuag/IKREZuLEriPFmJzfGqey7F04WulJkQJplKlo
 MHE2yKHHKwhW8cRdEBMYLFULgf6eSOIk1QvxlWlLjZD+z5p1oq8wSichVoyennR4M9HDjf2JKK3
 k1oXEpPia0Ogm6FybBa/rXl936HkIoHyQnnvXfyfpBwJjIGz9KXvS+z/oXcNRvp9UEofAEPiybg
 lqAzaGRUxIEMhDrZvEDhYuTLPV2Zoz8HtyBq
X-Google-Smtp-Source: AGHT+IHkyk31lkzWD+THb2q0kv0bZe0UEvMvlsqPvrWF0mIfBuAWDJmkYgVUK9JyXm1uBZasD7+P3A==
X-Received: by 2002:a05:651c:502:b0:300:3a15:8f2d with SMTP id
 38308e7fff4ca-304685dff04mr196263781fa.34.1735927937405; 
 Fri, 03 Jan 2025 10:12:17 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3045b083ebbsm47714751fa.115.2025.01.03.10.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2025 10:12:16 -0800 (PST)
Date: Fri, 3 Jan 2025 20:12:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>,
 dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 4/4] drm/msm/dp: Add support for LTTPR handling
Message-ID: <qsmcpai2uqfhmy6y5wks55p4fyqigndfzqfnapvdjf35gu4wg3@5aowfh3xaydn>
References: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
 <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-4-5c367f4b0763@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-4-5c367f4b0763@linaro.org>
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

On Fri, Jan 03, 2025 at 02:58:18PM +0200, Abel Vesa wrote:
> Link Training Tunable PHY Repeaters (LTTPRs) are defined in DisplayPort
> 1.4a specification. As the name suggests, these PHY repeaters are
> capable of adjusting their output for link training purposes.
> 
> According to the DisplayPort standard, LTTPRs have two operating
> modes:
>  - non-transparent - it replies to DPCD LTTPR field specific AUX
>    requests, while passes through all other AUX requests
>  - transparent - it passes through all AUX requests.
> 
> Switching between this two modes is done by the DPTX by issuing
> an AUX write to the DPCD PHY_REPEATER_MODE register.
> 
> The msm DP driver is currently lacking any handling of LTTPRs.
> This means that if at least one LTTPR is found between DPTX and DPRX,
> the link training would fail if that LTTPR was not already configured
> in transparent mode.
> 
> The section 3.6.6.1 from the DisplayPort v2.0 specification mandates
> that before link training with the LTTPR is started, the DPTX may place
> the LTTPR in non-transparent mode by first switching to transparent mode
> and then to non-transparent mode. This operation seems to be needed only
> on first link training and doesn't need to be done again until device is
> unplugged.
> 
> It has been observed on a few X Elite-based platforms which have
> such LTTPRs in their board design that the DPTX needs to follow the
> procedure described above in order for the link training to be successful.
> 
> So add support for reading the LTTPR DPCD caps to figure out the number
> of such LTTPRs first. Then, for platforms (or Type-C dongles) that have
> at least one such an LTTPR, set its operation mode to transparent mode
> first and then to non-transparent, just like the mentioned section of
> the specification mandates.
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
