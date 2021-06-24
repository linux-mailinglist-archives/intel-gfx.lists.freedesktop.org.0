Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943813B2F43
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 14:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A2906EB2F;
	Thu, 24 Jun 2021 12:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903706EB2F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 12:41:46 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 h21-20020a1ccc150000b02901d4d33c5ca0so3533252wmb.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 05:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=K0FWJ+0x3R3W+pjLx/FMJl06KHuPFiKuxB/jcjxPEmQ=;
 b=QUp6A1RRhc600Vxy/ohB5hlCnetX/icCLWRuM1PGpcodrohrNHwNtOpGJtGg+cL8pm
 5BXkLN6+13AZzcnOMUEyR/87hbd6BsoX5d4VJNno+MyybVtu/MN48VW6sYC4gjFccavZ
 xLCC6ts89srPrNebwKLKOfOtZys1fWmEdRfGY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=K0FWJ+0x3R3W+pjLx/FMJl06KHuPFiKuxB/jcjxPEmQ=;
 b=XY4+eHrCcu9NcD+Jgj0TNNBrkLpqBmAAUU5k3DWV5xgxasdK7nZL3Ig6lbz5VpxUOl
 1A7XGAE36Wv8Y6ckWRztAiM/IIs4PbvKLLZZI8IWot9ZCmkgzABMmMvRaatS3nK0D8O/
 Cn1inMye7yC3nV+eYhzkfObSqGfW7qdPvfEdtUIUVZ+WG66vWFwCqVDaAti6xQ+Qvjmu
 XGcp63eHCQJImTY4PTi/DKtcEhaTbg57XzSkz8O/HFTVO/RDe3P89hd7sgdStNlUEzgO
 Ux71F2FdZn1goVAH3dmzLFj0v2uX3zEN3n+LFHH3yRfSSA4d9b+3ZfCzqOrsmyfP2bJP
 CfXQ==
X-Gm-Message-State: AOAM530/jwWkp7Sr0lRUiXCnz4pwzjI6w0hZitSeSGc4LA/CLxN97oOj
 lqE21mX+2nj0cuhHtIEDK/w8cw==
X-Google-Smtp-Source: ABdhPJz3ZYDGD/AcPjt+J8DyVfLAxeTmB97amNvq8TaU29PJLweD+cFRsaRyf+cQ1BaeVFU/+zKwmw==
X-Received: by 2002:a7b:c5d2:: with SMTP id n18mr4109751wmk.97.1624538505261; 
 Thu, 24 Jun 2021 05:41:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r4sm3212591wre.84.2021.06.24.05.41.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 05:41:43 -0700 (PDT)
Date: Thu, 24 Jun 2021 14:41:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YNR9hSMVmzYmotF0@phenom.ffwll.local>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-15-daniel.vetter@ffwll.ch>
 <4ed8f1d3-eb9c-74d6-d93f-ee28971af7f6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ed8f1d3-eb9c-74d6-d93f-ee28971af7f6@amd.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 14/15] drm/gem: Tiny kernel clarification
 for drm_gem_fence_array_add
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 23, 2021 at 10:42:50AM +0200, Christian K=F6nig wrote:
> Am 22.06.21 um 18:55 schrieb Daniel Vetter:
> > Spotted while trying to convert panfrost to these.
> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> >   drivers/gpu/drm/drm_gem.c | 3 +++
> >   1 file changed, 3 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > index ba2e64ed8b47..68deb1de8235 100644
> > --- a/drivers/gpu/drm/drm_gem.c
> > +++ b/drivers/gpu/drm/drm_gem.c
> > @@ -1302,6 +1302,9 @@ EXPORT_SYMBOL(drm_gem_unlock_reservations);
> >    * @fence_array: array of dma_fence * for the job to block on.
> >    * @fence: the dma_fence to add to the list of dependencies.
> >    *
> > + * This functions consumes the reference for @fence both on success an=
d error
> > + * cases.
> > + *
> =

> Oh, the later is a bit ugly I think. But good to know.
> =

> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Merged to drm-misc-next, thanks for taking a look. Can you perhaps take a
look at the drm/armada patch too, then I think I have reviews/acks for all
of them?

Thanks, Daniel

> =

> >    * Returns:
> >    * 0 on success, or an error on failing to expand the array.
> >    */
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
