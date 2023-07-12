Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8207505D6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 13:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F8F10E4D4;
	Wed, 12 Jul 2023 11:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C4810E4D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689160698;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sqF46ZIeTTxnF0x2v0q2HtXa3ZhclBx145UBtd0H60M=;
 b=JxFM7DLx2MYoQZCczMjBskftkfA1LJHcKtpnLuc6wNHq4zYUdo2IXKrHwbcp3ykwgTmUqA
 OckkZVElV8PTHNOM9oKnEFdYVdviOp+zr/y+tlSfk5dP2IQNcfTA2MfoA83bSaPs+dPw8j
 tdQ3A9FK9zcHE8/22HOWbsPADNM2F5g=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-581-C3UlTzD6NrqcEAXmE-oZ6Q-1; Wed, 12 Jul 2023 07:18:17 -0400
X-MC-Unique: C3UlTzD6NrqcEAXmE-oZ6Q-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-3fc08d6a40cso26216285e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 04:18:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689160696; x=1691752696;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mGmoSdcAtbAnvFmDIfmKNE01xrI5yfsr2LA1G6eD+Js=;
 b=W0yLnegdr4fGfG4s/1f7UNwF40OckB0IULdmL7YPVC3EeZ6R5gD+KIhYYs+nDh3+1e
 t7n42soBYaq72ZX7hYPIW6FW1IS5wZN9V+aCagej7Fmoo5QVNpqjh0bwzHGbUgOfSHpH
 6VmLjZRg355RofLV+/+mVt47sHca6hC0dqxjHBP9VPjC5eusbFAiJtkwdQ33FiEo9gDo
 3g9reS11Y1+05TIIvX3Y/WsykIcekvLELMoYxshA0o97Lf8KzAIJt8sPeKDoy8xkmnbn
 IXzFe++J7UWiZMGwPzNUSIds6AQc2cCsPgBcTj6hqPy768c4wOcJu38t7F40eHiz0fhD
 dMQg==
X-Gm-Message-State: ABy/qLajo8K5xmbW+nK5Wxq8lWDHRvUZbaJxqDqyB9P9z3JO5gy8dZgN
 TBCtkro9hG6uBaPTHRgA+n/x7tSIm5KpRdAQunPYomGGlwB4SH+UKsGltYFtKbXsK6qWQRAjQQA
 NrYNKdNitfr0mTdcxIsbZSOSqkSrH
X-Received: by 2002:a05:600c:3644:b0:3fc:627:ea31 with SMTP id
 y4-20020a05600c364400b003fc0627ea31mr12056782wmq.38.1689160695903; 
 Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHe6rz0BytbzD5//h/wnxrk0jp/oOEOt3AbTKSXStRClYkvIUVNGHa0orOjttguAlZUCgSKTg==
X-Received: by 2002:a05:600c:3644:b0:3fc:627:ea31 with SMTP id
 y4-20020a05600c364400b003fc0627ea31mr12056740wmq.38.1689160695625; 
 Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 k6-20020a05600c0b4600b003fc00702f65sm14151776wmr.46.2023.07.12.04.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20230712105432.urgwb4zzwgsyfbwq@pengutronix.de>
References: <20230712094702.1770121-1-u.kleine-koenig@pengutronix.de>
 <abf26a82-4f17-51f2-5753-785f8516a81a@suse.de>
 <20230712105432.urgwb4zzwgsyfbwq@pengutronix.de>
Date: Wed, 12 Jul 2023 13:18:14 +0200
Message-ID: <87r0pdgyyx.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH RFC v1 00/52] drm/crtc: Rename struct
 drm_crtc::dev to drm_dev
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
Cc: Gurchetan Singh <gurchetansingh@chromium.org>,
 John Stultz <jstultz@google.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-samsung-soc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 NXP Linux Team <linux-imx@nxp.com>, xen-devel@lists.xenproject.org,
 linux-sunxi@lists.linux.dev,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, spice-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andrew Jeffery <andrew@aj.id.au>, linux-mips@vger.kernel.org,
 Chia-I Wu <olvaffe@gmail.com>, linux-renesas-soc@vger.kernel.org,
 kernel@pengutronix.de, freedreno@lists.freedesktop.org,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> writes:

[dropping some recipients since my SMTP server was complaining about the si=
ze]

> Hello Thomas,
>
> On Wed, Jul 12, 2023 at 12:19:37PM +0200, Thomas Zimmermann wrote:
>> Am 12.07.23 um 11:46 schrieb Uwe Kleine-K=C3=B6nig:
>> > Hello,
>> >=20
>> > while I debugged an issue in the imx-lcdc driver I was constantly
>> > irritated about struct drm_device pointer variables being named "dev"
>> > because with that name I usually expect a struct device pointer.
>> >=20
>> > I think there is a big benefit when these are all renamed to "drm_dev"=
.
>>=20
>> If you rename drm_crtc.dev, you should also address *all* other data
>> structures.
>
> Yes. Changing drm_crtc::dev was some effort, so I thought to send that
> one out before doing the same to
>
> =09drm_dp_mst_topology_mgr
> =09drm_atomic_state
> =09drm_master
> =09drm_bridge
> =09drm_client_dev
> =09drm_connector
> =09drm_debugfs_entry
> =09drm_encoder
> =09drm_fb_helper
> =09drm_minor
> =09drm_framebuffer
> =09drm_gem_object
> =09drm_plane
> =09drm_property
> =09drm_property_blob
> =09drm_vblank_crtc
>
> when in the end the intention isn't welcome.
>
>> > I have no strong preference here though, so "drmdev" or "drm" are fine
>> > for me, too. Let the bikesheding begin!
>>=20
>> We've discussed this to death. IIRC 'drm' would be the prefered choice.
>
> "drm" at least has the advantage to be the 2nd most common name. With
> Paul Kocialkowski prefering "drm_dev" there is no clear favourite yet.

I think that either "drm" or "drm_dev" would be more clear than "dev",
which I also found it confusing and thinking about a "struct device".

Probably leaning to "drm", since as you said is the second most used name
in drivers that assign crtc->dev to a local variable.

> Maybe all the other people with strong opinions are dead if this was
> "discussed to death" before? :-)
>
> Best regards
> Uwe
>
> --=20
> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig       =
     |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ =
|

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

