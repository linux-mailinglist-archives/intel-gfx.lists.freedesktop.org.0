Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4963C5B9053
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 23:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E4710EA0C;
	Wed, 14 Sep 2022 21:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C5010EA0C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 21:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663192743; x=1694728743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TX+lYMaYHvh79cOzv3LQeXM918pqvH3kP9r9Xft12BU=;
 b=HlTKnjO/nOyUbSWQdPGK9av4nA+wC1Ak33ywmI3uJ5yiRp4YdqQ5B4gY
 Zts+JdZAteihSj7/mgeK01pZSdE7YsZsJ6hvoUVHwPt9PC9r1aZ3lto6N
 PdItVrERlruGCnMgpOcxLWtmyJ85PNix0Hr1M1k99l3+V8ZuRqMnEySEw
 /4MXbsXvQFXUpqAutXk+fXFaOdYP6yDKUEAIHQBm6iV9/WB4TjHl+UMaK
 IWSC68rFwBSOgpe6gCBlr020HdlVLt5c1ceyokoChEAVEu/+pl/KGumuC
 FUe8CvULFsXXHVpAvGtuawaqtQoYaHH5LUQTcTUA3D7GNWe+IDUrr2Cy5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="285592653"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="285592653"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 14:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="685470737"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 14 Sep 2022 14:59:02 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 14:59:01 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 14:59:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 14:59:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 14:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l8h4rLc5obMuc/XMat0Ox1aoHiuK8hoTqqdJs5VTS3RLWFEHEFls0NjAHmoojFEuISUdbDzk4bsQMDOMuDopcLFROK1XsN7O2Qtd1cqh0sIIi1pqYjLWL/AH7kPiBc1NvzuFAw7kaCRBkF4sN7WpybYipMCXfnudum7eYhh4E3fsCwhaKiHb+ZD+r24g2X0PAhdlEbnAkVSZsgKrBo2LyeWRco709C/rZZBsZVxRewOOK/jR40WDjv+SPsQO6+UhUSrtvAHzzb3zrJe912dpOusrDVv9IKsqOUJ6dB/zPymg1N4hJvc++96jqqNzxuNuOix4VLsjoja8trmUA0ZX4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lPSpNejfMF8llf95xYvD9Ewmk9nFqV4L62wuBmhA2Uo=;
 b=QbDdJ2JAq2F4lqKgwg1bQqyNb+2hUD+GgwAhqCtpy/tzt2ADSA8lK+yKP6Pm1OAa1IH5pASE7nqGPLQwnu0YQBRK0OlcA2i8zcfFYyW3x6m6KSWj3WrhJICzyA3fHUhLvITf0T1vxSa98mkayMv6EimY1PpbyalzjibQCWXhqMNk9aYlC6x1Pf5d7EIaBuAgblYDLdtO2joZ2jA1CiiB9v4eUDiS0XNxnFw0emSYMTqU6SBQk/MLjf0VyTM2i1dzw/L4CpXVvyKNjRG7rvYZbUeVZvF1VqYS4JmbPDclMzgwStG21NB334m5PUMvK4zVxg3Q3FrxwZmnAjC1SwXi1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by CO1PR11MB4801.namprd11.prod.outlook.com
 (2603:10b6:303:9c::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 21:59:00 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6458:a943:b16c:4376]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6458:a943:b16c:4376%4]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 21:59:00 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
 intel_cdclk_state
Thread-Index: AQHYtDAoHdZIpvhLKEmzJ5A9WxMWBa3fl+yAgAAFm4CAAAJXkA==
Date: Wed, 14 Sep 2022 21:58:59 +0000
Message-ID: <CY4PR1101MB2166F067A6116F1E69F25EAFF8469@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
 <20220820005822.102716-2-anusha.srivatsa@intel.com>
 <YyJGLUva3ZOLUBui@intel.com> <YyJK4ctJ4Eum4Jbs@intel.com>
