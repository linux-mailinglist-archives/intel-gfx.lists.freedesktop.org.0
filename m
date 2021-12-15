Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DA7475A55
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 15:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598CD10EDB0;
	Wed, 15 Dec 2021 14:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE6E10EDAE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 14:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639577484; x=1671113484;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I22/BlGGqD4w2nhAJKnrLiYp6e89KbmFVd3xeuESXvU=;
 b=gyVau91PB186qRh/T73Ln0/SCsRByzq7Da0E66pWCy4GVtOHrrpEmcK5
 PSwaaMaZh9tVmow7hcoFSoGKVe7SgsyyEcMoZ8YoUn6Pewb9czuoiUzHq
 AthN4s4wUSBv2bgl9d7Li08tkyy+dOpL0eQ5FZSG64yXXvADTsJTH951A
 GEWgjnGletYYua5L+poeQykevxru6zkJ9jjp5a1ivTGXhAw/hjDAmGLFb
 jgQDUC2W9Im01lEbLG5sCPV/NAD6yAeeVVq/c88TwJUNX6KtNTu7Yyo9x
 F3iDYnhPwEsznEiBGERDhuV/BqMD3CQW2sv1IYwxTFETgoArnekSF1guq Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="239045186"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="239045186"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 06:11:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="755376946"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Dec 2021 06:11:21 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 15 Dec 2021 06:11:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 15 Dec 2021 06:11:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 15 Dec 2021 06:11:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SjVJg15QwylTz5LePYwld5JLk/kN2XedkaqoGKnB+7kVsdtH2ISC/+ctVwJiRgwT2ChwaJJN2T1Gf8598fSUk1doWHeQ8cW8GfD/9jBtXrAKknyVKdbRzqb+Vj+J/PNOUkrInnDAS8CXwZKpmqXU9eNOQ7DRfGkUnratRheF+5Zi+ZkKwpfphvLarsCB4QeFLt85xlHCyA26m3tEPLc1T6hAxfdDlS8vuU1Zp1yIz/8KZI6MIwAM+/6YiARVCx6bHUeMOi53mkJRgJB+bILnOUthJmqtWwdE8R/lPvxBOjob+edW8orZbz1fTfmzkoYTQpGDqj4AR22tR0vUKzekYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I22/BlGGqD4w2nhAJKnrLiYp6e89KbmFVd3xeuESXvU=;
 b=aweaRZervbtN/2fPvW8nHIid3coQqP2+V+OINnHhjrCDMBgSQWROlQ0ehZgIvajbZDdnBe1H8q68/UINuVb6c7dTsfLYDo9Qdxy2R9ucVYtEM7R5pQtDWOy3jhc7WvtFGbN1DCmhGE89GFmDmyQHuP6blzAuaqvtQQCf7RK2Y5fdmDrHtKcInWsSObKuwsbLSyEvSEhgfEtzMBPh6y1o8UB3nFxjkyrey97iQ8TDm+JhCAG3Lrp0dvOmJskoiLuP6Xyyyb1zf7k3+lK1JYg0W0skJQOTklibd5qK7EZYd9nBGaPFBNEL+MZL6EoMW90FHdM40ngMkEsvgrLJj7Bhyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by CO6PR11MB5667.namprd11.prod.outlook.com (2603:10b6:5:35b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.15; Wed, 15 Dec
 2021 14:11:16 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6120:cc99:8b42:7ba3]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6120:cc99:8b42:7ba3%5]) with mapi id 15.20.4778.018; Wed, 15 Dec 2021
 14:11:16 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
Thread-Index: AQHX8Q/cW7u5eE0Le0qyj9IJ+n5k/qwzQz9AgABJCYCAAACrUIAAC9SQ
Date: Wed, 15 Dec 2021 14:11:16 +0000
Message-ID: <CO6PR11MB5636BF74476DC0B2F74CC0BADE769@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-2-ville.syrjala@linux.intel.com>
 <871r2g702r.fsf@intel.com> <YbjFh6AnBtI729+V@intel.com>
 <YbjT/f9276cVmgDE@intel.com>
 <CO6PR11MB563679A612675BBBBAEBF307DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
 <YbnsvyfxjnqBIPA0@intel.com>
 <CO6PR11MB56361101743E350D2ACBA747DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB56361101743E350D2ACBA747DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 103a147b-204b-4914-a4ae-08d9bfd4c271
