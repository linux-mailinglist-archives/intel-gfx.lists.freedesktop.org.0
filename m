Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AA377B915
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 14:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514CE10E1F3;
	Mon, 14 Aug 2023 12:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D32D10E1E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 12:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692017719; x=1723553719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5nganHmPYCJ6hsAS2sKcoCas1zR+SL/qR5PVQyHhdqc=;
 b=jBKyzaR3gcHFUXd+TuXAO2xxkhVppnvCtIl+bR1ba1yWgUuaXXzX++t4
 eziiA7XiramjJCHx5smJJAj0aDWai0nT5Ugt4Kro2Pnd9YSVy9Xx1Y5s0
 OxK6mXdljsK/xv5gXfzgvzjGElbPR7hbMwc6Dut+7CZEWqUGCZrwywifH
 YhG+Pq92wwo8xHtxpq2y2WuDS/HraSpddwPkAisc8dKM1dhxR6kLgQ5az
 8S1H8Fcuo43f7mvsOV/u8IMPnVxnsEQOyzwMthoVrFaPZWirwyLOskonE
 KNtjm+H06PvmJFVOqrl62YXu8MBtffCrAcFTiZglHu/dwL3gAAUI3ZS4n Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="352358262"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="352358262"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 05:55:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="823438356"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="823438356"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2023 05:55:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 05:55:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 05:55:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 05:55:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B5+H+eNP/KEc/kOvTucdnKpDb+BwArrWIre6vzLo+1qEYXepO0QDuSf1FpxaXeCfRY7K9UpgDOsANBz+FGXdK1R9G4pG3IRsKGxL6vvE1NaBe7R84EGX5Gw4IrtXkUvKex3nc7+LzIkcKh+nGV6WJEsh2C83ryoYWkQjnMjDyPsyL+5XWlQbwqz3Y0/zER21CKdj7V5kZeOSzJ0av0J9ouz1TLymn1XY6v1pgOdocwaRt+HZsYwxqlZz8w4B5tOr3r3qvzaIGZMzyqSeUUTxDlpsrsmYEiXMAHK7doHn3mOYvbtyyOb16eVsTv788DwIPh2RF1DpIKPJjylDjLuQNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wfu02ZdZfc5CUNK47rj1i7RawGPTv9xjYEvdoI9De0M=;
 b=SaCDq9JBn2AyFo5VBzzf1NL7U0nK4do8fWCm7477/yBrNiTedXRDnpprhYahADEdJSHRyWPwVzKfo/QKGBZkn5cv4jtM3XhJjBacglSgjRa6vOS2Gz/5wEqkB6e0wE7VHjYPToqIKdcS3bq5TQkMdvCn+JkISBdgTsqzIkt57PRANytNvrOjlbbBIAyoALX9T5a1d1ghI1dBDwqXwkWh57m/qxVjA4GBKF8WA0uxjIDhsmLef3TB+Vb2jGt6v7ChIUz0SHp5r/Ht/yhlZJqlSkCQUPpY0llxjFjnT4wM1cKZjh/W+M/GxEeucWcrteTXfCZ1tEtXf2jsix8LKaPHYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Mon, 14 Aug
 2023 12:55:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Mon, 14 Aug 2023
 12:55:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset
 calculation
Thread-Index: AQHZxiQWvyoJmlP8NU2TjbvOVeOwfa/Zzx+AgAACcICAD+elAIAAEGfg
Date: Mon, 14 Aug 2023 12:55:13 +0000
Message-ID: <SN7PR11MB675088ED8BA95CFE3D5446E4E317A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230804082852.3842668-1-suraj.kandpal@intel.com>
 <20230804083737.3844575-1-suraj.kandpal@intel.com> <87edk5zwrn.fsf@intel.com>
