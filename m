Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6484C426
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 05:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D2710E0C9;
	Wed,  7 Feb 2024 04:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AxDf4LIc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC9110E0D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 04:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707281619; x=1738817619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wyHeFJIHx8znT4bnsJmaeqjXc8cD8YjnyG13xgseNoo=;
 b=AxDf4LIcrEiRUcRQfEwfcSXM5WoQi/8Ivt/Vmaykiid5To9VqgbqX3gu
 Hda11eqWIpKS/24hEcjU+C/oA5oWttoXujw78e+/cs5aCIF/Ms0SeKtb5
 KyAWHKo/AHjaKutwShaXNgOFb7sLXfM0lBaVdgJBmYzhEhU5azLn54W3k
 fqvU3wTVXCb7w3vfyVI/99/O90LelP9oZx7zUoGbS1fIJSrUNPU8b5vVO
 e/iZ8uE9dyFzmlzFsgpuDZQROsQVFqHxt4qlPIA6wWZ2Ng3CeuFH1/2DJ
 FpMNM+gi5c00MkwX4cOwwBZLCZaz9zoq7wt+CAKRmnBTb1iIf5M2Dhqcn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="18422414"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="18422414"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 20:53:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5833932"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 20:53:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 20:53:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 20:53:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 20:53:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 20:53:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glFzbe++3XkOPaNi80uOXr4kKtGlr3e/fS9ZkTMlzhd4QN60QC9C/ixsuYidVPxoPRJOYEqreDuNMDppBoSp+PNF1r3I2ltQnEBL52kKRGpaO/26kQAShz7yDNPAIaA0X5rY1y8aYhempHElYUXu6Wd/46LvIRSvui65CyDEMmpkEo96c9qSNYz+a8PuF3zh8wNF8wQdkEuVgJyj0MazC3lHWZ5L9vF8HfKUwJPBa+Pd4TLgptrQcqYnEpkay/O0wOHkqb/aqO3VxF+JLKaFp5UHHIlNoSMGMGMxWaPAnd7AA/hy0IAq9b3/QapeG6Y5bNDoCHaoDTZDzKO0SOu1HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yPw5b25QUtVW++rmF9/BEYaZokIE6DUjE0TeEzkfrfw=;
 b=Qsbk61YiQOjjCNlNFAVIjD0PRIDzTlb4msMMQJE5eMJPfr61RL8GTF+4U5EsKid6BHSBcE9ojF0jATaLaTRi6tF75cTEc/aCckVcGqFKSptNfmYZhJU1Ms4tBUIdq82n6shCVfvNdEj6srq6Ha5VLL7Kux3+rzqHlUY6UVYZVkqECU3xKhjWTrNHKPyjBduSSY1DF0GfYUtoy7eFMz+QY0woGyBWqXZtOun0bMK9gn4kWU27vp1ld0yF6yv8FV7/iLv9jdnvno4PZrtmBYDQzizntwLKIWHiqc5thNVFXBXs3cKmdZD2mUXFp6RrPxvxS9TJqwXumclZCVXnWP7QIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB4816.namprd11.prod.outlook.com (2603:10b6:a03:2ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 04:53:34 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 04:53:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: RE: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Topic: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Index: AQHaWOtnHbs4/LtqAEeOiG/7Dqlos7D96VQAgABng6A=
Date: Wed, 7 Feb 2024 04:53:34 +0000
Message-ID: <IA0PR11MB7307449BB1462163CF4A3F31BA452@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-2-arun.r.murthy@intel.com>
 <408f570a3010b8fc7a9686c480628926ea796a88.camel@intel.com>
In-Reply-To: <408f570a3010b8fc7a9686c480628926ea796a88.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB4816:EE_
x-ms-office365-filtering-correlation-id: 901da4b8-49d5-41e2-8dec-08dc2798bd83
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8445ui3Uc+TA457EsOSUdPYDL27fWk4+3lD3SRaBm8HuLqnVePfAM6EZZC79JXFfgegCd94gUFPmYzGClowUn+A/cU+oQkSMaVNW74KjZ4l6Z6YUK0gEUvBaztFG0aedifoQBU0wKCr1XWYrkEfKkCWf8JxrsWdRL6m8PRDaVzy0pFIu85wPOH4cvttoSeBqzORqTsKjPuW9RPao0wcy0LKNFOS+VHYD+q2AHcBBB0RtnOa4m0eGH9g3dHtrIkcvmy2TwlL/roqXE3j/Z7xO9yIgyIa6IX/P+mKBcLHpJhwRozeZjLuXAtyyeQ4qmus2jZWj8IgiNNBwNMcZTzca4r9eKZ3s9Gxo6+Ujqn2nMuADSoPd5se7uqZHFDayrxBo9yFY0HyhQvfzx8S3rxpU38C1IUv978cwyhY7w1CUbftSmvGPhYWM1pUSPL3nuVcZqxm/awXjiguGOt4sAu7D5G0/wDxeR/MQeQXkeZqF7EFD6VeCEuJbU+5F/QjqnNjbY0PmfxXZTDpOGZYqyXNvqWyYQNu+UKI4DN3fmlLsFGiAeD7MmUO+saCy5KXGleNNPEjW5lR0dMyzlVqmy0lsURR92dKXlIZEDhZz6+Cw5Vg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(136003)(346002)(376002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(41300700001)(8676002)(8936002)(52536014)(4326008)(9686003)(86362001)(33656002)(107886003)(5660300002)(478600001)(6506007)(71200400001)(7696005)(53546011)(38070700009)(110136005)(66556008)(66446008)(64756008)(316002)(66946007)(66476007)(54906003)(76116006)(83380400001)(122000001)(82960400001)(55016003)(38100700002)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0/Oi5xcoBmdqzfFfMpS58AHcX5aPs13gO63S3HRyqKGODpaINsUWCvo9Pald?=
 =?us-ascii?Q?Hgr1EA1lqjPAwqirvjW4DzZeQSMdWk2bIUowhbDUadEQTd2NtVYqceobDO99?=
 =?us-ascii?Q?sx0emdIqbd1XwEQ6sYZxUJhKzPWYOp5C5gbn5K9T7avP+v5xhqghZWsJek5g?=
 =?us-ascii?Q?CDtC0DvtQL96x9uhzJwLSEw+xH0Y87tzpF1/ZZnIEvARnu465lkI2cNe0H3E?=
 =?us-ascii?Q?q2xElwg2EVVMzPqsLKnP4MYGgEHFE7Qb6Ds9GnRDmTXysi25QBX2nXdxOQc7?=
 =?us-ascii?Q?Ot0uzkT3yG9N3BFQ/kMgVMBJ0NlmUXpwaHnFSOdZ3dXvNduv+4DGCBTwWl4v?=
 =?us-ascii?Q?EH25EM6KLbwLa9s0xt7c4W6okfZ96kV0782zCE+HM2bnNZo3t1AUKF7LtWTS?=
 =?us-ascii?Q?8wpuhkWd/pVfuALaR1xgF54CcrP4BR+bAZqTzsFnz4vBa5KyOyY+nr02hHQ8?=
 =?us-ascii?Q?gXUmsLk3SQUExqA4AT2aCRHy3ftAMydvW1ojMKp0X42/w0Q5FJNbjZPeVzfn?=
 =?us-ascii?Q?qfya8wDeupJSRfTJounvmYNcdjKrmYmRnnp5rNVjClk/82cvSWoWRzPsIiF4?=
 =?us-ascii?Q?F/0ICSaf2cSVCh6aItgd3odd5K/wEiQ/yAFVoQoJrmJIWeg1aWN+h9AJp97B?=
 =?us-ascii?Q?7SEpSAINRsh58nmd/X/9EfFfCotkn9dQRQib3xTdZb8M5khwfgTbeyn0B4qk?=
 =?us-ascii?Q?xDXtsug2Oy7mv4E9ppGbrlGk00OyCg89BjLnIAnUJSOyhGuPcnl3i2d6kHEO?=
 =?us-ascii?Q?3+4+x2IDS7F3co60Ovd8xuSqs4cdky63Pexa8JEYEHUB0qvQnZJzUorpv56g?=
 =?us-ascii?Q?izV6WVYSyioQQ3xs1kL4BlYN1MJJc+ylWI6xUgUmFa8VJRc1pwU4psCm0YZi?=
 =?us-ascii?Q?qXCF0iUbB2nb6iMMbUpBVd8PRnSade18E9O26D0sOs3VAM9eeqFod07r3tu3?=
 =?us-ascii?Q?4PgB5P7XcST8rroRUrBSDjmuVe9F/HnT8JIlhC3oWaO900xTgsvE0AANHXm9?=
 =?us-ascii?Q?daMMuEaqfftJTGb+O/QnManSU7XooL63nslVC/fVxwYpDk1HjmVtlxb4ic9H?=
 =?us-ascii?Q?mnsNnTj/lotRdharqn0kzNjMMvxclwz0jrrsgetUpBoLWWBBtNzSXhFogWd+?=
 =?us-ascii?Q?EcskYhfqvxh2Sti+YhoLemAdqv8WBe9lRunKvO8MTQ1bKXGKkyKYdo13emVK?=
 =?us-ascii?Q?7FNji4MYkllCQbHrTsf7olu3tLx3evyYan4XLa3FlV19foKxEBEhF26k2SW5?=
 =?us-ascii?Q?Jhc1lYQP8JFPVTtsEEjr9Xk10GRpZCWl+FFL+aGvbAdw1NxD/4TegNfuZPE5?=
 =?us-ascii?Q?lEeQMV8dJOhRSfANZWfUaBNjQV1uouVW9WMCbJ8KnzTowN8oF82u3cK33h9I?=
 =?us-ascii?Q?nsMgOwa31J2IzkPuIr2sS559vPcpu0k6rT2RRLCoTJeWL9YrT5Ns2qcPzP6T?=
 =?us-ascii?Q?3VykvdDuOKCc9OppXvDDE65HUdf6iQGHXWrGkgj76LjnvAq1hF7/NKs/aseT?=
 =?us-ascii?Q?lfodVBqPQ5GD/WVsvu6JExP0g+IGHneYmvxAsPgiIInucrqFpNPlBOg304fq?=
 =?us-ascii?Q?VtB4zuf+KE02QZpaJPxKc/xWez5YkAn05JAqiH3JYPXbvm14Ttn2JCAWGWNU?=
 =?us-ascii?Q?Ydy+UwnvKC+XP+LQpM0GxPfMaHYKoP3C5M0U7Z9nhBU2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 901da4b8-49d5-41e2-8dec-08dc2798bd83
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 04:53:34.7569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w/oWthSJfG8aj+gzc9iyxvQj+u/EqFXFXH809URZ2OBR7hPdbP3MHe2YI/i9KMa0Mrbta01Jw0KViuMoN/yyJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4816
X-OriginatorOrg: intel.com
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
> From: Almahallawy, Khaled <khaled.almahallawy@intel.com>
> Sent: Wednesday, February 7, 2024 4:11 AM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Deak, Imre <imre.deak@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>
> Subject: Re: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
>=20
> On Tue, 2024-02-06 at 16:17 +0530, Arun R Murthy wrote:
> > Fallback mandates on DP link training failure. This patch just covers
> > the DP2.0 fallback sequence.
> >
> > TODO: Need to implement the DP1.4 fallback.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 92 ++++++++++++++++++++++-
> > --
> >  1 file changed, 82 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 10ec231acd98..82d354a6b0cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -104,6 +104,50 @@ static const u8 valid_dsc_bpp[] =3D {6, 8, 10, 12,
> > 15};
> >   */
> >  static const u8 valid_dsc_slicecount[] =3D {1, 2, 4};
> >
> > +/* DL Link Rates */
> > +#define UHBR20		2000000
> > +#define UHBR13P5	1350000
>=20
> Do we have 13.5G support?
> Plz check Specs:55726 Note 6
>=20
Long back had posted a patch to remove UHBR13.5(https://patchwork.freedeskt=
op.org/series/119555/), but was rejected. Hence added this.

Thanks and Regards,
Arun R Murthy
--------------------

> Thanks
> Khaled
>=20
> > +#define UHBR10		1000000
> > +#define HBR3		810000
> > +#define HBR2		540000
> > +#define HBR		270000
> > +#define RBR		162000
> > +
> > +/* DP Lane Count */
> > +#define LANE_COUNT_4	4
> > +#define LANE_COUNT_2	2
> > +#define LANE_COUNT_1	1
> > +
> > +/* DP2.0 fallback values */
> > +struct dp_fallback {
> > +	u32 link_rate;
> > +	u8 lane_count;
> > +};
> > +
> > +struct dp_fallback dp2dot0_fallback[] =3D {
> > +	{UHBR20, LANE_COUNT_4},
> > +	{UHBR13P5, LANE_COUNT_4},
> > +	{UHBR20, LANE_COUNT_2},
> > +	{UHBR10, LANE_COUNT_4},
> > +	{UHBR13P5, LANE_COUNT_2},
> > +	{HBR3, LANE_COUNT_4},
> > +	{UHBR20, LANE_COUNT_1},
> > +	{UHBR10, LANE_COUNT_2},
> > +	{HBR2, LANE_COUNT_4},
> > +	{UHBR13P5, LANE_COUNT_1},
> > +	{HBR3, LANE_COUNT_2},
> > +	{UHBR10, LANE_COUNT_1},
> > +	{HBR2, LANE_COUNT_2},
> > +	{HBR, LANE_COUNT_4},
> > +	{HBR3, LANE_COUNT_1},
> > +	{RBR, LANE_COUNT_4},
> > +	{HBR2, LANE_COUNT_1},
> > +	{HBR, LANE_COUNT_2},
> > +	{RBR, LANE_COUNT_2},
> > +	{HBR, LANE_COUNT_1},
> > +	{RBR, LANE_COUNT_1},
> > +};
> > +
> >  /**
> >   * intel_dp_is_edp - is the given port attached to an eDP panel
> > (either CPU or PCH)
> >   * @intel_dp: DP struct
> > @@ -299,6 +343,19 @@ static int intel_dp_common_len_rate_limit(const
> > struct intel_dp *intel_dp,
> >  				       intel_dp->num_common_rates, max_rate);
> }
> >
> > +static bool intel_dp_link_rate_supported(struct intel_dp *intel_dp,
> > u32 link_rate)
> > +{
> > +	u8 i;
> > +
> > +	for (i =3D 0; i < ARRAY_SIZE(intel_dp->common_rates); i++) {
> > +		if (intel_dp->common_rates[i] =3D=3D link_rate)
> > +			return true;
> > +		else
> > +			continue;
> > +	}
> > +	return false;
> > +}
> > +
> >  static int intel_dp_common_rate(struct intel_dp *intel_dp, int
> > index)
> >  {
> >  	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> > @@ -671,15 +728,6 @@ int
> > intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  	int index;
> >
> > -	/*
> > -	 * TODO: Enable fallback on MST links once MST link compute can
> > handle
> > -	 * the fallback params.
> > -	 */
> > -	if (intel_dp->is_mst) {
> > -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > -		return -1;
> > -	}
> > -
> >  	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> >  		drm_dbg_kms(&i915->drm,
> >  			    "Retrying Link training for eDP with max
> parameters\n"); @@
> > -687,6 +735,31 @@ int intel_dp_get_link_train_fallback_values(struct
> > intel_dp *intel_dp,
> >  		return 0;
> >  	}
> >
> > +	/* DP fallback values */
> > +	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> > DP_CAP_ANSI_128B132B) {
> > +		for(index =3D 0; index < ARRAY_SIZE(dp2dot0_fallback);
> > index++) {
> > +			if (link_rate =3D=3D
> > dp2dot0_fallback[index].link_rate &&
> > +				lane_count =3D=3D
> > dp2dot0_fallback[index].lane_count) {
> > +				for(index +=3D 1; index <
> > ARRAY_SIZE(dp2dot0_fallback); index++) {
> > +					if
> > (intel_dp_link_rate_supported(intel_dp,
> > +							dp2dot0_fallbac
> > k[index].link_rate)) {
> > +						intel_dp_set_link_param
> > s(intel_dp,
> > +								      d
> > p2dot0_fallback[index].link_rate,
> > +								      d
> > p2dot0_fallback[index].lane_count);
> > +						drm_dbg_kms(&i915->drm,
> > +							    "Retrying
> > Link training with link rate %d and lane count %d\n",
> > +							    dp2dot0_fal
> > lback[index].link_rate,
> > +							    dp2dot0_fal
> > lback[index].lane_count);
> > +						return 0;
> > +					}
> > +				}
> > +			}
> > +		}
> > +		/* Report failure and fail link training */
> > +		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > +		return -1;
> > +	}
> > +
> >  	index =3D intel_dp_rate_index(intel_dp->common_rates,
> >  				    intel_dp->num_common_rates,
> >  				    link_rate);
> > @@ -716,7 +789,6 @@ int
> > intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> >  		return -1;
> >  	}
> > -
> >  	return 0;
> >  }
> >
