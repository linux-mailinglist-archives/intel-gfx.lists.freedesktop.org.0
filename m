Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C6B1465DA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 11:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4696FBD5;
	Thu, 23 Jan 2020 10:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3586FBD4;
 Thu, 23 Jan 2020 10:35:06 +0000 (UTC)
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EDF424125;
 Thu, 23 Jan 2020 10:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579775706;
 bh=IXu+CLEblbAfeMyZJCmgJZsaCksImenwoK2df5bxwE4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cdk+7rh7vZ1sMNRBWjqf62EqgAM5TKCvX++XhGiwdL/tiBMAat16JRdq5a+GXn3wn
 R10QsyYOyfZ5JdG9gM70P3bvJtH8znbiOddJoAtiwjIb9hYLpxIWrMp40C3mr+/NTk
 J6Gw5vYN+2qNINcatwN5LIzJ0E1hB1cXmUlewSwE=
Date: Thu, 23 Jan 2020 11:35:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200123103503.cgjqxbv6aw5pqtdp@gilmour.lan>
References: <87eevrecnf.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87eevrecnf.fsf@intel.com>
Subject: Re: [Intel-gfx] [PULL] topic/drm-warn for drm-misc-next
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============0281348199=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0281348199==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fvryeusxzof7xe6k"
Content-Disposition: inline


--fvryeusxzof7xe6k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 22, 2020 at 05:25:40PM +0200, Jani Nikula wrote:
>
> Hi Maarten/Maxime,
>
> Please pull the drm_device based drm_WARN* macros from the topic
> branch. I'll pull the same to drm-intel-next-queued.
>
> I like to use the topic branch here, because due to timing it'll take
> forever for the full feature route through drm-next and backmerges.
>
> The baseline was chosen using 'git merge-base drm-misc/drm-misc-next
> drm-intel/drm-intel-next-queued'.

Pulled, thanks!
Maxime

--fvryeusxzof7xe6k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXil21wAKCRDj7w1vZxhR
xegJAQCcAUM3OaZ+tUtMN5vBVLi8xAVQlI0B+Td+y11hxL08TAEAssoUr161MoB+
ZrrJm/1kr1FwQYilY/QHcERVi0lIsQ0=
=Emd1
-----END PGP SIGNATURE-----

--fvryeusxzof7xe6k--

--===============0281348199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0281348199==--
