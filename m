Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31319EE227
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 10:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6D410ED0E;
	Thu, 12 Dec 2024 09:01:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="DFNGkdvs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B6810E07E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 09:01:22 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-54020b0dcd2so1684440e87.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 01:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733994081; x=1734598881; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=V9TiYS4KmaBT6zbP9iM8l86SrBTAKM/ReGWqOBeJ8zc=;
 b=DFNGkdvsawe9iHsXIWTwd0+cOGwWX0jaYv/nV+StaK10dNLYbrzLHq9aGtDu049TYJ
 ErreE9Be4D2pyVGP3GpCnDJkZclY0vT4cZBPd/+tia0LKTOobaNIghhHl8IAiWuKagir
 ZsjnLTgtAwSXc0MHABONXqhnMJRyB6p8VTlhTKqMOeVXhwgFM5WsTBvm6r08zC7P5huv
 irQmMlGXTzNw7W9M2NQLqEOMmn5ctRukN+t4+031/lMPlOEgH2MTZHcYdB/oV/GiroFb
 8qO07oWAOII4JgsgBlGXvY8hEvWm+J7wa36eBYwoHP/2QMXRCSK6V/PUdm48lw4YY5Tf
 iaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733994081; x=1734598881;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V9TiYS4KmaBT6zbP9iM8l86SrBTAKM/ReGWqOBeJ8zc=;
 b=qQIvoSyxsGmNadpgnhzyC4RahduwTlkd4rYUek/xmDX++bG85dR2q+x+NqWkFuNXuH
 V13cuJKilxRVvovkiPljrK7YOQwQfrSGcAJ/Q8vKvYkzGpPGocz3j7pJWxL8TJTbhbaF
 /7ih+fZdjemyAxpfgGtvUjvYxXrpdMgBdEZ+WIHJsothakpp0Z+lcRE4L+cTpgRogWr/
 O1pMgP0vn/IBPE5aS2GmTon1vO+BMSYRTGdFx6tZIKNiZCEPo+zr4x00gVsssasCzzNx
 YQaE0H1E6d8CcwjxBclcfv9Dn/wqljgXaeqHlpcNIRCXYp2LnGCmFFAUE5WZ7PhqH05C
 GQIQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFRYJBqUCZZyH4VcmOL2IUJfSR7SXnXaMDpX15zO2ih6wiAojE/cLS1G+6JlMgP/4fSijVepjHCs0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyqxhWlV3V+il7s8MkBOFopfnDacPfn4VqiY2DmNYXGbVlTIVzb
 UT4C1vfQ893WWO6/cXz92Wz4KStrXAXlfp+wqvSsmvA435YjTRO0KHxVaQtcgiA=
X-Gm-Gg: ASbGncueUidr93+xUGbVf5BSTCQ5ISxN4TCcCH4erSq7kJWgqc6rAC617MMQye/xwph
 UdtYFhi6ur5I5qHtxFltB3l5mDbRITo8uWBms8oIYsTbJv6GoApIlKWKRIB/tFnZmWkaX33OJBJ
 iNQc9Xgpi47/T+DEe4i6QLbiohCphSzql/x/vz7rO4QOiWuqu9NPEO569eL+Sk63d6HmrIkV0RD
 26H2G8EkBmWqzBUhYjXCBfFEeq0/pqdYzRAbcdt3mi10SannAhwaLrzSwsd/Kw5lSg7s0B7RQwJ
 sRlN5JeZS8Rd7tpBR3cc2hXkK8CLIOhrDKgp
X-Google-Smtp-Source: AGHT+IHhrzxQingAH1/ImMh2/INtXiKEWN+68GziFuYfWDP98tpJWX78ikqP9dctbaH1rrrlMK66Bg==
X-Received: by 2002:a05:6512:3056:b0:540:20c5:f847 with SMTP id
 2adb3069b0e04-54032dd7f6fmr166941e87.22.1733994079461; 
 Thu, 12 Dec 2024 01:01:19 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53f39c826a2sm1608722e87.214.2024.12.12.01.01.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2024 01:01:18 -0800 (PST)
