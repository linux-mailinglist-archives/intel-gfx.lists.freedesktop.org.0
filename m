Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68772666E8C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 10:45:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E144D10E189;
	Thu, 12 Jan 2023 09:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5394E10E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 09:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673516746; x=1705052746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W0FuCK1RozoqA49TQpuFPAnIddsQWPg0RrUgqF29I10=;
 b=kzhluPWp+HPQWjF4LvfOxhcvDWVunZ1x7s8AvfGBpVKTEtspS8HbAACW
 M/4yh6cYSGZJ2mF35gzqOC1z/putw53tYTpFK/WZEOdbHE8s0O35YyQFz
 3Mtw5sNA8gWdHLNS43ZGFMqSHcP0zLEhfSxAnB9Js5eLJqT/5ecUnWU76
 4PHH+Xj0izmkCkG8XR1PfZot2/XzRchnw3uFasmqWBvpjfrqS4rmno8tm
 BdlunlwMLdQSfgBEsuHH8w4A+WGaxNaP95qFdZPyRWkIiIjPNunQNmPLf
 bMcKWXjg7LNhIK6qxvoF918aaIb753XtyNOTbJoWfAeh+y4lvznF/VzGi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409899440"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="409899440"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:45:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="726239670"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="726239670"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 12 Jan 2023 01:45:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 01:45:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 01:45:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 01:45:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 01:45:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kUsceGMPoo1L//f9YmAp5LHDYLPaxQJzRL1bsxThm3LjZ9iuUmsZwG+v5KmAjsuGc2uQg2USWUnTUd4c2Z1YAS3NoNI/2tc/qStCl82Z5gtcjCeXQ8Gp28fqGr7hE9dPMK1ZxCh4y7PeJz5DiuuKBAiC9EvuO8B5lVb2IXVDN5WN/TyClQg7Hmu7svkFb8tAkbYiOnkuPSbxJU+5gvY1oaGdcs9WhlIx3jZmfNgTVdnnbj3k4eqoC1U/3hFlTdsym/oWrI12VxzMODADLOYSp420poo/dFJ0cjOuNsA2MEWuQTT/A1LhZeMTj6Q2JyLMN21rpbe6w5wwgAwlCeMyNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FzEoGD3VgkXRM/fzrxqvSPOwt6aa7TEepgYC6/6U5yo=;
 b=AbU+oCCn+FuU+MNG/xNCUVDtS/KRgJyBLVl5UJYkcNOXAQ7n4wPBPrmtzoAx49xvEZSnbDv747j5xQ1O0QBncRfilzE7AL5LtdjWjd5eib1u6hDnSqctIqlhha/rLqFsHyxbvhy77FuMkS0zNez3OUQVBxVhsFDwAH4oCwAckjfdeZ5rysquKfkpNro1IaoKhJMxlJizvm/Zrk8Wtlrm22Td5+xB0UNjiz7184lLKU63oqddmPtsLQpJr8QzDV6DC3rXzEpJOPDJuE2sCCk1dBwGKeb4HAlgE4oWX8CsR+hGdKdBLfeT7f2gpx2lWUQ7ty5BCdO1/vFxoAsM8X/HTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CO6PR11MB5586.namprd11.prod.outlook.com (2603:10b6:5:35d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 09:45:39 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%7]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 09:45:39 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [RFC 1/2] drm/i915: Add rplu sub platform
Thread-Index: AQHZIloQphdItYRhKUSYL/Fcqrqq8a6W2aEAgAO2QGA=
Date: Thu, 12 Jan 2023 09:45:38 +0000
Message-ID: <SJ1PR11MB6129D8D7617FD8599C15FF3AB9FD9@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
 <20230107053643.1984045-2-chaitanya.kumar.borah@intel.com>
 <Y7y5EvDoqJGwYkXR@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y7y5EvDoqJGwYkXR@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CO6PR11MB5586:EE_
