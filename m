Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9227673836E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 14:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E709F10E450;
	Wed, 21 Jun 2023 12:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4018.proton.ch (mail-4018.proton.ch [185.70.40.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2CC10E450
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 12:14:56 +0000 (UTC)
Date: Wed, 21 Jun 2023 12:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1687349694; x=1687608894;
 bh=2bZhj4MF1k7/9X02Vt/7c7dY4udo+OXQMmjfzVyh4+0=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=UeGHZRj1SFxEtVB/D3IhB/Ns9QSr8Zl/hJj6yfefeBwMJ9JfJ89gZD7WD5h3QCzGH
 4IWOIksHS1nV/sgiqzFK+EELDHvRZ1Udv+13zYYuDBxheEWH3NRYRrx/+ZObS0JtnR
 cbzSztoKdXaiCWLLBiqBEqTLa65rQ4QJYD0Lrq5slhY7DroqWDgROc17i4Em30JWng
 qwXdnBxC5Qz85INxsw6Qsphl1QH900QMRrYnmhnEylmrT7wvKr0w2AnCQmx+wvG/Ly
 u/0KDK4s6h8nb3b7+27yBF9cELAIXb0w9BxvtlFZqvxhqSawh2SaFTn9z+lQDfq2R3
 jfvGyxyyH1e8w==
To: Jani Nikula <jani.nikula@intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <jsOhDAQlffGFG9HskNzjr0CpzEbtI7nYIKOYHX50JgeYjM4-GeAeLo4m2qEcvf48WD4hga3N9gGR-CVkisL0izawz1L2w-msofkhYHvQ76k=@emersion.fr>
In-Reply-To: <87fs6l2exg.fsf@intel.com>
References: <20230620181203.272076-1-contact@emersion.fr>
 <87ilbh2f7y.fsf@intel.com>
 <AE4nqoLosqykHVnfupxM4jHs34gh4RJWeMO2INTKyFn2L0uz3HFk7SYg6_8UyU11PL5eebf7mbX9Vphty0zBhe68mMuwTOtYeHNm1nPlx84=@emersion.fr>
 <87fs6l2exg.fsf@intel.com>
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

On Wednesday, June 21st, 2023 at 14:11, Jani Nikula <jani.nikula@intel.com>=
 wrote:

> On Wed, 21 Jun 2023, Simon Ser contact@emersion.fr wrote:
>=20
> > On Wednesday, June 21st, 2023 at 14:05, Jani Nikula jani.nikula@intel.c=
om wrote:
> >=20
> > > > - if (changed)
> > > > + if (hweight32(changed) =3D=3D 1)
> > > > + drm_kms_helper_connector_hotplug_event(first_changed_connector);
> > >=20
> > > What if more than one connector share the same hpd pin?
> >=20
> > Ah, I did not believe this could happen. I'll rework the patch to
> > count the number of changed connectors instead.
>=20
> A DP++ port is probably the prime example of this, with both DP and HDMI
> connectors.

Wouldn't that be handled by the separate DP logic though? (The
drm_dp_mst family of helpers.)
