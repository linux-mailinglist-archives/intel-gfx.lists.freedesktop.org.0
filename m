Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC997F4541
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 13:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C5510E607;
	Wed, 22 Nov 2023 12:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3115810E607
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1700654452;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Jmfy3kCd2YUjxLnPRJpQFmmKZOJhEA2YCr/PvLEba18=;
 b=HtNaBKsDCL+SxeOc8QDMLW9iFlb/Du/Q9fHukw6lddBRjtXqM9kDfEBH7FbfU6aTTZ7Q7L
 sNEdyQXVk4sO5KuTAYtGt0LliBHF0JVhFZQiN7MIsr4cYsIKbAyH/iBafLhs/p2BzmWZQC
 OrjbshTSu8VOOV0l+vPs+lu2XuEOL0M=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-627-lD4AFIjZP9upLp2uS-fi8A-1; Wed, 22 Nov 2023 07:00:50 -0500
X-MC-Unique: lD4AFIjZP9upLp2uS-fi8A-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-332c50f4d98so1819754f8f.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 04:00:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700654449; x=1701259249;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Jmfy3kCd2YUjxLnPRJpQFmmKZOJhEA2YCr/PvLEba18=;
 b=nhzXDPpF8ujjSNYhVnxTxkCRH46EV4gAv/lOrjJpLtvJymE+G2u4gRXBEg2PK6xYUr
 mxECYR0Ce0frHt9bJfGVQiEGmPtMGWDgTjjns+8og6R+215TU2M+2+mLvIInjAetHBys
 Upks8w1Izdu9r6nR+IIWLbjE+VfqL8QFKmYci1Relvnx0RaOwNrwLL2k7YKAPVgqtOVn
 DcBc66dCDDIjPv589qqczejLElOeJOvKJNuQUuxkTQgX0aUXJ23hmC13nXPQgihl4btU
 kfXbqkE4zn8TED8mfsS8hstky0vq2juNqp8oUcQKaI0Z+YJDwLB07xM/PR1Uk2yshADv
 7a4Q==
X-Gm-Message-State: AOJu0YwrGj7lTPPhaeoXUOYWgktbeW9T6NMn2XyjI/ZT5qmhFNc5lho/
 L+9joWZ4m5BiXFzAB5qyoLv34YQwibnNGxWY7mcKoZE1wtuzhWoNtfIWESEEbmpMj1Ll556rEdv
 LitbtXvkPQ1igh6GzUQUgUqPiVnOv
X-Received: by 2002:a05:6000:2c4:b0:332:cea5:66a4 with SMTP id
 o4-20020a05600002c400b00332cea566a4mr1565033wry.14.1700654449074; 
 Wed, 22 Nov 2023 04:00:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcFf9DArrMf2qdlqNINZRMkLt+TpvsA5AzhchHcWi/XwSyj1G1RQEK9q6d97uQg4unQtT1cg==
X-Received: by 2002:a05:6000:2c4:b0:332:cea5:66a4 with SMTP id
 o4-20020a05600002c400b00332cea566a4mr1565013wry.14.1700654448710; 
 Wed, 22 Nov 2023 04:00:48 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 e8-20020adfe7c8000000b00332cc24a59bsm5895913wrn.109.2023.11.22.04.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Nov 2023 04:00:48 -0800 (PST)
Date: Wed, 22 Nov 2023 13:00:47 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Luben Tuikov <ltuikov89@gmail.com>
Message-ID: <zuz7zpcjfqzeymfrn53tbhcsem5abqh2l4vcaqkxo5wbgoc742@bnxnkek3wv6t>
References: <20231114075501.61321c29@canb.auug.org.au>
 <19740d41-dd5a-47e4-b3e8-539b45bbd3e5@gmail.com>
 <3c306310-04b3-4658-a197-4b2d22a88274@gmail.com>
 <20231114134506.2ba0de1f@canb.auug.org.au>
 <530b6100-4f4e-4b3d-8fea-5b316e989633@gmail.com>
 <20231114140855.0b259b2d@canb.auug.org.au>
 <f1b21cbd-5bb6-4030-ae7d-a0ca2fbc76a9@gmail.com>
 <73cg637ax5cahqocscx5cjvtqkwlt4ves6cxgprbwqllasxq6v@gk6vzsqfc46j>
 <ZVXSjt_1uWHuYXsq@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="nrm7sdlmqzqflhqa"
Content-Disposition: inline
In-Reply-To: <ZVXSjt_1uWHuYXsq@phenom.ffwll.local>
Subject: Re: [Intel-gfx] linux-next: Signed-off-by missing for commit in the
 drm-misc tree
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--nrm7sdlmqzqflhqa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Luben,

On Thu, Nov 16, 2023 at 09:27:58AM +0100, Daniel Vetter wrote:
> On Thu, Nov 16, 2023 at 09:11:43AM +0100, Maxime Ripard wrote:
> > On Tue, Nov 14, 2023 at 06:46:21PM -0500, Luben Tuikov wrote:
> > > On 2023-11-13 22:08, Stephen Rothwell wrote:
> > > > BTW, cherry picking commits does not avoid conflicts - in fact it c=
an
> > > > cause conflicts if there are further changes to the files affected =
by
> > > > the cherry picked commit in either the tree/branch the commit was
> > > > cheery picked from or the destination tree/branch (I have to deal w=
ith
> > > > these all the time when merging the drm trees in linux-next).  Much
> > > > better is to cross merge the branches so that the patch only appears
> > > > once or have a shared branches that are merged by any other branch =
that
> > > > needs the changes.
> > > >=20
> > > > I understand that things are not done like this in the drm trees :-(
> > >=20
> > > Hi Stephen,
> > >=20
> > > Thank you for the clarification--understood. I'll be more careful in =
the future.
> > > Thanks again! :-)
> >=20
> > In this case, the best thing to do would indeed have been to ask the
> > drm-misc maintainers to merge drm-misc-fixes into drm-misc-next.
> >=20
> > We're doing that all the time, but we're not ubiquitous so you need to
> > ask us :)
> >=20
> > Also, dim should have caught that when you pushed the branch. Did you
> > use it?
>=20
> Yeah dim must be used, exactly to avoid these issues. Both for applying
> patches (so not git am directly, or cherry-picking from your own
> development branch), and for pushing. The latter is even checked for by
> the server (dim sets a special push flag which is very long and contains a
> very clear warning if you bypass it).
>=20
> If dim was used, this would be a bug in the dim script that we need to
> fix.

It would be very useful for you to explain what happened here so we
improve the tooling or doc and can try to make sure it doesn't happen
again

Maxime

--nrm7sdlmqzqflhqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZV3tbwAKCRDj7w1vZxhR
xZmuAQDIFQZAPbTq+2X7+yuDLwFD1dPxqrGxTfYDLsC4QYSg1QD/XcyAWTymltT1
jbncyhmu0xFrScTXeF7DeKzN3uuQ+wg=
=VQ9e
-----END PGP SIGNATURE-----

--nrm7sdlmqzqflhqa--

