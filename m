Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13589AFF14
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 11:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4E110EA5D;
	Fri, 25 Oct 2024 09:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Jl/DyNPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com
 [209.85.128.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E0810EA64
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 09:54:53 +0000 (UTC)
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-6e2e3e4f65dso21271507b3.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 02:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1729850093; x=1730454893; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ovzUCbOnf8ad3/AG/s6edyQx3Y96JvN5zzmYGNZvn88=;
 b=Jl/DyNPRX/eoKtpxLAqJf5AOKVzH1SuPyBTwxzNEy0SBCAQxqPJGANZjTxNO6vNBCI
 K77XrnW5Cc8fsrhchzftfpC/JYeIcp4ZxGBPLpzg0WJDJt0JDoZe8F4Cle+KTjBc70YV
 mPqlYGPfFhugHkmDk0Uc1Wvwd9Ryt7Mf+aMdI/wKTHBg+NAKk68jVgb4mMHbCmn1Ocjn
 ubcpmaMTq2W1v5jO9HxP5jVV33FMzgNMiX9jUMh9kGq2WQfoc8TyeGW2VZD5TJ9z/Ac8
 4fSVON/7YsATDJwQt74JgP2vNps3JZjnpfhqIjmgZma414XPVqB5l2DRmFZTaosrDIdA
 eMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729850093; x=1730454893;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ovzUCbOnf8ad3/AG/s6edyQx3Y96JvN5zzmYGNZvn88=;
 b=YcJO1MPt/U7UYSouT4iseitev8RcvgJzP3oDThVpy9WIoLdEf3DWGEuozmTCQW+b/y
 NmCr6kQl91b0Cda6rTPMdpHZKyD87Lr6nII+L/eaVRcryqwT+M26L43Uxg8uEjRBYHdc
 zIBRXvYqQxc6LwF7Q+68V87bQJhe3kILM8fd49vGcS+Chy2YIFC4gKVUCdv3Vt53lijN
 JG3/kAhbMhzMAQ2ZGl3sTlhI22A85pQoYrmwpL7CbGpHKzSYhY3iktKZUCAzbXwEFUgQ
 F2/YW3OzHYTHz8R+7FtN9ixW1192q/wAZ+MKaBfViJUIpFqohChTZfwQmhWQfQn4n1I9
 9eHA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXrEFcNluSYkcyEv64bX0iRIr0fsgY/9PLiGwX/XhXBGK6MWWohptBtj5mx+MT5Ytk3esUmAEhp3ng=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwG8p+c6j7f6VfGWaZQx3iAtU9XtYTr55JpOzlf0822e9FLBzYx
 RkU6LqGEhqBAgnsKaH+nmCj5c+HBeTN7YxLqpSm9qffKJDMlq9o3TkIr+rSge5JdL/CvLVGGqkF
 eJNzHFvPPSQi7hn5KK24dqr0Ax/MLeB1sTmIcng==
X-Google-Smtp-Source: AGHT+IFZu/LyAjfpwX5MrN+JVkr0x0xSzSrKk0A5Mdi5tj38z9PJE4G47Yh4NVVkEqgziX0kL7VNUYJrsxipC6JS6p4=
X-Received: by 2002:a05:690c:fc7:b0:6e7:fb87:7094 with SMTP id
 00721157ae682-6e85814d77fmr57343097b3.6.1729850092872; Fri, 25 Oct 2024
 02:54:52 -0700 (PDT)
MIME-Version: 1.0
References: <20241002182200.15363-1-ville.syrjala@linux.intel.com>
 <ZxtMz8JP3DbzpMew@intel.com>
In-Reply-To: <ZxtMz8JP3DbzpMew@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 25 Oct 2024 12:54:42 +0300
Message-ID: <CAA8EJprT=BGyMnvkjS4BkRqar1hHn_hpXFaz9gstPL_9u1rAsQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] drm: Treewide plane/crtc legacy state sweeping
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Alain Volmat <alain.volmat@foss.st.com>, 
 Alex Deucher <alexander.deucher@amd.com>,
 Alexey Brodkin <abrodkin@synopsys.com>, 
 amd-gfx@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Danilo Krummrich <dakr@redhat.com>, freedreno@lists.freedesktop.org, 
 Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Inki Dae <inki.dae@samsung.com>, Jyri Sarha <jyri.sarha@iki.fi>, 
 Karol Herbst <kherbst@redhat.com>, linux-amlogic@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-arm-msm@vger.kernel.orga, 
 linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 Liviu Dudau <liviu.dudau@arm.com>, Lyude Paul <lyude@redhat.com>, 
 =?UTF-8?B?TWHDrXJhIENhbmFs?= <mairacanal@riseup.net>, 
 Marijn Suijten <marijn.suijten@somainline.org>, nouveau@lists.freedesktop.org, 
 nouveau@lists.freedesktop.orga, 
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Rob Clark <robdclark@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Sandy Huang <hjc@rock-chips.com>,
 Sean Paul <sean@poorly.run>, 
 spice-devel@lists.freedesktop.org, virtualization@lists.linux.dev, 
 xen-devel@lists.xenproject.org, Xinhui Pan <Xinhui.Pan@amd.com>, 
 Zack Rusin <zack.rusin@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Fri, 25 Oct 2024 at 10:46, Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Wed, Oct 02, 2024 at 09:21:58PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> >
> > An attempt to hide the drm_plane/crtc legacy state better.
> >
> > This also highlights the fact that a lot of supposedly
> > atomic drivers are poking around in the legacy crtc state,
> > which is rather questionable. For planes we did force the
> > legacy state to NULL already to force drivers to behave.
> > But even then it seems capable of confusing people with
> > its high profile location directly under drm_plane.
> >
> > This might end up as some kind of conflict
> > galore, but the alternative would involve trying
> > to wean the atomic drivers off one by one,
> > which would probably take forever. At least with
> > this the issue becomes visible and shouldn't be
> > forgotten as easily.
>
> Ping, anyone have thoughts on this? I'd like to get something
> like this in at some point to make the legacy state (ab)users
> easily visible...

I think that's a good idea. I hope to find a time slot and check the
(ab)using of legacy state in drm/msm driver.

>
> >
> > The cc list was getting way out of hand, so I had
> > to trim it a bit. Hopefully I didn't chop off too
> > many names...



--=20
With best wishes
Dmitry
