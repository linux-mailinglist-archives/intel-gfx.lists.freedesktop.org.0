Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB25736BDE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 14:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0676A10E184;
	Tue, 20 Jun 2023 12:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBD410E185
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 12:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687263932; x=1718799932;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9b8dETZ+D4e2kGd7xQ0h7jdb7xpJUU6q2l2BnHX5OBA=;
 b=kfHaBW8HqHriT1fXOIOGzG3pojKewb6Av+OIhkCyPTqWvxAK4l3N5pzf
 Yg4NO569C1LsdiRj3KJaBh9asz0W1y1dhRh96ohCkGXbUhVaiXBMV3c99
 MXgp184JgLt8YYeruehUz0wNP8Z4IvQGrcZ6l9mdYJztb+B6vJzpT7hYL
 aGAyoal43ELaNkD2MO620q5KdzboSYgl13sUyqz5oPMqWCmOtCHkOChHJ
 z9z65LpEJgc7iM0Kt+8JpgzI3dTXq8ayRstOwAr2wIdJwCTMUlAPh72HR
 1v5Q7RmNJHZ0fdMETJbw7kUKsNbTr4Bq8Mr0n4wDAU326ie6F5v2YKJZG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="425799735"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="425799735"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 05:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="826981701"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="826981701"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2023 05:25:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 05:25:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 05:25:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 05:25:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 05:25:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FLpiKVZQP7vgzO5A5IoSHA4v0BVorAJvAxRMbUE2DLy41VVsE66r+xoeecQ4nKi4susI26MAxbhzJ8qzezkZnM/hVu2oSoxzXWP69QXXrmOZtlcIgcOY1azBcOz3K1rXf2VEKMMc+Npbwkn2kGYJwCCPzvtBvHe1lnw6UziQr47aiz6Xp5xvmmfk7/exkifTpmmIQwWnj2LnYhl5Znm7D1px49iLrUdRqfy3Y8tlUDTOXcmoLYHo17ZZxVUHdUDwWEkCoMIofN6s7Y8WJ3h2+R/OHQt3srOheLRuI5ZcR3gvqAWVszcejD7zlbZgolWnjzEHVL/o/8PT2CeEwAPyUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ToujbJfU1VBXTjfdeAJtE3z844LdfOGCbnFCoCJbE2U=;
 b=CpuDS8JEC0SCHafXNQ3Sh1gTi2tS+ZUMuHJd8c7odTbo02qO4WI3YKynRvUCuaFNaAemHbPOy+xOv8yNnrzVAbANrZKxwqSwGKghf+fPSxlDBgqECMaNl5smnk6B0syqNGrLCVAcTZuvdeJYc+2CrLc1W4XhKA3cqbmHCJUwgbC+tpWYuxVx49QI3Z1ohNRltD/UAdI4NEdh8angWdN6yfNYbwIGOVeRKVWL7BdSRu2bwC7YWhVXcZaHdpXTIOk8ELTSf4r0ocy3Rg8I9rs3cEuX8/omoZ88s/OveZuXRyEdveszIJ4F+c+3iCYwSlxN6IQESx5OKMG9jr0RtcMh5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH3PR11MB7250.namprd11.prod.outlook.com (2603:10b6:610:149::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 12:25:28 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6521.020; Tue, 20 Jun 2023
 12:25:28 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
 failure for DP2.0
Thread-Index: AQHZo0wI2waQYUafAE+ivFixeZsKd6+Th6SAgAAUxhA=
Date: Tue, 20 Jun 2023 12:25:27 +0000
Message-ID: <DM6PR11MB31774E858AF09B7771DFC52BBA5CA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230620074400.1054530-1-arun.r.murthy@intel.com>
 <SN7PR11MB6750BD50E996C01D076A3511E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750BD50E996C01D076A3511E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CH3PR11MB7250:EE_
x-ms-office365-filtering-correlation-id: ac9178d6-6ab9-442e-cf8e-08db71896e66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bAtyBbGvIkbjLfkPtVqgwDMcr37sucyDr+E789bx4cyVu5C74Z8ecY5tUvB6D2Lp2XofNc1Fb5qIk13dwarJHHDcQoV/81dthRvsKB91qplyFFzyZRK+WLdBF2SHWojgrpgcDyNZjQBD7pt7R6lXVWHgdnhYzmpBPqDJpreZFce5F2cIU1rINgFh0RAiEA6bRG8vLFbdhY3S+HT8T3pvAIjtJ0isYYpJhF5ODLPJLGbwrrr+lCJyTZhQDsWEu1/9NQwXZa9K7Qu1aYyscC/sbuW5BlDpueDLgrPMoQQJN8VR+y6oWPtdW1RAkeemcuzbJ8yUSP/BfatcDAx4LiEQgqtK8ezXz4t1d/T3t/iCnjl5DRc5eVkU3BpAzbHKjdH1ze0EgcAW82vZulCh2CVQpelcNEhP2ZyM14Tv0Aouns6shn8GPIc437nKaGFiTZX91eXSwF3yU82sImzSt313vBfi0cFCd0h4ysPY32t4McheKiV5My4Q7trapkoIbxHk2/BMoh8XQ1Pa80ud7o3w3CUCsLTqg+E/D5oqvBzSg/HsF2yC/T1gCKu4/PG+GWWLZwTN9tztvT1kOF2RfLeikVNAqgrSzjMDS6yYLzRsS6mIwo7yfso+pokIvis7v9Pj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(376002)(396003)(366004)(346002)(451199021)(76116006)(66946007)(64756008)(66556008)(66476007)(66446008)(9686003)(122000001)(38100700002)(82960400001)(86362001)(55236004)(53546011)(6506007)(38070700005)(26005)(186003)(83380400001)(478600001)(33656002)(7696005)(110136005)(71200400001)(55016003)(2906002)(41300700001)(52536014)(5660300002)(8936002)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6Cn3pifQNDO1PjYFO5X6zwG3u4JX/8JsWk7a3d1yNyNP/P+fwQtme65jn75X?=
 =?us-ascii?Q?05OA1Wv2xAQEcuj3FMKrf0KSBby5P5fwytvXoYR2jRbCfzV2HeNQKOgbnssm?=
 =?us-ascii?Q?MbwjI7ERKbyqAFdNmnuAvnJKaQ/gMyHJZnre0GRFuxPuvf1SwefzEE+d815C?=
 =?us-ascii?Q?dWgzlEMLItahoVYeAhr2WM8p1wzvBvTIUz9IaMy8hci1F1NuPlUP9lt5geN7?=
 =?us-ascii?Q?RiEE9tDLaHwdziIJvsE4529/SJhj9od637tO+hm61ogyDsEM8MMMchaKnFfk?=
 =?us-ascii?Q?oyRNa97Npk4lh0eOfqDdwLn9XMGwVOtY+/gtjV6DFhLyZC1Twcj2YGmO0Mrk?=
 =?us-ascii?Q?IYIp2qAUKTG7++Ctzo+TkcxnHz0JgLCjUTH3o/JOEY3RNFdwqe2v662nsTVY?=
 =?us-ascii?Q?cQe0jPIZbDZVp9sJAtMhtO5PPOnXDS7WTUJbGsPdMK8MyyonQRAzTSMvprAO?=
 =?us-ascii?Q?pdqyrsxzpZNfFbTrqYF9d9Bo2rEpzlqg/3yDlm8dy4x0RQRNNFbPgDMeM4AY?=
 =?us-ascii?Q?AjySd7eGya+wEnBPlNzyuoI2hi4xpKOz8Q+HZK32qq67wdrmwJAMs9akCcZB?=
 =?us-ascii?Q?RoMPv0lEnFUcMs8aB8/un2/z1DMoL76kc/usAH6B2Oum49ckWdobzMaRC39w?=
 =?us-ascii?Q?9oulUuY2GJCKCAIFNpl/Cag+E8N8li7pPVil/6zg5CTa40PbS4pnSc1zUg5K?=
 =?us-ascii?Q?nv1eOcypO1Pm+PfqEkYR5Hi5SL68D+GjWxai10CvRz0S+Jb3MuthVC9vFXV4?=
 =?us-ascii?Q?5TXJl7r8Vckk0mXkkk7JctHl8d39s07KcxB+jQTUIpOiXgxvYrj5y5ioTRyr?=
 =?us-ascii?Q?RT6Mvp/ezaLZJAztXrmI+DqRxmKwc1YQQS7w2CZuXvMFeMjbjWOeYPWrceem?=
 =?us-ascii?Q?uUiug1ZI1CmNthAHP0K+RnLnpt6TdScP3+Jq0O5eB/JkGQ4wwYLXpmSWgDjj?=
 =?us-ascii?Q?3uvs4qgJncmVj+mN2iOYifI8MMq2OMJWSWgnUP9zLFogerWntfwlVDf7JA8e?=
 =?us-ascii?Q?n3ENt89tXgq+oHWBMl876pBK/fCNhP1ku0vOHZ9sKGZCgKrtqTn7aPmndlzP?=
 =?us-ascii?Q?P33iKFxMaciGQUPmNo1vhbCmoPzjE5+8834K/e6fj1JMyPQFI7Tj9XGx9dEP?=
 =?us-ascii?Q?pra+X1JMeBVpI7jlJYoP+YoHFFX2Bo9cp1N3OQRVtVsHqyyPfEsW05RO1Wsf?=
 =?us-ascii?Q?twqqTt5IJFdaCWN8g8FFbntqz4MFQq+HXftqNOI6UIpjrTMxHT9eAHmpRxnN?=
 =?us-ascii?Q?MJb0K9Ps44xP3xDfQiHPqFssauAngmx2AKPw8fVKgFkVYfpr0jySozytDqPu?=
 =?us-ascii?Q?4+wFhPHbzgnsmG/oKpH4o9PJRpDoAqpz4J4TBZihUYjt6kWIYsd0b4nQJCUT?=
 =?us-ascii?Q?3yPHH1KBIG1OmhnogLQnb1fNPMO3mX3hPNjlZ9dk+zsRiQU3mifKl+u0GkQQ?=
 =?us-ascii?Q?EForyxYS0qPDnBfbAAXhY9PebPHwk0YSb2UleeAfz5SGBityEZsY4g/PoPHI?=
 =?us-ascii?Q?5CbvflrJMQTk+1Ab8mkX+z7SyziUNTO2g4HlsZygEtyOPUrVpgBN4sHB5vAw?=
 =?us-ascii?Q?IL1dCjGjbWJb8V37cm4aTePc6uaFVrWS+1wkAGVF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac9178d6-6ab9-442e-cf8e-08db71896e66
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 12:25:27.9378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bFuHakS1PhQ4FdEwxnZdGIAZpPkULyU/oZHT7XfYksCQxhLoj6Ov7kMa6ln6JLNZDBHP0E9J0PAhvlY6hxuR8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7250
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
 failure for DP2.0
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, June 20, 2023 4:35 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
> failure for DP2.0
>=20
> > For DP2.0 as per the Spec on LT failure we need to reduce the lane
> > count if the lane count is not equal to 1. If lane count is 1 then
> > need to retry with reducing the link rate.
>=20
> Maybe adding the section where one can refer this in DP 2.0 spec can help=
.
>=20
Ok Sure!

> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 54ddc953e5bc..2b12ca45596d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -657,8 +657,20 @@ int
> > intel_dp_get_link_train_fallback_values(struct
> > intel_dp *intel_dp,
> >  				    "Retrying Link training for eDP with same
> parameters\n");
> >  			return 0;
> >  		}
> > -		intel_dp->max_link_rate =3D intel_dp_common_rate(intel_dp,
> > index - 1);
> > -		intel_dp->max_link_lane_count =3D lane_count;
>=20
> NIT: Can we add a small comment here on what is being done.
>=20
Comments are added below as to what each if condition is doing or is it som=
ething different that you are referring to?

> > +		if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> > DP_CAP_ANSI_128B132B) {
> > +			if (lane_count > 1) {
> > +				/* Reduce the lane count */
> > +				intel_dp->max_link_lane_count =3D lane_count
> > >> 1;
> > +				intel_dp->max_link_rate =3D
> > intel_dp_common_rate(intel_dp, index);
> > +			} else {
> > +				/* Reduce the link rate */
> > +				intel_dp->max_link_rate =3D
> > intel_dp_common_rate(intel_dp, index - 1);
> > +				intel_dp->max_link_lane_count =3D
> > intel_dp_max_common_lane_count(intel_dp);
> > +			}
> > +		} else {
> > +			intel_dp->max_link_rate =3D
> > intel_dp_common_rate(intel_dp, index - 1);
> > +			intel_dp->max_link_lane_count =3D lane_count;
> > +		}
>=20
> Also I see a little issue here so previously what used to happen was we
> reduced the Link rate first and once we were at the lowest only then proc=
eed
> to reduce the lane count so has this been reversed in DP2.0 spec.
>=20
Yes here we reduce the lane count until 1 and then reduce the link rate.
Ref: Table 3-31 of DP2.1 Spec

Thanks and Regards,
Arun R Murthy
--------------------
> Regards,
> Suraj Kandpal
>=20
> >  	} else if (lane_count > 1) {
> >  		if (intel_dp_is_edp(intel_dp) &&
> >  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > @@ -675,6 +687,10 @@ int
> > intel_dp_get_link_train_fallback_values(struct
> > intel_dp *intel_dp,
> >  		return -1;
> >  	}
> >
> > +	drm_dbg_kms(&i915->drm,
> > +		    "Retrying Link training with link rate %d and lane count
> > %d\n",
> > +		    intel_dp->max_link_rate, intel_dp->max_link_lane_count);
> > +
> >  	return 0;
> >  }
> >
> > --
> > 2.25.1

