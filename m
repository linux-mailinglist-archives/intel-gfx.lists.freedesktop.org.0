Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A6661560B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 00:21:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5788A10E43E;
	Tue,  1 Nov 2022 23:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D7010E43B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 23:21:09 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id z14so22173178wrn.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Nov 2022 16:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Xyu+/ufH3fYbluVnuh1FycRyonaiDEWqgxo/KpA5re0=;
 b=pdC0tgpX/KiYiOSsWmMbrxmhyo8tZOdAI7ggSVZeCE2aaLzBHPMCaxRAGuopjn5Iw5
 ZqfTgR0X9oAjD+SNC/l2yKQKo2Hjyk4XopWzviBXmcKRyMj2urq9OMuS5Af70XpHhgK1
 qg6h453+OpDAwvyWZTjSkfwdPIlBaxcVzPy3ILVhVy55kQw7Xak85RosMEUHQP7TDWKW
 +/4jfey9k4GMarx3FYOiYTeU2eITmfKe39zczha7D30NbRhSXpJlIcMUIdaMXQvm6KoM
 7YbaWRgExUGL6ppT0csA0ka0sVpreF6NuWjbziLbPz2s10kqKSd2M8AnORjQ27OEPx9t
 EDcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Xyu+/ufH3fYbluVnuh1FycRyonaiDEWqgxo/KpA5re0=;
 b=0VmujnYutOh8bKatNxLYThjd4SctEY/rfMmu3MLgXSERK0gYx2uOmUavanCq6uMPB5
 J1j4rAL5NiNAXBTvfu/Yj8j1bPH5RVQwW8EGHeDyXEtbP5KHIqT1rLXT8PBgee7IE7Jg
 t1VcH+iUDEuyyvw0aAY4AMwyGrifdSbo5r1wUnMIWxybe16ktJSvX4vktLxPz6/kBE8q
 /qIN4bVbEO9rjjAwqU7cBQMm5dAyELhnGuZ5VuzsiImvxo8d6bx5yvvf07SFZU2+ZUYS
 gRXz0eBuLPsJZDJros0EwWo5ni2ZhTSM0CPEXDq1smLpXBNaPp1Xz5UZdClbaylIOSUV
 Uinw==
X-Gm-Message-State: ACrzQf0Rk2ZfzBH7ej2+yphiOvrNniG7EbN0J9smB+Uv3gTpopz01Alp
 uPtsDn8K+43DHdRqohz5UXK2zb30ftr+nA==
X-Google-Smtp-Source: AMsMyM4vuZaH/kXbCbp2A6lUE9+rSzOZSEiVzTVxNfhHjtoGV7KlHiQ7C7zolJ1ItD3QtCMbFV/jUg==
X-Received: by 2002:adf:f609:0:b0:236:680b:8c65 with SMTP id
 t9-20020adff609000000b00236680b8c65mr13653299wrp.615.1667344868083; 
 Tue, 01 Nov 2022 16:21:08 -0700 (PDT)
Received: from suse.localnet (host-79-43-11-206.retail.telecomitalia.it.
 [79.43.11.206]) by smtp.gmail.com with ESMTPSA id
 bd26-20020a05600c1f1a00b003cf6c2f9513sm196641wmb.2.2022.11.01.16.21.04
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Nov 2022 16:21:05 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Nov 2022 00:09:22 +0100
Message-ID: <3142743.5fSG56mABF@suse>
In-Reply-To: <166603821088.13569.2827876193913746967@emeril.freedesktop.org>
References: <20221016180938.17403-1-fmdefrancesco@gmail.com>
 <166603821088.13569.2827876193913746967@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_Replace_kmap=28=29_with_kmap=5Flocal=5Fpage=28=29_?=
 =?utf-8?b?KHJldjIp?=
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

On luned=EC 17 ottobre 2022 22:23:30 CET Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Replace kmap() with kmap_local_page() (rev2)
> URL   : https://patchwork.freedesktop.org/series/107277/
> State : warning
>=20
> =3D=3D Summary =3D=3D
>=20
> Error: dim sparse failed
> Sparse version: v0.6.2
> Fast mode used, each commit won't be checked separately.

I received this and other messages with regards to the same series, however=
,=20
after due inspection of my patches, I haven't yet been able to understand w=
hat=20
these reports may mean or even if they are reporting bugs.

Can anyone please provide any help?

Thanks,

=46abio

P.S.: Similar requests for the other messages will follow ASAP.



