Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2B078C66C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 15:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95AF310E10D;
	Tue, 29 Aug 2023 13:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BCE10E10D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 13:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693316904; x=1724852904;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2eBSdhgBh+h18MLR1tyEhL4sBj2ei3QMaZ4pNVHS6hs=;
 b=HJqCywa/SOZNdyR+aR29h/wQ0gKPutOFskm7D64nbAmHBpNRQZnZTJZq
 OvFPPfSOcgB9X1t48BILw4QuQ5C6xVchkzQxGXxxLL1VgVnNccaAAqNmq
 LdUM0U0ek7986JKoHmkKz0hbtb7RgPgf6CTyIqjD22v21vv+bePlajLav
 jzd1OUYCHvoCVI20GO8P67jC5VEVpaKbO2qA/hX3LcJiabCnxKa3gyA6P
 7pE2JArPfI/KYEWNNroAiHhhlVEXXXoqWIVQdSJC8QHLEJZbh6/Dgf2Uf
 CRYcRuUjL6/Q+8uqKIwjO58nyaEqZqLBvClnlqmkFEH/hZS8jKT8YUYLM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="372784032"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="372784032"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 06:48:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="862255148"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="862255148"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 29 Aug 2023 06:48:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 06:48:21 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 06:48:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 06:48:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 06:48:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TAdW4SO+UgusB50bCVP47N2dR+GW9pwDwyyxV0JrOehoT1ruLpr7o0/J7XJIp1N578Xn7c+BxOGRb/te5RgxW6Etjao5UmzERpwV13xSYJkCYiNCj7X2Bap0VYB2NH1phPZRtYyjxy/6xGxhq6wrimJ+QhKmjFgsYnGtmAlFrR3Wk6cpeuKnEIu9d1ZsLkrJVavgEWlOmiOY6wfrRmMbId00cLwx82zWcUSdnfYB1ZyfF7pnTjBCTRW1cT3L15OTjNjSozyAG/j3tryb2UlfxYNpVmRSvsdAjNKE+Q9MYswMBnrH1Rsvkraro12CS+k8Ry525vVmMV+kr9cNRf4p0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPwOnAmSygDfmLvAGX7JSRzVXvlWWDDd2WQMsmwQD5I=;
 b=R3r9K7Xxoqdu3Lv74K2U/jNRs/Xn8eHPt60bcKrtjCwq9r8sNMg4jnGlHKkz0oxVZUsi+fCKNllZEfYLTXctxOkyEEH9t2ZmEMogITnhHj2LdiuR9FuKG7aiVNBaW+KYo7ECQDBbHY3g6LuD04VOF+QKv6LfvqdCquZlGhdAiI2EWcV0r2or1Djjid/Uxe+yPqWU74h/HkCgYho+veozD1DlxJQgfF3N2Uduk//EqJvS779KYi95YL6dz4CMLwfzisKESe5CfZpffxUOufF3+ZuRFRely4MnV8cNm4krjPf55qKwj8eUkzFO4Aa0NHh/QYnJsIshPg82wwkKcXuDrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS0PR11MB7683.namprd11.prod.outlook.com (2603:10b6:8:df::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.18; Tue, 29 Aug
 2023 13:48:18 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee%6]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 13:48:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
 behaviour
Thread-Index: AQHZ2XJvB5Ost8epkEOiMtrQP47o7a//7aGwgAEC5ICAAFo8IA==
Date: Tue, 29 Aug 2023 13:48:18 +0000
Message-ID: <IA1PR11MB6348EDA889B7CE26F4FBD298B2E7A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-6-ville.syrjala@linux.intel.com>
 <IA1PR11MB6348E2A5D779E5D43EB3360CB2E0A@IA1PR11MB6348.namprd11.prod.outlook.com>
 <ZO2qXZ4MzHOzsVsr@intel.com>
