Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F60FA17CE9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 12:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F418310E161;
	Tue, 21 Jan 2025 11:21:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="dQ62m/oQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC44D10E1CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 11:21:41 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-54025432becso6145781e87.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 03:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1737458500; x=1738063300; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Ccl7pK+fGoMwVya6mvoYHjlRDfdrE2si7QnLrLuVzrA=;
 b=dQ62m/oQUnINWTDtZiIvPinMztI/3p5AHmn6QQ1HgukOZb89eSXrBKtoloecJFn8y1
 THeEkiRrOp0dTH2zdHOx2utWLQJqQWzTA94tFSTKqDD4wAIiTyneO0iy1O/mgjFDWrmK
 PZmK3z0UsqgB2GOIWfHuPVfRNYNzVWqYueNU8GtqLpkVb5ko+4ljz1QLBm1cs+WHKTFy
 IwCbMVWfqI377oxohbNRFmPXrw/kL90L8FDC/C7XbjHfQ9EgaR2UVaA0rDUSDrkenhFE
 MsWRPZSeVyF/4djTGlN2oEBsz0mqUjoEdmi/naDON4N4dkhp9vdqDCuBXcg6hgODBo9V
 IhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737458500; x=1738063300;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ccl7pK+fGoMwVya6mvoYHjlRDfdrE2si7QnLrLuVzrA=;
 b=TEZQlaJCnkY25A4izR/Q7S6wsZrPbLUV3bEcd8VmKzf5oiyV63Aoy90aWc/f6rWAHO
 uVBiT+ZmKfRNzOTWxQr1WF+BE0MNJCoHt7SSkCps1PxGR50xuaY/ekKkj46a7o/69UO+
 7wTcZ6YaRchqVck2ly7P7I7U1pgzeeVsv1LB+A1ptvikowZ8ErV6hdcuQljIAVBkN4Uy
 l3ntNDuUnO69uziy5FaXka5rdT0fbZD305a/s9HdEp8dz3hDpiGSNlYLtDiamAeueLBM
 JxZw8vYd3J+SK9rDa5tDSzQFY86XEPeTOUcDcH94ndxNkNAxMP0Ivwn+D8OXU1rY7k6m
 EuUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxQ6RJOlCbt3LtEWmtq7Lstd6psBnVFtcQYxfQCfZ79v6FP/FzL8Rklhk1dr+Rcg1ZZP/1oFqkxOU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxk1vvpT2fjCNSChru2Br+I9NQWlh5bEEsq/UJ3KSjYEFGyLc3P
 7HNx/fGl5wCHNm+c68paT3iNJXxV9A/Y+xlAlDZKoB6hOqCc6Gadw/jLVsLRvc8=
X-Gm-Gg: ASbGnct7C2QWCtsl6xRNkxuKyzcTmLKphcQ5Rd3XXT2C1jmY8VThnGRhtwk+jzZDqTR
 ZZOOVt+UyaU+pMvGk8l1aEUxx2qIcUMdZt4ZxCR7zPEs7BquCSl+8ojadUDcNv7Xggwz/n2FhaG
 SbHOpbrLpPD5IdxbkYsRoa6DKZrIL8HdD1zZw9z96hgOeqo31GY1391p3sbCuZfjE+geCMXv/xe
 5o5ZGtUAnsC90bKqtNoHSgUJnmkwXzv9gvpU3zhoFwR3K4F/gEDlSDtfwMpGpCpKNxT+BJS3T6b
 gpJ8ZswGiiF3DdCnt/wEOXAWZKantEnwuxg5RQg9BEoJzN4mSQ==
X-Google-Smtp-Source: AGHT+IFYzzED8Wa2HZSUyJkmbJmRc7n+A/fvnsoklQLIV99y/1uEpOedpIlkjVzotwOAh8lDtCA/PA==
X-Received: by 2002:a05:651c:b2a:b0:300:7f87:a65 with SMTP id
 38308e7fff4ca-3072cb1f9b0mr65240811fa.35.1737458499868; 
 Tue, 21 Jan 2025 03:21:39 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3072a51825fsm20633711fa.111.2025.01.21.03.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2025 03:21:38 -0800 (PST)
Date: Tue, 21 Jan 2025 13:21:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, 
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, 
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
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
 Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>,
 Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, 
 Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 nouveau@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, 
 freedreno@lists.freedesktop.org, virtualization@lists.linux.dev, 
 spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Jani Nikula <jani.nikula@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
