Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A310C5EA244
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 13:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0242B10E043;
	Mon, 26 Sep 2022 11:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B0A10E043
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 11:05:06 +0000 (UTC)
Received: from 91-155-255-44.elisa-laajakaista.fi ([91.155.255.44]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1oclv5-003aKj-B8;
 Mon, 26 Sep 2022 14:05:04 +0300
Message-ID: <2315a66022b8b1894c516814d15e1b0e76088871.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 14:05:02 +0300
In-Reply-To: <87leq62z6j.fsf@intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
 <20220912111814.17466-2-ville.syrjala@linux.intel.com>
 <dd276e8cec82ca39384fd4c85d07b8b3ae90f67e.camel@coelho.fi>
 <87leq62z6j.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.0-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915: Drop pointless middle man
 variable
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

On Mon, 2022-09-26 at 13:43 +0300, Jani Nikula wrote:
> On Mon, 26 Sep 2022, Luca Coelho <luca@coelho.fi> wrote:
> > On Mon, 2022-09-12 at 14:18 +0300, Ville Syrjala wrote:
> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > >=20
> > > No need for the 'procmon' variable here. Just return the correct
> > > thing from the switch statement directly.
> > >=20
> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
>
> > > ---
> >=20
> > This doesn't make any difference in practice, the compiler will very=
=20
> > likely optimize out the procmon variable.
> >=20
> > In general, I think I think it's preferable to avoid this kind of
> > patches, because they just make git blame a bit harder to interpret.
>=20
> I think it's nicer to read, ymmv.

Okay, barely.  And that's why I commented, I think the churn may not be
worth the tiny increase in readability.

Anyway, I'm not a maintainer here, so feel free to dismiss my minor
comments.


> > Nevertheless, this is certainly not a reason to nack, so:
> >=20
> > Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
>=20
> N.b. I've already reviewed patches 1-13. [1]

Oh, I missed that and thought you had only reviewed 6 and 13.  Sorry,
I'll stop now. =F0=9F=99=82

--
Cheers,
Luca.
