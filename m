Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA76821615
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 02:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C1D10E0FE;
	Tue,  2 Jan 2024 01:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A275210E0FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 01:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704157555; x=1735693555;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wA/lbnviXI9DzdBgMW24OTTQ7L7iwwGzy2TP/zEaWlM=;
 b=BsisdmTU65LRL/O4zaeQ2NWb9xmXsSq/F/Ph+SaZ4MWEU7BJ5l9O53Bi
 VlkBx4wx1hLFhAOOH6y4cSuslWOIu34O3G8DDtnG1JQ5EbghftkQG1nKu
 9Y3GVPKhLx8NZtYZNMTp48sS32C00MyTE/YcwruNgRf9vBfJUWT5hmi4z
 u0uCJXgDsfKClEjw3txDON1vdVPECa1kIB9yAxuZskemQJprJbX0rvkIw
 /g8WgG3fMeoY4xAHTOjQL0Jn5VlxPNhEpA6No1mPAUp82Dgl0cMGmH/Ew
 gw86K+uL2FXSZgvOTBxAIiWdXXHNNU2maTm9T5u6Rr1EucCO9qHd6Ptac g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="393965616"
X-IronPort-AV: E=Sophos;i="6.04,323,1695711600"; d="scan'208";a="393965616"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2024 17:05:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="1110897025"
X-IronPort-AV: E=Sophos;i="6.04,323,1695711600"; d="scan'208";a="1110897025"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jan 2024 17:05:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Jan 2024 17:05:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Jan 2024 17:05:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Jan 2024 17:05:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4fyUvdRoAd/CALFwG97e31gXWCM5GMx7JbE4FhuK40bjRvS5XlhgBqePXI9ICM3B6oeofxd9jWcCh/sE9GV0uDLAnnnMHkDYiPtBahidcI4SYzHDMaC4ZwGSSsRjfs11DNyR/HMsgyobDFtj4aSmiDiKQIKViJRYaOLvhBJE2ylhMQPLMja1f/URV3XEMTE/zjDNSImyM+wpBJIiaXW4p4Ma1topTfaWVno/Q0NsqC4u8IaZSkTbDsJyJLhFHE+BMIhCEGJfCI9gRc+txZB4406di3oYClw//JK6lq20D3l8UwdipiJ09tqG56bW1RFLcWQuVxuUE0kqQONeW5UHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0iYuYrgo6SbmB9rtKdcYz2tiovpmY8j3RHElJxuemNw=;
 b=mNK7D9Y7tqnpB7fB4dhb77pqb+W3VCv5inppyp5G79AfKkR3Qowiusxz8rLavEfkl1MwlYZsIoPJRpDAXN7vMpFj0dsNuMN5/p5kk6kthCUooYGWZglWJfzJ2sDlgJAlwa6qq9z2xBZEwkI0z+L+JVHWRENR9n83i0ehlcpAGkdoAdTY6cExMPz3AFaCjZvmqAuojpOs0fbxCif+OZUTgaXJAbxrPy+1Onj/PoWmzrFmc8EMesl7/tWH8c0BICLhC3XmVgQoPkBVecMYaR7+pFtmjbLSAW9JKQPUfXztAjHHoq/yFT3gwu1TCefMzEvKzrRm3lvltUx3PLFQ0JXutw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5456.namprd11.prod.outlook.com (2603:10b6:5:39c::14)
 by CH0PR11MB5492.namprd11.prod.outlook.com (2603:10b6:610:d7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Tue, 2 Jan
 2024 01:05:52 +0000
Received: from DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::91a1:5c31:e587:6579]) by DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::91a1:5c31:e587:6579%5]) with mapi id 15.20.7135.023; Tue, 2 Jan 2024
 01:05:52 +0000
From: "Lin, Shuicheng" <shuicheng.lin@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH] drm/i915/guc: Change wa and EU_PERF_CNTL registers to MCR
 type
Thread-Topic: [PATCH] drm/i915/guc: Change wa and EU_PERF_CNTL registers to
 MCR type
Thread-Index: AQHaM0HisedKqDvapUSAN27ZHUMM5bCy1tmAgBLo2PA=
Date: Tue, 2 Jan 2024 01:05:52 +0000
Message-ID: <DM4PR11MB54564C1D8A1E5BBF94A392B7EA61A@DM4PR11MB5456.namprd11.prod.outlook.com>
References: <20231220123951.4076088-1-shuicheng.lin@intel.com>
 <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5456:EE_|CH0PR11MB5492:EE_
