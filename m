Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978BB942A39
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 11:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594DC10E2E0;
	Wed, 31 Jul 2024 09:20:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="oiEWdOc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007DE10E5CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 09:20:47 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-66ca536621cso39516847b3.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 02:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1722417647; x=1723022447; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2iFlXRtsUl8RHMCZ1KZpvt/c6uR1SO46BY0XCxWhf9A=;
 b=oiEWdOc+CbQ0PwHMBPozlDUGlmkMJaovJLVQ1iVmvlz0P5AGqzFPxe3Gp5/WzTtAPc
 GYJ+YS8hjPGEdhtQKplpcVx+1fPhvaqUBLzmDWLd3AEL7HOeoCPNWtLplvuU+UeE3WX9
 o/PTYzC7asAvBeV1tpO92y/hZppn1WkpQdDeh2uEDtj/xcUXdFgcjEN9iPe1h/e+XkJA
 BH/SESRQQXMyjPgZ9tY4Pcv3p8repstFddm6iGos4leW1ZHt9xVBH7WqKHdJUAe7SkHx
 O9ZJD5xCxAbdIuxKuLQC64QZ8ZLDzWq3wxbOzZMMxOpP1icsedUJ1y83aBj/9Ff2D4Lr
 rsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722417647; x=1723022447;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2iFlXRtsUl8RHMCZ1KZpvt/c6uR1SO46BY0XCxWhf9A=;
 b=BXOhUugJfimlfPyDYWYEihHybu8uzwTCuQCnR9vp01RQw961dRVu7NRyFe1BrkANzR
 cAbHI5Y4cOaG626A9tB64KetcJxov0KijJlrnPwaTTejbBJh9ZCgYkBJtJ+BW1+Mqf74
 zixxl36WFASGMtqlyikBm/7ypjD7lSltLb8EnAj8+7obhAi9zJsJdWAOFVXJrvBXmBBV
 /EheaomThVcqpdZv1oiPABxoow53Ljen5+/gaYM395RfW2/VMTLwc3kIXMV93xRj1VFe
 zL8zA/WyLvUBHDI+CKnn7Vsuq8VjH8JMUEejEzViXxB0Pip3FHEepyk56KBoFHHydM4x
 gRQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVW4oeEBXGcSHuLSgkVSJFNpFUcMK1nLCOPK+CUJIFYY2L9srftPl4eK3fk/3Vd4w8A4JV6jKjfLqPW5XRE8+R6qyW5+ElZuph/wutrZCZk
X-Gm-Message-State: AOJu0YywNGqDDzSQ+mMqV6T7zvc9Wl/PGOMemIKyTXCG1cLK08/g7BZj
 4BXNRmYcLjnGEuZ6MVNpE70AdSRGq9/9kDyeJi8D4SGuJQI+AgVQBN/krwdiGLRf/h3GbPpAseC
 oUuzoTs787K04tVD7oZsvRSq0IpJrepEvxQ3ZGA==
X-Google-Smtp-Source: AGHT+IFK9P0uOY/gewuxQvlHRsUZxiZ/hs1xt9TWijy9+GBHNuczQJMetK5xPKTdONpPKeT+HV5EXeZEbeea0eagDfw=
X-Received: by 2002:a05:690c:6510:b0:647:e079:da73 with SMTP id
 00721157ae682-67a05b94e00mr146374177b3.10.1722417647000; Wed, 31 Jul 2024
 02:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240709074656.1389387-1-arun.r.murthy@intel.com>
 <IA0PR11MB7307E4F207A125F53A23342BBAB72@IA0PR11MB7307.namprd11.prod.outlook.com>
 <jsrh2xyopzcmsi7uardklw2gfzmseq4pldj6bt6ozezhx5qqbs@epk6y7hg6ihv>
 <CH3PR11MB7300ABE65A3E3DCD3CE90DDCBAB02@CH3PR11MB7300.namprd11.prod.outlook.com>
 <CAA8EJppU9GaS8Npy+M5v00BJ4NrZt+BpYG5uAGPgdmZnb1TXnQ@mail.gmail.com>
 <IA0PR11MB7307204A1E7BB969500CAF0CBAB12@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307204A1E7BB969500CAF0CBAB12@IA0PR11MB7307.namprd11.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 31 Jul 2024 12:20:35 +0300
Message-ID: <CAA8EJppOL-GxE3XY8cQWt4JvM93GZ1kqkyK=JU4tQrXWweRqfA@mail.gmail.com>
Subject: Re: [PATCH] RFC: drm/drm_plane: Expose the plane capability and
 interoperability
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
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

On Wed, 31 Jul 2024 at 11:48, Murthy, Arun R <arun.r.murthy@intel.com> wrot=
e:
>
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Sent: Wednesday, July 31, 2024 2:04 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH] RFC: drm/drm_plane: Expose the plane capability an=
d
> > interoperability
> >
> > On Tue, 30 Jul 2024 at 07:07, Murthy, Arun R <arun.r.murthy@intel.com>
> > wrote:
> > >
> > > > -----Original Message-----
> > > > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > Sent: Tuesday, July 30, 2024 4:21 AM
> > > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > Cc: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.or=
g
> > > > Subject: Re: [PATCH] RFC: drm/drm_plane: Expose the plane capabilit=
y
> > > > and interoperability
> >
> > Please fix your email client.
> >
> Sorry for that. Sure will fix it.
>
> > > >
> > > > On Mon, Jul 29, 2024 at 04:59:14AM GMT, Murthy, Arun R wrote:
> > > > > Gentle Reminder!
> > > > > Any comments?
> > > >
> > > > First of all, the format is underdocumented. Second, there is a
> > > > usual requirement for new uAPI: please provide a pointer to IGT
> > > > patch and to the userspace utilising the property.
> > > There are some discussions on using this in UMD.
> > > https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/29618#note_=
2
> > > 487123
> >
> > It should be a MR rather than "some discussion". And IGT patchset too, =
please.
> There is no IGT patch yet.
> >
> > Regarding the patch itself. It is completely underdocumented. There is =
no way
> > for me to understand which of these caps should e.g. be set for the drm=
/msm
> > planes.
>
> I have explained it in the patch header. There are certain plane restrict=
ions.
> For example, certain pixel formats are not supported in async flip. If th=
is is known to the compositor ahead, then compositor sending a flip with th=
is unsupported formats leads to a flip failure. In order to overcome this i=
f the KMD sends the list of supported pixel formats, compositor can verify =
for the same and then send the flip request.
> This can be achieved in two options. The options are listed below in the =
patch header and expected some review comments or suggestion as to which op=
tion to use!

It is impossible to understand what your options / capabilities
_actually_ mean. I browsed through the patch and I still don't
understand how to select which options apply to DRM_FORMAT_MOD_QCOM_*

--=20
With best wishes
Dmitry
