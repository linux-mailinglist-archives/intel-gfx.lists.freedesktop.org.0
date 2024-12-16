Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 775B09F2F0E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 12:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BB310E5C0;
	Mon, 16 Dec 2024 11:24:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="X3l5Ybth";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D9610E5B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 11:24:34 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-540215984f0so4567299e87.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 03:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1734348273; x=1734953073; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gty21mjzYgvbYsbhfcrs7XMj7b14Ja6LtCdRiQMw9IQ=;
 b=X3l5YbthhhVTEeMbX8SZAbqoPCr7Mmq1yC0hwAnhNTsutlpSvKMegr3H3PgSj175H7
 Yy0BS7IsIqgy2tt+I8qk00T/eEoE6KlR63+KCxeBrQcbxsY9l4DA49NT7sqNbiS3W231
 98YgYxiRlbgR426qrBld7CHuGaCVWnCkMa4zb5JUzYRZRkxl/fSWQxDDT7/Mgl367UX4
 XwGRPoV6EIUnczu3oIglF9yfPlX+Xfr1YFJDBst2s0K4+lDSVvYeHz/Ez+9HwkoZDGX0
 qov42N9YUtyuTD9zw/CFasHNDaB3uz8+5rlaNC+8+Z9HfURIQKWnkhAy4U4uXvb0CB4Y
 L4XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734348273; x=1734953073;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gty21mjzYgvbYsbhfcrs7XMj7b14Ja6LtCdRiQMw9IQ=;
 b=jlNi0OEFnDqsCtF1teQn0UarrpO2+DiQ9DoN6JMZf2YThaB2KSOCIEUJMWJS41KoDQ
 PRJeml3pkwkl3oW3T5fb1XX1Ft1pD3sD/lq7g6oBYPf4o2MZ5ljfTWtkzTmRIr/qwtT0
 ixW9ow4SgGjMzmSZkMIhsntNOLrXg8B8wrXFg7rewQJXrVBZYiz5hhiGMmnqJHO3iHvk
 Y39hq9WF1FsOliYAg1mY5v2BMIbmTRbQSBpKNrUUScVshazzV6/D4qyssggQuLlY97dR
 v2S90RgBfnERpSMdgN1Tg38M7M7jDVzThqcL4ECDZ3Zh7ZpMixjSjMdOQeYfiP4mrUZp
 SEVA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXt6Txhz4HVzb8upU0tfXbmUt3dZZFNdCzj32+vE0leJUfBjqFp4MJ7BEmoH/b7FPf2Sa30tVI7zrs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywp+FJ4b5sT0b9M1OeXjQI4afPQxenFegRCAzDV1Pyut3sghHqj
 hrL3O/xyg1WJCvXqzaZAMHcowrN8pN1rpj7jABoeeOZUzaZx1SlrxCrJBpfgdDs=
X-Gm-Gg: ASbGnctCWOnjLFWnKnj87kQNikinGcWaeY0BnxXxtSd5AO6f7gg3WgHXH4pFK6T5GXF
 B8KFFBR5YUAKjOXhq8seBTNnHscG6gorCDkhnjQ5jYM9FTjoD6OLWii7/0yc3xoWvgkgQP33VoW
 VLho5ktb103prKl+pNKKXuz7XGA+nCrJjeJTrV9TC7XbS5Cmgna6elc0btTT2isbG7xaDjSa5B1
 4utuCrZgYCxv8OGNcj1gEnEGveQPDBjxsNDLuuDFszPRr6pf+5j3fgFGQm/umnSbQgTjuIKKtFz
 TdMcdymI44N1wz9axLas+Y5kdCpH+qZC0VmM
X-Google-Smtp-Source: AGHT+IHzioRjGIPfaVwEFSX3By+G0bPm5p1y4IolLwPf7YBpM4LUQ/QUZx/r1EiqpYtLRC9+8oUd8Q==
X-Received: by 2002:a05:6512:2212:b0:540:1a3f:e848 with SMTP id
 2adb3069b0e04-5409054bce1mr3948864e87.15.1734348273018; 
 Mon, 16 Dec 2024 03:24:33 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-54120c1612asm817266e87.222.2024.12.16.03.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 03:24:31 -0800 (PST)
Date: Mon, 16 Dec 2024 13:24:29 +0200
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
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 00/10] drm/connector: add eld_mutex to protect
 connector->eld
Message-ID: <xchjpeykkqwlpniaspbzitaozuoltoq7aturtu7jq6z4lcxh77@y7t5ge2sa4er>
References: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
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

On Fri, Dec 06, 2024 at 11:43:03AM +0200, Dmitry Baryshkov wrote:
> The connector->eld is accessed by the .get_eld() callback. This access
> can collide with the drm_edid_to_eld() updating the data at the same
> time. Add drm_connector.eld_mutex to protect the data from concurrenct
> access.
> 
> The individual drivers were just compile tested. I propose to merge the
> drm_connector and bridge drivers through drm-misc, allowing other
> maintainers either to ack merging through drm-misc or merging the
> drm-misc into their tree and then picking up correcponding patch.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Changes in v2:
> - Also take the mutex in clear_eld() (Jani)
> - Rebased on top of linux-next + drm-misc-next to solve build error
> - Link to v1: https://lore.kernel.org/r/20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org
> 
> ---
> Dmitry Baryshkov (10):
>       drm/connector: add mutex to protect ELD from concurrent access
>       drm/bridge: anx7625: use eld_mutex to protect access to connector->eld
>       drm/bridge: ite-it66121: use eld_mutex to protect access to connector->eld
>       drm/amd/display: use eld_mutex to protect access to connector->eld
>       drm/exynos: hdmi: use eld_mutex to protect access to connector->eld
>       drm/i915/audio: use eld_mutex to protect access to connector->eld
>       drm/msm/dp: use eld_mutex to protect access to connector->eld
>       drm/radeon: use eld_mutex to protect access to connector->eld
>       drm/sti: hdmi: use eld_mutex to protect access to connector->eld
>       drm/vc4: hdmi: use eld_mutex to protect access to connector->eld

Granted the lack of reviews from AMD maintainers and granted that the
rest of the series was reviewed and acked, is it suitable to leave those
two patches out and merge the rest through drm-misc-next?

-- 
With best wishes
Dmitry