In-Reply-To: <YyJK4ctJ4Eum4Jbs@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|CO1PR11MB4801:EE_
x-ms-office365-filtering-correlation-id: e58a381b-f273-4a95-6be9-08da969c5453
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H9KJRlGqiHzcpMPsefHQHMKrX8SRXEn7TTAs9lnv6EAb175ZHReB3zJKpOpotAzA4EyNSDrf+FSpy8d5lrOGvdheaD5f5E6NwaZswMtt1mvucT1PvC0v6gyXsSPhjvzSXpEX0UnJtt+gh1v8EhrQN6EUU8JNPptcLDapv+Cut/6sDz8NawXwkkl6ZbC2CeI39kp08xg/P0o2xRnHsHYyAcHUn/WxykIwz9wOCxGOgaBX7cuDqGC6sUjFACK6lCocG+qy1jJTs51HFF95HbjWV4rmBvtFmYK/jRuUjjZt0ARaidGIdG6IaDKTC8Src8gP94slfTa+Y+HnVq5QNebXiBwyN0Bl46XJban+yty4Q5aVeMRo3P7L8RiYqyjaj2ZLp+YPEqnP1iY2J1a5iMGG9akuwUGmxCY+Ah+27D9RMn+65kPLGHVYPMO6PODn+sidpBAALMvBXy0OraZC5M4Sv9taVDNB95j+Z87s38IWZz8ZO4qrahh/0LMFRllJbXjGNxuk1+nve4MBLNFlxmpPa9yES+G9YlbVY08ykbRQrOnxQSvBNVkli1nHz3NJ4K0e6aHeDzALdurMPmTKvjq9N4/OrCtU8n/04NWHXBetJZP+pbC1MxXVLeiBzYlulPejpMAo1Y5H0fTwtkA89CbjQp2KoYyZ44ugNxExYFn52xlIIjHUXmwry14xTH0ynPPX/L1l28gZ6hfzJ9t0n7kngkhFzGzAnBhvBPburVlXv1Tj6CgoSOkDkDQvNDNmZrWZJ0+PECXXMyMn0rYf9bbirw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(39860400002)(396003)(376002)(451199015)(6916009)(26005)(71200400001)(2906002)(66446008)(9686003)(122000001)(8936002)(6506007)(83380400001)(66574015)(7696005)(478600001)(52536014)(53546011)(33656002)(186003)(5660300002)(55016003)(86362001)(316002)(66476007)(38100700002)(66946007)(76116006)(41300700001)(64756008)(66556008)(4326008)(38070700005)(82960400001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?LpCT5HQawmtd4h2gBOXemagb9U8FeVucvRf8zkiQV9ZOh/dJP3hx2KfUh2?=
 =?iso-8859-1?Q?bRv5WDAFlh0Z3x5NMAcdRtBPSF1w6j4FgBF4cg6Ar8BDHy+Vaf5E/KHhCX?=
 =?iso-8859-1?Q?4WuAUkAXyeIwSfzoXeks7kbqzwe9KDDlgBPQ3yZ6nFtfu71oin0IDVM/yA?=
 =?iso-8859-1?Q?X+vkigdoyjEwffkk5SBzV2CRRtGUBBBvxcIjy/kgPvFPL4ji93ZlCTrNaj?=
 =?iso-8859-1?Q?yDBy/3KsDA3ISyn5WwVnvb5RzD0CRySGXb97K6CxzizBaN4LEl5eW4yTMr?=
 =?iso-8859-1?Q?qzT0zZuMVlYx0FoxoMwISeOcH/t/HW8SZdZ1FzVpZRK9iI+82zMS9Hnpns?=
 =?iso-8859-1?Q?zqYvwe9jR2y55itpjUvb9F9T/izzBL7NgIRKnmcMtt7/sZ0H/MmBUGusCR?=
 =?iso-8859-1?Q?hdnYOMp9Tz+H0qGnX6cBM8PD+W4cMoS6ZwOLsamG7FBgW63Tj5ymyTuSxD?=
 =?iso-8859-1?Q?iiAf4Sij67oQryd4C6DBkmTShlhUILL8tdH/n1fXMnHSB3LIp41xmr3WjR?=
 =?iso-8859-1?Q?NktukqVPnyrJFFruJ7k7zMsERE69LenfuVuFBNlEFKt74Tam3jv+/xtdFZ?=
 =?iso-8859-1?Q?LJTITy27rOnoB9q2qfGej2Gt+DKeCWVW0pkLbE1ys4/PFALOuihp3maz/1?=
 =?iso-8859-1?Q?IioJaBkdz5GYgec8tRSxoRKMGBsG/AIbBoOXM31Pygg1gLqPBhUYNP/V5V?=
 =?iso-8859-1?Q?MB5zhulWaV8f4A7lCLUDVxieWX3/hF1TA6VB5F69j9O4/W7lj2c06+IB7i?=
 =?iso-8859-1?Q?pQHUyBDnROWhfi+vUKGlwLucIP/2kaBmPhpqMUZKupnhxKFunM5WyDG9e5?=
 =?iso-8859-1?Q?IoikF5qjpLP5+ytVbyIFfMBZwu6Ab3D8KfiOcSEBSf5Sj3yOiVMDpU6Bon?=
 =?iso-8859-1?Q?+D9xBH3NDvjr+H+FjKvJx+q6x6b+97Ie9HLVnhAWZQw2D8T3uMFxkyVIXK?=
 =?iso-8859-1?Q?9+/0AbokeaCFQiDK1jCoUEZ+u/Y6aSGy2gspC+sveSgppgdRDlzJ+Dt+kD?=
 =?iso-8859-1?Q?UBrWwlmW2XdJ1XMp4EPqOz5t/HloHbqx0GIlBhIagBkke/CdF4h/8rvUAr?=
 =?iso-8859-1?Q?y5yF3IovMeRUXP2j5cJkQkcABobARvGDqrlBN/Sk+vnIDL/3zmHDzgBSe3?=
 =?iso-8859-1?Q?vVgnw3o2aGZpA6LrqUAXFdK1GGDEsAh5BbASOpWg3glkF4VYB0t2DzYXYs?=
 =?iso-8859-1?Q?IzEihVs4GSFkP//OBffTvH0aJRnoyvVLGMP/IFuOBAdnOH2xwmR9xuSlRg?=
 =?iso-8859-1?Q?mH+Y7FtTXyM2ydG1q4Q7Q44f4gg7Z2/dMQRPEmLhdPhbvofstdQEGIEUKT?=
 =?iso-8859-1?Q?r9cWRve7+iZf9QAh5bfJbuYzzVziAVNFR7vAFSbYqkRuYRs7w4OikZhcdv?=
 =?iso-8859-1?Q?at2Va27TcNNEx0TRriqR0i8hiZea81fZ6HdS7p3NDUcPNVaT2STaSDDnqS?=
 =?iso-8859-1?Q?bbUOYS/0ad72EPJL4cS2JyJg1ie8yq4BzB+BinZOgu4cQJDpfuFmZZu01J?=
 =?iso-8859-1?Q?Tmlv+j5TlqV7XHrQtxewZMfLQ3WKDCxv1wR1gaIOGAbnMT5BeXyflkayip?=
 =?iso-8859-1?Q?ePJJNrPCX8KaPii9NkLnIU9nWMbSL7m5/CmHlEm9A5kMnf24upup2+u7SK?=
 =?iso-8859-1?Q?hsQS56P25OxffIDeo1ih+Ccatb/IcMbBzs9DTdaCmqy8gRDTebIQjmwQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e58a381b-f273-4a95-6be9-08da969c5453
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2022 21:58:59.9851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aGaNSNsEPzM11aQ3aRq5RVIhmChYsTPeRlwIoBGAKmkLkAFCkaGQFDV0oKDx0jXWsXEQ0S3DFuASg02q7ATAXtDXXDbtQ3/T3vNnUYX9rrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
 intel_cdclk_state
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



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, September 14, 2022 2:43 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions =
to
> intel_cdclk_state
>=20
> On Thu, Sep 15, 2022 at 12:22:53AM +0300, Ville Syrj=E4l=E4 wrote:
> > On Fri, Aug 19, 2022 at 05:58:19PM -0700, Anusha Srivatsa wrote:
> > > This is a prep patch for what the rest of the series does.
> > >
> > > Add existing actions that change cdclk - squash, crawl, modeset to
> > > intel_cdclk_state so we have access to the cdclk values that are in
> > > transition.
> > >
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.h | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > index b535cf6a7d9e..43835688ee02 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > @@ -15,6 +15,14 @@ struct drm_i915_private;  struct
> > > intel_atomic_state;  struct intel_crtc_state;
> > >
> > > +enum cdclk_actions {
> > > +	INTEL_CDCLK_MODESET =3D 0,
> > > +	INTEL_CDCLK_SQUASH,
> > > +	INTEL_CDCLK_CRAWL,
> > > +	INTEL_CDCLK_NOOP,
> > > +	MAX_CDCLK_ACTIONS
> > > +};
> >
> > This whole actions thing feels overly complicated to me.
> > I think we should only need something like this:
> >
> > if (new.squash > old.squash) {
> > 	mid.vco =3D old.vco;
> > 	mid.squash =3D new.squash;
> > } else {
> > 	mid.vco =3D new.vco;
> > 	mid.squash =3D old.squash;
> > }
> > /*
> >  * bunch of asserts here to make sure
> >  * the mid state looks sane.
> >  */
> > set_cdclk(mid);
> > set_cdclk(new);
> >
> > And perhaps the current set_cdclk needs to get chunked up into smaller
> > pieces so we don't do all the pre/post stuff more than once
> > needlessly.
>=20
> One idea might be to pass just a pair of flags to set_cdclk() whether to =
skip
> the pre/post steps.

This is all considering that the new struct cdclk_step is embedded in cdclk=
_config and not cdclk_state. I am not understanding why cdclk-state is not =
accessible from bxt_set_cdclk.=20
What if I add cdclk_state to the dev_priv? bxt_set_cdclk() anyway has dev_p=
riv.=20

Anusha=20
> --
> Ville Syrj=E4l=E4
> Intel
