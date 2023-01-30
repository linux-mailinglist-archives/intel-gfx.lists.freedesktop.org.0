Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F1B680AAB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 11:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5611910E214;
	Mon, 30 Jan 2023 10:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0FD10E214
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 10:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675073961; x=1706609961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=toMz8NLtvy4N89s2MDEn/XcFsRhh1zyInPf6g2dKddY=;
 b=Sd2/vPqEgEsJ2/wOTyegHrEpIdN1GTjpJ7Kl77CVS4XKwjs5HyHRzpoi
 t53BynbtJwP3EbEPJlb4pPaSj6wemIS2sP+q4VBbppSFERYA1eO/viAfH
 xvAt1CU721oaMcZt0z/lRZw4NkkB213d7sLP6jIhDcnObLkyw4WxacNn7
 LfUIc23Izf1xZbqXnPJxu1u3Y6u44LnJB5NeUKSixD+vyu+MxuEcp33lg
 jiakWEqGUH/paGlp2Bv+ZL8MaoXkgU8pJ/L3BgyOduypffXI/CKmqDNVG
 jU3hS3pnTyewom/uBg/qy5MIWny55UQ9omdE3fDHnXIaLP/yp8ycPheg9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="326190517"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="326190517"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 02:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="772442247"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="772442247"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2023 02:19:21 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 02:19:20 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 02:19:20 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 02:19:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 02:19:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXDE58KZb760CiE1ImNsx+dh4WekjcnhA/GBnG3vWSLtFWgrjJyy6Bve+t/bWoYy728AFEWpQbjHwM4Qzr5fM6pGl9xtpXBgPxOkShkNSqRTlIffkolnjCrkQGDM1W7Ul1eSfKr7k+JHRdAM6sqOyyWEyyGgEH7066hajBiKqE/h2HNwV0reJrlhJPJFDANcXjSb0oj4LNaFi5Pc4OpmBBmEf8am2P8IrhT1XXhKJ28cLU8By2GbPfe2dLzo/FAXi/JgxwqHWPwtouz+2/JfpgJLoh3uKVYSH2ANezVkY2m4yQBZ+lm9cE8ayOxtQ1AUINHeGRiiWo5/GYiBPwNgLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=79LU/CEuy+voJp29zsGP0NErOqrmDUucp0/49inlSPo=;
 b=GGbdEHyFB/1kKqGwCn8U1iNVhIooJ9REKGFHhRZCwbaz8p4QsS2rnSKjzNsPF0dYreCsNE6p91mQdBbMoBHsuUG8KnwKTny+pdGnkAdWx6i1v6Q1LjUGtSAET5yx0tTEeDiOvVTHATSaIznEOAMVbxckUda9DIXKLGJ8WZyGSk3M9kCJPMJJ9dkmP/g1tNAff0YAJUVgcN2x1H5qOa11KW4le263Q9dr/ULjDxLZE0z6VRKe5f157/l2adNo6WyjQric8Gg3R5UWUMXiHVo4zRx77L/2Evx68ChhDZypgejJDcOttLWFK/I+ONrPqBlfaTjbkEOvNmaS0YFVABcZrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.33; Mon, 30 Jan
 2023 10:19:16 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%8]) with mapi id 15.20.6043.033; Mon, 30 Jan 2023
 10:19:16 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [RFC 1/2] drm/i915: Add RPL-U sub platform
Thread-Index: AQHZKkc+IWUNOoOJx0mVhhuYEEYsP66trLGAgAQSSxCAAOAfgIAENLGg
Date: Mon, 30 Jan 2023 10:19:15 +0000
Message-ID: <SJ1PR11MB6129D9A7F2B9FE1D62361FD9B9D39@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
 <20230117074211.952125-2-chaitanya.kumar.borah@intel.com>
 <87mt686m1o.fsf@intel.com>
 <SJ1PR11MB612937723DC09B70E8A7F04FB9CC9@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Y9QSO7SO+paPhXkc@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y9QSO7SO+paPhXkc@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY8PR11MB6889:EE_
