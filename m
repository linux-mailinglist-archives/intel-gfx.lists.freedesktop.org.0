Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81194A7278
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 15:00:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BBD610E319;
	Wed,  2 Feb 2022 14:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3181C10E30E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 14:00:24 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id f10so14362699lfu.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Feb 2022 06:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RfWPagEh50UG5AQsw4YG/NPcNcgAiuaDDHKAvh28Pfo=;
 b=gWuBXj+qXx0RfDEcvw60W9ulUvSlUlHE8bFwjkCfpL4a47/GFof5cDKoPsXVQOVdfv
 EoO/yOcOEOxWxZ+MjVdX7iyZPFgVwM02RaYqc2bEldH7dNpAk8Gz7W8FP+iIox80alGi
 ki+u1RmCp17bDsTFYcmQTQih55MQLrYSwxFrcA4IxoD4E9dIIAwpfYriXo1sCRgdWBYN
 Xaaq1tg/2s9jh+qpLM4o79OewjUhdEwvIJoUI42zNqiwAcbE0jU17Q/h7u1dRGdK/dUc
 1zc/YOEkzjGJLcIWNOwDw5RydsIi2qQrrtwGpClnqtKYbpzyMK8KHPOjxihh0nCbMYXH
 ue4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RfWPagEh50UG5AQsw4YG/NPcNcgAiuaDDHKAvh28Pfo=;
 b=pTh1laZZFWHG/JXATavllgtPwehjA+QgBIIoM6AuPqlhVVer4pEQ1EAnfqqsoEZPx/
 AIh37X2j1Y/ZqyXeXCFON2Pl16GbTNYF/L/pTwm4U0Xdipq9euVxrp9Oa1EPufeHcg/Z
 PlSfiy/RhKwdCcyooWA49a9z1l9braOWujvrKH7gzXr3f7I7id5wsO9D93VOJQYMjpI/
 wwossZfJAHlhkeVPfsEt1nwI9PFr6SK0D6QEPARDLPYigR0708VLjAExYxkE1R7ed0sX
 NBg+lhU4vyMwGJjj5U9t9w3vZVBIYgeXEI+r4abgHToFDfMm7FWasFtB4ps+WI/yBMZP
 i1bw==
X-Gm-Message-State: AOAM533zh7DFpsB+TIQsQvlY7g3aLOTRza3xmZtTWmvE4UgQzGMMOsjd
 /Yy3lUZHgrYGWlG5W0a4fTXkECjtRRUVE1tc2XgSCg==
X-Google-Smtp-Source: ABdhPJyStv54EPifbmyjjo5mPhJzT0KvmzQ4l/aBbOIzs2lV1jYzKtxILnikfpnxSP/qWf4MckalpLs8F3T1He52QnI=
X-Received: by 2002:a05:6512:2342:: with SMTP id
 p2mr23187896lfu.382.1643810422358; 
 Wed, 02 Feb 2022 06:00:22 -0800 (PST)
MIME-Version: 1.0
References: <20220202091134.3565514-1-lucas.demarchi@intel.com>
 <514cdee2-655e-7e52-d6a5-a7176ee603cc@amd.com>
 <20220202093814.i5z2nmlunrwm2n6c@ldmartin-desk2>
In-Reply-To: <20220202093814.i5z2nmlunrwm2n6c@ldmartin-desk2>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 2 Feb 2022 19:30:10 +0530
Message-ID: <CAO_48GGeZqzAMEBfspWAR5N1RWh0QAdQFSxgyhrPQHiE3ooJsA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] dma-buf-map: Rename to iosys-map
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
Cc: airlied@linux.ie, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, srinivas.kandagatla@linaro.org,
 tzimmermann@suse.de, daniel.vetter@ffwll.ch, nouveau@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Lucas,

On Wed, 2 Feb 2022 at 15:08, Lucas De Marchi <lucas.demarchi@intel.com> wro=
te:
>
> On Wed, Feb 02, 2022 at 10:25:28AM +0100, Christian K=C3=B6nig wrote:
> >Am 02.02.22 um 10:11 schrieb Lucas De Marchi:
> >>[SNIP]
> >>diff --git a/MAINTAINERS b/MAINTAINERS
> >>index d03ad8da1f36..112676f11792 100644
> >>--- a/MAINTAINERS
> >>+++ b/MAINTAINERS
> >>@@ -5675,7 +5675,6 @@ T:      git git://anongit.freedesktop.org/drm/drm=
-misc
> >>  F:  Documentation/driver-api/dma-buf.rst
> >>  F:  drivers/dma-buf/
> >>  F:  include/linux/*fence.h
> >
> >Oh, that is not correct to begin with.
>
> right, include/linux/dma-fence*
>
> >
> >>-F:   include/linux/dma-buf*
> >
> >That here should probably be changed to point directly to
> >include/linux/dma-buf.h, but that can come later on.
>
> thanks for catching that. I will change it on next version and add your
> (and any additional) ack.
>
> Lucas De Marchi
>
> >
> >Feel free to add an Acked-by: Christian K=C3=B6nig
> ><christian.koenig@amd.com> to the patch.
> >
> >If nobody objects I'm going to push it drm-misc-next and provide a
> >follow up to cleanup the MAINTAINERS file a bit more.
Thank you for the patch; apologies for not being able to respond
earlier (was out due to covid, just getting back slowly).

With Christian's suggestions, looks good to me as well - feel free to add a=
n
Acked-by: Sumit Semwal <sumit.semwal@linaro.org> to the same.

> >
> >Regards,
> >Christian.
Best,
Sumit.

> >
> >>  F:  include/linux/dma-resv.h
> >>  K:  \bdma_(?:buf|fence|resv)\b
> >>@@ -9976,6 +9975,13 @@ F:     include/linux/iova.h
> >>  F:  include/linux/of_iommu.h
> >>  F:  include/uapi/linux/iommu.h
> >>+IOSYS-MAP HELPERS
> >>+M:   Thomas Zimmermann <tzimmermann@suse.de>
> >>+L:   dri-devel@lists.freedesktop.org
> >>+S:   Maintained
> >>+T:   git git://anongit.freedesktop.org/drm/drm-misc
> >>+F:   include/linux/iosys-map.h
> >>+
> >