In-Reply-To: <87edk5zwrn.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4706:EE_
x-ms-office365-filtering-correlation-id: 41ebeace-2faa-48dc-3a65-08db9cc5b3aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NZ0nmbe/ChhWg+7QCO+XqGXcx4MtCjplJzoq4OPyKagYR5FJfFGG8wyvqF07QkdrgP8NIzcP0gwTx5bBnWEu/mDQAiqGHzqrDcrdUeFQqExnijKWaa2MR7doalNd+GMirkHeaOohMeD7y5X3qzKpr/xlFVgzEB6L+G9SV5dcH0Iap0F+kyl+5wmfYZURSlwztqi1Z3HhJmJoEt++ihiLMO+IgQ93bDxWgVmX3m6FWz2/peeKxDHA1bgr4Dd5Vk+lqBIRgVRycfmSsPHwaXVdRdw+VoxjKVD467A9IAly6+3sh/yGK3PgMJLRa55MkY0/+cIse1F+P/F7tUAHcfTXBciZMoEcDGO2+oqqyFfvz6pi4r1joxWVK32RMPoFHgUcD5OmZldYVrfUjWU1aAXQX917DYF4PUC2pO8dpayfqDwoECV4esihXYqWCBbiXrZ5ci3yBla/tkgpGJOkQWi9ym8Iu4No3ptyd8+vtcFie5d5vXmx5ot57T+N6kSmocphNI8clmSp+u/bJYQzOEdYM3GEYP7Q/SaNSIstkeUj5EqQt2mmW3X5phJ1XBzApsv9yXjVIz+uTLHzuJmijO62ikv62ZXh/t9ZqqxMU6trqsY7g7vWeNtzZzjUAu1tocc1rWYo9q6Bf8hnmM/dtI6Nig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199021)(186006)(1800799006)(38100700002)(55016003)(110136005)(54906003)(7696005)(71200400001)(478600001)(122000001)(82960400001)(38070700005)(52536014)(5660300002)(2906002)(33656002)(86362001)(4326008)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(41300700001)(8936002)(8676002)(316002)(83380400001)(26005)(6506007)(9686003)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NVuPNXqQUJnMTgpV2/xB4GkBhNPvtMx7w0xq83QQB3kyNmMTa3dYLmhUdpUp?=
 =?us-ascii?Q?NAiIcxH0UjK8dCYZD9v+l4QXKmd70rbN1LNfyOCl575eevB/DocEGkB0gApY?=
 =?us-ascii?Q?JkVoeAwGllcc20GjO0UAnvWGOxQv5kWeRpmWSrOpQUHPUinMpTHtMF63dhG/?=
 =?us-ascii?Q?okYX2jMoG8yoOrUY62a7Y7ZvmaKMqPm6xU/Ri5UXQdh8s3luJjX+f9vBH1pt?=
 =?us-ascii?Q?LSAKYNtMgV1PZAgOkhddbH67xFjYGVEjUo7otODV3fCVVL891hzF2NNO2Tw4?=
 =?us-ascii?Q?yQOlWbo20Qyce3975Neo6nln8F2mXq+QCSi9b0jbEJyClo3ovvslOK8IDYA0?=
 =?us-ascii?Q?ffFEvavTVIdB2zYYzhxK9hy6sx/zLfCzaagBzBOq1tlYrrl41JyCwqaOHSQ4?=
 =?us-ascii?Q?ByonjRvA0txVyYXRgDsebrF65vRS4T1L6RwwdTLBCOF1MH1d7KphnvK5nTpL?=
 =?us-ascii?Q?wsDpoRZOY5c7bLs2YRHLOtE3BIpxtCuLnStAp2YL1thQK4dtV28trSCTul1g?=
 =?us-ascii?Q?KNM08pVWtQ9wU3qzzXfzlw053FP/7wgHk+HiRj+Nz78YyAWLExH+YiZR4f6Z?=
 =?us-ascii?Q?uN45qviK3KVl1NX99TrEzG149VmH0DnSyuAhD0yCHM3nlBOi7Et4Af20MCT7?=
 =?us-ascii?Q?HRT8wFmiwmapENEAOxrUe7Wj6BdzIkU+7psYZiQFKbnpbo7HkQ1kL5CDm6nN?=
 =?us-ascii?Q?G25Bt9cBDqXOBn99WaUKxc+M4j3QMBx5Lw5e3Sq4xD6ekO9OAX8pkcui0ELB?=
 =?us-ascii?Q?U2V5/RISSUCawuveVlp7sncwZOmFXj/1bQy9n+awBhv4+qLbTGt/EaRqRbC1?=
 =?us-ascii?Q?c3Jx+hHKULlHXHdhobEoMoZ7uAuYk26uWnoh/Tx4/CswJrkN0AnTEudxnNHG?=
 =?us-ascii?Q?HauYxpainCoebQmjMCpKiERD9FZSwFPQAw0qQJdytjGDvbzPVIDi47Azqfzg?=
 =?us-ascii?Q?kImDQEshTNqAogJaKQ86PhIfEHf+fQDC+amA8dg48gh/rstEgRChW3WGm86d?=
 =?us-ascii?Q?h7KAQF//JAnEeRBxUdLxOKGwyWHv8NhubdrPA2Ia0RBxf6aQ+UL6PVwyLWqG?=
 =?us-ascii?Q?l5lVH3ClK5hucL1McdLzII7xNbs4LLjPANtN7heO27F+uA7wABAsuk6GdclC?=
 =?us-ascii?Q?C6KGks73iOEDvvW+QP6OMO3J6cfvrX23DS4xhZS7StftrCdbTQ/YG7uHSGqe?=
 =?us-ascii?Q?dtP/uRxretLdmOXZx6ab7x1B2Vqn8lgNWV34th/J8GoemhNN7GVlRM0h5/fG?=
 =?us-ascii?Q?Or2tY1rs34KoNqG5sfnENYQF4zRdAJMpxBjfP5Wu4R+fzBX13zAwejVfNtxo?=
 =?us-ascii?Q?5H9fCKr3e9UZ4IsRAo2MIQIsZ2MnyK1/jVtcfml+2HyfXZhYNOxeMtwlHE9o?=
 =?us-ascii?Q?kA0ltzR1tW9reXa5z21J3j2l01dQR8+NRyedgqMzwTtvQnRsxf+DnJtUZtrN?=
 =?us-ascii?Q?8ko6E6dqsK2e+f9KyxWiPfgEhpUv8FHVphHsly8hVenJdTU7nuXiNMiSeKYT?=
 =?us-ascii?Q?o1iihfsFFhQPwMyd8C5ZApeScg5L7MHSF+Qk9D4leRTh02X6EI1Wj71t1VFD?=
 =?us-ascii?Q?mwrrCeTSTkwInAsIpzbVgqwGsPUnKZiJGTWnSYip?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41ebeace-2faa-48dc-3a65-08db9cc5b3aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2023 12:55:13.9655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k6YIVnmm6QSds4nwgqZKMZRonRymGcSh+4g8ZkJNo7mVJ/HADS6LaeR3tDW89zsrHDFSQjPbwS+lnmNulLRH1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset
 calculation
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


