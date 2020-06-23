Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8CA20482D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 06:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39006E378;
	Tue, 23 Jun 2020 04:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42E76E378
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 04:01:32 +0000 (UTC)
IronPort-SDR: CDRsZHxFMHG/mw5c+6496gSVc3UVP0SYUeoPcj2DmbLd2U8E1aR0DYu9sIGffUiPIz/TtewDke
 u2PBgx36TIWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205457222"
X-IronPort-AV: E=Sophos;i="5.75,269,1589266800"; 
 d="asc'?scan'208";a="205457222"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 21:01:31 -0700
IronPort-SDR: DtXAXJViLSYDh3i0dRVppxTS8EHlqB3fachEjJYuWSEMYkFcEVcH1r8/5JYBZcV6EUUG6fMwAt
 /yUkmFgLM1Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,269,1589266800"; 
 d="asc'?scan'208";a="278976678"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga006.jf.intel.com with ESMTP; 22 Jun 2020 21:00:59 -0700
Date: Tue, 23 Jun 2020 11:44:42 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: "Tang, Shaofeng" <shaofeng.tang@intel.com>
Message-ID: <20200623034442.GB5687@zhen-hp.sh.intel.com>
References: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
 <159233324036.19488.6385709597388673560@build.alporthouse.com>
 <20200622082319.GZ5687@zhen-hp.sh.intel.com>
 <SN6PR11MB255859A6CB9B6BB51C1FB578E2940@SN6PR11MB2558.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR11MB255859A6CB9B6BB51C1FB578E2940@SN6PR11MB2558.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lv,
 Zhiyuan" <zhiyuan.lv@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: multipart/mixed; boundary="===============0511917965=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0511917965==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MgcI0aUO3vrRQI/Z"
Content-Disposition: inline


--MgcI0aUO3vrRQI/Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.06.23 03:46:55 +0000, Tang, Shaofeng wrote:
> Hi Zhenyu and Chris,
>=20
> Yes, I agree with you.
> It must be better if only the workable planes/overlays are returned from =
KMS.
> but currently, KMS still return all planes. and User did not know if it i=
s a virtual GPU
> or a native GPU. Do you know if there is a plan to fix or implement it? o=
r any roadmap for sharing.

We should expose this info via PV to let guest expose correct config from K=
MS.
I've asked Zhiyuan to add todo for the fix. Better include you to be clear =
on
the issue and requirement.

> If KMS does not work in this way,  we have to customized our image for th=
is issue.=20
> 2 possible solutions,=20
> first, provide 2 customized image, 1 for VM, and 1 for Native or bare-met=
al.
> and hard-code to only use 1 plane in the VM image.
> Second, only provide 1 image, and  hard-code to only use 1 plane for both=
 VM and native.
> None of them looks good to us.
> We don't hope to hardcode the plane usage in user-space either, so this A=
PI is really helpful before KMS work as expected.
>=20
> As you mentioned there is a potentially good reason to let the user=20
> know if it is a virtual GPU or not. it is not a hardcoding api limits.=20
> I suppose it is a ability to support developer for optimizing the perform=
ance on VM
> Including choose an appropriate renderer for better performance on VM.
>

But simply expose virtual GPU flag doesn't give you reliable indicator
for performance e.g it doesn't tell you what's rendering is preferred.

Or either you do some runtime profiling or try to detect either it's
passthrough or mediated device e.g from gpu resource size, etc. That's
your guest application's choice.

> BR, Shaofeng
>=20
> -----Original Message-----
> From: Zhenyu Wang <zhenyuw@linux.intel.com>=20
> Sent: Monday, June 22, 2020 4:23 PM
> To: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tang, Shaofeng <shaofeng.tang@intel.com>; intel-gfx@lists.freedesktop=
=2Eorg
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active vi=
a GETPARAM IOCTL
>=20
> On 2020.06.16 19:47:20 +0100, Chris Wilson wrote:
> > Quoting Shaofeng Tang (2020-06-16 09:29:20)
> > > [Why]
> > > Query if vgpu is active, it is useful to the user.
> > > Currently, only the primary plane is usable when vgpu is active.
> > > The value of vgpu active is useful for user to determine how many=20
> > > planes can be used. also useful for user to determine different=20
> > > behaviors according to vgpu is active or not.
> >=20
> > The number of planes must be queried via kms, and all such kernel=20
> > capabilities should be declared via the appropriate interface.
> >=20
> > I am not saying that there is not potentially good reason to let the=20
> > user to know it's a virtual gpu, but hardcoding api limits in the=20
> > client based on the parameter is a bad idea.
>=20
> Yeah, as I replied for internal before, guest shouldn't detect via this k=
ind of interface, which also doesn't reflect any gvt host capability change=
=2E For any current gap, let's fix gvt or vgpu handling instead.
>=20
> Thanks.

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--MgcI0aUO3vrRQI/Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXvF6qQAKCRCxBBozTXgY
J7NzAJ9T/0es6uthyJLTf725JoxIivmCPQCeJ8owB+Id+X/vFRfnTUhqo0UTg6I=
=cvMq
-----END PGP SIGNATURE-----

--MgcI0aUO3vrRQI/Z--

--===============0511917965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0511917965==--
