Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 394DF66BA6E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 10:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A629910E2A9;
	Mon, 16 Jan 2023 09:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA2D10E2A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 09:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673861617; x=1705397617;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jWuXXjG9z85YSiWiJOF79+N7y/9N4GA3l0hx9nXJdKs=;
 b=iKYc+0bxpvy6/tvopUrCxyVdiAG9S4AjtLlNpF1VwkJsJIQ2dS1mGT3e
 gRsdNCPl9u422X5lY2zmIFrq6zh0N02bamdxZc6nFqdsrCjoCyyITvV0Q
 yGO0QMLNf5yxESiHKXcvQhSpC0oiBo1HcxDLGKmggZGWjRyS7szrvciDu
 XVBDsqgZ9TKvWdduZUwkk9BoLXdUCZ4+kQ8PxpbDiBLxNwsq87T7idPmv
 ipq7tn/VFaoL2bGKMtS+yZ3VCMNzfT9TOEi2CSVvNdReWhfWv6XBarqIp
 KP0yHZicn+eDZM9ZFf1uddGqgEw4PTgUsfOgDXWkrd8tciBs/h4gb1My1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386770250"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="386770250"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 01:33:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="652215921"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="652215921"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2023 01:33:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 16 Jan 2023 01:33:35 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 16 Jan 2023 01:33:34 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 16 Jan 2023 01:33:34 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 16 Jan 2023 01:33:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+bY+lRM4apKN4xy6znZdBgPqx1RCVjOoIX55c7W69dLw1sDbB/aR5TITIsje9H03qPgF92U83n01ykvOIVlsg0a5vLkcy6nr2srWmOAKCUCpGRQCuudqX1gR4OQP2mycIy0lMgtlSLQFHGguJ3j4wf5DhutQCLqx4pAgPkTqHvpvQmkHU4SN8wU08EkhLg5211QhWmGqYSoAVFxIByxoua0LlBMNX/LV+LOMHNacjqusYwyLj/ARDahD2v/W5sYBlMxOBvjX5ykGZYoZUFtJuU9d0cSu8WkU5nEuGfdBhMhR+vwBlrbDe9g0M/j2Z1n/3XuNheeEErQeCVzWibqUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mh4v3wK8wQDlqJICite7sZOQU2WWbrB75sZ8Qhi+yUw=;
 b=ISOvUnG38ffxGxrbBL6WnlsBZsKWgxL57Yr5E5sBgrGdvfQNMGz1qTOPQH1l7lsZti3epz1AulpT+HdkWSPTd9UgnnKDtglABCxD5q44O9im6ZmcyIw/LC9/cd3/1NC5GzG3WysUSdMGa1j7zfjfxupiSsElrVR7UoaXj6oIyR78oSe8OOvuzJGxB+K3/wR7cGkT3ios+IVJ/He2g1uOH5JgNoT04xs4GXyCZx7zc1F7HU6NfJvwn5N94uS5GmWNGAq8D7oSwes2YzNEhNgpuBFJbjhSMKNAbuCYCMoj1QPJVgXt23xvkMFERytbF09CyNX1ypVIRlqAVOb0RgrvYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB8132.namprd11.prod.outlook.com (2603:10b6:8:17e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 16 Jan
 2023 09:33:03 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%7]) with mapi id 15.20.5986.023; Mon, 16 Jan 2023
 09:33:03 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
Thread-Index: AQHZJmoW+Yh70yP6m0e8tlXtjYwS066gyFkAgAAFiCA=
Date: Mon, 16 Jan 2023 09:33:03 +0000
Message-ID: <SJ1PR11MB61290C36F1D9FA32CBFFF31BB9C19@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
 <871qnug7xb.fsf@intel.com>
