Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C17739678
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 06:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5988B10E07E;
	Thu, 22 Jun 2023 04:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C6410E07E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 04:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687409094; x=1718945094;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VFqieEGdrg52xrtaT9K9S5g88q2yGvZUVlH7KYqKz1c=;
 b=aLOKGMpR7G/PmnPIHck8W8eNRaqgdc96BuiupvJj+hJCQVRQPvopnl3r
 69VqjYoepYiI4irBgGRn0HIiSLMWpZLwR9s5Udu7UBmBqeHEgds09bz1F
 J1R18KD+5VQ1Ljv8qp4BzKLmTy9rCsDFJX7m/wtcuXBOU3p8Ty84Ixr3d
 OXaR4Kcu78Yk595AI9NASIEwXqdljWSuMWcE6fwsIZ9jRq5WHR4PM/IkF
 6Tnc5+ph8k7v9hScmH/3zMSa+PTYADYVLM5HQnylO4jXZFeWMueHOT0TE
 v61a/ovvotYwHFXeazKGrQKOw5QIqceo8zQpYmfqHWoVaxZJDspwMtdvW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="446762738"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="446762738"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 21:44:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="717915674"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="717915674"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2023 21:44:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 21:44:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 21:44:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 21:44:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 21:44:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oBpg3Rp+2ZPknyVeZJz2GG68469oNyqxgVWWu3XCRoDOvv3iwB3GlLWfTzvbcoUYDGBX8IhHX/bAVPsjaCcooEgOJjB7x0EDp/Vj0cHgrsKHqHHrgguz7fU5vgueVuWihGSgektZlChAhB41M89EpMyBBErVn0eXAZeylwjZmKV0317NIwchLRHZA7hWBYbrlZ9PXCxpVE12/0Uh+GqriE4+mv+hafalbrF8IkRRkswaMYo47xOyq5yA8fsM2yaGGBobVOcST1KHr0KIcdH7li2P28ZULiWHr/oLIE2WllhGV0ZUJNBmEHWU9w3n+V2eI6wcDX5wnC9Lxr+P3kEkrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dsWXlz9R/f9+DGcvMhyW7AAGR1KAHekGBCB/H3kuTfw=;
 b=YlWxyaIeAe2p1X9yLmV3SFvdhmWjB76rf25Rq+Vk7SRw5Mhf6vGbB2GLzvaoAg49AOuUzpnaNEuXBgjsUISHuFjoKW6E3TnC/F6WMFD5RBciTAQ0wTJqwJiDc5iaWyh7JwH3+bknbz+jZ4sV8eM5znHb5Vl4e1WOdS32Nccv3MZbVwWqtXZSjXctQ9O0eMlU2VafRRWhviRgIeNzVLC4bw2RRxKadUiF89eF59T8QCGYvwYbUQxrwugemI7JW7mg01mr9W6r6QjZaZoOFCtPyfrxH4fNZOJP6NlSWobtxBny2P5X3bMyA1DI6GxJy1ydaErR1WytJ4pEb3MqTzPU7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 04:44:49 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6521.020; Thu, 22 Jun 2023
 04:44:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
Thread-Index: AQHZoyNujmGZwhcN7Uyfm+CRIutKoq+U9m4AgAFK3lA=
Date: Thu, 22 Jun 2023 04:44:49 +0000
Message-ID: <DM6PR11MB31773E3293F8287557F918BEBA22A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230620025243.979317-1-arun.r.murthy@intel.com>
 <871qi5fb19.fsf@intel.com>
