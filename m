Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D269D06E8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 00:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE99910E454;
	Sun, 17 Nov 2024 23:05:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="xp4Oln/t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
 [209.85.128.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8850E10E113
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Nov 2024 23:05:01 +0000 (UTC)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-6ee745e3b2bso7177777b3.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Nov 2024 15:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1731884700; x=1732489500; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wDP6nXqV0MtINrrHnzk5JYR07FFy3dWX4G1E1aHVYAU=;
 b=xp4Oln/tUHb1sLCGE8fLUBKH9isMRMkdQuv/jlECp97zabiyPN1YN3A8Np8xo6Ed7m
 4GJCcpv4rT+BqYSohv0MG1TC7M27IQn1ANU7j96OlmJD8ANN9fy9mI4k7Q7x7xiCMQlU
 01BB7/YQ7u3FLngWZoDQ2FeRx9nF+fw5hSzoYP4wTibd6WKFxaQfXCNU4EzsVXkLznB8
 0mG4P4VWqc8ambAQjy+UEd+HytvdQffHm9NrJmexdfsreF+BFfD/kdkKKkLB71C4uITH
 95nPZbrFv85kGpMixkbsV5aow52TWm4c6yheZM4J17OXqe61O+apXn25syRjvXw2suf7
 WMBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731884700; x=1732489500;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wDP6nXqV0MtINrrHnzk5JYR07FFy3dWX4G1E1aHVYAU=;
 b=Dz1Qru0TmOh6nUf2Aq0i7mjZKivF95bfL2zT/gH8D+OUKkI4pjfpZe+pxn3NkAi/1F
 vJSvwqX7frjdmIPyc15yPS5PDXQjBVhbkH2OWA4BZrwl1XPIwr6rnnDHNAJdsqQKAFuG
 MUxcjQGetorsJbv2F3/GsSu2/RpKOOC6Y6Gz1+r4w9zYGt5VUIJ90cFT80FTkUXfvhRA
 jh8KRmBM4Z6fsgyXiYKbUkRf6hhCCcbImAu6x7xQCY1pnCKMiWQMxHpIEgmeEhrFv4NQ
 a32X3+uWOlcQFIXrTBNJzBcFmG6s2JwqUIheMP8PYQVPrQy1VRj23y1wnTfx6C9VzMM6
 zjVw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1ZVSc51hIoMpYVKir2UP6QZfk62PTokHRrTEYfmitQYBhv8Q054+FwghOl/qsL2ZERnzHqug1DdI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy5DZDtMQjyLMt6pLNGAkLPu5dioNAO3XR8AcqKAzE3EzwSz2QW
 Wl0gX2qAhs8q83Yj3ds5fYs8H6vOpTdmOikGE/IFfN6AJwMCzlNbwteYcfVyi7dbITaJtegqHjf
 8Xeio/4mklLN9OY6tCAq4+zfn1EpHV9S31LO91g==
X-Google-Smtp-Source: AGHT+IGVsF/URQuiejSFS99+KP1AY+jCheh9Nd1ZQr7ln/8GfgdK5A5KGqyQAn7jrmLKuajvWL2ja0QoE8LpmQwfuqA=
X-Received: by 2002:a05:690c:4b81:b0:6e2:fcb5:52fa with SMTP id
 00721157ae682-6ee54ea2bffmr91201617b3.9.1731884700024; Sun, 17 Nov 2024
 15:05:00 -0800 (PST)
MIME-Version: 1.0
References: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
 <20241115-drm-connector-mode-valid-const-v1-5-b1b523156f71@linaro.org>
 <20241117212427.GI12409@pendragon.ideasonboard.com>
In-Reply-To: <20241117212427.GI12409@pendragon.ideasonboard.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 18 Nov 2024 01:04:49 +0200
Message-ID: <CAA8EJpqCXPQD1qkdGCae+p6YtGB9rrFBKwt1VDSK__We8dAfVg@mail.gmail.com>
Subject: Re: [PATCH 5/5] drm/connector: make mode_valid accept const struct
 drm_display_mode
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Peter Senna Tschudin <peter.senna@gmail.com>, 
 Ian Ray <ian.ray@ge.com>, Martyn Welch <martyn.welch@collabora.co.uk>, 
 Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Stefan Agner <stefan@agner.ch>, 
 Alison Wang <alison.wang@nxp.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Dave Airlie <airlied@redhat.com>, 
 Gerd Hoffmann <kraxel@redhat.com>, Sandy Huang <hjc@rock-chips.com>, 
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
 linux-tegra@vger.kernel.org
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

On Sun, 17 Nov 2024 at 23:24, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Dmitry,
>
> Thank you for the patch.
>
> On Fri, Nov 15, 2024 at 11:09:30PM +0200, Dmitry Baryshkov wrote:
> > The mode_valid() callbacks of drm_encoder, drm_crtc and drm_bridge
> > accept const struct drm_display_mode argument. Change the mode_valid
> > callback of drm_connector to also accept const argument.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Assuming you've compile-tested all this,

Yes, compile-tested x86, arm and arm64, this covers all the drivers
that had .mode_valid. The question is now what would be the best way
to merge this?

>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
>



-- 
With best wishes
Dmitry
