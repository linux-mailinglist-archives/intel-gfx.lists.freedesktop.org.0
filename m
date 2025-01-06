Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FF0A02232
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 10:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF1710E5F7;
	Mon,  6 Jan 2025 09:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="xvU48lup";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED1E10E5F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 09:51:54 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-7b6f1b54dc3so2094291485a.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jan 2025 01:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736157053; x=1736761853; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=DNzark5qtCDwQ7M0G9ZBrwk42sp8e6A1IdLf0YnVhag=;
 b=xvU48lup4GhUiAngVhFQIPl1S9OVUUDdOQENeTqHP3RKRTrM7biuUWIzLwprxNr6Dv
 e3CilfrALU6HmwL75kHqYp2CPN660AxkniZmULRUgORo4MxpS4++HBrIciaL2RouDNIX
 Dw9A2saEHdVAlN+U3uiJdq1DxJEIKJo7JKDqiq0bnbjxIaKNCiJmLbdEHlvXuQMyR0Sp
 W3dqfgg95edLgiKPHxjrfKAus90DP7FZpBa4qTY6s/BHPzPuYlvX4pUw1no0GDC30bMO
 nPNpfPk/W/rzb1hUVvaUJmcAPbsou26sxm55iwusq1lAIf3euiICmceM66apGQUzt4zB
 bNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736157053; x=1736761853;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DNzark5qtCDwQ7M0G9ZBrwk42sp8e6A1IdLf0YnVhag=;
 b=A8T14f+XaCcmzsKrkVrkYxloTtQMFFLtcJ5LtEAn+W65aJ7QPwo2fxCLNoouI92eor
 vh/l0m2zdmJfXwJfIhQtKGiJCna9fiTq1RaUYYhh9VUt9NWxmDQ56HeVYbMUYzKLyiGG
 fDSkcjeN11bz4kZ5YG064KneFZdKMQ7a0p9tPT5eRahK/HNHHQp8YFgmATWG+WEv28Hq
 vk0B8AOie3eY5v0GBWjEh+4sES2asWR4s1skOiV1+8h4fzsbwbBfnU+V87lLfW/uz36Z
 RxsO2xugjJ+ZmPzGIoryxsymi69XP+PWTLvTEJwYcpxRq7OronBTvK2aR+w8sK9d4Qz8
 JYEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU7mAnzLPdue4yV9XW6LGLSpJuhJBF2vcob2i0Tdimv/FPdPI8iVldnsVMQZISC9fkCNn/q4atieQ0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwcJ785plfs6rv2xP7k+CtHatfVFcVNZTS33Ar3uo5maarEehXk
 11Cjmt2aqqlW++CQEcyU3Cqn52vhT1/xDi62rZ+kzx7KobxSi/FF2mKp4bZI3VHA1++E9xhMOav
 H5aAmux+XYA+v1z88a3E4pthqv30YEXVV8kLmV+mj5ljIj8qzJIs=
X-Gm-Gg: ASbGncusBPSi4+ILtJnf69DbPDktfmZsnYcZfDbJZGUU00RNYCaJCb2T2jYaXs0c0DP
 gNbVECRmaCznxfXpK6pVqMo3j0IW1UUZbXyJtp2OFpCUOD7O4PdUIKS4fyY4RlikHIyIMFA==
X-Google-Smtp-Source: AGHT+IF4a956+UIVmRcZnhNjgi8nOMg6IoaI0eIk4X2K6tB7iwrgpwMF+LBupvdnoC+iyKAmLzs7x15lyjySzs2uP7E=
X-Received: by 2002:a05:690c:6d09:b0:6ef:a187:f377 with SMTP id
 00721157ae682-6f3f820e059mr436161257b3.34.1736156736064; Mon, 06 Jan 2025
 01:45:36 -0800 (PST)
MIME-Version: 1.0
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
 <76ho36jqcraehnsgpjralpye52w7ryshhgizekn4qqfsikiojd@3yyorbvjkc7b>
 <20250106-passionate-lorikeet-of-apotheosis-c62ff1@houat>
In-Reply-To: <20250106-passionate-lorikeet-of-apotheosis-c62ff1@houat>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Jan 2025 11:45:26 +0200
Message-ID: <CAA8EJprwNFVV-1pr64_es6XbmOSYtTUYUUK3eOf7LFKBotbrQA@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
To: Maxime Ripard <mripard@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Peter Senna Tschudin <peter.senna@gmail.com>, Ian Ray <ian.ray@ge.com>, 
 Martyn Welch <martyn.welch@collabora.co.uk>, Inki Dae <inki.dae@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>, 
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
 Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>,
 Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, 
 Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-tegra@vger.kernel.org, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 6 Jan 2025 at 10:55, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Jan 06, 2025 at 12:47:07AM +0200, Dmitry Baryshkov wrote:
> > On Sat, Dec 14, 2024 at 03:37:04PM +0200, Dmitry Baryshkov wrote:
> > > While working on the generic mode_valid() implementation for the HDMI
> > > Connector framework I noticed that unlike other DRM objects
> > > drm_connector accepts non-const pointer to struct drm_display_mode,
> > > while obviously mode_valid() isn't expected to modify the argument.
> > >
> > > Mass-change the DRM framework code to pass const argument to that
> > > callback.
> > >
> > > The series has been compile-tested with defconfig for x86-64, arm and
> > > arm64.
> > >
> > > Note: yes, I understand that this change might be hard to review and
> > > merge. The only viable option that I foresee is to add new callback,
> > > having the const argument and migrate drivers into using it one by one.
> >
> > Colleagues, I'd like to graciously ping regarding this series. Should it
> > be merged as is (possibly requiring more R-B's)? Or should I rework it
> > adding something like .mode_valid_new() callback which takes const
> > argument?
>
> I think your patch is fine, and you can add my
>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
>
> We seem to lack an Acked-by for amdgpu though?

Yes. I think the AMD is the only one missing


-- 
With best wishes
Dmitry