>=20
> On Fri, 04 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > On checking DSC1.1 Errata and DSC 1.2 spec the current formula we were
> > using was incorrect to calculate first_line_bpg_offset.
> > The new fixed formula is derived from C model.
> >
> > --v2
> > -Use clamp function in linux/minmax.h [Ankit]
> >
> > --v3
> > -remove linux/minmax.h header
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> Should this be:
>=20
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9102
>=20

Hi Jani,
Actually this does not close the issue when we were looking into this issue=
 we found this
discrepancy between cmodel and our code  fixed it and hoped it would even f=
ix the above issue
but it seems the first_line_bpg_offset value clamps to 14 now instead of 12=
 which would be=20
required in the above bug to work.
I am actually looking for your input on another patch I have floated that f=
ixes this issue.
I have added the conditional for first_line_bpg_offset to be 12 incase dsc =
version is 1.1 and made
It dsi but not sure if that is the right approach, had to do this as it see=
ms some panels were made with
the first DSC 1.1 spec where first_line_bpg_offset recommended value was 12=
 in mind but then this was
changed in the Errata more info in the patch link below
https://patchwork.freedesktop.org/series/122108/

Regards,
Suraj Kandpal

> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 9d76c2756784..e4c395b4dc46 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -80,13 +80,19 @@ calculate_rc_params(struct drm_dsc_config
> *vdsc_cfg)
> >  	int bpc =3D vdsc_cfg->bits_per_component;
> >  	int bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> >  	int qp_bpc_modifier =3D (bpc - 8) * 2;
> > +	int uncompressed_bpg_rate;
> > +	int first_line_bpg_offset;
> >  	u32 res, buf_i, bpp_i;
> >
> >  	if (vdsc_cfg->slice_height >=3D 8)
> > -		vdsc_cfg->first_line_bpg_offset =3D
> > -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
> >slice_height - 8)), 100);
> > +		first_line_bpg_offset =3D
> > +			12 + (9 * min(34, vdsc_cfg->slice_height - 8)) / 100;
> >  	else
> > -		vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg->slice_height -
> 1);
> > +		first_line_bpg_offset =3D 2 * (vdsc_cfg->slice_height - 1);
> > +
> > +	uncompressed_bpg_rate =3D (3 * bpc + (vdsc_cfg->convert_rgb ? 0 : 2))
> * 3;
> > +	vdsc_cfg->first_line_bpg_offset =3D clamp(first_line_bpg_offset, 0,
> > +						uncompressed_bpg_rate - 3 *
> bpp);
> >
> >  	/*
> >  	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
