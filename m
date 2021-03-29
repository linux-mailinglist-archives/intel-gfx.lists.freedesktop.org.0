Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A28234C4F0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 09:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A2EC6E255;
	Mon, 29 Mar 2021 07:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62C76E255
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 07:30:16 +0000 (UTC)
IronPort-SDR: PD16q7AJ1pKs5J9ZrQJ3qebXawu54DTzMdtqCtmRwJ+bEx2J9fNQdKDu23DH3Ts/Tl4azeh4DE
 V4Nk1uBWISxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="188230228"
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; 
 d="asc'?scan'208";a="188230228"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 00:30:16 -0700
IronPort-SDR: Kv7otJqHeDtJjOPqhHSYSFHQMb8I4se9PBiwutlTs+GeM8Yt+ggcTspMpgbgvGff8bja/7iiDQ
 r4xoNIF8GvQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; 
 d="asc'?scan'208";a="437765156"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga004.fm.intel.com with ESMTP; 29 Mar 2021 00:30:02 -0700
Date: Mon, 29 Mar 2021 15:12:48 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: "Gao, Fred" <fred.gao@intel.com>
Message-ID: <20210329071248.GB1551@zhen-hp.sh.intel.com>
References: <20201202171249.17083-1-fred.gao@intel.com>
 <161670632639.15545.18267924720650476934@emeril.freedesktop.org>
 <CO1PR11MB502634D68A7ABCC7D224708F9D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <CO1PR11MB502634D68A7ABCC7D224708F9D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZm?=
 =?utf-8?q?io/pci=3A_Add_support_for_opregion_v2=2E0+_=28rev5=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: multipart/mixed; boundary="===============2089010214=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2089010214==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="AYsPlKobQGgtCvjI"
Content-Disposition: inline


--AYsPlKobQGgtCvjI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.03.29 15:12:23 +0800, Gao, Fred wrote:
> Hi, Lakshmi:
>=20
> Can u help on this failure again,
> the only difference between version 5& 4 is the comments.
> Thanks in advance.

Looks i915 build warning, not related to vfio driver at all...

>=20
> > -----Original Message-----
> > From: Patchwork <patchwork@emeril.freedesktop.org>
> > Sent: Friday, March 26, 2021 5:05 AM
> > To: Gao, Fred <fred.gao@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: =E2=9C=97 Fi.CI.DOCS: warning for vfio/pci: Add support for op=
region v2.0+
> > (rev5)
> >
> > =3D=3D Series Details =3D=3D
> >
> > Series: vfio/pci: Add support for opregion v2.0+ (rev5)
> > URL   : https://patchwork.freedesktop.org/series/84494/
> > State : warning
> >
> > =3D=3D Summary =3D=3D
> >
> > $ make htmldocs 2>&1 > /dev/null | grep i915
> > ./drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:102: warning: Function
> > parameter or member 'ww' not described in 'i915_gem_shrink'
> > ./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function
> > parameter 'trampoline' description in 'intel_engine_cmd_parser'
> > ./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function
> > parameter or member 'jump_whitelist' not described in
> > 'intel_engine_cmd_parser'
> > ./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function
> > parameter or member 'shadow_map' not described in
> > 'intel_engine_cmd_parser'
> > ./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function
> > parameter or member 'batch_map' not described in
> > 'intel_engine_cmd_parser'
> > ./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function
> > parameter 'trampoline' description in 'intel_engine_cmd_parser'
> > /home/cidrm/kernel/Documentation/gpu/i915:22: ./drivers/gpu/drm/i915/i
> > ntel_runtime_pm.c:423: WARNING: Inline strong start-string without end-
> > string.
> >
>=20

--AYsPlKobQGgtCvjI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYGF97AAKCRCxBBozTXgY
J4pPAJ47yMOHrDNEKMXEs3igJtNKIJZmWACgnPU9kqsVqHXTSqTsQTeCTLRGiOo=
=r8sO
-----END PGP SIGNATURE-----

--AYsPlKobQGgtCvjI--

--===============2089010214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2089010214==--