Date: Thu, 12 Dec 2024 11:01:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, 
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] drm/ci: uprev IGT
Message-ID: <auyavxigqqk3eq3ke775pv5cf4pwu3mdxmr5bfx2dybjnszseg@5rla5d7icwxk>
References: <20241211142806.1824961-1-vignesh.raman@collabora.com>
 <f2dac4eatkajw633ksnnb3nfq7zop2l4ux2euj6jqg4hg3soqt@sv7p2r6xk7fz>
 <3e719a95-5b84-4530-9afe-c742e5c6eff7@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e719a95-5b84-4530-9afe-c742e5c6eff7@collabora.com>
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

On Thu, Dec 12, 2024 at 11:36:29AM +0530, Vignesh Raman wrote:
> Hi Dmitry,
> 
> On 12/12/24 03:09, Dmitry Baryshkov wrote:
> > On Wed, Dec 11, 2024 at 07:58:05PM +0530, Vignesh Raman wrote:
> > > Uprev IGT to the latest version and update expectation files.
> > > 
> > > Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> > > ---
> > > 
> > > v1:
> > >    - Pipeline link - https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1327810
> > >      Will update the flake bug report link after v1 is reviewed.
> > > 
> > > ---
> > > diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> > > index 066d24ee3e08..7752adff05c1 100644
> > > --- a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> > > +++ b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> > > @@ -1,4 +1,7 @@
> > >   kms_3d,Fail
> > > +kms_cursor_legacy@forked-bo,Fail
> > > +kms_cursor_legacy@forked-move,Fail
> > > +kms_cursor_legacy@single-bo,Fail
> > >   kms_cursor_legacy@torture-bo,Fail
> > 
> > Interesting, DRM_MODE_CURSOR_BO tests fail
> > 
> > >   kms_force_connector_basic@force-edid,Fail
> > >   kms_hdmi_inject@inject-4k,Fail
> > > diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> > > index 6dbc2080347d..581d0aa33b4f 100644
> > > --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> > > +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> > > @@ -8,6 +8,8 @@ kms_color@ctm-red-to-blue,Fail
> > >   kms_color@ctm-signed,Fail
> > >   kms_cursor_legacy@cursor-vs-flip-toggle,Fail
> > >   kms_cursor_legacy@cursor-vs-flip-varying-size,Fail
> > > +kms_display_modes@extended-mode-basic,Fail
> > > +kms_display_modes@mst-extended-mode-negative,Fail
> > 
> > This is a bug in 5f7cde6a9878 ("tests/kms_display_modes: Skip test if
> > joiner display is connected"), the driver unconditionally calls
> > is_joiner_mode(), or in 88abc2d2c646 ("lib/igt_kms: Add is_joiner_mode
> > function"), the is_joiner_mode() should return false for non-Intel
> > hardware. Please fix it in the IGT instead.
> 
> Can we add this in skips mentioning the IGT gitab issue link?

It's fine with me.

> > >   kms_flip@flip-vs-modeset-vs-hang,Fail
> > >   kms_flip@flip-vs-panning-vs-hang,Fail
> > >   kms_lease@lease-uevent,Fail
> > > @@ -15,4 +17,3 @@ kms_pipe_crc_basic@compare-crc-sanitycheck-nv12,Fail
> > >   kms_plane_alpha_blend@alpha-7efc,Fail
> > >   kms_plane_alpha_blend@coverage-7efc,Fail
> > >   kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
> > > -kms_rmfb@close-fd,Fail
> > > diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> > > index d74e04405e65..5122233b9941 100644
> > > --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> > > +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> > > @@ -18,3 +18,10 @@ msm/msm_shrink@copy-gpu-oom-32
> > >   # IGT Version: 1.28-g0df7b9b97
> > >   # Linux Version: 6.9.0-rc7
> > >   msm/msm_shrink@copy-gpu-oom-8
> > > +
> > > +# Board Name: sc7180-trogdor-kingoftown
> > > +# Bug Report:
> > > +# Failure Rate: 50
> > > +# IGT Version: 1.29-g33adea9eb
> > > +# Linux Version: 6.13.0-rc2
> > > +kms_lease@page-flip-implicit-plane
> > 
> > Do you have a failure log?
> 
> 
> https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/68026461#L3262
> 
> Let me know if I can create a gitlab issue for this.

Somebody will have to look for more details, this one isn't that
obvious.

> 
> Regards,
> Vginesh
> 
> > 
> > > diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> > > index 6dbc2080347d..581d0aa33b4f 100644
> > > --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> > > +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> > > @@ -8,6 +8,8 @@ kms_color@ctm-red-to-blue,Fail
> > >   kms_color@ctm-signed,Fail
> > >   kms_cursor_legacy@cursor-vs-flip-toggle,Fail
> > >   kms_cursor_legacy@cursor-vs-flip-varying-size,Fail
> > > +kms_display_modes@extended-mode-basic,Fail
> > > +kms_display_modes@mst-extended-mode-negative,Fail
> > 
> > Again, the same IGT issue.
> > 
> > >   kms_flip@flip-vs-modeset-vs-hang,Fail
> > >   kms_flip@flip-vs-panning-vs-hang,Fail
> > >   kms_lease@lease-uevent,Fail
> > > @@ -15,4 +17,3 @@ kms_pipe_crc_basic@compare-crc-sanitycheck-nv12,Fail
> > >   kms_plane_alpha_blend@alpha-7efc,Fail
> > >   kms_plane_alpha_blend@coverage-7efc,Fail
> > >   kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
> > > -kms_rmfb@close-fd,Fail
> > > diff --git a/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt
> > > index fa8c7e663858..69076751af24 100644
> > > --- a/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt
> > > +++ b/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt
> > > @@ -1,4 +1,3 @@
> > > -drm_read@invalid-buffer,Fail
> > >   kms_color@ctm-0-25,Fail
> > >   kms_color@ctm-0-50,Fail
> > >   kms_color@ctm-0-75,Fail
> > > @@ -19,6 +18,8 @@ kms_cursor_legacy@flip-vs-cursor-atomic,Fail
> > >   kms_cursor_legacy@flip-vs-cursor-crc-atomic,Fail
> > >   kms_cursor_legacy@flip-vs-cursor-crc-legacy,Fail
> > >   kms_cursor_legacy@flip-vs-cursor-legacy,Fail
> > > +kms_display_modes@extended-mode-basic,Fail
> > > +kms_display_modes@mst-extended-mode-negative,Fail
> > 
> > The same IGT error
> > 
> > >   kms_flip@flip-vs-modeset-vs-hang,Fail
> > >   kms_flip@flip-vs-panning-vs-hang,Fail
> > >   kms_lease@lease-uevent,Fail
> > > @@ -28,4 +29,3 @@ kms_plane_alpha_blend@coverage-7efc,Fail
> > >   kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
> > >   kms_plane_cursor@overlay,Fail
> > >   kms_plane_cursor@viewport,Fail
> > > -kms_rmfb@close-fd,Fail
> > > diff --git a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt
> > > index 4892c0c70a6d..8d26b23133aa 100644
> > > --- a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt
> > > +++ b/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt
> > > @@ -7,9 +7,4 @@ kms_cursor_legacy@torture-bo,Fail
> > >   kms_cursor_legacy@torture-move,Fail
> > >   kms_hdmi_inject@inject-4k,Fail
> > >   kms_lease@lease-uevent,Fail
> > > -kms_plane_alpha_blend@alpha-7efc,Fail
> > > -kms_plane_alpha_blend@alpha-basic,Fail
> > > -kms_plane_alpha_blend@alpha-opaque-fb,Fail
> > > -kms_plane_alpha_blend@alpha-transparent-fb,Fail
> > > -kms_plane_alpha_blend@constant-alpha-max,Fail
> > >   msm/msm_recovery@gpu-fault-parallel,Fail
> > > diff --git a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-flakes.txt
> > > deleted file mode 100644
> > > index c1859d9b165f..000000000000
> > > --- a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-flakes.txt
> > > +++ /dev/null
> > > @@ -1,6 +0,0 @@
> > > -# Board Name: sm8350-hdk
> > > -# Bug Report: https://gitlab.freedesktop.org/drm/msm/-/issues/65
> > > -# Failure Rate: 100
> > > -# IGT Version: 1.28-ga73311079
> > > -# Linux Version: 6.12.0-rc1
> > > -msm/msm_recovery@gpu-fault
> > 

-- 
With best wishes
Dmitry