x-ms-office365-filtering-correlation-id: b5cece4e-1229-453a-3731-08daf481c316
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sx0uNh3XWyO+LJVtZtKWa2vpY+Vlx8P/Toc3NPYszuS/mQsWmn3HEuHB1O/UJ1A4HXj1MbDVzDNhkP3RoEbCJkxc9WvQKFr1OO9pgWcYYHfhUB+dCDuKN4UHgoTlQ6O7CxPzJFfJgSn8BfIaozbGz2PHhPJSXr9sLu4FAQuWlZfJMqoqxouYcszLO0xHVhTFHrd9lHH7pqr2Wds6I0e4SVjS35bpgl2keqJbqNGcHwwMkjFqt3tm8slTD3+BM1I3W+mXM0JcTIwz6gucaI1IED/0NxFLKqNCvJEKUHNsnM8ohR2H/PbYVgnNfPTr4ZHnFQLwyF47ZclIW4HiSJJ1U29fgfCt1nsa5UHXUccxwGTlyRnCcFNP7SWfwYKFxXQQP7Q74jluqthDoXfOgdR6uG4D/72aWonjPMxB2XCrt8QrQ3imqfiX7ARMADTmrKF7kpJCwv0+ViyovTvqsiJOtNrMK0VWkFsP7w1qUwVGUQlM6f3Fy9ZjWFqXFkBi6xxa+/tSlkbniv+ZaYL7Bipfw74yMp6S8fX88ax14SpjS/0mfR0+7wB3xv0/tNh4DDFqGlCqwcH+ELHUwmXOQgvsEdabB5CKqSmKuE1JYdi7YBWEhzqqONWtGxSWrPpQF/JZ36lqr7Ay4xt/C+i66TVY6JPzWPQoZFYS/kEwPMakt49o5s09pxsSykdB6XnAULBfu9DySdj5cR5TWRkdd0VT3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(366004)(376002)(39860400002)(451199015)(6506007)(2906002)(4326008)(5660300002)(53546011)(8936002)(52536014)(122000001)(83380400001)(8676002)(64756008)(6862004)(66446008)(38100700002)(9686003)(478600001)(82960400001)(41300700001)(38070700005)(33656002)(66556008)(26005)(66946007)(76116006)(66476007)(186003)(7696005)(55016003)(86362001)(71200400001)(316002)(54906003)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vtaz7b2bO+flrjUvir/CqenT+LuEPixlI0YVVBjQN9T7NmozxPDb/oDgBn5m?=
 =?us-ascii?Q?rnIVhk0AZigmfH6llBCOPNifrt7w+ZohxaB16CCTo8eY5MDvaTcyR8oZBqd9?=
 =?us-ascii?Q?Ttgq5wpW31wcJ9O79Hsv/3T4sbnvdhJdtrK5gfAtCljDTnUkICQ0B2Cbmq3T?=
 =?us-ascii?Q?S6zGShAE8b/ywGk/ANfHP9lgEREcWn8hHGudpXu9NQmMuBHfJlbuI8Mo3g0x?=
 =?us-ascii?Q?WWXgyDqfgRzvGGGUDNIpo1Nh2kKcmNcMoQ4BWnqHZqvEzaEhM7Ou28R5sLv2?=
 =?us-ascii?Q?r+6Vn/ll9E2Umxf3o08qaqn1xqDAgCFh2gu6g3CG6m/UtjmilgDDIkXClTDy?=
 =?us-ascii?Q?DqTQReVP51EV3EKBVILc8NBU5OqaZqCjOUTh+SpMGditNQzutpVYSagrMVTa?=
 =?us-ascii?Q?1M/kumFYoo/s3Gp55oNeJHe8aUBGw2yv8E15Me5B9OEVkX2LIcNSrYOU5Z+5?=
 =?us-ascii?Q?2ITixRa/XP6k5hTTUztXXKhl3DLQxeKkzFRYjAbT+HzIQMWIN7hZ/0bJzHxd?=
 =?us-ascii?Q?4AaWKqjuPMYqI9qejpuQnyZkDij6HN2QPRi/WKvlXvznj6VbpXNs1uEpIYdR?=
 =?us-ascii?Q?QY4b2hGdUQxdjjXqnYpMwln9qeA+HgxR6Emxzty0F4wlkoW8rqCdJPqDKv1A?=
 =?us-ascii?Q?no+9R2D5FE1PYg4Rl/cwNUutVXvaSdPigWeSMqkVXBIgEJBoyizEZ0HGyj90?=
 =?us-ascii?Q?lWYJA4BvrPsiikq33/KNqBwNzv4V3zJwPphlyBgQgB6HVPIiBfwm2zb+KkYi?=
 =?us-ascii?Q?t33n7mnW4PsE9C1c/yyNWcxBIaMhkh1LG55//pdQGKhjumzla2dGMJavlVey?=
 =?us-ascii?Q?jb8ULIIPp+envR9qSY7+1wNPTv/qlRlGj7wOLZFQdobdmghBEqIlJwLClVNn?=
 =?us-ascii?Q?uza3JfDgprjVI792WcSg7Vng78zlQlf1nNJ/F4gU80hlZsXrBGigyVbQj9GG?=
 =?us-ascii?Q?ObQHisn0Dy3E6QCdh/RtCdfHjDLdBsBbmDnxwqZlElFRpRMTLCrILJexcAIa?=
 =?us-ascii?Q?/2hfuS4Kx0W0RlTH1fZHLMcUwi2/CwMhWjwbQgQd50qIPKBHVxhYOrhecf8P?=
 =?us-ascii?Q?rnTGJpS813zN9pdM0vo4238/1CDDSKQ3KNhcaekkwLw7kEwNmL25orf4oo9Y?=
 =?us-ascii?Q?t33RDXZQ0/zO/IOviA70IjJfHKHjYfxIFEhxHZCe8e/V6vxRgS55b1Pc2s6O?=
 =?us-ascii?Q?r2xDjwyo+cBePiqeUsnA84LmfgMIq3GO6Y/Jj1r/9gDWPoa7YhoI9b/ZvZOO?=
 =?us-ascii?Q?SaEbb1sP77Utm5XWXrGRy5pls1tjqdeUYY4QOpWeOyOoRpeYql8LwMDTJdfX?=
 =?us-ascii?Q?UY/T9kZYVjgXGUbPY445aTBEw2DAjJX/OrlO5/xkmzq3ZOD6QOSesk3AtD3W?=
 =?us-ascii?Q?19sRfLN0D9TSqi9hX7il20ywwdDUD+4N1hGgK8NnqAhTNkJcWnKiznh6yWVD?=
 =?us-ascii?Q?lvVxjZiPhAlJztUGRwRe4nnOgbxrdXSA2Sz+Ltpy+ERYScACqM/Mbw39g3S0?=
 =?us-ascii?Q?u17DpLOUMr2NkZudUOs4NMKjGlPDCnakPgtthrMDvHaTeHDkQauPfQjeCSuY?=
 =?us-ascii?Q?GcoI7UiTIisO+pzT7qd27CMz6t6iRbgeZp6/dGwQsUujDDIN0PrwB/GBqRwf?=
 =?us-ascii?Q?tg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5cece4e-1229-453a-3731-08daf481c316
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 09:45:38.6693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 98LDcJ7X476fhe+COEj/d+iy3xM5jcAJUfzBkhubVgEoo1o77KuKrWIG8A30MA4Obif9xgD8J53ZISNUtdcFMgMydITp4Qs/5Q0SBv7izVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add rplu sub platform
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

