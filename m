Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5C07DA186
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 21:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A605610EA3A;
	Fri, 27 Oct 2023 19:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC6410EA3A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 19:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698436776; x=1729972776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hqdEJ7ji4qgNetFEk5DtBMdQHZQYhGjq9lpSLgS1gmI=;
 b=jisssDLr2x1oEeEDTUKROO+CM45HR0C7n2DvodjGiVyZ5OFZyNhQ9rJn
 iE07Pp93wR7JOmeNnIeeIXDCq/g2xBomQaXiujo2c5nmrOCgzEIhrZplO
 K3yioJvQwDEBM56qJ7XAYTtLPkb1lnV/y5Kwxv8E06m8XcRxpHYgR5HNJ
 5U+s7ylUj90UZQ14bfnnmqSKCP+ZCQnpp+02e8VDXYexRM36HWibkh4eF
 YTZ2Yv6JKz+xZTaok9NiFuWqap9pNY1PoAlVXtnIKoL5j/fX3qpOlCN/i
 tXiEDy6a2U0MlxskPBLARwJ0a89ZKK3C9vJSsva7OawiBKrb7xLz8cqSU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="452085093"
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; d="scan'208";a="452085093"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 12:59:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; 
   d="scan'208";a="884597"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 12:58:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 12:59:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 12:59:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 12:59:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cEkxwO/BoefikecApqZI9+pR3zxmah3keDKNLkuZ7BVn07er3a+E185D6voXF4nKdFlCPIacV0WdcOweuHmK2Mr9tVN+Lee03H3mabLjQLjttIBCOiujcgZLzonapJP39IZnETqG9G3AkQJyZrVBgO0Q8IxXm4SAm93Brl7ZBz7Dvr7UGOfMf/1PJOpeihgj8AGBfM5G/xRplTmt+Gwqq+blT4osvp//7xEJmQWZzbhsxEo6f3wV8SPc1a02NjpJWe2R/aKYuKP/hqDNB2zaKa7ZVM+yJhGBDMOvZY7R3Xmj4qs2vDgAeJMbDrNO2xWhlueclAr5HgVMWzw1UsA07w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0IURY+N2sMD8H1AFdoGhThhhIslJs25LRO5ObHnuUtA=;
 b=CnvCQct0BIB9C24MynRE+H947lKun8JK/+J1j+FwTfTHdNX7HsBJvUoXEjXy6LVX3IhLhaW2BlxkRPaMTMkQkq9fhSBJfNvjAMnIQYopet8HetuM4WjzKtbZFphLLorWOjzMEZuMeNWe+H0eiMRLuakFoyKPqgpphFTX0W0xIb0t9ng+JeSAEMpQpFk3t+6B4MmLGMEtEYiChkUXX5vpEiAIhcVB0XlrJEk9WhP4kJwFPG7NcFormg+wrINVK9mfGoLkjDeXY7D+eha8Axk4sowi5bENvP58R36/kWq5QngDeXjklAXTyCLwO5yNo54g5wU0xSKlfTMlSMp6He4zMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SA1PR11MB7061.namprd11.prod.outlook.com (2603:10b6:806:2ba::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Fri, 27 Oct
 2023 19:59:34 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::6a59:90f6:470c:d368]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::6a59:90f6:470c:d368%5]) with mapi id 15.20.6933.022; Fri, 27 Oct 2023
 19:59:33 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add Wa_14019821291
Thread-Index: AQHaBy8uc/OyRmetG0OuWEg/Wd4NK7BazriAgANCdRA=
Date: Fri, 27 Oct 2023 19:59:33 +0000
Message-ID: <IA1PR11MB62663AA04830389F7FF08E97E2DCA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20231025103646.3315818-1-dnyaneshwar.bhadane@intel.com>
 <20231025181033.GJ1327160@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20231025181033.GJ1327160@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SA1PR11MB7061:EE_