In-Reply-To: <ZO2qXZ4MzHOzsVsr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS0PR11MB7683:EE_
x-ms-office365-filtering-correlation-id: 277d7255-15fb-45f7-ac23-08dba8969a26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8GVuOruJb4oQvdmioF1bN7/cK90VCDkq8ai7gxApJA21tjE33YJhxeJHP4SPioh7bGFTxT1yk8AMqzoRMECI+9ieKegmRnOT7nHibSHq0FooWZNSgoN+Cz4lZ02muZR1vXuTsQ6pPbfYHd/hoGA0AkqTWnHso62QzDPwdT9KanGf4MlkcVEyy3dAFYLmIBkydzMn7VG+2G11Gwf8GoW1s6WYMZvakEtpS49tPbUQkjELJ+PrDH/tUw7mA0nnxY930KZ6wA43YS8SccgVUFsVHMeMfsb5boKANPcUAosl3LQO2qpsu+WHBv2xqNkWOinIlpWG2Wbo7RvSg5Xws12m2zI4nFuBrkc4AmHsSP56OgTt5Zc2G/QznGADMqFSmNeCuuwjdfVhSN6jC+wTKd00dkFDEyD8RVD2MZutnvgouRAV3+t8buVFyPLXXjTGVxXyz4hvv7DZEVgGYznyEXqyjlgzRoXcs8shj8+yUlpAbj3v5M2xT2edBtoiVtQXtQmzZ29iQ9/5WNp2ILfWwnA6kqBA2M73A4uTUUY1OfI9mKxL9jCm+2xq6ADOzoVf4D/7wuDLt8QOmSwi0+yWOA8XkVA6D4iWYJ4hjzxc06GOFmBLvtQ6nj+UxIHPfEBq6Tvz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(376002)(136003)(346002)(1800799009)(451199024)(186009)(9686003)(38100700002)(316002)(38070700005)(6916009)(41300700001)(82960400001)(4326008)(33656002)(66574015)(2906002)(83380400001)(30864003)(86362001)(52536014)(26005)(5660300002)(8676002)(55016003)(8936002)(71200400001)(6506007)(7696005)(64756008)(66476007)(66556008)(66446008)(66946007)(53546011)(76116006)(55236004)(122000001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KGnlurQWIZ+r6VG4HU2OtyhNQ9IXirqbhGwTNx89z1x4hQRwC8Od2nllqB?=
 =?iso-8859-1?Q?JJoyO8zNk/PYMZPI2gDjaXbiyFPV5CehfugYam6Q5Ocb4qcQKUIGDjObP1?=
 =?iso-8859-1?Q?mC0mYwcfwDlGkhCiM6ij5Z1hU6yy/ewHi0GFQzF3lmYNi+IPoLgKiVe1SO?=
 =?iso-8859-1?Q?HexL/eYnOPiNKXgMXnQPjBF4sPSO44SIuDTGcghTwoTRyVJUuEcbmvDJVD?=
 =?iso-8859-1?Q?nmFelvE1sSsYYxdusH5OVhx4rP9eoayNsgw8BJc+p5KNshxUlSkzn2CEwO?=
 =?iso-8859-1?Q?3G4cDfMHwpeiTfgwVK2KQAJvJkzUOrxcuMGeeslzwWt3rRjRPwwpFWMI9h?=
 =?iso-8859-1?Q?q7pyJPbbPie3GcV3GLI1LU0eE04K+gydU7sbrcQ61fKH1WAcZlCTKq1HK2?=
 =?iso-8859-1?Q?0tW3fkVWwZt6UruDKR23DEODqjJz0KjY1jNa6Sb1aNXdnt7uAey2lQ3zva?=
 =?iso-8859-1?Q?Nsv6+60h5X8rsR8ktJ7draHBLTC6TZbl/B8fcvb8+lBRzIwwARhvatOZJP?=
 =?iso-8859-1?Q?LlCaldacsMSQH4iq2GapbHBVebV/ea8BYKeLtz339oyTA71GcgesJk9iWb?=
 =?iso-8859-1?Q?LxRkds4uIi9xhdMinYHFxZ+8nRnvMFp2k+HFThwMT+9DmslwQHDXwNxTN+?=
 =?iso-8859-1?Q?rdXjfhZO5wtVEB6QIxG6t7UbD08QoGJgXbn1+bx/8fIQoFnGuqhFGO7NSx?=
 =?iso-8859-1?Q?7LnCfl2fM5X88ls5ocFq/8LaoVaanbQ34WDZiZmW6tX8n3jRBYbOQz5Y+r?=
 =?iso-8859-1?Q?RP2X/9lbTrFTbh3xIs+0+DLsZTy0RVN/rrm1VR+nL2UqYelMmj2y4mXzp7?=
 =?iso-8859-1?Q?y172gZQemtKLOpuwkdMXJ9+HPCs2qenTTFexBew4MHcRPkJjtNbVVopNQk?=
 =?iso-8859-1?Q?BOUuMlfbHkbtG8jtYD4TP/cUbyXySWlFwIzdotP+raDBL31k+f0H201otc?=
 =?iso-8859-1?Q?G3f0hR501aBLJpkdsPBQKdKo8LWof06XdzDJnpl74Gs/ObmR0RuGXjom7N?=
 =?iso-8859-1?Q?GJPufT0FfXHnpygGLkeLWBJUB1IYA5os2MBschLaP5fti6BNQTLc0u/zYy?=
 =?iso-8859-1?Q?MhFL94AaUn3M3e0RyjBB1V8OWM11kb/FmPebiSah1q1olJBWlOahjpLWtb?=
 =?iso-8859-1?Q?4fNBFOLuzBpLqMw45dqlc0DKdl+zGrYJbsQ+i7C5iEK8QYKTCK6cJ51lgr?=
 =?iso-8859-1?Q?LKzjNBxR0N0u/hMvBENSAzYXmp7iWcMHt8YpUwUpGWSATOu7ivjGlW7NjD?=
 =?iso-8859-1?Q?p2HLssiriaNMMW17sz/1ZAxXu5Tflft9rLr1E6Jj3i+Y8fvAIsTqMLAXzf?=
 =?iso-8859-1?Q?ihT45lNbT003RnRUapkus2bjxtm7DtOubHgOzvx1vPoManNDWCVPXMBmS3?=
 =?iso-8859-1?Q?/bYEgXU+rKh34i0R7Q5ZObywjhPhU15a3+fFi+Nm0RtNFLZZXAmi4usKLX?=
 =?iso-8859-1?Q?1nxZ29K+7gVO1LAAGfy6M9G2TbY1NfKot1X1knQYcwp12V2Dsq+kAPwlUx?=
 =?iso-8859-1?Q?BoONS6fKcPMCMPZtttqvHu2fd4gC2R0CIqhuBJFnPJKhyqxLi9Qp5KMId5?=
 =?iso-8859-1?Q?c50acz8q3Sidg5V1bk7KHzzSbXYHxdq+JjnfU6IBBLUJF3V3xXS8p99RSa?=
 =?iso-8859-1?Q?9hRBXFqLujXefhBgYRuwecqmJwjDBN9EcJJx2eTMSiJV1K34az9EXGyKQd?=
 =?iso-8859-1?Q?D0POP0Bcle+3yVh0h1A=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 277d7255-15fb-45f7-ac23-08dba8969a26
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 13:48:18.7713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NSyWRpevChOuZ9CDct5oON0YVM1/dsHU8Xouon47SLjkH45Yjk9FeYzbs3Fbx4WHh8YRUoLjmLdbmRD5T1JzqA2MOKcBBGwqaKTSTQRg/4K9d1ZgVkFyLJjy6C2xlb/E
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7683
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
 behaviour
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

Thanks for the inputs.

I encountered an interesting observation while validating the changes.=20
In scenarios where VRR is by default ON from the panel, I noticed that duri=
ng the first-time enabling of VRR, a full modeset is required due to a fast=
set requirement mismatch, as indicated in the logs.
However, I also observed that after this, the function intel_crtc_needs_mod=
eset returns 0, which typically implies a fastset operation.

Considering that both conditions can't hold simultaneously, there seems to =
be an inconsistency with underrun errors.=20
Could you kindly shed some light on this situation? I'm trying to align the=
 log messages with the observed behavior and the function's return value.

Your insights would be greatly appreciated.

Regards,
Mitul

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 29 August 2023 13:51
> To: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
> behaviour
>=20
> On Mon, Aug 28, 2023 at 04:58:49PM +0000, Golani, Mitulkumar Ajitkumar
> wrote:
> > Hi Ville,
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: 28 August 2023 11:12
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
> > > behaviour
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Make the seamless_m_n flag more like the update_pipe fastset flag,
> > > ie. the flag will only be set if we need to do the seamless M/N
> > > update, and in all other cases the flag is cleared. Also rename the
> > > flag to update_m_n to make it more clear it's similar to update_pipe.
> > >
> > > I believe special casing seamless_m_n like this makes sense as it
> > > also affects eg. vblank evasion. We can potentially avoid some
> > > vblank evasion tricks, simplify some checks, and hopefully will help =
with
> the VRR vs. M/N mess.
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
> > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++++------=
--
> > >  .../drm/i915/display/intel_display_types.h    |  2 +-
> > >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> > >  5 files changed, 17 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > index 7cf51dd8c056..aaddd8c0cfa0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -259,6 +259,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
> > >  		drm_property_blob_get(crtc_state->post_csc_lut);
> > >
> > >  	crtc_state->update_pipe =3D false;
> > > +	crtc_state->update_m_n =3D false;
> > >  	crtc_state->disable_lp_wm =3D false;
> > >  	crtc_state->disable_cxsr =3D false;
> > >  	crtc_state->update_wm_pre =3D false; diff --git
> > > a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > index 1992e7060263..a04076064f02 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > @@ -510,7 +510,7 @@ static void
> > > intel_crtc_vblank_evade_scanlines(struct
> > > intel_atomic_state *state,
> > >  	 * M/N is double buffered on the transcoder's undelayed vblank,
> > >  	 * so with seamless M/N we must evade both vblanks.
> > >  	 */
> > > -	if (new_crtc_state->seamless_m_n &&
> > > intel_crtc_needs_fastset(new_crtc_state))
> > > +	if (new_crtc_state->update_m_n)
> > >  		*min -=3D adjusted_mode->crtc_vblank_start -
> > > adjusted_mode->crtc_vdisplay;  }
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 632f1f58df9e..6196ef76390b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -5170,7 +5170,7 @@ intel_pipe_config_compare(const struct
> > > intel_crtc_state *current_config,
> > >  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
> > >
> > >  	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
> > > -		if (!fastset || !pipe_config->seamless_m_n)
> > > +		if (!fastset || !pipe_config->update_m_n)
> > >  			PIPE_CONF_CHECK_M_N(dp_m_n);
> > >  	} else {
> > >  		PIPE_CONF_CHECK_M_N(dp_m_n);
> > > @@ -5307,7 +5307,7 @@ intel_pipe_config_compare(const struct
> > > intel_crtc_state *current_config,
> > >  	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
> > >  		PIPE_CONF_CHECK_I(pipe_bpp);
> > >
> > > -	if (!fastset || !pipe_config->seamless_m_n) {
> > > +	if (!fastset || !pipe_config->update_m_n) {
> > >  		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> > >  		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> > >  	}
> > > @@ -5402,6 +5402,7 @@ int intel_modeset_all_pipes(struct
> > > intel_atomic_state *state,
> > >
> > >  		crtc_state->uapi.mode_changed =3D true;
> > >  		crtc_state->update_pipe =3D false;
> > > +		crtc_state->update_m_n =3D false;
> > >
> > >  		ret =3D drm_atomic_add_affected_connectors(&state->base,
> > >  							 &crtc->base);
> > > @@ -5519,13 +5520,14 @@ static void intel_crtc_check_fastset(const
> > > struct intel_crtc_state *old_crtc_sta  {
> > >  	struct drm_i915_private *i915 =3D to_i915(old_crtc_state->uapi.crtc=
-
> > > >dev);
> > >
> > > -	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state,
> > > true)) {
> > > +	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state,
> > > true))
> > >  		drm_dbg_kms(&i915->drm, "fastset requirement not met,
> forcing
> > > full modeset\n");
> > > +	else
> > > +		new_crtc_state->uapi.mode_changed =3D false;
> > >
> > > -		return;
> > > -	}
> > > +	if (intel_crtc_needs_modeset(new_crtc_state))
> > > +		new_crtc_state->update_m_n =3D false;
> > >
> > > -	new_crtc_state->uapi.mode_changed =3D false;
> > >  	if (!intel_crtc_needs_modeset(new_crtc_state))
> > >  		new_crtc_state->update_pipe =3D true;  } @@ -6240,6 +6242,7
> @@ int
> > > intel_atomic_check(struct drm_device *dev,
> > >  			if (intel_cpu_transcoders_need_modeset(state,
> > > BIT(master))) {
> > >  				new_crtc_state->uapi.mode_changed =3D true;
> > >  				new_crtc_state->update_pipe =3D false;
> > > +				new_crtc_state->update_m_n =3D false;
> > >  			}
> > >  		}
> > >
> > > @@ -6252,6 +6255,7 @@ int intel_atomic_check(struct drm_device
> *dev,
> > >  			if (intel_cpu_transcoders_need_modeset(state,
> > > trans)) {
> > >  				new_crtc_state->uapi.mode_changed =3D true;
> > >  				new_crtc_state->update_pipe =3D false;
> > > +				new_crtc_state->update_m_n =3D false;
> > >  			}
> > >  		}
> > >
> > > @@ -6259,6 +6263,7 @@ int intel_atomic_check(struct drm_device
> *dev,
> > >  			if (intel_pipes_need_modeset(state, new_crtc_state-
> > > >bigjoiner_pipes)) {
> > >  				new_crtc_state->uapi.mode_changed =3D true;
> > >  				new_crtc_state->update_pipe =3D false;
> > > +				new_crtc_state->update_m_n =3D false;
> > >  			}
> > >  		}
> > >  	}
> > > @@ -6437,7 +6442,7 @@ static void intel_pipe_fastset(const struct
> > > intel_crtc_state *old_crtc_state,
> > >  	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> > >  		hsw_set_linetime_wm(new_crtc_state);
> > >
> > > -	if (new_crtc_state->seamless_m_n)
> > > +	if (new_crtc_state->update_m_n)
> > >  		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state-
> > > >cpu_transcoder,
> > >  					       &new_crtc_state->dp_m_n);  }
> @@ -6573,8 +6578,7 @@
> > > static void intel_update_crtc(struct intel_atomic_state *state,
> > >  	 *
> > >  	 * FIXME Should be synchronized with the start of vblank
> > > somehow...
> > >  	 */
> > > -	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > -	    (new_crtc_state->seamless_m_n &&
> > > intel_crtc_needs_fastset(new_crtc_state)))
> > > +	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > +new_crtc_state->update_m_n)
> > >  		intel_crtc_update_active_timings(new_crtc_state,
> > >  						 new_crtc_state->vrr.enable);
> >
> > In the context where a Push has already been sent, should the update
> occur when we enable VRR itself? I'm curious about the rationale for not
> updating it immediately upon enabling VRR.
>=20
> The active timings should really be updated synchronously with the
> hardware latching the new values. But that is actually impossible so some
> race conditions will always remain.
>=20
> I haven't actually verified how the hardware behaves when we enable VRR.
> I assume the VRR_CTL will get latched at the next start of vblank as well=
.
> But we should really try to confirm that on actual hardware.
>=20
> The case where we have VRR already enabled while updating M/N might go
> badly with the current order of doing things as the vblank irq may trigge=
r
> immediately upon push. So for that case it would be better to update the
> active timings before the push. Or perhaps we should just make sure VRR i=
s
> always disabled around M/N updates...
>=20
> >
> > Regards,
> > Mitul
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 731f2ec04d5c..2367b030b469 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1083,6 +1083,7 @@ struct intel_crtc_state {
> > >
> > >  	unsigned fb_bits; /* framebuffers to flip */
> > >  	bool update_pipe; /* can a fast modeset be performed? */
> > > +	bool update_m_n; /* update M/N seamlessly during fastset? */
> > >  	bool disable_cxsr;
> > >  	bool update_wm_pre, update_wm_post; /* watermarks are
> updated */
> > >  	bool fifo_changed; /* FIFO split is changed */ @@ -1195,7 +1196,6
> > > @@ struct intel_crtc_state {
> > >  	/* m2_n2 for eDP downclock */
> > >  	struct intel_link_m_n dp_m2_n2;
> > >  	bool has_drrs;
> > > -	bool seamless_m_n;
> > >
> > >  	/* PSR is supported but might not be enabled due the lack of
> > > enabled planes */
> > >  	bool has_psr;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 05694e0b6143..ceab5b26b5e8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -2535,7 +2535,7 @@ intel_dp_drrs_compute_config(struct
> > > intel_connector *connector,
> > >  	int pixel_clock;
> > >
> > >  	if (has_seamless_m_n(connector))
> > > -		pipe_config->seamless_m_n =3D true;
> > > +		pipe_config->update_m_n =3D true;
> > >
> > >  	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
> > >  		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config-
> > > >cpu_transcoder))
> > > --
> > > 2.41.0
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