In-Reply-To: <871qi5fb19.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|BL1PR11MB5256:EE_
x-ms-office365-filtering-correlation-id: fd77d732-e662-4afa-a839-08db72db6950
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 37kpqDhUoV2fLyH+nUjcT3TN+5fNq57IbxD205UdGyOnbzgNz/KIPxd8afEQEvqqhbdxZy/oJHydsK6e/knOrG8dwbXZn6AMKRksDOi55kFS4iBsQlT5L0oxvIgNyDrXCH03kHlFE9+hqI2MJPIXDN71yP+qJOH6cHh0WNM5ak6K7hzywMdvfaEoxKw0SVjfjkwJu+jYSarNXmlkUwW6/8+i+Npvrl1AG76VgLhsHWDNnrCjk1Ryy8XTSL3qasc8CCG2goGov8n6TTMKywUHY5oCQ4KnZ3OD8p7IDDmW1DIONTkJ9YPHAkac4cayC8nl5WhfPBLRNKVrG7GCht9r8f+5+5n0YHgdzysP13724mYAbGSV6rLf0LKuJNIK560bwA/LGhGUFMsqAT5IlBk26idrqh2mg+lNszOiOh9kos4lmpLV3GzaCB/RiQmhn2C6pHFLzLpxUGcAOI5rfM29VvnT3PFaKxc1J6IhhNU4bWcnHRorEoSXYr0HZALT5KtgByd1iE2WuJB0K3VwTrsiRzMfV+BgEzMj3rfLxOn5HMoKfNVoeojAbUD3V1uk5HmwSrjhyaAXyUHgBuAC3iIyoTy/zdAgi8JP0T135Ki8C5VIrPUY3n21aF3v6zT5VRzM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(41300700001)(186003)(2906002)(55236004)(53546011)(83380400001)(86362001)(9686003)(26005)(6506007)(107886003)(55016003)(66556008)(66946007)(66476007)(66446008)(4326008)(64756008)(76116006)(38100700002)(82960400001)(122000001)(7696005)(71200400001)(54906003)(110136005)(8676002)(8936002)(5660300002)(33656002)(316002)(52536014)(38070700005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ay9h4MSKfPh+RPp3yJtKZgMfF/a8B2EYvlltvffyXYnIFD123IhZ2I+AZgoG?=
 =?us-ascii?Q?yBvF2cunn5g6rSKwKmeZ/WhEkDox3Yy6XhTqm0bFgjo0SzVQhzXZE9QqxcFr?=
 =?us-ascii?Q?HX/fQ5j9zQynoKemOcueKhRT90EhsTRY6IN5/sioAAb3+uoZwd1uoQ/WvtT/?=
 =?us-ascii?Q?GVJhGAfW/c7ZCSX+sLnyapX9g1F/k34+lcM1h8kwLFj19SY/C26lYyg9kW1J?=
 =?us-ascii?Q?uBeDKK5WtZyO9t6opQh/vbu5hr6vcC3U/5j8KHtfYXNG78ZRElVh9nWdvNVY?=
 =?us-ascii?Q?KhCebxqZQjErmGt6K1cjh8qGErd44KxfGfT/jsQLxNSTJfF8A8yUXUD+eC3A?=
 =?us-ascii?Q?bj3J/228HTzJP16txJCbWhijyQnqdxzp8LOYdQUA7Mqd469Jaco1hDKe9xwO?=
 =?us-ascii?Q?T4ci6v2cSRQ3QLFdb8DCMt2dfc5vnIRyZTiknSl7H9dMKcDRdGwvb2g1fnTA?=
 =?us-ascii?Q?cJ8zYl4kq77E9qfCjr4kSGdmzWjxKGuFZICE824zJEWG/a1DPgTXIMfhKORh?=
 =?us-ascii?Q?6ZZxm7j7n7Zt1pNg5KKihQ8ChMoA/qj8OLmHIi+9tnH/TQBV2pFl9hULcWDa?=
 =?us-ascii?Q?k7bTcOs9lYTeSRlBrvYchGBSnOFV9Gux6FuERyYm0VwFVqa4Dqo+ai/KOlzc?=
 =?us-ascii?Q?XrMfDWNXoliU2CXhC7Kb1/RN7ij920o/HIpiJp4xm68qWa3Mrc4jKs+98wZ9?=
 =?us-ascii?Q?PkKWD+oeEbXVjDLhgDa2ekf9YqHuNi4Ihww9Wc8jq2IkG3HYxcZTHvJJgACL?=
 =?us-ascii?Q?2RnKK5f9cpp7on+erBBzK7M+OUsKOM3Zy7VyUNIRtXsg6kzkoga246L1vkQr?=
 =?us-ascii?Q?uknaVEPIyCoVwbJSkCyXjtn/q86IybL2oCzPUrW0HlXeEBCKhm5oAr+t8zQf?=
 =?us-ascii?Q?tr/PpKRuD+9tn2QnWL2mbzLj2/LmSZNlZmqa8RZrbqZbPsOwAA/3y0t0xFvu?=
 =?us-ascii?Q?eOT35XoYMkZWL1Mv4UdYJ/9pBsyyGGHYYyNcDKV9HQcY2w1PImJBXEVNPug8?=
 =?us-ascii?Q?orwfZCY/cSjsBx+2Tu9Lzoen8bKAmPs5jTHcb0apGhtEmFuG4HqXruYUXxiJ?=
 =?us-ascii?Q?Z5EvpwvobYpbnt304+J7jOUMc3f4SX1ZquFqD1WxiYLQG/sRLcTTO/HkV9MC?=
 =?us-ascii?Q?Hvc9Y52PO1/DKXoj+m9O+bELhnBsRSX3bGyGFSkKYo/y5F3HqTLD2xDYfLsw?=
 =?us-ascii?Q?FzOAE6nugg3YkXUZw0u1pJUsapzSJeLacqdyEt+nIG44t7UhaMC7mbTGT/j6?=
 =?us-ascii?Q?HX449idKMfCo8/fUlKXmPXEItvLDj9S+5Nze8OT+cblHhi3tW+aKBfF9CAIX?=
 =?us-ascii?Q?6eWJwQH8Iq42OXRmyoJO3z4BUqX0mOiHwxOkYL9Ge+dIYoB3gAPmD9vDnhnL?=
 =?us-ascii?Q?QeNkcgnIvr+XDngReIpSO1OKxH8LtVqzcWwMffFSdhg9pTELgtr9CMvXWoMl?=
 =?us-ascii?Q?GNMWs06Ch+3cuxcTi0ASsN/U9dqGH/EZzPmBnXaj/Kn+IhnyW+GLrH1e27NU?=
 =?us-ascii?Q?rCfqxDiODK4aNrQBQkC2N3mSUp2Aq/L/54bO8kte2r2T3eusxw5Wken9lEnu?=
 =?us-ascii?Q?i8pJWIGcZY2O8lz+A04Jok0SA87xDBqSxnRId16h?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd77d732-e662-4afa-a839-08db72db6950
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 04:44:49.2909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EYkZ1tQ7CXKrHx4VlC/KfOaXB23J4pEqCnB0Cb8hL+2PHbyPzAyDfXkr3Eg9mDMIT488PxzVN+vh9kVg+OdXqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, June 21, 2023 2:27 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
>=20
> On Tue, 20 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > As per the DP2.1 Spec support for UHBR13.5 is optional. Hence removing
> > the support for UHBR13.5
>=20
> That's just not a proper rationale. Please explain.
>=20
Programming for UHBR10 and UHBR20 is similar compared to UHBR13.5
As of now we have validated 10Gbps and 20Gbps. The spec also points out whe=
n 20Gbps is supported 13.5Gbps is optional so we have not validated/impleme=
nted the UHBR13.5
Now we have the DP2.1 compatible panel is market, expecting users can come =
up with UHBR13.5 not working. Hence removing the support for 13.5Gbps for n=
ow.
Maybe once we have support for UHBR13.5 in the driver we can enable this.

Thanks and Regards,
Arun R Murthy
--------------------
> BR,
> Jani.
>=20
>=20
> > UHBR10 can be used for 6k panels.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9f40da20e88d..54ddc953e5bc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -465,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp
> *intel_dp)
> >  	};
> >  	static const int icl_rates[] =3D {
> >  		162000, 216000, 270000, 324000, 432000, 540000, 648000,
> 810000,
> > -		1000000, 1350000,
> > +		1000000,
> >  	};
> >  	static const int bxt_rates[] =3D {
> >  		162000, 216000, 243000, 270000, 324000, 432000, 540000
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