Hello Matt,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, January 10, 2023 6:32 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com; Shankar=
,
> Uma <uma.shankar@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>
> Subject: Re: [RFC 1/2] drm/i915: Add rplu sub platform
>=20
> On Sat, Jan 07, 2023 at 11:06:42AM +0530, Chaitanya Kumar Borah wrote:
> > Adding RPL-U as a sub platform. In RPL-U a new CDCLK step has been
> > added so we need to make a distinction between RPL-P and RPL-U while
> > CDCLK initialization.
> >
> > Adding a sub-platform, enables us to make this differentiation in the
> > code.
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  arch/x86/kernel/early-quirks.c           | 1 +
> >  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
> >  drivers/gpu/drm/i915/i915_pci.c          | 1 +
> >  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
> > drivers/gpu/drm/i915/intel_device_info.h | 1 +
> >  drivers/gpu/drm/i915/intel_step.c        | 3 +++
> >  include/drm/i915_pciids.h                | 7 +++++--
> >  7 files changed, 20 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/x86/kernel/early-quirks.c
> > b/arch/x86/kernel/early-quirks.c index a6c1867fc7aa..1ba9926c8974
> > 100644
> > --- a/arch/x86/kernel/early-quirks.c
> > +++ b/arch/x86/kernel/early-quirks.c
> > @@ -559,6 +559,7 @@ static const struct pci_device_id intel_early_ids[]
> __initconst =3D {
> >  	INTEL_ADLN_IDS(&gen11_early_ops),
> >  	INTEL_RPLS_IDS(&gen11_early_ops),
> >  	INTEL_RPLP_IDS(&gen11_early_ops),
> > +	INTEL_RPLU_IDS(&gen11_early_ops),
> >  };
> >
> >  struct resource intel_graphics_stolen_res __ro_after_init =3D
> > DEFINE_RES_MEM(0, 0); diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 48fd82722f12..c88e514728a0
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N)
> > #define IS_ADLP_RPLP(dev_priv) \
> >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPL)
> > +#define IS_ADLP_RPLU(dev_priv) \
> > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPLU)
> >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> >  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D
> 0x0C00)  #define
> > IS_BDW_ULT(dev_priv) \ diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index 6cc65079b18d..e9f3b99b3e00
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] =3D=
 {
> >  	INTEL_DG1_IDS(&dg1_info),
> >  	INTEL_RPLS_IDS(&adl_s_info),
> >  	INTEL_RPLP_IDS(&adl_p_info),
> > +	INTEL_RPLU_IDS(&adl_p_info),
> >  	INTEL_DG2_IDS(&dg2_info),
> >  	INTEL_ATS_M_IDS(&ats_m_info),
> >  	INTEL_MTL_IDS(&mtl_info),
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index 849baf6c3b3c..88f3da63948b 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -201,6 +201,10 @@ static const u16 subplatform_rpl_ids[] =3D {
> >  	INTEL_RPLP_IDS(0),
> >  };
> >
> > +static const u16 subplatform_rplu_ids[] =3D {
> > +	INTEL_RPLU_IDS(0),
> > +};
> > +
> >  static const u16 subplatform_g10_ids[] =3D {
> >  	INTEL_DG2_G10_IDS(0),
> >  	INTEL_ATS_M150_IDS(0),
> > @@ -268,6 +272,9 @@ static void
> intel_device_info_subplatform_init(struct drm_i915_private *i915)
> >  	} else if (find_devid(devid, subplatform_rpl_ids,
> >  			      ARRAY_SIZE(subplatform_rpl_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_RPL);
> > +	} else if (find_devid(devid, subplatform_rplu_ids,
> > +			      ARRAY_SIZE(subplatform_rplu_ids))) {
> > +		mask =3D BIT(INTEL_SUBPLATFORM_RPLU);
> >  	} else if (find_devid(devid, subplatform_g10_ids,
> >  			      ARRAY_SIZE(subplatform_g10_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_G10);
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index d588e5fd2eea..3e3ca5eb073f 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -127,6 +127,7 @@ enum intel_platform {
> >   * bit set
> >   */
> >  #define INTEL_SUBPLATFORM_N    1
> > +#define INTEL_SUBPLATFORM_RPLU  2
> >
> >  /* MTL */
> >  #define INTEL_SUBPLATFORM_M	0
> > diff --git a/drivers/gpu/drm/i915/intel_step.c
> > b/drivers/gpu/drm/i915/intel_step.c
> > index 84a6fe736a3b..df75057eaa65 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -194,6 +194,9 @@ void intel_step_init(struct drm_i915_private *i915)
> >  	} else if (IS_ADLP_RPLP(i915)) {
> >  		revids =3D adlp_rplp_revids;
> >  		size =3D ARRAY_SIZE(adlp_rplp_revids);
> > +	} else if (IS_ADLP_RPLU(i915)) {
>=20
> Since the two blocks are identical, it might be slightly preferable to ju=
st
> combine the conditions; that will also help make it clear that this is
> intentional and not a copy/paste mistake.
>=20
>         } else if (IS_ADLP_RPLU(i915) || IS_ADLP_RPLP(i915)) {
>                 ...
>=20

Since in the new implementation RPLU also belongs to RPL sub platform. This=
 change is dropped in the latest version.

> > +		revids =3D adlp_rplp_revids;
> > +		size =3D ARRAY_SIZE(adlp_rplp_revids);
> >  	} else if (IS_ALDERLAKE_P(i915)) {
> >  		revids =3D adlp_revids;
> >  		size =3D ARRAY_SIZE(adlp_revids);
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index 4a4c190f7698..87bb7e26dfb6 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -687,10 +687,13 @@
> >  /* RPL-P */
> >  #define INTEL_RPLP_IDS(info) \
> >  	INTEL_VGA_DEVICE(0xA720, info), \
> > -	INTEL_VGA_DEVICE(0xA721, info), \
> >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > +	INTEL_VGA_DEVICE(0xA7A8, info)
> > +
> > +/* RPL-U */
> > +#define INTEL_RPLU_IDS(info) \
> >  	INTEL_VGA_DEVICE(0xA7A1, info), \
> > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > +	INTEL_VGA_DEVICE(0xA721, info), \
> >  	INTEL_VGA_DEVICE(0xA7A9, info)
>=20
> I know the bspec orders them like this, but it's probably better to just =
sort
> these two lists numerically.  These bspec pages get reshuffled so often t=
hese
> days that trying to match the bspec's strange ordering isn't really worth=
 it.
>=20

Ack. The new revision has the sequence corrected.

Regards

Chaitanya

>=20
> Matt
>=20
> >
> >  /* DG2 */
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
