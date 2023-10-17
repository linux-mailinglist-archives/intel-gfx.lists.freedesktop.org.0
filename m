Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7782B7CC622
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 16:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC9810E301;
	Tue, 17 Oct 2023 14:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F4F10E301
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 14:46:23 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id AF87740005;
 Tue, 17 Oct 2023 14:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1697553981;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=z+HVpjFBYgEh2l2BPPwW70dNMY8NySzXp+03g4Vtt4g=;
 b=i3Q8JGEVZ8AB1Xf6d3lGj4uWum1vScljC3EssKIwWv1VDYy+BVhLDQV7ngvm5edpVwvci4
 mAwzq35EGlvF3k5pwvp9zHBRV2MXFPFRItjFO9HqbHLaTUvIMedwgRkRjSeGwQzPCsqFs1
 x29BnDvWgQPlssTonWtV4KEeojCX9jwRtkWwHm7vDv65Xb2Sy9rBqh4f/c0tJO9ZexLaon
 cKBuqiHzctUyxrsYZAVDJhy/jtjL60rXnHLFLz19N+6+fRmYKCLob6ywCZ5Mkk6jKzBAGu
 6O5PIZILVXcp3yqC1OYvDm2xD5uUqsVK4GgmLtFPPVsb1lBnebkWTMFZXU0pwg==
Date: Tue, 17 Oct 2023 16:46:15 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Message-ID: <20231017164615.5b58fcc6@xps-13>
In-Reply-To: <CY5PR11MB63663DB0C17321A1A0C46FF3EDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
 <20231016103939.67445bee@xps-13>
 <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017155544.6cceb6a6@xps-13>
 <CY5PR11MB63663DB0C17321A1A0C46FF3EDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/spi: spi register with mtd
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alexander,

alexander.usyskin@intel.com wrote on Tue, 17 Oct 2023 14:20:32 +0000:

> > > > > +	spi->mtd.writesize =3D SZ_1; /* 1 byte granularity */ =20
> > > >
> > > > You say writesize should be aligned with 4 in your next patch? =20
> > >
> > > We support unaligned write by reading aligned 4bytes,
> > > replacing changed bytes there and writing whole 4bytes back.
> > > Is there any problem with this approach? =20
> >=20
> > Is there a reason to do that manually rather than letting the core
> > handle the complexity?
> >  =20
> I was not aware that core can do this. The core implements above logic
> if I put SZ_4 here and caller try to write, say, one byte?
> And sync multiple writers?
> If so, I can remove manual work, I think, and make the patches smaller.

I haven't checked in detail but I would expect this yes. Please have a
round of tests and if it works, please simplify this part.

Thanks,
Miqu=C3=A8l