In-Reply-To: <871qnug7xb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB8132:EE_
x-ms-office365-filtering-correlation-id: 5b88c29e-f8eb-49bd-ae86-08daf7a4aa8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YBBXH1ZCUX5mTBLOvVyARligMz1j84dJrm8RP4jp0pyECTBqv0yPbSrYAdUY6JvZZL4+mPiUsYbnMq5mxYTFoq9piCfalNtyuyCE0MtMjIVMxGh5BrcZ7++wvkfB7eooVqeBVUeazi2/sqVHSTQq5/AN0R4/Pq6Ntdab/m7v0AZzf6p4DMAGyFrwEmibEaJilTAx/nM38YJuK/rfz9cT/WrZdU5hLkksLcK/zygs4kOKkX7+ijCeOMuwyrfuxapVGW9dLzWDp/ajNQ69kw+VBiTeKKr6N4WhJntaaQDkW031jC3nxfINmU3KAJPzpmUOAoh5CNbUYFsWpbY5PRBDyvgK/uKZkF3Wvp9sPPAcXGgpo/KzRnpr8Eeiiafzl72HTe2u7YlmUbfvHytzNM5EoyUN3yjmpZ6H1e5Jn4oj7/cXe4uXxLF97dzaG6gTEwU5pDfijAkIOt+7C9KFTrfo+TQYOrMVIBCZLws6NyCkezi8vNJ2UyvcPlFE2DEX6Sa1SC6F4Nr1mT95rICAm7BfeJP1PFsAZO0SeLByzwjKDvxuICHMcCiKDiOj0SUXUq0BN4cMj7OGfJbKwzIEdRcz042cVDI9E9XeP4vUTZsU9JXi85/uAuDjZs2ZdBus7OpU0neM9FRXWRVeYhpTyuUlCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(366004)(396003)(376002)(346002)(451199015)(8676002)(9686003)(5660300002)(316002)(26005)(186003)(7696005)(966005)(33656002)(478600001)(86362001)(71200400001)(52536014)(6916009)(41300700001)(76116006)(66946007)(66476007)(64756008)(66446008)(4326008)(66556008)(54906003)(83380400001)(8936002)(55016003)(38070700005)(55236004)(122000001)(38100700002)(6506007)(82960400001)(2906002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zB+N3ZLvxZscrvG8HmXCifcQ9lpbly0lXYe58X3dEoya6nkiaT8Zp4OZLEyw?=
 =?us-ascii?Q?Y5kFJg11LhHYu13JzIvp0BNLyTGGDB0hUqQkcXqnvzzqmSUN4GcXb3mpJlOd?=
 =?us-ascii?Q?y0i3KAwQi2ChhAzV16F+y7KuBg3lUFu9CsJuPovhXlCgQkS/mqjuWOOdsyZI?=
 =?us-ascii?Q?HMhaTnFCDTIPEwZGyv/jFEDa6uJ7/oT8M/LxpCUdQAe83IXuWrnMZssBQHLY?=
 =?us-ascii?Q?+GGwv0CthN9qqn8DWpjBCar9v6pGN0s4hSnYvM0J6ciH5cHnqWUZaBITySVy?=
 =?us-ascii?Q?64yRB38t/SyV94yMS337TTxr9d8uQ8iPgeeW7lxjjB1vTA/zHLZCDwzd1df3?=
 =?us-ascii?Q?GOgl/hXskHo8sO7Mh+W42X2yXJ0svr7h21D2jnhJvDrQMJFeTC26QDtGmqat?=
 =?us-ascii?Q?4/1gE9QbppSCIFdMaw3GH81mHTEPbXmXc3GhRff+1lx9nuMxucqlqLe8jTba?=
 =?us-ascii?Q?hTHcNnbXP+CBuQzvHzDwbpeHcENRSZH5UOjT7kj91918rsuQe7xGKzdcJDdr?=
 =?us-ascii?Q?LJIwyIwB+6htQbRrniDziTU9Vo7AunbbMs0dcBnYkCtQYZRlP89oQKt7Z2xO?=
 =?us-ascii?Q?ncPzYammVcUsFSJoLPmuNT/KV36HAanp1uxFLXfVe+Pcy9wV5ikkrYdKi5Jo?=
 =?us-ascii?Q?vz1ir79MtqUljwy/246krho2SszsT5W4SQwKN/iaeFsjmeC6NCfaf9sXIoQQ?=
 =?us-ascii?Q?u9GFaON1gfNrUJJSonJx3PiK4bvkxBN92ujNGYZwUy7RoBPsmAWMxNni9MPz?=
 =?us-ascii?Q?hJV1H4Tii+FFBZJdqTGXO5ELY1Ge9ad5K7YxqtXEFjTU5ZQKTQyRmNFddJg+?=
 =?us-ascii?Q?GJWOs1xcOIEoMyaIbMRg9D3JtWgD2tUsAr0IPnCiR//xrNIAeuwRGrcxvWjT?=
 =?us-ascii?Q?xBG3uKqoPsjTGwTc3m1LeRHIllCDA7WCV+1misC9YGiua9R9LyhCgDrn4/Xn?=
 =?us-ascii?Q?GQTS3BSc5GnKAiDmdMw/YPoZqAXC+g4YByvIjf5gz70hk1sxr2y8xKPpQU9t?=
 =?us-ascii?Q?+KWyZQOS08WKD0xH0ShZXgq5B9zIKhq8RPTzIBTnm8lrFFVTz38cMcOtbXvD?=
 =?us-ascii?Q?F50qfGJrjfllKx1am5n5Z16QnRePXO0N4MwQGhgZ24YkX4Z+SqtGpc2M8Hre?=
 =?us-ascii?Q?Jzr5PjOVZ1P39UG33oAxsqimgW+Wz5TWji2FChS4tsCa1GqszHwucKl2QN7C?=
 =?us-ascii?Q?709OJryZ5C9adAfyecEQvr2zFhwlVbkDl8Kg3D4r6EBl53WWj67i+LemOMpr?=
 =?us-ascii?Q?+mXuuVb/063OLxW5i1kKcsGHQ8zPcIqiAEex9onR3fzPNksaet1j3nBIMvTN?=
 =?us-ascii?Q?9hlTun0/pyXgdLy6jc3kYL/bALfUL7L+oNYsE0Bft4l/T72ur7MaZTThmz6V?=
 =?us-ascii?Q?WTcubSiAc8e1Q7Zkff0DxyA1xg40MTXNhnlMIT2RkwMfvzDfsMSoHWKW9u7l?=
 =?us-ascii?Q?dz4B0bV7wpHxUmjyDKuOCn00c1xX/DGiBTqpxtnmMFSJJz8V6aQfIrDxNxkb?=
 =?us-ascii?Q?axgT9T7ojEy6wGrXfDtSMrggh6NyvMVjBaIeFnYErh30pERgERVlh9cPFRQM?=
 =?us-ascii?Q?1C1VzmBUDOL+xwvpYMXis6KN2B5DDS6Q/KrgFlooujWGk4ryx/2ZDIgiY2/i?=
 =?us-ascii?Q?VA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b88c29e-f8eb-49bd-ae86-08daf7a4aa8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 09:33:03.3855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qzfsHW57L4u5ZYH6w173z6xJNBZDQDCfFZvNpTcsp+SgUozTtIgAl2bNjyvVDiFtDEdAEzqF+jdLp5rLhpCIU7A4X6Z43FxzvQ7C9zVcWQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8132
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
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

Hello Jani,

Sorry about the previous mail. Replying in-line.

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, January 16, 2023 2:42 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference=
 clock
>=20
> On Thu, 12 Jan 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > Fix typo for reference clock from 24400 to 24000
>=20
> Is there a bug report? What's the impact?
>=20
> It's obvious and easy to say there's a typo, but the harder part is match=
ing
> this against observed faulty behaviour, and that's something people will
> want to do to match bug reports and fixes.
>=20

There are no bug reports for it. It was pointed out by Matt in another patc=
h series.

https://patchwork.freedesktop.org/patch/517283/?series=3D111472&rev=3D3

Regards

Chaitanya

> BR,
> Jani.
>=20
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..7e16b655c833 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals
> adlp_cdclk_table[] =3D {
> >  	{ .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16=
 },
> >  	{ .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .ratio =3D 26=
 },
> >  	{ .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .ratio =3D 46=
 },
> > -	{ .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54=
 },
> > +	{ .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54=
 },
> >
> >  	{ .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .ratio =3D 14=
 },
> >  	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 10=
 },
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
