Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B901A43E9F0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 23:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AECC6E830;
	Thu, 28 Oct 2021 21:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DF76E831
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 21:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635454808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YyHcHMPFK6L4kSqZBARMjYQnoudOF5bHyFz0FdV/YWw=;
 b=VFJHDBXDCVu6XV51Qf5NsXPHI6WkKewMgfRsPBhAOp++NoRoyseNjqNY6xqO1pk+br6FO7
 k22AlzVErH/YcUa5bTjhCzoQoxtbd4LMaMlnJDAzEe3NM9av0+4c3ldw7ThCTq3MdG9Ekm
 QO/ke1MaYjTTZvulIqaITLdT+U8oeVg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-fC9GY_6GMoO3p2JCg69dfg-1; Thu, 28 Oct 2021 17:00:06 -0400
X-MC-Unique: fC9GY_6GMoO3p2JCg69dfg-1
Received: by mail-qv1-f71.google.com with SMTP id
 hf12-20020a0562140e8c00b00382cdfe644eso6043347qvb.23
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 14:00:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=YyHcHMPFK6L4kSqZBARMjYQnoudOF5bHyFz0FdV/YWw=;
 b=o57D903AN+hIrnkZApXsRw3WhGKn8julsP5A50+0ZakrKrw6ew6VxPkMZpVM9j+q4s
 KXtNodf7oPnHSmnxsHTMwP03YBp9s4Xb95sEsxXdpDys33nlJuC2gC0xZ25067Yj2t9X
 SHKLeOmsNh9hlEQVFTd5DCRnafDWHCyucy3v9wNFexO3/0DocMIOzUbDPwsCPYQBjugQ
 z7Zazo9fJM8YFc1af587pBZjyePmdpDgQLH7aHOLE0bmGeu08Adg2gmT7jP1J3jI3O6H
 lFl/oR7R5Tfiasle0rbR4YxdC6kosQ7m3inJOSv7K+YrRwJfPRaL8SzuQzb+d9mXhQb2
 pyZw==
X-Gm-Message-State: AOAM532prpj2j2FD5TExZxgSVCCGxXANaTe1nRhnrW95b/v+DpeXqryA
 FdQpxM8aZRwLNUN5S8Uxlsq0Y8H92XsFJm4dW36mbrLMBP12luTuaeSG9yIFED5wvtGvwtiw9kJ
 AHoYIUl72liavRJCoo2LgsyQn83Pm
X-Received: by 2002:ac8:7193:: with SMTP id w19mr7354837qto.311.1635454806038; 
 Thu, 28 Oct 2021 14:00:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDlnXAfxMInUNg2FDZR0gL41Mf7pQpcS0zWxi7UlLCw9YzoEg6Gp1ylQDXamI3Dcj5CHkREg==
X-Received: by 2002:ac8:7193:: with SMTP id w19mr7354806qto.311.1635454805809; 
 Thu, 28 Oct 2021 14:00:05 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id w185sm2692822qkd.30.2021.10.28.14.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 14:00:05 -0700 (PDT)
Message-ID: <2f2145ed5e0a73a59a6996f2f709a3270b8d1449.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Doug Anderson <dianders@chromium.org>
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, "open list:DRM DRIVER FOR NVIDIA
 GEFORCE/QUADRO GPUS" <nouveau@lists.freedesktop.org>, Satadru Pramanik
 <satadru@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,  Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>, open list
 <linux-kernel@vger.kernel.org>
Date: Thu, 28 Oct 2021 17:00:03 -0400
In-Reply-To: <CAD=FV=VXJA0DoCBOG+fzqv-5rYP4mWQE-HPxH9DxCVWgnuS4Dw@mail.gmail.com>
References: <20211026220848.439530-1-lyude@redhat.com>
 <20211026220848.439530-4-lyude@redhat.com>
 <CAD=FV=VXJA0DoCBOG+fzqv-5rYP4mWQE-HPxH9DxCVWgnuS4Dw@mail.gmail.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 3/5] drm/dp: Disable unsupported features
 in DP_EDP_BACKLIGHT_MODE_SET_REGISTER
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

On Thu, 2021-10-28 at 11:27 -0700, Doug Anderson wrote:
> Hi,
> 
> On Tue, Oct 26, 2021 at 3:09 PM Lyude Paul <lyude@redhat.com> wrote:
> > 
> > As it turns out, apparently some machines will actually leave additional
> > backlight functionality like dynamic backlight control on before the OS
> > loads. Currently we don't take care to disable unsupported features when
> > writing back the backlight mode, which can lead to some rather strange
> > looking behavior when adjusting the backlight.
> > 
> > So, let's fix this by ensuring we only keep supported features enabled for
> > panel backlights - which should fix some of the issues we were seeing from
> > this on fi-bdw-samus.
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > Fixes: 867cf9cd73c3 ("drm/dp: Extract i915's eDP backlight code into DRM
> > helpers")
> > ---
> >  drivers/gpu/drm/drm_dp_helper.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_dp_helper.c
> > b/drivers/gpu/drm/drm_dp_helper.c
> > index ada0a1ff262d..8f2032a955cf 100644
> > --- a/drivers/gpu/drm/drm_dp_helper.c
> > +++ b/drivers/gpu/drm/drm_dp_helper.c
> > @@ -3372,7 +3372,9 @@ int drm_edp_backlight_enable(struct drm_dp_aux *aux,
> > const struct drm_edp_backli
> >                 return ret < 0 ? ret : -EIO;
> >         }
> > 
> > -       new_dpcd_buf = dpcd_buf;
> > +       /* Disable any backlight functionality we don't support that might
> > be on */
> > +       new_dpcd_buf = dpcd_buf & (DP_EDP_BACKLIGHT_CONTROL_MODE_MASK |
> > +                                  DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE);
> 
> My first thought when reading the above was: if we're masking so much
> stuff out, why do we bother reading the old value back out at all?
> 
> I guess the two places you use the old value for are:
> 
> 1. You avoid setting the "DP_EDP_PWMGEN_BIT_COUNT" if the backlight
> was already configured for DPCD mode.
> 
> 2. You avoid writing the register if you didn't change it.
> 
> I would actually argue that use #1 is probably a bug. If you're
> worried about the firmware leaving the backlight configured in a
> strange way, it could very well have left the backlight configured in
> DPCD mode but set a different "bit count" than you want, right? Maybe
> you should just always set the bit count?
> 
> Use #2 is fine, but does it buy you anything? Are writes to the DCPD
> bus somehow more expensive than reads? ...or maybe you're expecting
> that a display will glitch / act badly if you write the same value
> that's already there?
> 
> 
> So I guess my instinct here is that you should avoid reading all
> together and just program the value you want.

Good point, will respin this in a little bit

> 
> -Doug
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