x-ms-office365-filtering-correlation-id: 17c2a120-95e9-42c9-2cb8-08db02ab70b8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V+pKYmMrBxZNIa3q6l7e/FA7cZcFGRz3dAsGLXU+YpPA338xbKNi4q0uEiWw4uArlB5mcZWBGNatpqTVH4UCfMnD6LRs03SywjlbvS8et1vJzRkCaWUJaC01eGkqIxKwcj0FUavw3F+fRvf8tVoqAzwsxsfT/vZ4cEDvuHq9PQO0VAocpxc+R+0aM2sZkskUQx9uzL61b49H02wLtCBrhXVKKryfy5qhqKvn447a64kamD/RF6yj3QlraU5AjlqDGyFh2bhy82aUy4i/pZfu39slve+4jGrjKKFrrdJIeXhWCUhUlIt1kHm9R0mp+mUJfgUgBxVsREISLsZAagw8JaDVAn7d/TkhWMDxK92r8C+4fKDlIfDKa6cNMNoR3/vN7vYSg6l5ozwIJx/ZqdbWbyZybBDo55T5Uc+P2UkqtJYeEvEdNhpZ9PfY5PZbz6E2ps4mgDkIfLC6Vaea8KVEWAWPTLtyk7+nIZn7c+rf4nyZio/+f9l0TZZmM1dHIev6pxxqDbDy+si3N+UjmxpZF6wZWOILSX2Bg55TkutmgrDScw+vDkY9BhvjyYuzf1gLdguvaqPOeycumKK7UX0Xt9ZZXRAiroOOO23kbu1ItMi0EHaEN9dTYxa0gqAxb+x1KDyZfG2uXDRDJMn7JrZWNhnzegPEbzgZJc5UD69vvXndgk3O9y/h6fkGhMiI9gqLkM4i/D6jfUTlqBMJKgpTrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(136003)(376002)(346002)(396003)(451199018)(5660300002)(8936002)(41300700001)(2906002)(76116006)(64756008)(66946007)(66556008)(66446008)(8676002)(4326008)(316002)(6636002)(66476007)(54906003)(71200400001)(7696005)(478600001)(55236004)(6506007)(53546011)(9686003)(186003)(26005)(83380400001)(33656002)(52536014)(6862004)(55016003)(82960400001)(86362001)(38100700002)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4fANZeIzxiA8xGS9X7uk/2qxuZ4czIfHc6Z7jZB5byjSyar5B39BMumrK5HM?=
 =?us-ascii?Q?2ckEQG1nmlUKqG3SoQFFAzlSgziTAyyGcC19vM8ZcNHYc6hs1LEKw248MEol?=
 =?us-ascii?Q?rvhsKg46ZyG3wYYMTsa4Kp/VFzeNp9E/0Vf/xT3s+Kzvy0uyShxUbTT3TWoh?=
 =?us-ascii?Q?Tvu4ArnTu6pcEYjNSXRhuBy5ElU4Pf4XXS6p9DVE/EloTX8UnE8ZKMQGw910?=
 =?us-ascii?Q?p8Qr5HbCQqUKRNg0hqm82f/7rVF2XQkWjQegukfzbOpEXD3rDoSWaJaaOS55?=
 =?us-ascii?Q?gJan3rqA0scGhgmNLrGh1zZjlr7YzHuLMNUA7Ad5hSHLiI9NY6ruGTfImmSZ?=
 =?us-ascii?Q?dmtnfxHt5TjzuPXr/aU31lSiKZaxEOUbXVm/AERELLwtwP4N76CZ9DngdZih?=
 =?us-ascii?Q?dfBAzI3xgAOx/aRlmOhERxBIngykixW6KQm8cw6phtrPkc3UozGo72Gbwu4C?=
 =?us-ascii?Q?nyIMz3jUG3dgKEZ/ZS1rDVaxhF0kH6QZoHFj1tn+FRklBmfTux+6xGQLVE/I?=
 =?us-ascii?Q?RRpOvUPdqrlVqhReWiD+v5xY6GhnIrs19CKqJ2nHNTYwawoA1W6QtreT9OXH?=
 =?us-ascii?Q?P5FQ+3X7iFOdWvuL5NcuNmSXZ2yrAiE2/V9gIwTKZ74s3xGL0QtWgKzTygkU?=
 =?us-ascii?Q?EmqNvw/9o/kMA5lwdzhJeFd5wYG5WO2VNLljsWanIhZeCEF74ZLK6Svehobo?=
 =?us-ascii?Q?q11+h33pmZSA57NG8jDNaPDlH7m3WoqM9GSaHsWvwUPsKNddJzKKoldOyCFK?=
 =?us-ascii?Q?321VvTiJB3yvVG2vvzgXaLICkN06QNQkkGt791+sxBhRu6n6RK7H6E/+viAT?=
 =?us-ascii?Q?XyUjSWuTKMl1zGUkagtAHXEr1AP+Fl12sa/Sd7gboCGS4oT3H2cSM22zHKUv?=
 =?us-ascii?Q?UAgiDjjFAgwW1kfSAagN+3T5/8X+2FHvUOfGN7A37QJMbD5wMDFz+1GfCUG2?=
 =?us-ascii?Q?A+Wn7KkVIXDm63KuKLb0whXWFK7rX7l/RJk/j2zMyoWR+9b7zufDTrhBrK2g?=
 =?us-ascii?Q?EhbU+TGSkPzQYGTRhTVUxFt3VMjkv8QuPBd0/VyLb9zbqX2tfED0dW8wZMN5?=
 =?us-ascii?Q?M7FcSJ5bBYAH/w5ify4HCDzsmb+k0Dkt0bbdFMewmSZHS9FJSybxIvD1ES56?=
 =?us-ascii?Q?Y7fTFCCuqEZfB8qArlND6UF1zHDx1bX82brk5/F+xRRm170kPtYJ5NUwDWFR?=
 =?us-ascii?Q?tbmU1ShfHVFlJxqwc6U3ToAmUtchAq0gUWLy0mJ2Z2p5E72h8uJ2/0yOB3/D?=
 =?us-ascii?Q?9eG8FLXMao0BspM7vXSqPFnxCNR0P7MRHvidD5+Tep8SpHTM64XvY7JcV/ld?=
 =?us-ascii?Q?beNwsBZ+MFGFkQJpE4i1bksRoS+6E+YRYiUKBr2c6+mXjzXHHwdAL1Rj3xGD?=
 =?us-ascii?Q?Sme/tk0LK2pcPZVksz6Efa1XM3x37PLmdl8y+GMDcVJ63UIGe0UNH6C6jgU4?=
 =?us-ascii?Q?CfNYYUzsAHhiQVC7cxwNuOpOW2LQvXjiyGEjYKa9n8tdQLqKYjmafJrPCY9v?=
 =?us-ascii?Q?Igz/I9Xlswel/DCx/XMzFvYGdn2vB/XHXxYc7E3tOOUGjJZuQisRJnJTcCCz?=
 =?us-ascii?Q?/+Zbh+zNLPCl6tbMrPGGTAcjABUMLitBeB3wOeUV6V7+8wNP/WZbivQuSU1N?=
 =?us-ascii?Q?jQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17c2a120-95e9-42c9-2cb8-08db02ab70b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 10:19:15.6369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mwJYHoqCozxQ1ckqK7zPNoVDfCSX7J6+58/L6gB4LDrcdCFCVPGRR+UFglm0oF43s/RA0A4aaIn/IhGl+ndG0qN1tHnH0IWTfuGZO2WKvWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U sub platform
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, January 27, 2023 11:35 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>; Srivat=
sa,
> Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [RFC 1/2] drm/i915: Add RPL-U sub platform
>=20
> On Fri, Jan 27, 2023 at 01:34:31AM -0800, Borah, Chaitanya Kumar wrote:
> > Hello Jani and Matt,
> >
> > > -----Original Message-----
> > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > Sent: Tuesday, January 24, 2023 8:02 PM
> > > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Cc: Shankar, Uma <uma.shankar@intel.com>; Syrjala, Ville
> > > <ville.syrjala@intel.com>; Srivatsa, Anusha
> > > <anusha.srivatsa@intel.com>; Roper, Matthew D
> > > <matthew.d.roper@intel.com>; Atwood, Matthew S
> > > <matthew.s.atwood@intel.com>; Borah, Chaitanya Kumar
> > > <chaitanya.kumar.borah@intel.com>
> > > Subject: Re: [RFC 1/2] drm/i915: Add RPL-U sub platform
> > >
> > > On Tue, 17 Jan 2023, Chaitanya Kumar Borah
> > > <chaitanya.kumar.borah@intel.com> wrote:
> > > > Separate out RPLU device ids and add them to both RPL and newly
> > > > created RPL-U subplatforms.
> > > >
> > > > v2: (Matt)
> > > >     - Sort PCI-IDs numerically
> > > >     - Name the sub-platform to accurately depict what it is for
> > > >     - Make RPL-U part of RPL subplatform
> > > >
> > > > v3: revert to RPL-U subplatform (Jani)
> > > >
> > > > Signed-off-by: Chaitanya Kumar Borah
> > > <chaitanya.kumar.borah@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> > > >  drivers/gpu/drm/i915/i915_pci.c          |  1 +
> > > >  drivers/gpu/drm/i915/intel_device_info.c |  8 ++++++++
> > > > drivers/gpu/drm/i915/intel_device_info.h |  2 ++
> > > >  include/drm/i915_pciids.h                | 11 +++++++----
> > > >  5 files changed, 20 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > > b/drivers/gpu/drm/i915/i915_drv.h index 48fd82722f12..c88e514728a0
> > > > 100644
> > > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > > @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct
> drm_i915_private
> > > *i915,
> > > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > > INTEL_SUBPLATFORM_N)
> > > > #define IS_ADLP_RPLP(dev_priv) \
> > > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > > INTEL_SUBPLATFORM_RPL)
> > > > +#define IS_ADLP_RPLU(dev_priv) \
> > > > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > > INTEL_SUBPLATFORM_RPLU)
> > > >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> > > >  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D
> > > 0x0C00)  #define
> > > > IS_BDW_ULT(dev_priv) \ diff --git
> > > > a/drivers/gpu/drm/i915/i915_pci.c
> > > > b/drivers/gpu/drm/i915/i915_pci.c index 6cc65079b18d..e9f3b99b3e00
> > > > 100644
> > > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > > @@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[]=
 =3D {
> > > >  	INTEL_DG1_IDS(&dg1_info),
> > > >  	INTEL_RPLS_IDS(&adl_s_info),
> > > >  	INTEL_RPLP_IDS(&adl_p_info),
> > > > +	INTEL_RPLU_IDS(&adl_p_info),
> > >
> > > You may want to drop this change, see later comment on how and why.
> > >
> > > >  	INTEL_DG2_IDS(&dg2_info),
> > > >  	INTEL_ATS_M_IDS(&ats_m_info),
> > > >  	INTEL_MTL_IDS(&mtl_info),
> > > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > > > b/drivers/gpu/drm/i915/intel_device_info.c
> > > > index 849baf6c3b3c..fec8bd116436 100644
> > > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > > @@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] =3D {
> > > > static const u16 subplatform_rpl_ids[] =3D {
> > > >  	INTEL_RPLS_IDS(0),
> > > >  	INTEL_RPLP_IDS(0),
> > > > +	INTEL_RPLU_IDS(0)
> > >
> > > Please always include the trailing , at the end to make future change=
s
> easier.
> > > (However, you may want to drop this change altogether, see later
> > > comment.)
> > >
> > > > +};
> > > > +
> > > > +static const u16 subplatform_rplu_ids[] =3D {
> > > > +	INTEL_RPLU_IDS(0),
> > > >  };
> > > >
> > > >  static const u16 subplatform_g10_ids[] =3D { @@ -268,6 +273,9 @@
> > > > static void intel_device_info_subplatform_init(struct drm_i915_priv=
ate
> *i915)
> > > >  	} else if (find_devid(devid, subplatform_rpl_ids,
> > > >  			      ARRAY_SIZE(subplatform_rpl_ids))) {
> > > >  		mask =3D BIT(INTEL_SUBPLATFORM_RPL);
> > > > +		if (find_devid(devid, subplatform_rplu_ids,
> > > > +			       ARRAY_SIZE(subplatform_rplu_ids)))
> > > > +			mask |=3D BIT(INTEL_SUBPLATFORM_RPLU);
> > > >  	} else if (find_devid(devid, subplatform_g10_ids,
> > > >  			      ARRAY_SIZE(subplatform_g10_ids))) {
> > > >  		mask =3D BIT(INTEL_SUBPLATFORM_G10); diff --git
> > > > a/drivers/gpu/drm/i915/intel_device_info.h
> > > > b/drivers/gpu/drm/i915/intel_device_info.h
> > > > index d588e5fd2eea..4a5cd337e4b5 100644
> > > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > > @@ -127,6 +127,8 @@ enum intel_platform {
> > > >   * bit set
> > > >   */
> > > >  #define INTEL_SUBPLATFORM_N    1
> > > > +/* Sub Platform for RPL-U */
> > >
> > > This comment really adds nothing, it's exactly the same as the macro
> name.
> > >
> >
> > Ack.
> >
> > > > +#define INTEL_SUBPLATFORM_RPLU  2
> > > >
> > > >  /* MTL */
> > > >  #define INTEL_SUBPLATFORM_M	0
> > > > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > > > index 4a4c190f7698..758be5fb09a2 100644
> > > > --- a/include/drm/i915_pciids.h
> > > > +++ b/include/drm/i915_pciids.h
> > > > @@ -684,14 +684,17 @@
> > > >  	INTEL_VGA_DEVICE(0xA78A, info), \
> > > >  	INTEL_VGA_DEVICE(0xA78B, info)
> > > >
> > > > +/* RPL-U */
> > > > +#define INTEL_RPLU_IDS(info) \
> > > > +	INTEL_VGA_DEVICE(0xA721, info), \
> > > > +	INTEL_VGA_DEVICE(0xA7A1, info), \
> > > > +	INTEL_VGA_DEVICE(0xA7A9, info)
> > > > +
> > > >  /* RPL-P */
> > > >  #define INTEL_RPLP_IDS(info) \
> > > >  	INTEL_VGA_DEVICE(0xA720, info), \
> > > > -	INTEL_VGA_DEVICE(0xA721, info), \
> > > >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > > > -	INTEL_VGA_DEVICE(0xA7A1, info), \
> > > > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > > > -	INTEL_VGA_DEVICE(0xA7A9, info)
> > > > +	INTEL_VGA_DEVICE(0xA7A8, info)
> > >
> > > Changing the INTEL_RPLP_IDS impacts arch/x86/kernel/early-quirks.c
> > > too. As is, this drops the early quirks from RPL-U.
> > >
> >
> > Yes I missed the early quirks part in this revision. Thank you Jani for
> pointing out.
> >
> > > Your options are 1) modify early-quirks.c too, or 2) include RPL-U id=
s in
> RPL-P:
> > >
> > >   #define INTEL_RPLP_IDS(info) \
> > > +	INTEL_RPLU_IDS(info), \
> > > -	INTEL_VGA_DEVICE(0xA721, info), \
> > >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A1, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A9, info)
> > > +	INTEL_VGA_DEVICE(0xA7A8, info)
> > >
> > > With option 2, you also don't need to add INTEL_RPLU_IDS separately
> > > to subplatform_rpl_ids[] or pciidlist[].
> > >
> > > I might lean towards option 2, but no strong opinions.
> > >
> >
> > Thank you Jani for your suggestion. I am also inclined to the solution =
of
> adding RPLU IDs to RPLP platform.
> >
> > To summarize, we would add the INTEL_RPLU_IDS(info) into
> > INTEL_RPLP_IDS(info).  As Jani pointed out, with this, there is no need=
 to
> add INTEL_RPLU_IDS separately to subplatform_rpl_ids[] or pciidlist[]. Th=
is
> also aligns with Bspec(55376) as RPL-U ids are listed under "RPL-P SKUs a=
nd
> Device IDs Info"
> >
> > @Matt: I remember, we had discussed a similar option in our
> communications. Do you have any strong opinion against it?
>=20
> That sounds fine to me.
>=20
> Thanks.
>=20

Thank you Matt. I have floated a new series based on these comments.

Regards

Chaitanya

>=20
> Matt
>=20
> >
> > If not I would go ahead with this implementation.
> >
> > Regards
> >
> > Chaitanya
> >
> > >
> > > BR,
> > > Jani.
> > >
> > >
> > > >
> > > >  /* DG2 */
> > > >  #define INTEL_DG2_G10_IDS(info) \
> > >
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
