Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CEA9F341F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 16:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B02510E6C4;
	Mon, 16 Dec 2024 15:12:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="M7NnomM/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844F010E6CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 15:12:21 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id
 3f1490d57ef6-e3990bbe22cso2988228276.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 07:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1734361940; x=1734966740; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2ffQGy2TMqwM/P0ea5bqOaj/0Pbat+9jyPLZz6qR+vM=;
 b=M7NnomM/w4/0mJaaprCVRm9lS45FLGSJzJjV6CI/qNfyqdCZByQg8IVLArVWe1rxJ+
 /gYk2RDlsdyD4MFoG2iPXYcGNC4LfWiHpQSenpezPTafWGytN10M33LWvKzR2QZp462y
 C1Q0ggwydzPH3ruv0+9Un1BN/kzNgmrtXBZn3G+UeMAXpUsO1tJrUcpeHxdaW3FiJdN+
 VKErcafLgBVoOU9+vOzyYZGJnGP7r3gyAmbpLLx0jbmq08RSJFxP2+Hz94w4jW6/PRNV
 A+mRXmsE5jSiVxKrmLcCCYLRa04yeHgac58p6L9Y055FOrnUQQ5rQQuNviumuT47R2Xi
 Hhew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734361940; x=1734966740;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2ffQGy2TMqwM/P0ea5bqOaj/0Pbat+9jyPLZz6qR+vM=;
 b=r3vay9qXOp84IiwzGy9vJkmuTcQ2GOLnNwZyu7CJzHCeRXRtz5AR4rQlI0PrmQraEd
 mbwfjy9j3ltXSAYVr4fofE3R1Qy9PYoa4L8qlRhTZ+cEjKZdrbg5TqWW+W0zu1wNt3rB
 5EBYIoh61zO7eUvsafPAeI7cic6LMHffwnrHFvSRtOclZeSFfLaJDmul9fgLPVrRZWQJ
 iH2xOpsiwc7K+UAvJO6j+JlOj2A4BADQdGIKX/tLp9QxrywDfTFTKOTDPLCHpVBxk65m
 zQfMe6Wwpg+D4F1d3NRnQMOXmjwhR5eW6xZbe0znsSorua4kfP3iSN2VZpKxolVv1nJc
 ZvoA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQl6nWQ6LyKSxNJTFTUwG4DJtfJorIa7KhTiiXyY5pqPTCwMr5DUJtgqu7sBJ28d5qo24uyM1CROo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy1vCtv7nD5PGIDUqeSbrHk55C2Wg7p0b6w1kDph+Shx9ZchKta
 T0A8VwDGr4XMhC1S1hCmyyX/y0WO3M68bLbF62T9Awah/n2tnfmKOGZ/OhK871CrwA38el0CeIR
 WsRv5HWXz6bmXC7Gps7tHTJtzl7dWDOtrvf4CAg==
X-Gm-Gg: ASbGncs1vhY9krZiksv7GgW2rsIGPlSSRqrTCJHqNV3SgiUiaWTc/4egz6RQXkl5XAA
 j53l2rLNfaM5BI0Lyw8oMznY40T347T3Zb+fVq8lhHsHJJREOvp4v
X-Google-Smtp-Source: AGHT+IFkMt1zHDB2S3QiYdScTiiPg+ltfkwwZwvvoVehY7huEV6zK2tbYbYSsx3gC5GsnfCaH/SlaLvHa4pCCl1Vu/Q=
X-Received: by 2002:a05:6902:3301:b0:e47:f4e3:8804 with SMTP id
 3f1490d57ef6-e47f4e38da5mr5451800276.24.1734361940405; Mon, 16 Dec 2024
 07:12:20 -0800 (PST)
MIME-Version: 1.0
References: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
 <20241206-drm-connector-eld-mutex-v2-4-c9bce1ee8bea@linaro.org>
 <pgi7p3aemxm3db2k27vi5euh6q6ppayrw6y7tcfeq4g5z23hzr@xousag2qhobp>
 <fc8e80dd-bcea-4515-b446-158649719569@amd.com>
In-Reply-To: <fc8e80dd-bcea-4515-b446-158649719569@amd.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 16 Dec 2024 17:12:09 +0200
Message-ID: <CAA8EJpoR8HYq9ATDfmR5ksSnttBzj=DY+BKp5=OuVNF1WDJ-fg@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] drm/amd/display: use eld_mutex to protect access
 to connector->eld
To: Harry Wentland <harry.wentland@amd.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Xinhui Pan <Xinhui.Pan@amd.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Phong LE <ple@baylibre.com>, 
 Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
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

On Mon, 16 Dec 2024 at 16:53, Harry Wentland <harry.wentland@amd.com> wrote:
>
>
>
> On 2024-12-10 16:20, Dmitry Baryshkov wrote:
> > On Fri, Dec 06, 2024 at 11:43:07AM +0200, Dmitry Baryshkov wrote:
> >> Reading access to connector->eld can happen at the same time the
> >> drm_edid_to_eld() updates the data. Take the newly added eld_mutex in
> >> order to protect connector->eld from concurrent access.
> >>
> >> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> >> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >> ---
> >>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 2 ++
> >>  1 file changed, 2 insertions(+)
> >
> > Harry, Leo, Rodrigo, Alex, Christian, Xinhui, any response to this one
> > and to the radeon patches? I'd like to be able to pick the series for
> > drm-misc and these two are not reviewed by you.
> >
> >>
> >> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> >> index 19a58630e774029767bf2a27eb4ddf17e3c21129..04c68c320252b5ce9647f0606fb86fe57f347639 100644
> >> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> >> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> >> @@ -1037,8 +1037,10 @@ static int amdgpu_dm_audio_component_get_eld(struct device *kdev, int port,
> >>                      continue;
> >>
> >>              *enabled = true;
> >> +            mutex_lock(&connector->eld_mutex);
> >>              ret = drm_eld_size(connector->eld);
> >>              memcpy(buf, connector->eld, min(max_bytes, ret));
> >> +            mutex_unlock(&connector->eld_mutex);
>
> All of this is wrapped by the adev->dm.audio_lock mutex. It might
> be safer to modify the audio_lock mutex so it only guards the
> aconnector->audio_inst access.
>
> But I don't see any way these mutexes would otherwise interact,
> so this change should be good as-is.
>
> Reviewed-by: Harry Wentland <harry.wentland@amd.com>

Would you ack it to merge it through drm-misc? Or would you prefer to
pick up those two patches after merging drm-misc-next once the rest of
the series lands?

>
> Harry
>
> >>
> >>              break;
> >>      }
> >>
> >> --
> >> 2.39.5
> >>
> >
>


-- 
With best wishes
Dmitry
