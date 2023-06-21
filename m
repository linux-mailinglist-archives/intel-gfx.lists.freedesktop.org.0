Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DE7738295
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 14:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C57610E449;
	Wed, 21 Jun 2023 12:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 64495 seconds by postgrey-1.36 at gabe;
 Wed, 21 Jun 2023 12:07:13 UTC
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295CE10E449
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 12:07:13 +0000 (UTC)
Date: Wed, 21 Jun 2023 12:07:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1687349229; x=1687608429;
 bh=bRMHS4gsfHVxCP627mPTHef7MiLcUPAf5urfHMaoVJo=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=Xj03GPxOmCuNY0OPNBAVnJ8dgIjTX0RqBmz09kxy6MaOxNwC01s9T8o9I2h1B+dQf
 Rx1NajrFfUPn5jZA5ugzcWc+8l1Qw68iUZ3kpFce2CGkwH5Y73u/bP+uBTY80UKf02
 hx/Y7AP2DLi+h+jF0PfnkrR+EWgcv8Kb2hncjwBd+fJ5rj4a1Yk/Z11Zfr/KtO/fN6
 5COER7cvPd5WhOXvKNdyT9kfW4q4oNC6H/fDKkqm41SWFKS7kMud3kuMQnOv2tkjJO
 uWED0KlZisKoJQAgE6lhXvCddXWKhVB/ykVwSXF1IzLtc79AJEkt5rGTFmL5A5vAgo
 +AWYP2dDjZB3g==
To: Jani Nikula <jani.nikula@intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <AE4nqoLosqykHVnfupxM4jHs34gh4RJWeMO2INTKyFn2L0uz3HFk7SYg6_8UyU11PL5eebf7mbX9Vphty0zBhe68mMuwTOtYeHNm1nPlx84=@emersion.fr>
In-Reply-To: <87ilbh2f7y.fsf@intel.com>
References: <20230620181203.272076-1-contact@emersion.fr>
 <87ilbh2f7y.fsf@intel.com>
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

On Wednesday, June 21st, 2023 at 14:05, Jani Nikula <jani.nikula@intel.com>=
 wrote:

> > - if (changed)
> > + if (hweight32(changed) =3D=3D 1)
> > + drm_kms_helper_connector_hotplug_event(first_changed_connector);
>=20
> What if more than one connector share the same hpd pin?

Ah, I did not believe this could happen. I'll rework the patch to
count the number of changed connectors instead.