x-ms-traffictypediagnostic: CO6PR11MB5667:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO6PR11MB566767B0463C51D51222140DDE769@CO6PR11MB5667.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cXKbRDlKzNMWNXm2FtuKfdrAKkvSLTB+8hKuNO1WZM6wjapBC7NrPoCCb0x/8o/XUc0okzgDmNZabdWda1/7VPtlz63k/AMr+U4n0Kir9hIzVxCkgOAEUSKDj0iLuGDZ43A/3u4QhWra+Asjcph4/dhcYaAfmp4hjbHViTz6UvmpMo4NCe99JBKIEdALM2BXYOvz2cKz2UR1pg1HE74+ug2CZt8pU4SK5P+pipovy2aGPk/3A44qWrnnhGTboGuDZjb475tY3ZoUQVIP03unPmGjiVWx29CWCUONy+01DocB4G4uWU72b5R7gfyRYYAmE7nqmnsh9e+3z7mCkWF7iRjH45vIY6x/hx305/hhE5VTJWTNLyvMJv2k/C/5MMR4A5EJJE63JxORlKOMArzp1MZ9KPx4V6QIwkhCqEVqt/Dsgy8h0M7H4Omg5bWmEMGkB1n1L2s4Oy5fL2OpX2FFU3jYKkeP1zJ9ouY2hkUDeGXMSg1QVejvshUguVOGCXeAiXGyhL5ePvVLuun2wywM8EydRgn1t2slvU1Fv9SJuoBAQXHfVHBFjfNDsXY8Z1/1FVRmbup61w6Vs8De6n4QddEyZml3+TXvn/8Hi3b28HZgN5kZE7OFrzjQ+9xHpTJRnOsQuMwXBGRsO6QEsYh32smPK0Xfp0i44fb2hcdT/cGfs6173l6W+E6EilqKJH+ZedDFs8FertAdZNrIvG8Ipg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6916009)(66476007)(33656002)(6506007)(64756008)(76116006)(316002)(2940100002)(508600001)(7696005)(82960400001)(26005)(66446008)(38100700002)(66556008)(966005)(83380400001)(38070700005)(5660300002)(8936002)(86362001)(186003)(66946007)(122000001)(55016003)(54906003)(4326008)(8676002)(52536014)(71200400001)(9686003)(66574015)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HIhhAONChQu/EgFWBhUmtNzSZnPkBVqIBE5G8RH9OTldzZFGXPS+/Xq8lv?=
 =?iso-8859-1?Q?yP0v0VRN8D06YmmqRc5IGygr0pn7bBOeuI43Q1sP5LkJJX+SSdOEg0vleA?=
 =?iso-8859-1?Q?i42mvcCvXsyKl/4xc25MFXEvFZDHkoRTApgsmKLx2bpXowVgLfngTWt39t?=
 =?iso-8859-1?Q?a+J1jbakIetHsbuWAYG3KdQMh+mxO17qlLMfPTDckEXaPAXD6IUbWSHt9t?=
 =?iso-8859-1?Q?qRF8bu0hmxXsqI+qlCkOZBezagGbr4pqpOe0e3cNZcRIbpFMVlUP2zoly1?=
 =?iso-8859-1?Q?S7weZzlmzsyDISnw2fS5MGONq8AXWd5oXOOPFlP1VFPh5Zd9KZrgyiYH1B?=
 =?iso-8859-1?Q?kwYk00vrB/t564koGENMcMgN439cqAaKC9WOE/XRMtccc6HbMhziKwguxD?=
 =?iso-8859-1?Q?4gCy2t1ikvZ2KoYckFPwWUAAWK4Vx3qtViYq4dn8T2BHE3uODvdajFuRhr?=
 =?iso-8859-1?Q?pNDX8PQ90R9TWFBPM2zZic8PNC20oyRaoAIfwNHYBGs3i2wNpdaULYYJQi?=
 =?iso-8859-1?Q?e7CTpCps8i0fDyu52bXYjSlLbK5iRquK8x3EGpDlVI18lO7rN3Eqd6k0Oi?=
 =?iso-8859-1?Q?7MVFqub7nAguzw7N2jt6epI50zspEGgTXkUufEu50oLDj1Zdj/fhEb44VM?=
 =?iso-8859-1?Q?FFhAKYy1qOKXRhMYnKpTog7Oi6QL8BeQCXQ6mZ1zqThJUodHrvuFggrZox?=
 =?iso-8859-1?Q?SyzjAut0cE+CCxnoNzqEN1jeHNwD9wGdiVkcjSgx0Kcjm+Mqn5d7b5l0sq?=
 =?iso-8859-1?Q?NgxO9hALJF2WeAGnTXr6QLu00pZG74849dnvf/Y5szwpXo1X1UOPWqK3jn?=
 =?iso-8859-1?Q?EV7LLurdGX5ewciogQavx4vb40I0qem78/SXqnjBMW22fLH1NuBaW0CxMM?=
 =?iso-8859-1?Q?T19Vrv3pkSCqHJa5KkzEapZhmAlghBX4Xes0uP4Uyar7MNRKiDet9YKEw3?=
 =?iso-8859-1?Q?ZIr50xNfAjmZ9spiQcJ2ayJf5IrbYB8EDG2Gga3UNY6dbhLkuHwa4dWSV6?=
 =?iso-8859-1?Q?9oN4UymdIHHWGQw2T1+rALtX8RSo/JtOgJwWdgZN5cxFZBvE0ZC1XoTojX?=
 =?iso-8859-1?Q?X7PPAB7cczBWXhhslsv9VLhYLgAXuu+3C4XPDfepDOa9zQfsIKDHfc71H4?=
 =?iso-8859-1?Q?fvrcDliuhVBjx3HaOqrH7eKgAGgKiuuaF3/Jdr7nGUhts/xNtq5P+kPBwP?=
 =?iso-8859-1?Q?G6zNxKdPrpsLos1rocqVRlH51DKyV8WC/oRzjNxpcIVcV/DAyQv3v7CjiZ?=
 =?iso-8859-1?Q?NKmBArESSO4BKdqoYQGxsFfrx57H5Y9QxOFVx+5Q+xHnCrIgNRfPVkrde3?=
 =?iso-8859-1?Q?hRgeT1E6PmOFVj0TmfOGSgPwfKv9owPTT72UkH1D6SqfKuCmPTSbglgJXr?=
 =?iso-8859-1?Q?H98nmYb1F5YeZ0oorCFUFzKDKwKJqpOSsb0jy40PgfKO/cVCJ85u8AYQqO?=
 =?iso-8859-1?Q?TWPqzODNvjiIyyk5j1RNRk6K4QU9UoeFAEPsNCln30JBaId4hsS33UlN73?=
 =?iso-8859-1?Q?Ut+nUeR5AeZpcZ/lXAGm19n1F41dPlsALC4GCT7zg6MxXNgJfqFMFiRHJj?=
 =?iso-8859-1?Q?vz2v894k/Q91Ry4Zk1OFjVo/er3qyGt8sFINYaIvRhd8qVIxsGZLnHfHv/?=
 =?iso-8859-1?Q?IVgkVmAurUtFHJFWENRgEghHvB3VScw8eUvxaQNUgJW7pZibBn0K8krHe1?=
 =?iso-8859-1?Q?0OIonfzXzXVEg8vvb36+vGgBFmVbb0pFpxH/DeN4PWd8XuR2ljRYJJP5r2?=
 =?iso-8859-1?Q?xUUw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 103a147b-204b-4914-a4ae-08d9bfd4c271
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 14:11:16.4531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +egM43fxQwGQixaXB655Soxvv5f0W2ikS4moURWckyRvX85d1nTua3Miw0QI4rbBeBQ+GFJJlwRmhnHeB8i7KeO6VZJpKhZYq3MzGtX/o70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5667
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Sarvela, Tomi P
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > On Wed, Dec 15, 2021 at 09:05:03AM +0000, Sarvela, Tomi P wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > >
> > > > On Tue, Dec 14, 2021 at 06:25:43PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > On Mon, Dec 13, 2021 at 09:54:04PM +0200, Jani Nikula wrote:
> > > > > > On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.c=
om>
> > wrote:
> > > > > >
> > > > > > This one is only used in gvt, anyway. And that actually makes m=
e
> > wonder
> > > > > > if this should be breaking the build. Does CI not have gvt enab=
led?
> > > > >
> > > > > Hmm. I thought it was enabled in CI, but maybe not. I've often br=
oken
> > > > > gvt with register define changes but I've always caught it before
> > > > > pushing. I think I have gvt enabled in my "make sure all commits =
build
> > > > > before I push" test config, so maybe that's where I caught most o=
f
> > them.
> > > > >
> > > > > Tomi, can we enable gvt in ci builds to make sure it at least sti=
ll
> > > > > builds?
> > > >
> > > > Actually cc Tomi..
> > >
> > > GVT-d is enabled and tested by fi-bdw-gvtdvm.
> >
> > We're talking about the other gvt (whatever it was called), ie.
> > CONFIG_DRM_I915_GVT.
>=20
> This kconfig entry doesn't exist in default CI kconfig, even as 'is not s=
et'
> placeholder:
> https://gitlab.freedesktop.org/gfx-ci/i915-infra/-
> /blob/master/kconfig/debug
>=20
> If the config entry is exact, I'll probably need to upgrade the default c=
onfig
> from 5.13 and add it with requirements. Not today, but maybe soon.

kconfigs debug, debug-kasan and debug-gcov have been updated to v5.15
with 'make olddefconfig', and CONFIG_DRM_I915_GVT=3Dy has been set.

First CI_DRM to use this kconfig will be CI_DRM_11005.

Tomi