x-ms-office365-filtering-correlation-id: 10a2c705-5513-4b1c-e961-08dc0b2ef74c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qFpuANjGCGK13TIPZsWyI46iwNoEEZOzpK9aJQXft4JV1WOqMvJRt87xqNHtjg0PeRa2zcMXqSRLsEMvz8hwXPI2OjbCNN99NM+P62glYCvtOv2qYEWQ5LjgbqhvtUO9HuoG63K5C4c39tZgQc5Ly5S/HP3lWWXHX+EppdamQFrw3CbpBt8JBhDTVytX0ObW9CY9zoyywfoW4IWtRAQv+YRlwbKu97T2ocMocBO82KOKPef1QeVbdX6w8ll3YsSO3iO3ZXzKuoU7Nd6cKbikt7rNGNmywKFVfBfkkO7M24OLq3grPUTD0Z+XpH8iVPRiaTImdpzOjg2g9J8T2LibLWWIui5BPRagv2AXRdyyOG6mi8DGxpYJPrE0Nc3lplSRPncaqu5j8jYw8pMHNXpEC4lUazoRuYUbtTmtNw6dqMfWlqtEvIJtVZNEav9W2/2D1xffJ1djnfRjVgBDrJww1mxgqGrBfUgXGxlWojhaeXrUzeX6CS+7RAxTCJQ99vcUKe1CVVNovXZNw9PMLE9rXpg4Q1E3xz7ThXo2aRMFL4xUgoD4+6tZDUgg5p0BcDUmztSJXB7xEMdG1jYsbK/RCBJxTxtLO/9B/5azBzjB3Th4nXoiKt+aHp1Ztx5iI04n
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5456.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(396003)(136003)(366004)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(2906002)(5660300002)(38070700009)(41300700001)(55016003)(122000001)(478600001)(38100700002)(107886003)(33656002)(26005)(83380400001)(6506007)(7696005)(71200400001)(9686003)(53546011)(8936002)(8676002)(52536014)(4326008)(6862004)(66476007)(6636002)(66446008)(64756008)(66946007)(82960400001)(76116006)(66556008)(86362001)(316002)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JtEkKo+h5B3xoFGmPcpa7gDqz2gqigmhQRCLj6bfWq3+wXFpFaCyQZJg2y3h?=
 =?us-ascii?Q?MY6pA3xWaMhXTy7UfFFTQJY7vNN8OCrhielcwRU9cxq4jFcyt6l1EA75GdGg?=
 =?us-ascii?Q?PbeWPsbIiQK7zsOd5WAoWUQPm3ArBEYRkol1/Bs2OhyG4Hn0zuFCl4rDO2cV?=
 =?us-ascii?Q?YGvBtu5hENqVhmg5Bqx9t49vgm35NYuEASlupI99n2B3MgrPxRsrhCVLJcid?=
 =?us-ascii?Q?ZM1x6Nifjq3/+zybZC1nsljabjW65Ul0R/VN0/Pz6x5C7kqqIA0K+bieA5LA?=
 =?us-ascii?Q?5u9Pt4aETev3w9k2mggrh9t6VWiZXjxgViN85tvEgcMItb/rEQZyjd/0rTIG?=
 =?us-ascii?Q?Mc0zdOEV5sX7iI8nXhomp04/6sXGRnJSA5FLbC7JFtI/bRvWY6LpRgTTU5cM?=
 =?us-ascii?Q?XyDdBueWDS6UX2QvGOBRxzGRg8cu6GP4XH+54dqs2rAm7xEyt3Or/s0B2Qr2?=
 =?us-ascii?Q?Vb0v9ttmhoJzD6gcLkFry3CqjxIK/bLNhDpUOZ5SQ01d1ka3y4wTXtNqyY21?=
 =?us-ascii?Q?6iErfZIZbqf4K1D9qfbbgXC1rFUd/mA/eWe4ZX+QdkhYXH/hk5DyMS5y7y76?=
 =?us-ascii?Q?n4yPHZJBJY7nvhFe+yGR9RQMjvgjuPsnAr12kYwVmvcn7k0dAj/QuhSVHyFi?=
 =?us-ascii?Q?pON74f+Re1i/8kJpBOHXQgaAtmzHMmFUgxMrcqtRHJ3QCC+DO8kZspYpJ4CH?=
 =?us-ascii?Q?ia8gHA6bGjvwgQl8x/yr5D+iQLDJQ7S8nwIZJHDQD3aNF8rh1kEJGkZpP+pQ?=
 =?us-ascii?Q?qmgRb83L0Dw5Nhz9Cb5kQa6DUYGcGR5K2WNmyA+pddbf3Tbo9unpgCeC8nOw?=
 =?us-ascii?Q?QIQykNrsyE45pH2GAxvFTXObDxMQ8Pc4ItVHYAqhYCqY77plvxwypw8EPFfI?=
 =?us-ascii?Q?L0U4N7tzjCbjiPhoLZPLG/K1UlpeZLQo1uByNKOmnYuOsrMj0Ftm9tWtF1ef?=
 =?us-ascii?Q?relJ5z0HVQPgO3hDDxF1wE3/AXEQ8uZ111FerkIoOXWUGfi8PrHFHwhwS8+H?=
 =?us-ascii?Q?MN3T5d78EH/IT6qfDo5A/gnGJOqL7w4ad04QWrcIFEvGQk1RA4O6MP06xz9P?=
 =?us-ascii?Q?zc2Y7cTe9Ui3LeFu7wNJlFARPeDS7J87a6FMDqfIpQVdnv5NesP8RiXkfjIG?=
 =?us-ascii?Q?opRLHVNlsbjsdYRPc1yuP4I4iCuYs+8jBCZhqwrOHv/KNKGPLSYcI+HBLeoE?=
 =?us-ascii?Q?FRDrsK5nMEMnKHTMjnbWfiZAZAFnrvTKjX11P/MK7jKjMfY5nhWnetD8UKDJ?=
 =?us-ascii?Q?BEsaGgkYKNcuytA6c94ASjEs3j3KZpKsFHriImEHh7lTEf+VgYc0oJZ8JNHR?=
 =?us-ascii?Q?v2eINHdqsKRVL0KJyxJ1W1rDuRqpswKz3vJbLOYC98rsmcOmSlIVna6DY/f9?=
 =?us-ascii?Q?sgR+Xy9wvTlvuFVWphj0K1azpfLgM1KD+AsNirabX20HHe7ox6yPvGjDLHUr?=
 =?us-ascii?Q?TYxb/2F5+4X0bG2FklcGzY/WUZ1IznBkp/A/+why2h/s4OYRL47BI7HWaGXC?=
 =?us-ascii?Q?YdYayHEX6ouFCYiplyHDO8yOjMZQkpyyirUNh4LhTlAt2TbXMWyZnwBHXKbe?=
 =?us-ascii?Q?AjGjvUemL8B3/TBRCAeer0LAD0HHHMPAk9RbMs96?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5456.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a2c705-5513-4b1c-e961-08dc0b2ef74c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2024 01:05:52.4851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: thbesEgYxg905gK+pqC7jvl2tNeI4NoZxHu6od2y3R913nXT08atLjhC3Oepw/twrHc4BEa3gWNCGmAkki3Xzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5492
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Best Regards
Shuicheng

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, December 21, 2023 7:46 AM
> To: Lin, Shuicheng <shuicheng.lin@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nerlige Ramappa, Umesh
> <umesh.nerlige.ramappa@intel.com>
> Subject: Re: [PATCH] drm/i915/guc: Change wa and EU_PERF_CNTL registers
> to MCR type
>=20
> On Wed, Dec 20, 2023 at 12:39:51PM +0000, Shuicheng Lin wrote:
> > Some of the wa registers are MCR register, and EU_PERF_CNTL registers
> > are MCR register.
> > MCR register needs extra process for read/write.
> > As normal MMIO register also could work with the MCR register process,
> > change all wa registers to MCR type for code simplicity.
> >
> > Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > index 63724e17829a..61ff4c7e31a6 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > @@ -378,7 +378,7 @@ static int guc_mmio_regset_init(struct temp_regset
> *regset,
> >  		ret |=3D GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE,
> true);
> >
> >  	for (i =3D 0, wa =3D wal->list; i < wal->count; i++, wa++)
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa-
> >masked_reg);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa-
> >masked_reg);
>=20
> I'd add some kind of a comment here, explaining that it's safe to always =
use
> the MCR form here, even though some of the workarounds are touching non-
> MCR registers.  With a clarifying code comment added,
>=20
>         Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>=20
>=20
> Matt

Hi Matt, thanks for the review. I have updated patch to add the code commen=
t.
Please let me know if you have any questions.
Thanks.
=20
>=20
> >
> >  	/* Be extra paranoid and include all whitelist registers. */
> >  	for (i =3D 0; i < RING_MAX_NONPRIV_SLOTS; i++) @@ -394,13 +394,13
> @@
> > static int guc_mmio_regset_init(struct temp_regset *regset,
> >  			ret |=3D GUC_MMIO_REG_ADD(gt, regset,
> GEN9_LNCFCMOCS(i), false);
> >
> >  	if (GRAPHICS_VER(engine->i915) >=3D 12) {
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0,
> false);
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1,
> false);
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2,
> false);
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3,
> false);
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4,
> false);
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5,
> false);
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6,
> false);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset,
> MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL0)), false);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset,
> MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL1)), false);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset,
> MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL2)), false);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset,
> MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL3)), false);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset,
> MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL4)), false);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset,
> MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL5)), false);
> > +		ret |=3D GUC_MCR_REG_ADD(gt, regset,
> > +MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL6)), false);
> >  	}
> >
> >  	return ret ? -1 : 0;
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
