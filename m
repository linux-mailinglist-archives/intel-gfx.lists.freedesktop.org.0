Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2728A9DFF94
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 12:03:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6437110E6D0;
	Mon,  2 Dec 2024 11:03:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="bly6xU5h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3309610E6CE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 11:03:14 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-53de852a287so4603990e87.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Dec 2024 03:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733137392; x=1733742192; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6X4f5B7p/4ISxO7icMRqa8h5IT36sTqoFNtM1b1oYjE=;
 b=bly6xU5hN3JrB5LSazECeKpAtIqVdVpb7mdZ2D115fr3uffGfNqr8mmPlJ09jGk3yl
 1r2jYyBbO1nBTuKpINfcuvCDx0Hs1mrBocCElQvhG3Tflu+iIj8QswnuhIL7mmQo7HdR
 VedbycDpCPvO1WrubCu8TFsLJY3Eo6dQ2H3MjcHKOiM0sWcikXqdR6h2DS6aIMv5s2By
 wyNypOHkLO3i58sZ5geck2efru3X7NU8tShqxDdB9cF+bBS4/IER6yy+UbBn5j0+9nWA
 E+YZ4MpTCvHgWXNiM5RTGEl/qkxRdrOCLY+BEq/DDkv2eWK+9tDe2NlUdPK8beocEx8w
 YOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733137392; x=1733742192;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6X4f5B7p/4ISxO7icMRqa8h5IT36sTqoFNtM1b1oYjE=;
 b=vsL9fx0ghoq/Dxjv7IpO/GtfKYFXNF73sucWdIMJwWtKnAqD5xAbkMq+z3Vsm53UKO
 J4FIxG+1ZxmgSdAMKDu6It+QnLQrtLTUNRgjOycnL+CBkZEXOJ9MGtajkUO/+AGJq5IO
 21quClSWuEDPie6qrr5BQwpBFNZ3sCgJ1eSUDV/DiAXZRUl2P1IkiAUosEXhhDgK00Jv
 CcpXM7iN4P4GTeKnwcNNEHCaw32alenbw6GHk1dO+xt1cGktpkNYvjWkwuQKaqEic8pV
 xcnRidYZPsNnwCuTrlkd3aH+xgw71mU9Ub2lCWtnx1c59kaJEurimFlxhVWWGeMknPph
 VtXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUq+mthGwbJghh4GSVhWe0rd74HpQB8wUtM4B8T1QzXsbPioyx5NevFdXXQ+le4gPSA88l3rQ0nezE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxoG8b4F45Dk+P/teQ89BLUFnBK1PuurtYcifdqRPsO8rzd3x2H
 HiPnTFME5gUw0FLAol2XKkDHmnKi1ql7hsZgt2MbdbsHDXGeiUPwizJWCVmlcn4=
X-Gm-Gg: ASbGnctUyf5DDe8QYjAt6fH0kDeifnpTmcAXliUfrQr9FWRrR+mqvSV5opsPlcNg3Mt
 1KT4cTbEZxMrZPjsdjWma4zaw1A/HCsF0O+5xAPcyvN7wtD29kOF4TkiZTKnUS7wJ6rBZ3DdNk5
 fM0wpekARUrLw2TUFrjfEhgyGDAGMZ2zI4ukobB9sI2e5sm0H4XEkmlQFq7gGKIwwYcMQL48wKC
 XT8KE3qsgoSfU7ZH1TjNjBGLOyWhZ6FvPDUoquFGiY0r8kwo9uaSgtL6un0TGpK72v4d7mdv4q8
 gSP8wsdr9I3XpfLzGhu6AQ2KG9mbeA==
X-Google-Smtp-Source: AGHT+IFGDFefBhtw1PCqTOI5KhQIlj3rWjRnFP/b36RPBBTJEaQRx6orQjZk5ZBCQurK/QAedMSg2Q==
X-Received: by 2002:a05:6512:2385:b0:53d:ed25:fb75 with SMTP id
 2adb3069b0e04-53df00d3e65mr7699888e87.15.1733137392309; 
 Mon, 02 Dec 2024 03:03:12 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df646efd9sm1443877e87.143.2024.12.02.03.03.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2024 03:03:10 -0800 (PST)
Date: Mon, 2 Dec 2024 13:03:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Alain Volmat <alain.volmat@foss.st.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 David Airlie <airlied@gmail.com>, Harry Wentland <harry.wentland@amd.com>, 
 Inki Dae <inki.dae@samsung.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Kyungmin Park <kyungmin.park@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Leo Li <sunpeng.li@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Phong LE <ple@baylibre.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Rob Clark <robdclark@gmail.com>, Robert Foss <rfoss@kernel.org>, 
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <sean@poorly.run>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Xinhui Pan <Xinhui.Pan@amd.com>
Subject: Re: [PATCH 00/10] drm/connector: add eld_mutex to protect
 connector->eld
Message-ID: <ohbtatnn33jj6y3q4milf4txi4n7yirnny2eefdjddlkn2dnhp@eqjedetct4q3>
References: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
 <77545786331df8bfaf5fdcb309437358@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <77545786331df8bfaf5fdcb309437358@kernel.org>
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

On Mon, Dec 02, 2024 at 10:19:41AM +0000, Maxime Ripard wrote:
> On Sun, 1 Dec 2024 01:55:17 +0200, Dmitry Baryshkov wrote:
> > The connector->eld is accessed by the .get_eld() callback. This access
> > can collide with the drm_edid_to_eld() updating the data at the same
> > time. Add drm_connector.eld_mutex to protect the data from concurrenct
> > access.
> > 
> > 
> > [ ... ]
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!

I'm going to post v2 to fix Jani's comment, but what should be the merge
strategy? Merge patches 1-3, 5, 9-10 through drm-misc and the rest (AMD,
i915, MSM, radeon) through the driver trees?

-- 
With best wishes
Dmitry