Message-ID: <ak4cz6v6rjguh4jgacyu2mcfh5igtb7qwhvbvdcnfjc5hraloi@d7dwxc7v5gbo>
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
 <173624946815.1500596.321177900833598022.b4-ty@linaro.org>
 <CAMuHMdVwcaY2Fgpf7GYhBrE5B+AEg=v0BH4OjMXgnp=wqjxmKg@mail.gmail.com>
 <CAA8EJpos0HQpr9P4XRkto0Jy+Anf1xEH2xhEU8wtCyUQd+XwMg@mail.gmail.com>
 <CAMuHMdW-9F9aypY_XeU3y=dn3AAxjFrZO+H+=hbMF7nGrTLAQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdW-9F9aypY_XeU3y=dn3AAxjFrZO+H+=hbMF7nGrTLAQQ@mail.gmail.com>
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

On Tue, Jan 21, 2025 at 12:10:25PM +0100, Geert Uytterhoeven wrote:
> Hi Dmitry,
> 
> CC sfr
> 
> On Tue, Jan 21, 2025 at 11:44 AM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> > On Tue, 21 Jan 2025 at 11:13, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Tue, Jan 7, 2025 at 12:31 PM Dmitry Baryshkov
> > > <dmitry.baryshkov@linaro.org> wrote:
> > > > On Sat, 14 Dec 2024 15:37:04 +0200, Dmitry Baryshkov wrote:
> > > > > While working on the generic mode_valid() implementation for the HDMI
> > > > > Connector framework I noticed that unlike other DRM objects
> > > > > drm_connector accepts non-const pointer to struct drm_display_mode,
> > > > > while obviously mode_valid() isn't expected to modify the argument.
> > > > >
> > > > > Mass-change the DRM framework code to pass const argument to that
> > > > > callback.
> > > > >
> > > > > [...]
> > > >
> > > > Applied to drm-misc-next, thanks!
> > > >
> > > > [1/5] drm/encoder_slave: make mode_valid accept const struct drm_display_mode
> > > >       commit: 7a5cd45fab0a2671aa4ea6d8fb80cea268387176
> > > > [2/5] drm/amdgpu: don't change mode in amdgpu_dm_connector_mode_valid()
> > > >       commit: b255ce4388e09f14311e7912d0ccd45a14a08d66
> > > > [3/5] drm/sti: hda: pass const struct drm_display_mode* to hda_get_mode_idx()
> > > >       commit: 5f011b442006ccb29044263df10843de80fc0b14
> > > > [4/5] drm/connector: make mode_valid_ctx take a const struct drm_display_mode
> > > >       commit: 66df9debcb29d14802912ed79a9cf9ba721b51a4
> > > > [5/5] drm/connector: make mode_valid take a const struct drm_display_mode
> > > >       commit: 26d6fd81916e62d2b0568d9756e5f9c33f0f9b7a
> > >
> > > I cannot find these in drm-misc or drm-next, but they are in drm-tip?
> >
> > These are in drm-misc/drm-misc-next, the commit IDs are a part of the
> > Git history.
> >
> > > The last one due to commit 2bdc721917cf141f ("Merge remote-tracking
> > > branch 'drm-misc/drm-misc-next' into drm-tip").
> > >
> > > What am I missing?
> > > Thanks!
> >
> > It might be some kind of misinteraction between drm-misc-next vs
> > drm-misc-next-fixes vs merge window. Let me recheck dim rebuild-tip.
> 
> I indeed see the commit in
> https://gitlab.freedesktop.org/drm/misc/kernel/-/blob/drm-misc-next/include/drm/drm_modeset_helper_vtables.h?ref_type=heads
> 
> [diving deeper]
> 
> So I missed the change from the for-linux-next to the drm-misc-next
> branch.  Hence I fetched only the former, and was using a stale
> version of the latter.
> 
> Apparently Stephen is also using the old branches for linux-next:
> 
>     drm-misc-fixes git
> https://gitlab.freedesktop.org/drm/misc/kernel.git#for-linux-next-fixes
>     drm-misc git
> https://gitlab.freedesktop.org/drm/misc/kernel.git#for-linux-next
> 
> I believe the latter should be drm-misc-next.
> Should the former be drm-misc-fixes or drm-misc-next-fixes? Or both?

No. Both branches are correct. This is how the drm-misc tree managed
development process: during the merge window (and several preceeding
weeks) the drm-misc-next branch is open for the commits. However those
commits are not targeted the forthcoming -rc1. Thus the for-linux-next
branch is diverted to point to drm-misc-next-fixes. This is all being by
the dim tool.

Respective mode_valid changes were applied too late in the cycle, so
they are not going to land into 6.14-rc1 (and are not a part of the
for-linux-next branch). Once 6.14-rc1 is released and we start working
towards 6.15, for-linux-next will again point to drm-misc-next.

-- 
With best wishes
Dmitry
