Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD8B9F355A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 17:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3607D10E6EC;
	Mon, 16 Dec 2024 16:08:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="C7+opFE8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E45710E6ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 16:08:48 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id
 38308e7fff4ca-30039432861so49103221fa.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 08:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1734365327; x=1734970127; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gimIjr0V+IvVPSAkV2M5qKEwFz/7JaI3Yve9R66BZE0=;
 b=C7+opFE8bNuCaN6mJXyylXN6CVTNsSjv9NhIxakzQY7Zsfscu0gs0DnXPX6ra2VNzb
 6cEIE2ugJ2T6uRXijcmG7rRuuL/lzdFWJRxdp8ZoPxx5hc2w7+qkcg7VppA4dHlUUK+M
 I6yPHisc007bVMWuMAw9HnRX+eBui6R3hGXjoX1dTiG85Hx5xJQBUgigW2sZaEB75XsE
 z63u/nkZVSTeaECtVR6EVmvEkYt8JwD6lN4dYufU/5WoTsttiJ+qo6FXIqu0wPL7xzEi
 ESn3bHwoy4YVN0y5aeTx3rZ4tVcU447wFvXW5vb1QGj39iX5BiexW8yLkBXBztcgcc75
 levg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734365327; x=1734970127;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gimIjr0V+IvVPSAkV2M5qKEwFz/7JaI3Yve9R66BZE0=;
 b=RWHxBHl+EECN1ZX9zS4j/Jm8kIAt282aZiaCLYOZVGr90RLZP+2ILNnT5c6vQ+LWBi
 gkz1oZo5YpYEkGDEVU3Rls4keiFAjlCOKI5Vit/xLuWsU29WNAGr2vIukm7O7fIfBfXj
 T1l0r89J++t1t682QkGR2kAiAw78QAefvpNxmfEkJzrm71uN3rxOHKSUozuYxMx5pENT
 2WgoWnoRhksEZEa2LH2y9Eo8p0ZXs8DoFVd/XWU3yOueayUnrQdbaheWFRj8BTF0avo5
 2AOE4UUSwhHtJMu3m9NmTXPuDMa8YijPKMtzXmc5rshBuJ4TBkI0xndoWOyjgIZQc1H6
 r8iw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHKtyvbqG7/zKgBS1ENLfBnbz/qOG391dXwug4JJFIY5CdeplDDW3lNeFICUH8PFZsd6vzZ4HLdZA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwDqhyW1eQo6zO6lEkwYM5F8ek39nRy/Ou97tpn5X3P/8i9zJth
 DJu6axbl6MW9vG9kM5ZlNaw2F990rly3uRqEmjpzIbnqKSvlEPbu4C0L0nIR+hM=
X-Gm-Gg: ASbGncuLdjv0iwGnMR22glzvMo+dl/RrQZloYqCI1biw9LpThlNvRxt90pskY5+GQBv
 nlZSI5w7i2B+PIi1DtBntNU0QlcX6AxizKAsPMYT1czRkQiTYNaYjEjD09vH82Q3GTZXz3oxyKd
 dcwVVkOwmCXwCzKHApdtL0qseQEpbExKfN0Su1EivBGcJ8s1q+9nxcS+HAwookHO6HnKe1wa02S
 Vvd5hXnB19TRqJ+cgfyh0kxCicKLKdfRT6HfQrtDxBy70ngHf66YM1K25t4Q3gguTZVMQp5wbLT
 jozjVXk88Z0E25AFTjm+lc6P
X-Google-Smtp-Source: AGHT+IEyHnHgkF8cGHfAxniJoLZXJ011DOlAgQIhnT5vzkhPcJthnAGY9LbeypdGeJjm5mrh2qegoQ==
X-Received: by 2002:a2e:a591:0:b0:302:17e7:e17e with SMTP id
 38308e7fff4ca-302543460f4mr50630091fa.0.1734365326654; 
 Mon, 16 Dec 2024 08:08:46 -0800 (PST)
Received: from eriador.lan (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00::b8c]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30344175ad0sm9665241fa.84.2024.12.16.08.08.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 08:08:44 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Xinhui Pan <Xinhui.Pan@amd.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
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
 =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 00/10] drm/connector: add eld_mutex to protect
 connector->eld
Date: Mon, 16 Dec 2024 18:08:41 +0200
Message-ID: <173436531753.3257291.12458012077695445848.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
References: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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

On Fri, 06 Dec 2024 11:43:03 +0200, Dmitry Baryshkov wrote:
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
> [...]

Applied to drm-misc-next, thanks!

[01/10] drm/connector: add mutex to protect ELD from concurrent access
        commit: df7c8e3dde37a9d81c0613285b43600f3cc70f34
[02/10] drm/bridge: anx7625: use eld_mutex to protect access to connector->eld
        commit: e72bf423a60afd744d13e40ab2194044a3af5217
[03/10] drm/bridge: ite-it66121: use eld_mutex to protect access to connector->eld
        commit: 39ead6e02ea7d19b421e9d42299d4293fed3064e
[04/10] drm/amd/display: use eld_mutex to protect access to connector->eld
        commit: 819bee01eea06282d7bda17d46caf29cae4f6d84
[05/10] drm/exynos: hdmi: use eld_mutex to protect access to connector->eld
        commit: 5e8436d334ed7f6785416447c50b42077c6503e0
[06/10] drm/i915/audio: use eld_mutex to protect access to connector->eld
        commit: 5db44dd1528625c73a31542df2a68972327c9897
[07/10] drm/msm/dp: use eld_mutex to protect access to connector->eld
        commit: 9aad030dc64f6994dc5de7bb81ceca55dbc555c3
[08/10] drm/radeon: use eld_mutex to protect access to connector->eld
        commit: b54c14f82428c8a602392d4cae1958a71a578132
[09/10] drm/sti: hdmi: use eld_mutex to protect access to connector->eld
        commit: e99c0b517bcd53cf61f998a3c4291333401cb391
[10/10] drm/vc4: hdmi: use eld_mutex to protect access to connector->eld
        commit: 81a9a93b169a273ccc4a9a1ee56f17e9981d3f98

Best regards,
-- 
With best wishes
Dmitry

