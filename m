Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0BC44699E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 21:25:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1846E4D0;
	Fri,  5 Nov 2021 20:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30B66E4D0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 20:25:21 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id r3so10605917iod.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Nov 2021 13:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LrK07k0Lpn9CHC7K58jZi/mGEAzkF+QHwrwjm8onEpQ=;
 b=J5P2n9oSkKMVEby8FUnF9XKM7m7v29C9QXYnLi8ad3Gc0hFBr8XXUfoBnhnXCvQbCT
 jjaOYs//TeGM0x1WTuneAjydHwuzeXNZNwzHdKUuZS2sIpjpZ2EB5MdBULXyZcxFH2im
 KFtNl/2wO/3NMsNLqEPqj3//SqItdZo7l97A0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LrK07k0Lpn9CHC7K58jZi/mGEAzkF+QHwrwjm8onEpQ=;
 b=AyHeFscgHZUK0a3h3MtPINEcHHVFgBqC4hm1O3fjmnDznM7FX+nEQgpCULuu3pIAwy
 rhRFVj4Yr5tGBkXkGw/jYmpFPD1LEvqTm9UZNGzuwoIijbvnfmEluqCSwKquSA2UIOjV
 DQcMjL5MbRpO25eHcWxYKf5RMwWOF6H31aCVos7KmyX8U2rY+xmnvV8RSE6c4Uqbz3II
 ZCXjWNLiTi2Q/02VMy8Cb/O2oaY0qasCfsmrRKsg3fR8+So78eG81M2PIEwbXRk53MeQ
 Mm2NW8wsBXci7kLFNqaA71dYX4U7Jc3nehzWMF4S4yHkwivuCL5ZwgI12Vv7S4719hql
 XS4g==
X-Gm-Message-State: AOAM531OTinpBreVw9Yp+LpZ83PDaK/h9R3+VcUfeOnFkt+xsntevon8
 Co9qFKqHbaXq7nORa3Wai/8IJfrVFaPD+Q==
X-Google-Smtp-Source: ABdhPJwGSd/j29YjTIgvoAcPxnNhqVE1kfnLeWd3jK3jSv57U+/zzAr03qSIG7N8BDoMSZ2H6lHTyg==
X-Received: by 2002:a05:6602:2599:: with SMTP id
 p25mr1145987ioo.90.1636143920737; 
 Fri, 05 Nov 2021 13:25:20 -0700 (PDT)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com.
 [209.85.166.173])
 by smtp.gmail.com with ESMTPSA id q6sm4591705iow.1.2021.11.05.13.25.19
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Nov 2021 13:25:20 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id l8so10678246ilv.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Nov 2021 13:25:19 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a67:: with SMTP id
 w7mr35042875ilv.165.1636143919429; 
 Fri, 05 Nov 2021 13:25:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211105183342.130810-1-lyude@redhat.com>
 <20211105183342.130810-4-lyude@redhat.com>
In-Reply-To: <20211105183342.130810-4-lyude@redhat.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 5 Nov 2021 13:25:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VA53LyEA+jDfU6mQ0USwfSBiLK8KfWfc91U9X9f=oN9g@mail.gmail.com>
Message-ID: <CAD=FV=VA53LyEA+jDfU6mQ0USwfSBiLK8KfWfc91U9X9f=oN9g@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v5 3/5] drm/dp: Don't read back backlight
 mode in drm_edp_backlight_enable()
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, Nov 5, 2021 at 11:34 AM Lyude Paul <lyude@redhat.com> wrote:
>
> As it turns out, apparently some machines will actually leave additional
> backlight functionality like dynamic backlight control on before the OS
> loads. Currently we don't take care to disable unsupported features when
> writing back the backlight mode, which can lead to some rather strange
> looking behavior when adjusting the backlight.
>
> So, let's fix this by just not reading back the current backlight mode on
> initial enable. I don't think there should really be any downsides to this,
> and this will ensure we don't leave any unsupported functionality enabled.
>
> This should fix at least one (but not all) of the issues seen with DPCD
> backlight support on fi-bdw-samus
>
> v5:
> * Just avoid reading back DPCD register - Doug Anderson
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Fixes: 867cf9cd73c3 ("drm/dp: Extract i915's eDP backlight code into DRM helpers")
> ---
>  drivers/gpu/drm/drm_dp_helper.c | 40 ++++++++++-----------------------
>  1 file changed, 12 insertions(+), 28 deletions(-)

You forgot to CC me on this one! ;-)

This looks good to me now, so FWIW:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
