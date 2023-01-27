Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4352667E070
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 10:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D9910E435;
	Fri, 27 Jan 2023 09:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEFBB10E435
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 09:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674812358; x=1706348358;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=khVCR8w4KlPXXSaUW+WjUITXuqUkB+GxEcX5y3k1dOw=;
 b=fa1bF1NwQfaqG62EjPzgs8+47Opa8VeFOis8UU8UVzmVnByAbbujDkSh
 jW+E4foLpTWXlty9uFtNDiZoaws8UhVI0etzwJvaf4dFlqXlXd0EZ0gMk
 ri2BjjxIlJJNz9LXimQFSexf0sjMa5OdvX4pOq3KGxDBB1bEv+40dM8li
 SmPc2Elg0nX5jEiokGvVwXxdp/3tdpB3tDq9rZxPjJjnztzzbd24cpUgn
 ra2FTejptSSgWdv3dtCf3OU7CRxTbIEZpzK593Q4XDYl700grgbZ7UT9u
 +oyIvpYtjnoaTijfW1NL79MG4CeDLu/cVmzkzbthhW8So07IzD2wy7qkq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="413276065"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="413276065"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 01:34:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908613556"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908613556"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 27 Jan 2023 01:34:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:34:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 01:34:34 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 01:34:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CA+Zavbo3tPhJHQ9ZGrZDhbQ4OVFKEZGJXppTWF/CfRC1ajzzFnYZnsDlK3E98Hbi4NO/MFJL86j6eUWY78F2Lat6S00j+MWiteNqWQVz61VrfOEXHcuSGp0kPKN4CTMrlh85/DZcX9WnQY2wcF4SZk420nmQGIJZRi2kVvKS6lyAkechcwM5wUe2GOKSdNP1ce8nS3OOlyAsjFCi5oMr4/Gwsi1JkK6lsR4+v+CupGwll7umIIfmQKDuIOjYf76tTmWiufFs9v1e1VKglBs5XEHPhKsvTlweYYPxb2oNdhpHwTbKopucmgn9XVfRQPqutwxoqqhPjB12bClBQ6jzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EHj9he7X2OIv3vhklYcnZpb6oifoipSIbd7j87iTuw0=;
 b=n/FVDbomLRRQsOTDCIDZPvXAWpmOrPgDscU/CY1z33E7kXDsKIfz12J3hO3EFzNxU7opdFVx3KcKMs9X4uVoOyasaj9QreObc7bh37hLG1+dMonGP43/C47O/OES/tEgz8NKt6zpdSLNIK8U7VbORJG0YOOXcKTXUCP/NY+t4a2g6C/OQR93IwcyiF4RgbdkOzxyq+6z8WXLFyYvdSb45t9PW928yFWCOqw1W7jVfOThvdO04XGvsJZOkM2B6eXYlr5B6ZfZgMFc04VGb3HUt01NNL/aODjrrT0exyTD1ZHQKvj/5WS+P2hTS7Qg1kHmBH/eHBMW1AyDSXFbC8korg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Fri, 27 Jan
 2023 09:34:32 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%7]) with mapi id 15.20.6043.022; Fri, 27 Jan 2023
 09:34:31 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [RFC 1/2] drm/i915: Add RPL-U sub platform
Thread-Index: AQHZKkc+IWUNOoOJx0mVhhuYEEYsP66trLGAgAQSSxA=
Date: Fri, 27 Jan 2023 09:34:31 +0000
Message-ID: <SJ1PR11MB612937723DC09B70E8A7F04FB9CC9@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
 <20230117074211.952125-2-chaitanya.kumar.borah@intel.com>
 <87mt686m1o.fsf@intel.com>
