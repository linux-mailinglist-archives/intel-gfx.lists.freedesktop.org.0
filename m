Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F127A8C18
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 20:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA67610E53C;
	Wed, 20 Sep 2023 18:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7776310E53C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 18:54:53 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-9a65f9147ccso8657166b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 11:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1695236092; x=1695840892;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aVJWWhaYPcrtaLy10JnzQ7BYHLf0JPL9lPGuoAmd7NM=;
 b=cIs6YRzI/EzvXW6+e0nZTUGsrNK4Pj54j3pxoTkoi8zhgeBKbfIbKqQy6E5nual5CM
 t1AEM4pQhyrqvweQotdtaDc1WmVGBaUdcFJLTwuxZ49xKDSFDv7B812EcglwTXPZnvAm
 SrgkwoxtVaEYuLXtqpPFAI9rbsHlWlukSb0Vs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695236092; x=1695840892;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aVJWWhaYPcrtaLy10JnzQ7BYHLf0JPL9lPGuoAmd7NM=;
 b=Rmx/OpeEgtEHWUvpOmDE/qVIFoZu0MVqDIUZ69T3+xlu993NucxvroKSwXSaH+w+ZZ
 8eLru4hqDvHxSMdByaOvX3JoN9LleiZrzOGNqXpjXbOxzVCVLRXjWOpQLKAevWKcgWDm
 I/ScuoXXkQbTNB3ryBaPNPWTSH2ZmKAHblrd2qPLIrgfaAul4H691hk+Jlhplsgcufau
 Iut1Dh8A5EH4Yvi1v4GxTmD7fT8jkasUVSJd9jA3OHA8QIQLN8yTirqOyWH9HCpD/cOp
 k2R9hGjvmWAwuzeXzVdYgX3FcTKDtKK+8v3cBGESKkH82IoXtmwHnAuGvEOPNj67ubgw
 BJKA==
X-Gm-Message-State: AOJu0YztTi+a/EnFQvgWxXsLmsqL5/nBLEWlb6DlHtq3AS/luXFESWac
 9eax1ajsCe48SXDtjFDIMj7KfwqkDif7Fx+3xfJSWvDJXv/9PIZV
X-Google-Smtp-Source: AGHT+IFDC07vwQ1p1C+p9TsJW0sf09U/5/2jHEcySgw4TkK499UZAqkqu8JHtBxMAvConIO7FiTknThoH/Yh5f0h3F0=
X-Received: by 2002:a17:906:519b:b0:9ae:5120:5158 with SMTP id
 y27-20020a170906519b00b009ae51205158mr1962520ejk.55.1695236091840; Wed, 20
 Sep 2023 11:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Wed, 20 Sep 2023 11:54:41 -0700
Message-ID: <CAE72mNmgzHnMtwNR0ggO+a=wWvZf-M_AAr_BYc4js-3-sdpc8A@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915: VRR, LRR, and M/N stuff
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

After the comments have been addressed, I have completed reviewing the
patches. Is there anything
else blocking this from getting merged? Could we get this merged if
everything looks good?

Regards
Manasi

On Fri, Sep 1, 2023 at 6:04=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Attempt to make VRR, LRR, and M/N updates coexist nicely,
> allowing fastsets whenever feasible.
>
> Lightly smoke tested on my adl.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
>
> Ville Syrj=C3=A4l=C3=A4 (12):
>   drm/i915: Move psr unlock out from the pipe update critical section
>   drm/i915: Change intel_pipe_update_{start,end}() calling convention
>   drm/i915: Extract intel_crtc_vblank_evade_scanlines()
>   drm/i915: Enable VRR later during fastsets
>   drm/i915: Adjust seamless_m_n flag behaviour
>   drm/i915: Optimize out redundant M/N updates
>   drm/i915: Relocate is_in_vrr_range()
>   drm/i915: Validate that the timings are within the VRR range
>   drm/i915: Disable VRR during seamless M/N changes
>   drm/i915: Update VRR parameters in fastset
>   drm/i915: Assert that VRR is off during vblank evasion if necessary
>   drm/i915: Implement transcoder LRR for TGL+
>
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 110 ++++++++------
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 135 ++++++++++++++----
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_types.h    |   5 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |  17 +--
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  18 ++-
>  drivers/gpu/drm/i915/display/intel_vrr.h      |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>  11 files changed, 212 insertions(+), 86 deletions(-)
>
> --
> 2.41.0
>