x-ms-office365-filtering-correlation-id: 6eaae205-3701-44c3-f9b6-08dbd7273d81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sCYhkC5c+5nUPfvzu2oY/AZiHJZe/A1prr+ktnQ3vJ93jrG8VCuooksBWgLN1/ozbA3XeolrnSRuIadAWzHR246k18BHw6x+8PCf91vyRw9TBg+yyqwU/YZTVqVJeoOlrB6R8fk5B61bOMP1BbU2sS7FtB6KOUfvW21JOtm2NjsjhqFHpUavCLpT/gARLCymqFpBfm/kMTSDX6bDc0zXalttNIrxf1qmszYLBDjonZdud+g2bODViSHWO94kgeH5Ho8PeTFcGIOE0iHrE7OMjatLgD4WcEF+bKjg3CKaDp9fPO0LnM3sY7kvdb2sIQgsv4xqQKRv+P4EUON+rl9JJ+TAs8kN6cc9KoBw0UpV8LtdFrTMTerdW1eMZDvoeTIf0Dzlsl++2AvSYUtrKkOIqQUDdYwbo8QoDQ/CgHBZT1oV6qoJtGMAt/0rxRxHMkcdDWsKyiqkGKj6xRFRxbntxzOw9f/r8hUuEziCJvimvy1NmlleSX3ZJZvnfaJcatjsnwylm8vbtCk91ayy93THpaoOdF8y3fYtI4ky8Qnyw+DLLp3rSTQMA+wmDq/0zqlV0Vyc8DPacGpNYnhQpthyqf/Cv+RQVnIRt4o6zELcHHLgr6makTYtAxqe9mb1Co5K
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(366004)(376002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(86362001)(33656002)(55016003)(71200400001)(53546011)(7696005)(6506007)(2906002)(478600001)(55236004)(26005)(83380400001)(9686003)(5660300002)(316002)(52536014)(41300700001)(6862004)(8676002)(4326008)(8936002)(38070700009)(64756008)(66446008)(66476007)(6636002)(66556008)(66946007)(76116006)(82960400001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yv4TyJVWxJuBAOUFbXT+mcNWMggRTNPhoOtZTV14EJAxNpdkas98q3jwICqe?=
 =?us-ascii?Q?5Bek20CA5sKBMy3wZau1bvSHymN7eXLd31OmKXldurK46JaOAbMA0WPiHn8L?=
 =?us-ascii?Q?7UvpeSkJAQugKslxjCNy0kRL1dM3aMb9kKUgD2Y5wBqAixQImda5FjJ7zHhc?=
 =?us-ascii?Q?Ginr8t5N0+pnhbJPFVoLL7rEcsqFp7ZwwOZIv4EV+aPz4xOsmhdAGNM5K5zP?=
 =?us-ascii?Q?gFORuHJ3ipOd1m0KsuVUNJ08LCpOOeUeyYSkly38kcESTKovBq8ysVfTXJ7Y?=
 =?us-ascii?Q?02eZngVA3X/dk5ufTor8nKYxhX3DefIcTVmt4c+c5avmDgi6a1f80bAsEMZQ?=
 =?us-ascii?Q?3OQZEx1y5oDOlI7VOg6jSWJeXCfsQEgF/XQ6HIzqsiqB3yZ5iGcqO7fePvyd?=
 =?us-ascii?Q?8nM0KcxOjrvaNGs46qgKJzEkR2B70jJB3vi+PbsC+n/ixzZgVLWZxy6GUsXB?=
 =?us-ascii?Q?IbyHMwA36ylSWeVWY8SYALAY8SV3lh3/AzpeMtYh5CeYptuVYsKhDDv8OE7H?=
 =?us-ascii?Q?VWRvNX+GXoqGKDdpWzRL5jzmWyhYjnt9VNz+IvjlrwZjbCvHKSjqi5ndjWSP?=
 =?us-ascii?Q?hK9GcJ1eQvFrfBK3M+0fUSpxfkQSSXXmFoX8+v3uwWs0Iypu3Q1tCv1bFqYq?=
 =?us-ascii?Q?U/33NsT7mtUtIl0+f/CpQTC6U/48SCg2SUvrBLsiJE4/Qw2ShKeuQ1LFR+P5?=
 =?us-ascii?Q?tX3aWvOp1FqYo/rCTP9vPKYSHqPbTDo++tNtttDk7PgKfRyt+1b0PzKnkPVk?=
 =?us-ascii?Q?tFteBGFyaWrxcJAX4hFBoSCtZpKsf4jREoo6khjGKDBUbWQ0UdItGsPnj47D?=
 =?us-ascii?Q?tAf+IkOiq51wwYGEdQ/80SvCcNXKC4kXcCa5zmiEKBC3LW5hnrJYtYTqeZjF?=
 =?us-ascii?Q?Xn7ylDuJDY0JRA7ogdz9/stNUs5Dpn23d+zmY17aN93Uw4sbBl+bzjkkxeHd?=
 =?us-ascii?Q?i0xoGUEvrIrEnvZjWf3486n/Y3000CB9i0AqCpQSr3oOfYEiKCeDNAk8zxap?=
 =?us-ascii?Q?KlPjPhtv5L8XCzTjQcMK3EyNxzL/DHDRb2QrrBufGWUrJ5bhb5o5amjhq0PP?=
 =?us-ascii?Q?p3Ym6rb2l0N7/XuNrBRVmh/KrI1Zgd+2byIljE4+HXJ4IIc7yASSaZkxl4dJ?=
 =?us-ascii?Q?aSRANEYmNokpF5zYtU3rUTAbcJo3XYXw8H2JSXixn0lvR+kj4NaQu39F+zyq?=
 =?us-ascii?Q?lFEy5O+nEIebY8keS+wg9JYKmtmA4mVOrhyof1Bzi+KDQv0GThjnb1agKzn4?=
 =?us-ascii?Q?fOf3PI00aFDZjNZvm0ek9liutZ2Z3btdI12H14+E17y59W1Eat6/ls2aj4e9?=
 =?us-ascii?Q?0rwq4l99p5+Pd9A6MxMRQuQibkz1KrqoXZByIWVwmXoGrtWG1wnvycA1yzY6?=
 =?us-ascii?Q?9evEiJcxTbAt6ezv8ntePAWz3FAQe6w8PPzOikDowlmAuWgJkSbDDQlDBLTc?=
 =?us-ascii?Q?nHCfR6ud9tDhBTcmOdrl0Pg1P8Bgu9fXs2Q+Mt4zqZr2pzzXs9pLvIry6neC?=
 =?us-ascii?Q?ZOJwJjfF5LRuNTz32618mqn9/0CXKcYfLReWnhv0DiSZYnB8DEcoQqJTcvCY?=
 =?us-ascii?Q?TD7G2u8/V9jTaKOqRlMH2GQWrmtqZxKonVEeMDTZPl2ZMAmsK9VNQR/UzGf7?=
 =?us-ascii?Q?BA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eaae205-3701-44c3-f9b6-08dbd7273d81
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2023 19:59:33.8233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5/38puqMJ8PUK/CoTLAc6+k4MGo4/8d4hH+rwwQ+wbtxW947ddWKkSAcTyFMtz0nGAMEAtJktY5PPY3ZKdJr6zQ4s56YnSePkQjlOyURuA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7061
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add Wa_14019821291
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, October 25, 2023 11:41 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add Wa_14019821291
>=20
> On Wed, Oct 25, 2023 at 04:06:46PM +0530, Dnyaneshwar Bhadane wrote:
> > This workaround is primarily implemented by the BIOS.  However if the
> > BIOS applies the workaround it will reserve a small piece of our DSM
> > (which should be at the top, right below the WOPCM); we just need to
> > keep that region reserved so that nothing else attempts to re-use it.
> >
> > v2: Declare regs in intel_gt_regs.h (Matt Roper)
> >
> > v3: Shift WA implementation before calculation of *base (Matt Roper)
> >
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 17 +++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h    |  3 +++
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > index 1a766d8e7cce..192c9a333c0a 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > @@ -404,6 +404,23 @@ static void icl_get_stolen_reserved(struct
> drm_i915_private *i915,
> >  		MISSING_CASE(reg_val &
> GEN8_STOLEN_RESERVED_SIZE_MASK);
> >  	}
> >
> > +	/* Wa_14019821291 */
> > +	if (MEDIA_VER_FULL(i915) =3D=3D IP_VER(13, 0)) {
> > +		/*
> > +		 * This workaround is primarily implemented by the BIOS.  We
> > +		 * just need to figure out whether the BIOS has applied the
> > +		 * workaround (meaning the programmed address falls within
> > +		 * the DSM) and, if so, reserve that part of the DSM to
> > +		 * prevent accidental reuse.  The DSM location should be just
> > +		 * below the WOPCM.
> > +		 */
> > +		u64 gscpsmi_base =3D intel_uncore_read64_2x32(uncore,
> > +
> MTL_GSCPSMI_BASEADDR_LSB,
> > +
> MTL_GSCPSMI_BASEADDR_MSB);
>=20
> I overlooked it while reviewing the previous revisions, but I think we're=
 mixing
> up which regions size/base refer to.  Basically the layout of the overall=
 DSM
> stolen memory area is:
>=20
>  [[  usable DSM area  ][ GSCPSMI WA area ][ WOPCM ]]
>  ^                                                 ^
>  |                                                 |
>  DSM base                                    DSM end
>=20
> In i915 we have a resource tracking the DSM as a whole, and then also
> another resource tracking the "reserved" subregion of the DSM.  Your patc=
h is
> trying to incorporate the gscpsmi workaround area into the reserved
> subregion:
>=20
>  [  usable DSM area  ][[ GSCPSMI WA area ][ WOPCM ]]
>                       ^                            ^
>                       |                            |
>                       reserved base     reserved end
>=20
> So regarding the first condition here:
>=20
> > +		if (gscpsmi_base >=3D *base && gscpsmi_base < *base + *size)
>=20
> I don't think this is checking the right thing.  You want to see whether =
the
> gscpsmi base address falls somewhere within within the DSM as a whole,
> whereas the base/size you're comparing against above are the preliminary
> bounds for the reserved area.  Assuming the gscpsmi address does fall
> somewhere within the DSM area, then we can pretty much assume that the
> BIOS set things up properly and the GSCPSMI workaround area is immediatel=
y
> before the WOPCM.  I.e., the gscpsmi_base should become the new start of
> the reserved region.
>=20
> So what you really want is a condition like:
>=20
>         if (gscpsmi_base >=3D i915->dsm.stolen.start &&
>             gscpsmi_base < i915->dsm.stolen.end)
>=20
> to see if it falls somewhere within the entire DSM area.  If it does, the=
n
> everything from gscpsmi_base to the end of the DSM can be considered to b=
e
> the reserved area, and we don't even need to look at the value in
> GEN6_STOLEN_RESERVED to find the WOPCM size.
>=20
> So maybe the best thing to do is move this condition to the very top of t=
he
> function before we do anything else:
>=20
>         if (gscpsmi_base >=3D i915->dsm.stolen.start &&
>             gscpsmi_base < i915->dsm.stolen.end) {
>                 *base =3D gscpsmi_base;
>                 *size =3D i915->dsm.stolen.end - gscpsmi_base;
>                 return;
>         }
>=20
> Then if the GSCPSMI workaround is not in effect we fall back to reading t=
he
> WOPCM size from the register and use that to calculate the reserved regio=
n
> base.
>=20
> This is a bit different from how things work in my Xe patch because Xe is=
n't
> tracking the reserved region of the DSM, but rather the usable region, so=
 the
> logic is somewhat the inverse of what this i915 function needs.
>=20
>=20
> Matt

Thank you, Matt, for the wonderful explanation.
 I will address these changes in next(V4) revision.=20

Regards Dnyaneshwar

>=20
> > +			*size =3D gscpsmi_base - *base;
> > +	}
> > +
> >  	if (HAS_LMEMBAR_SMEM_STOLEN(i915))
> >  		/* the base is initialized to stolen top so subtract size to get
> base */
> >  		*base -=3D *size;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index eecd0a87a647..9de41703fae5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -537,6 +537,9 @@
> >  #define XEHP_SQCM				MCR_REG(0x8724)
> >  #define   EN_32B_ACCESS				REG_BIT(30)
> >
> > +#define MTL_GSCPSMI_BASEADDR_LSB		_MMIO(0x880c)
> > +#define MTL_GSCPSMI_BASEADDR_MSB		_MMIO(0x8810)
> > +
> >  #define HSW_IDICR				_MMIO(0x9008)
> >  #define   IDIHASHMSK(x)				(((x) & 0x3f) << 16)
> >
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