In-Reply-To: <87mt686m1o.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: 7abc994c-f270-4539-0820-08db0049b197
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6XBSbGm1urNzWS031nuCsEHoqZAjQtZso7O0/Oq7zyopszilrzjLOcni6y6G0mlUY/s7N8/KtGOQQL6sA1nfjWigwQqsrUSUuTGOs4U9srw9iTNlm2yfI9Mo9XOPd8JOOZuug+OGgvGPcZKCTAXR6FRQSmea9X00UjjgXIElWOetrwa3dkNDm4ZnFMl227XhB39BoGe5lt0xMJST95++W23xqteL0XlFL5DuzBV26Fdxkil+lZwo+aq3A6JCSAVM37v8QanYR1DYsc8GjCqNTNtcbb5qbG1Weymv1HobUbEO6s+wTJVKeTnf25g2805xhZvIGK477uw16NUStfYxAn9HtD921+qQIvqC2PkR6ZMxss3J8uj6oxjrTNwYlntzjJFihWEsc2iKef8+S9xNRUDsePdnyGZIxP0qo0WTyHEGnwDGvOp56vFLiKCnOLBlOL8QMeWNTFgZZrHaJCTNueglkj2fk5fGwo5nBBeM5l93Lhi5EavCRSbqQ+flNA+tJMsw2/B+RLCyF11NYiLisFBVBgEA7iOvlkeWTwxlBGbCoUYuHIxQDlmP0umYTen+VPqoBO1wjfFZPneLybQkEoBVUp9SysspFTvnGxZJz1mjyW7XsGo/vewo00VYlES6HRox3F0n8YX44Q/Hd59cUqE7BamnTZySVM6jIBWXxIpJjznZVKrT9eEQylhFnf5CmqXnTLPEGIK86AMetJFqTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(396003)(39860400002)(366004)(346002)(451199018)(38070700005)(38100700002)(8936002)(122000001)(2906002)(110136005)(71200400001)(54906003)(316002)(33656002)(7696005)(41300700001)(478600001)(9686003)(86362001)(83380400001)(186003)(26005)(55016003)(53546011)(6506007)(8676002)(82960400001)(66946007)(52536014)(76116006)(5660300002)(66476007)(4326008)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dU5bQamj4fd2apzs5jattaKdJozIHn+DnCeTr/v8/9bVABoKaKbq+hBbukXR?=
 =?us-ascii?Q?LclSYXiLYEIxQMr9URMbBC432Kz6xFQqy0SAiLdBpgy0JA8AbEyRvdxw2ikl?=
 =?us-ascii?Q?uZaudNcn+AGAZxjlKu27b47xh1S1IKiuY7aetic/JhP6sKEE6Y0dDnwbWx7O?=
 =?us-ascii?Q?PhMYEmUNIDTRm7n+QHT/ZWfPfNAxOYcIFJa7VND/qKCF9wo2nGG155ESIUq6?=
 =?us-ascii?Q?h4QDz1GnHjuPG6W7Cy7xScqOSaSQ6ZW3dXeDvj14A6eXE7tF259uQkSaSFMV?=
 =?us-ascii?Q?b80AN4d+l7n3K6FSfzApwsKT3ssosU3ReseOuiSgTs5BPjAP2AjUDxLHOqWR?=
 =?us-ascii?Q?qa1HQ/TMxPcmVqHTaBUaGv3BqjBHE+G5m0HP2O4tJZBTcrBJ4cEu82I/nzZw?=
 =?us-ascii?Q?K0q05qHLrZT3bTjI0tUKxGPUU614IJa0QHzxX1z8+sHx6ssM7oedqGr9YIGq?=
 =?us-ascii?Q?mL1NQLR/YjkZU4Is3VKoK5Eisx+rnhxelmc+NqQz7fso/NF6XkG/Du/xnz/4?=
 =?us-ascii?Q?Tnrch45EBx0UdKw7q5GMzjfSKwQlq16/A8auOJOh6Vj36ncn0rVY9Tdtcn6V?=
 =?us-ascii?Q?rtYIs2V1iMCKkofDwb3W3FZ2tA3ReMao/7a31C/F8x5dJvhCQl7cNnuPIYkV?=
 =?us-ascii?Q?gqwjtGIBR9YiJsz0JII6ZL+5llD2o3ERfSVcb/hNwLMlmfRoFWQkLPRwfnV/?=
 =?us-ascii?Q?w+LqAxxCV42ARgX3AehtTtqkEonGGLDa9zqjvVWYplraJ+9CfS1pCFSB4B6e?=
 =?us-ascii?Q?hi//OIVH9vx1HFc9g2bivBZilI3SDcH8+GYjMaLFF9EwWKGrQF2ulitUDqRt?=
 =?us-ascii?Q?IQDbqilbanl0LLzd8Fz+cc0ECQohlz5QXTWgNwjgc1g+Wi4EwcTlO0PzObU9?=
 =?us-ascii?Q?hbzmn4W+fb4GpbFpXoSfJ2ysHfaPbhET9HtPTpPTtp1OpSM3s0XsEyOLNILY?=
 =?us-ascii?Q?VSjPHuAFHlR7ZXN8t9d27UO8afqcTKj4D7o/DP5FQFs8KV6ehzRfloReyLSF?=
 =?us-ascii?Q?Y0ydu0HP/L4RFMvdS3OijMdaRxDb6bPiS16WjRa0jmt5ek7AnBg8Ja4PLRFJ?=
 =?us-ascii?Q?VhohazQc8+2dCGHYQvl+/ZcwK5b6aVO3/0OLys2CZ0dMVYZZmGhhUuoR8juU?=
 =?us-ascii?Q?LMyg6sm3pTwT91BT1O/7YhBRuzoql6BmsZViuV5ujvg/tyaLuMkU3aEhmqxM?=
 =?us-ascii?Q?WJNS5LdJCtf9Ohn2GbMD52uA61gtZSN8XcITzWZvzi+H4YN3diEpiKKvK7b3?=
 =?us-ascii?Q?DK0cchAa5o39cZHD1h3T/vnj2mBNHG32FwijnrW+daD5ezTUJwgZBCho/KAc?=
 =?us-ascii?Q?3Uw1uIZL/SeGxkCSH5TKqmF1frkUg7GBkTO8qqZyBqx+Fit5KaRKsgNaneJr?=
 =?us-ascii?Q?TkWT5LIt4zzgT5n99jc2ByH8hNNFIsd9Uuax9HaSc2ytyUPfKn/fWImvYNXB?=
 =?us-ascii?Q?/59VfaRE3tm7At50zRjD28LLQQOHelhydUGyT1C3w6dUQkROPkY18FNq8ls5?=
 =?us-ascii?Q?pN2t88g4sPZjtmEYsjqis3TxYBwZfcSsDmD5EnRDSD2YFy6V3loVO0ZVB3Iv?=
 =?us-ascii?Q?VCnAMeieGK0igTfXLyPFRF1VjdR3eJJBVFMHTLcidJ4xiGtM8+z3Y/entloF?=
 =?us-ascii?Q?Kw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7abc994c-f270-4539-0820-08db0049b197
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 09:34:31.4666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xv1l9rjyOKqPIGmqUpjdoDWJD1LDsgntktEt9UXsL/FK8dd0cl814bJKKdrRd6debdGEomYl8k/4JOvXsa05OPmz1vfZRWmKkUQ9L4F+8qo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Jani and Matt,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, January 24, 2023 8:02 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Srivatsa, Anusha <anusha.srivatsa@intel.com>;
> Roper, Matthew D <matthew.d.roper@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [RFC 1/2] drm/i915: Add RPL-U sub platform
>=20
> On Tue, 17 Jan 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > Separate out RPLU device ids and add them to both RPL and newly
> > created RPL-U subplatforms.
> >
> > v2: (Matt)
> >     - Sort PCI-IDs numerically
> >     - Name the sub-platform to accurately depict what it is for
> >     - Make RPL-U part of RPL subplatform
> >
> > v3: revert to RPL-U subplatform (Jani)
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> >  drivers/gpu/drm/i915/i915_pci.c          |  1 +
> >  drivers/gpu/drm/i915/intel_device_info.c |  8 ++++++++
> > drivers/gpu/drm/i915/intel_device_info.h |  2 ++
> >  include/drm/i915_pciids.h                | 11 +++++++----
> >  5 files changed, 20 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
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
>=20
> You may want to drop this change, see later comment on how and why.
>=20
> >  	INTEL_DG2_IDS(&dg2_info),
> >  	INTEL_ATS_M_IDS(&ats_m_info),
> >  	INTEL_MTL_IDS(&mtl_info),
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index 849baf6c3b3c..fec8bd116436 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] =3D {  static
> > const u16 subplatform_rpl_ids[] =3D {
> >  	INTEL_RPLS_IDS(0),
> >  	INTEL_RPLP_IDS(0),
> > +	INTEL_RPLU_IDS(0)
>=20
> Please always include the trailing , at the end to make future changes ea=
sier.
> (However, you may want to drop this change altogether, see later
> comment.)
>=20
> > +};
> > +
> > +static const u16 subplatform_rplu_ids[] =3D {
> > +	INTEL_RPLU_IDS(0),
> >  };
> >
> >  static const u16 subplatform_g10_ids[] =3D { @@ -268,6 +273,9 @@ stati=
c
> > void intel_device_info_subplatform_init(struct drm_i915_private *i915)
> >  	} else if (find_devid(devid, subplatform_rpl_ids,
> >  			      ARRAY_SIZE(subplatform_rpl_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_RPL);
> > +		if (find_devid(devid, subplatform_rplu_ids,
> > +			       ARRAY_SIZE(subplatform_rplu_ids)))
> > +			mask |=3D BIT(INTEL_SUBPLATFORM_RPLU);
> >  	} else if (find_devid(devid, subplatform_g10_ids,
> >  			      ARRAY_SIZE(subplatform_g10_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_G10);
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index d588e5fd2eea..4a5cd337e4b5 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -127,6 +127,8 @@ enum intel_platform {
> >   * bit set
> >   */
> >  #define INTEL_SUBPLATFORM_N    1
> > +/* Sub Platform for RPL-U */
>=20
> This comment really adds nothing, it's exactly the same as the macro name=
.
>=20

Ack.

> > +#define INTEL_SUBPLATFORM_RPLU  2
> >
> >  /* MTL */
> >  #define INTEL_SUBPLATFORM_M	0
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index 4a4c190f7698..758be5fb09a2 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -684,14 +684,17 @@
> >  	INTEL_VGA_DEVICE(0xA78A, info), \
> >  	INTEL_VGA_DEVICE(0xA78B, info)
> >
> > +/* RPL-U */
> > +#define INTEL_RPLU_IDS(info) \
> > +	INTEL_VGA_DEVICE(0xA721, info), \
> > +	INTEL_VGA_DEVICE(0xA7A1, info), \
> > +	INTEL_VGA_DEVICE(0xA7A9, info)
> > +
> >  /* RPL-P */
> >  #define INTEL_RPLP_IDS(info) \
> >  	INTEL_VGA_DEVICE(0xA720, info), \
> > -	INTEL_VGA_DEVICE(0xA721, info), \
> >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > -	INTEL_VGA_DEVICE(0xA7A1, info), \
> > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > -	INTEL_VGA_DEVICE(0xA7A9, info)
> > +	INTEL_VGA_DEVICE(0xA7A8, info)
>=20
> Changing the INTEL_RPLP_IDS impacts arch/x86/kernel/early-quirks.c too. A=
s
> is, this drops the early quirks from RPL-U.
>=20

Yes I missed the early quirks part in this revision. Thank you Jani for poi=
nting out.

> Your options are 1) modify early-quirks.c too, or 2) include RPL-U ids in=
 RPL-P:
>=20
>   #define INTEL_RPLP_IDS(info) \
> +	INTEL_RPLU_IDS(info), \
> -	INTEL_VGA_DEVICE(0xA721, info), \
>  	INTEL_VGA_DEVICE(0xA7A0, info), \
> -	INTEL_VGA_DEVICE(0xA7A1, info), \
> -	INTEL_VGA_DEVICE(0xA7A8, info), \
> -	INTEL_VGA_DEVICE(0xA7A9, info)
> +	INTEL_VGA_DEVICE(0xA7A8, info)
>=20
> With option 2, you also don't need to add INTEL_RPLU_IDS separately to
> subplatform_rpl_ids[] or pciidlist[].
>=20
> I might lean towards option 2, but no strong opinions.
>=20

Thank you Jani for your suggestion. I am also inclined to the solution of a=
dding RPLU IDs to RPLP platform.

To summarize, we would add the INTEL_RPLU_IDS(info) into INTEL_RPLP_IDS(inf=
o).  As Jani pointed out, with this, there is no need to add INTEL_RPLU_IDS=
 separately to
subplatform_rpl_ids[] or pciidlist[]. This also aligns with Bspec(55376) as=
 RPL-U ids are listed under "RPL-P SKUs and Device IDs Info"=20

@Matt: I remember, we had discussed a similar option in our communications.=
 Do you have any strong opinion against it?

If not I would go ahead with this implementation.

Regards

Chaitanya

>=20
> BR,
> Jani.
>=20
>=20
> >
> >  /* DG2 */
> >  #define INTEL_DG2_G10_IDS(info) \
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
