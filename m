Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F9573B2C6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 10:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BABC910E136;
	Fri, 23 Jun 2023 08:36:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-40136.proton.ch (mail-40136.proton.ch [185.70.40.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E3010E637
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 08:36:35 +0000 (UTC)
Date: Fri, 23 Jun 2023 08:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1687509393; x=1687768593;
 bh=Rdq2Szt69Ictg+4WEZPCEClK80N0maFnUycYRN+EqX0=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=pUKvlhmm1HtuwXbRfYvvuN2Njn5vMjHkfrvG7c4FOTXFrgqzvI/8/RKHibzj/P5Rc
 fF1ddaQhonGCOj69YpzPfH7fu2x6QuOZ0pD2WcZZzpD4VgsSp+K7n+Vi28gmLPUESK
 WTQ6Adb83nKbLmwDvJ0aecvVJtr6QTly7ccgcAKwdjBsTUlTfLuSuvW0goqxyTLLwf
 T7RDUqqHw3JyE+8SdaY/g4uJ9B+ogIWKKpZglr82FnBF3q6LJBSyyNjxI6ghxDK7lH
 6E4P1nXDttc2777V9SWGNkiM6bppfw/aVwtwZjDpQWLc4uRZY+KUPm/B9VgBPtG4kB
 p6uskyvY/cykg==
To: Jani Nikula <jani.nikula@intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <0LfrowdNObkX5fmdqbL4LDzfMcJbSD9eWmovvoYeg7pe54Uy8td_kvgzjG1eGebCnkpLkss7mtTIkNPR9SIXOaKTlxYsmofLNSe90c6oGOw=@emersion.fr>
In-Reply-To: <87cz1p2e7t.fsf@intel.com>
References: <20230620181203.272076-1-contact@emersion.fr>
 <87ilbh2f7y.fsf@intel.com>
 <AE4nqoLosqykHVnfupxM4jHs34gh4RJWeMO2INTKyFn2L0uz3HFk7SYg6_8UyU11PL5eebf7mbX9Vphty0zBhe68mMuwTOtYeHNm1nPlx84=@emersion.fr>
 <87fs6l2exg.fsf@intel.com>
 <jsOhDAQlffGFG9HskNzjr0CpzEbtI7nYIKOYHX50JgeYjM4-GeAeLo4m2qEcvf48WD4hga3N9gGR-CVkisL0izawz1L2w-msofkhYHvQ76k=@emersion.fr>
 <87cz1p2e7t.fsf@intel.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, June 21st, 2023 at 14:26, Jani Nikula <jani.nikula@intel.com>=
 wrote:

> On Wed, 21 Jun 2023, Simon Ser contact@emersion.fr wrote:
>=20
> > On Wednesday, June 21st, 2023 at 14:11, Jani Nikula jani.nikula@intel.c=
om wrote:
> >=20
> > > On Wed, 21 Jun 2023, Simon Ser contact@emersion.fr wrote:
> > >=20
> > > > On Wednesday, June 21st, 2023 at 14:05, Jani Nikula jani.nikula@int=
el.com wrote:
> > > >=20
> > > > > > - if (changed)
> > > > > > + if (hweight32(changed) =3D=3D 1)
> > > > > > + drm_kms_helper_connector_hotplug_event(first_changed_connecto=
r);
> > > > >=20
> > > > > What if more than one connector share the same hpd pin?
> > > >=20
> > > > Ah, I did not believe this could happen. I'll rework the patch to
> > > > count the number of changed connectors instead.
> > >=20
> > > A DP++ port is probably the prime example of this, with both DP and H=
DMI
> > > connectors.
> >=20
> > Wouldn't that be handled by the separate DP logic though? (The
> > drm_dp_mst family of helpers.)
>=20
> It's not DP MST, though. See intel_ddi_init() initializing both DP and
> HDMI. One encoder, one HPD pin, two connectors.

Thanks for the explanation!
