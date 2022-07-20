Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B381D57BB9C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 18:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA35D90D25;
	Wed, 20 Jul 2022 16:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5026E90D25
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 16:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658335406; x=1689871406;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kXRWIlhWFYQexiKj3eJDT83S2paakE4qFQBJ1FDXkfc=;
 b=ZCJh88zY8BDUQjnzrCX7jtswIeRu8+5gSIZ+9iYWHUd4EJpt2fbLmKNJ
 V18JZ0LCcOAT9qacz5nvwNwNVjTMgpWJYC4GNnFEN+Y6xZQyALQkzlh1/
 fRYNPkbZogiu09v9WOfah0Z+fLmIzPSnM8e4E4akcR90jtlquY9QlOTz9
 1x6hiGsTFsP5BkKXrvCuILKxk/FhjgLktMx1ZyBiT+7fQEyOqMlD9JM5D
 K7DHpepA9SIB1QACapxJ3QGEGsqxXE9HSz0LD91OjPOnbVmuJ47U+ab7F
 9k2tSRuIldC7Cg7W5gRoxw16V9ZHA7uUWHGSW1KuCi7trxQI215OVnnTt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="273668169"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="273668169"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 09:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="687589221"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2022 09:43:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 09:43:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Jul 2022 09:43:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 20 Jul 2022 09:43:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 09:43:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KD3+T9uDnjncnX/PhM65ZDD0lqYkwTXLmnjOY9APoDGa9u8ib1GEcUM0Swq0/SW1EmT/+d2fRWDxrIgtMyqAJpdBZp7WeM6KhKAXppBFj/iP2xXldf3SaVJxWqUaCCyJNZevr+w/KcYLYiooOiE0kVBk2hHXYvEw7RqGutK+1LY7bAhUaD46rDkfE0pKJjeQgkfODP3iUuvxYhIF+6yOA3x4QqzuXfce3SozDYWTwZzo4zTH52bMcz2VN8ldXNXbuoXt8lxXRcLUgc7RD0KDwbELdajGTuNl+JEki2ImDex6Qj2bRNntJzwWaUv5ZmyeVznIgZfT7h2ugfEDWBbspA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5JLHdoPz2Fg47todw48ZtmO6wZ1gzywZdsl7yoybN8M=;
 b=E2wAJ0IaNyNlF9Hs3pFRZkeVWzPvD2lU7dw1SlYi4P5N6xaOYOPrX1gkK3Z4TbHxe8Y/aV+6i0U0g4qgYe2kFUA9vb7S7Q8E2Ap4U0/EKnD8v0bWW1CWroxNt8Kvp01whCjJUJCuF81JwKYTMv3V46UtTQyCNzcez+tksgGFbqB1nfBtTo4kaBGzR42+AP5VB6wzaoMkj0nulzU9fFAIvi6CDuRia7zL4DKHDRbHgNK64Q7uLgNDLM/YUrxtEn+MfTuDRaXHOCEYl6mRTOuGhWkCCpiRlvPdhSrSx7AmE5ODopWrwC2hzlt5oed5vwljkAEhSyct90skQ4DMb04cjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2173.namprd11.prod.outlook.com (2603:10b6:301:5a::7)
 by BN9PR11MB5435.namprd11.prod.outlook.com (2603:10b6:408:100::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Wed, 20 Jul
 2022 16:43:22 +0000
Received: from MWHPR1101MB2173.namprd11.prod.outlook.com
 ([fe80::b412:c858:da07:3d17]) by MWHPR1101MB2173.namprd11.prod.outlook.com
 ([fe80::b412:c858:da07:3d17%10]) with mapi id 15.20.5438.023; Wed, 20 Jul
 2022 16:43:22 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
Thread-Index: AQHYmtpnk7DvE0gMg0ieFLYQrAp45q2FCl0AgADsT7CAAJYCgIAA7B6Q
Date: Wed, 20 Jul 2022 16:43:22 +0000
Message-ID: <MWHPR1101MB217314BC0CC01C6BC1695763F88E9@MWHPR1101MB2173.namprd11.prod.outlook.com>
References: <20220718191212.166141-1-anusha.srivatsa@intel.com>
 <DM6PR11MB31775421CAF98B4F838C1E1ABA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <CY4PR1101MB2166F3B024A9965C1E420458F88F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <DM6PR11MB3177B55818550FAD5F03C817BA8E9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177B55818550FAD5F03C817BA8E9@DM6PR11MB3177.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: f923c0e4-bee6-4f94-d68a-08da6a6ef589
x-ms-traffictypediagnostic: BN9PR11MB5435:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OpecM+yCIYdmRLbTts1IGtTjOf8Dzk9+pWsOZK2DT1QBqWYYX5xfvYp+Fy/ViyqAWUkxaviwOORgxHobHN+dfIvUB1udqO0oe6iwPXuJIFlT8gGwdVN8sxn4eJv292NGazJX+qWnLPQMb3IL+/GOAgVfEGQJV4NQuS77f51H/bOHFJLlRxbs4emt+p+uzzPkZAgrf/cu5fY9aIWo60ESuXxAWiXRAznM89aSl4+ReT9uQ9FxnjxsORreuoMeRoUghG5A2uJyAzkASEwCrUMJHbZ1b5QXp6tjLKz6y80HHO+WP/YcJAv1sfJDXL+ksyqIrq7UT1f/k1IwrGbTFNF2d/eOmG/7v8B586WiTvjbVwRHQHrvQoqR/N9A+bzcvfOSd2jPaP26Dfc9p0wBcftuMKv2Mgs5wzztDADlVG2VH20fom/gYZfXza3O9ILKmPzST/VCgi0SI/X28z494Jn+nLEdGFLXR+jNq1dlFOFp5iA2d+JwwybOKSwFu/UT3VI0EnPS46b2QglqXzrpjxTAeMG1a/6CFijcgLPL9P6KAI9OPj5joSrSex5hm/yHhMTI3f5Ml/fYLwuxyfZTKgknumm425bHQ3wtmdENTB05k/flDy2IDLAmshsL2weQxjBafIWE7M0NtSYKmMr3nL6K1vEa2XGn+zK5bOglnNy/xuW9lkwy08qnxBcXvmBKO9fx5I/gsIv6QPmgMVXEy+9ZPC2hMIOhEFJfWJ0vqdzWDYMqQKtkrvw1+irghN1qUD9AqL6mMRoLg7JHzxjsBLNVRaIF9287cwqkF/dhDyxHeEj2+ruqtvGM+wj8Idts0Gcl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2173.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(136003)(346002)(396003)(376002)(52536014)(33656002)(8936002)(55016003)(82960400001)(5660300002)(110136005)(86362001)(2906002)(8676002)(66476007)(66556008)(76116006)(122000001)(38100700002)(71200400001)(66446008)(6506007)(7696005)(9686003)(316002)(26005)(53546011)(186003)(83380400001)(41300700001)(38070700005)(478600001)(64756008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zCI0OUCBPLtn94txB0641XusEPMsoaTMrsTXujBj/P4ibV9CevZ6CrnJL501?=
 =?us-ascii?Q?syBgPLBljxsMoH3mkYCjGkSmz+hqM5L3n3g6mr0ho87RahCPVKdAK73DMoOJ?=
 =?us-ascii?Q?yXsKPFBkmgMfZHi/gcIqjYEp7pW3Zi5ynDoc7vvf1/x/qFK+OC4st/F+kIBp?=
 =?us-ascii?Q?KGpJ0xB5BuqHHTZhig5/ByMJy2vTlGSkZUplEEV5TsQud357GMd5ME3NF4XH?=
 =?us-ascii?Q?teMVbzB8ZmrPzDDCwwtdkAOOxmpMQDKjwOMIvB91CiKRqkQEC6Z/YbPtiu1/?=
 =?us-ascii?Q?9PEtvA2vyeptZgLeDqjsJbfIlH0r5IyKskjCp4wpDfOC9Lnc1wECsDs5dfvz?=
 =?us-ascii?Q?ZHymeY7q8KwI8Z6Xv7gN84SEbdAFTOql+oUrhvrBK9jauOsxAA40Iu+cWK+I?=
 =?us-ascii?Q?uGE1FA0kkrk5Gs0qdcuF8kKC5QF+NbLBpTkhOod37XuB7YH0WcnQr17JO5fy?=
 =?us-ascii?Q?8lLfaiam7+fpC/5BikHU3jOJLyGBJ9kPqLRVx/wZ/sXVJR8torbnV8JlVDQk?=
 =?us-ascii?Q?jWRmcdnVUjNz2YcSIL7phgvGb9aUsNwOHdtezWz01KBcr294hm1Ey0ME5pyH?=
 =?us-ascii?Q?4HHcRtQs6UkWiCAUFnICi7GqSPmZ2blc4uHasYdOidHq3/mQHBv0s7vYYx6d?=
 =?us-ascii?Q?a8ZgNQ7cXMlIVW7+hE41TZXKp1L1lSopImpwMNtbI0om33503D14oxiFM9uq?=
 =?us-ascii?Q?qinrTvwz0aWWxc4tNRu/3Z68zR/JSMgbX0fxnF/SMtrtLzMmDLyFdmTo+vR6?=
 =?us-ascii?Q?ZYDhUqLoYoT8dfR/DVBVJkiK20sx00WGvgpXsWgFAgDywvQNjSBW95YgbQqg?=
 =?us-ascii?Q?1HJd4JVu+MvbohrmU+lnDZpP9zTlntwBJT6bzM+rPGJtaUjd+f3DEyy3zsC5?=
 =?us-ascii?Q?6oC/NCzuIwXjIMrgyN32OgE9Y2UckDz2WPd3IcrhUdVM7kC3lML98rV7yB1r?=
 =?us-ascii?Q?02eSszJJOzZL+1OWWwBSghiBusbKvaVfRxS/FeRPTmWKb6QolIt8lMMYadxw?=
 =?us-ascii?Q?Obk0OCEdmoEIvepkHWPrh7SfTfba6ZqKNdcqmiJRiKEHQ/RcF5cc/ttdTMrx?=
 =?us-ascii?Q?q9khbvumETjKMZgBv0k+EJ0O1ibbnW3lIyr6K6+6wH1Lzl2nKVkBOV52lLnB?=
 =?us-ascii?Q?EO++JSMa5eDWqhupCvD1aWdI8U122+b3QyZO7Wq2u214oRk70OvtCRMfI9IG?=
 =?us-ascii?Q?+3x5rhqUwP6BqyptEV1nFZt1EiPDHvmjiz6Q695uk4mdZ3ALrxzEBBLF+975?=
 =?us-ascii?Q?mCtobGv88p3XF0RiKA69QveLDzTH65QLTVI4WgNTyvcPZxa17EI6kDJ5yNmg?=
 =?us-ascii?Q?mv0+Wlr00xttF/m7cwuMA0y6Gc5f8ofH1j90WIroYdflPYl5GMqET1SFRBCx?=
 =?us-ascii?Q?3hVghRCLSl5+RZg/IhABz2xBprzRz3wGS7zPdESacjevZx1CbuqcycsuanjN?=
 =?us-ascii?Q?cs7OvWGMekKIXjZg02DkwzAhyiChfsT5bgwrKyk1sEPSsxPzh1gsrLAVlRl2?=
 =?us-ascii?Q?nagkd5zZz08XXHKp2Z0nQyDLyLCBiBnuhVngzp7yAricG/Y6+LGA4wkyznBe?=
 =?us-ascii?Q?QD/oxKcw8nvxHujOnEoX97Hu203FwrnBqFndBi57j7RLsewydsUWiG1nf8wl?=
 =?us-ascii?Q?Ow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2173.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f923c0e4-bee6-4f94-d68a-08da6a6ef589
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 16:43:22.4588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5uKyFUYsbCKJpd0ZXtQUjFncDPoxYCwyuB8NA6zT73LnUok7r2EX3MmS0AH7sSuyZ+IlzhwYTCz28O24zAzd8Qr3jshOGUjl5Lk+PjeJYVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5435
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Tuesday, July 19, 2022 7:34 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> intel_phy_is_combo()
>=20
> > > -----Original Message-----
> > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Sent: Monday, July 18, 2022 8:32 PM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> > > intel_phy_is_combo()
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > Behalf Of Anusha Srivatsa
> > > > Sent: Tuesday, July 19, 2022 12:42 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> > > > intel_phy_is_combo()
> > > >
> > > > No functional change. Cleanup the intel_phy_is_combo to accomodate
> > > > for cases where combo phy is not available.
> > > >
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
> > > >  1 file changed, 1 insertion(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index a0f84cbe974f..b69208cf9a5e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -2082,20 +2082,13 @@ bool intel_phy_is_combo(struct
> > > > drm_i915_private *dev_priv, enum phy phy)  {
> > > >  	if (phy =3D=3D PHY_NONE)
> > > >  		return false;
> > > > -	else if (IS_DG2(dev_priv))
> > > > -		/*
> > > > -		 * DG2 outputs labelled as "combo PHY" in the bspec use
> > > > -		 * SNPS PHYs with completely different programming,
> > > > -		 * hence we always return false here.
> > > > -		 */
> > > > -		return false;
> > > I feel it would be good to retain this. This is very well commented.
> > > In future upon adding something like DISPLAY_VER(dev_priv) >=3D 11,
> > > like the one done below can create confusion.
> >
> > What if I retain the comments with the code change?
> >
> Retaining this comment will do, but I feel this cleanup can be taken upon
> updating this with the future platforms. Other can comment over here.

We need this for MTL. Hence the cleanup :)

Anusha
> Thanks and Regards,
> Arun R Murthy
> --------------------
