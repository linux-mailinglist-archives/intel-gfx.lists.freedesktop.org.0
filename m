Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B19216A4AC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 12:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E3AD89388;
	Mon, 24 Feb 2020 11:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833EA892A1;
 Mon, 24 Feb 2020 11:15:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 03:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; 
 d="asc'?scan'208";a="409844811"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.14])
 by orsmga005.jf.intel.com with ESMTP; 24 Feb 2020 03:14:59 -0800
Date: Mon, 24 Feb 2020 19:01:53 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200224110153.GB19516@zhen-hp.sh.intel.com>
References: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
 <87eeulthds.fsf@intel.com>
 <20200224095704.GC13783@zhen-hp.sh.intel.com>
 <87mu98tf3q.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87mu98tf3q.fsf@intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH v7 0/8] drm: Introduce struct drm_device
 based WARN* and use them in i915
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0591634208=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0591634208==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oC1+HKm2/end4ao3"
Content-Disposition: inline


--oC1+HKm2/end4ao3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.02.24 13:11:05 +0200, Jani Nikula wrote:
> On Mon, 24 Feb 2020, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> > On 2020.02.23 18:09:35 +0200, Jani Nikula wrote:
> >> On Thu, 20 Feb 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@i=
ntel.com> wrote:
> >> >   drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is availa=
ble
> >> >   drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
> >>=20
> >> Thanks for the patches, pushed everything except these, which are for
> >> Zhenyu & Zhi.
> >>=20
> >
> > For GVT changes.
> >
> > Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>
>=20
> I assume you'll pick these up and merge via gvt tree.
>=20

yep, I've picked them for -next tree, will send pull very soon
after gvt nightly validation cycle.

thanks

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--oC1+HKm2/end4ao3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXlOtIAAKCRCxBBozTXgY
JwhGAJ9zbBtzhb+HSfblofGjkeBErCA3CQCeKDAPeZwNbQjiKmc1t64QnMN94MQ=
=b3Uf
-----END PGP SIGNATURE-----

--oC1+HKm2/end4ao3--

--===============0591634208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0591634208==--
