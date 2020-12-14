Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C795C2D958C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 10:55:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3C16E150;
	Mon, 14 Dec 2020 09:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BFB6E147
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 09:55:10 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t16so15807363wra.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 01:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=b4Fx/qpsDjJ8a+Ri8W62vhBFQU3cIzA1w9OyhGn/XLU=;
 b=U5y0zwSWdX6btMmBy7tXhsLuna9yVe7lk+H44m6mvrhn5LrSXdSzrJcTh1H3ynkaLc
 8V0+LDbpjkkHBkIuXxy0L6YLzxegHqryc9eVVgKVksQ5XJOSQzmfaBRvmsfakrBOeN7G
 Yg/7lMECWvzeaIsPPG51YKClJs7ESpoSCatdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=b4Fx/qpsDjJ8a+Ri8W62vhBFQU3cIzA1w9OyhGn/XLU=;
 b=M1AeLY99CoYKB9kQJhvo1UM4/Tul6OIxH7803zADi+EJAqq8uuPqGiCiu4m3KRN3uz
 QCT3MtAXDuU9z4IA7gX9c7Z3rZRJZf7/Qce2C6x5l3b8+QGa03xnjPvR6DLPxhrt0huk
 3PddlBDJSloGZXgETk2N6V7NIU+yVbpZJgzCv35BEq3yW2EpJSrlGg2eDAhV+KTwOSug
 xNH/zs92lLbR8grHDwGFGtg5/Vd8vz+4hUPUb8hmzCdvkFPsKcq5TVtGpySCHkdLWEZ/
 NgMol+QJuohXzfsvSC/I8wtW3Zt+2nCctAd2R/7OC50McWzVjgzhGqBbQl2yq/Rm4yjB
 pyzQ==
X-Gm-Message-State: AOAM532nJZhHuvi9UFYMpySOTXP809M9q4TMunUcz17w6Q5PnFdgEH/a
 bd1y1cZby+QM1Ked1jjdM+yTwQ==
X-Google-Smtp-Source: ABdhPJyoPoPmBf06BijH5vz/jTDdmM096z7DynwOQgU5Rev25s043d8Ph6EhhqxucqGvdEA9wzEaLg==
X-Received: by 2002:adf:ec86:: with SMTP id z6mr28188032wrn.17.1607939709426; 
 Mon, 14 Dec 2020 01:55:09 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i16sm28602163wrx.89.2020.12.14.01.55.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 01:55:08 -0800 (PST)
Date: Mon, 14 Dec 2020 10:55:06 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Message-ID: <20201214095506.GY401619@phenom.ffwll.local>
References: <20201213183930.349592-1-jose.souza@intel.com>
 <Mc9Acjxtl9hCv_yd6qeDG8VXAC5-I18UkQYV4xPBAIv-K1QJt_gwTg1WJQjKdD5f3Yfoq6kElbFxFx8HNnHJ3vqX9ztgdL7o_9aGtwAYLZk=@emersion.fr>
 <636492279d31fc14d8dc7dd336bb1afe2a894eaa.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <636492279d31fc14d8dc7dd336bb1afe2a894eaa.camel@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v5 1/6] drm/damage_helper: Check if damage
 clips has valid values
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
Cc: "contact@emersion.fr" <contact@emersion.fr>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "drawat@vmware.com" <drawat@vmware.com>,
 "festevam@gmail.com" <festevam@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 14, 2020 at 09:27:30AM +0000, Mun, Gwan-gyeong wrote:
> On Mon, 2020-12-14 at 08:55 +0000, Simon Ser wrote:
> > > Userspace can set a damage clip with a negative coordinate,
> > > negative
> > > width or height or larger than the plane.
> > > This invalid values could cause issues in some HW or even worst
> > > enable
> > > security flaws.
> > > =

> > > v2:
> > > - add debug messages to let userspace know why atomic commit failed
> > > due invalid damage clips
> > > =

> > > Cc: Simon Ser <contact@emersion.fr>
> > > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > Cc: Sean Paul <seanpaul@chromium.org>
> > > Cc: Fabio Estevam <festevam@gmail.com>
> > > Cc: Deepak Rawat <drawat@vmware.com>
> > > Cc: dri-devel@lists.freedesktop.org
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > =

> > After looking at the kernel code, it seems like the kernel already
> > checks for
> > all of that in drm_atomic_plane_check. Are you aware of this?
> > =

> > > +	w =3D drm_rect_width(&plane_state->src) >> 16;
> > > +	h =3D drm_rect_height(&plane_state->src) >> 16;
> > =

> > The docs say this should be in FB coordinates, not in SRC_*
> > coordinates. So we
> > shouldn't need to check any SRC_* prop here.
> > =

> I agree the Simon's opinion. it does check between plane's frame buffer
> src geometry and damage clips. (Plane's damage clip might exist outside
> of fb src geometry.)

Since this is causing confusion, please make sure that the igt for damage
clips validates this correctly. I think some of the igts that vmwgfx
people have created have still not yet landed, so we definitely want to
land these.

Note that basic damage clips tests should be fully generic, i.e. not tied
to anything driver specific like our psr testcases are.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
