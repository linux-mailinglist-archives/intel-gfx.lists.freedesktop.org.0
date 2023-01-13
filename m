Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5F1668B6A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 06:34:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D179210E1DC;
	Fri, 13 Jan 2023 05:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA05410E1DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 05:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673588058; x=1705124058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pIhoG2uJc42uBJpQcETpoAFTNADg7ILpttwwbaoLQEA=;
 b=BTMc/Q4FUls8cPE/DDPVdSuqqZ4OEnT1g/Rtfr+1LvSgCWQHmJe4Pp1S
 Sb3lYv+zkoIOOEf8rBgkzBmCbNJA2wiJsl4fJWmvKHnevysHiwLX+8pNi
 N0uX+tDZXB8aABtS4XD1OUKlcmYK9wMiLq4eDgrl622dJJV1TBU4pQHmj
 dd50pf/1V2eu56FETCq2MsXmmJzgWH7BlNCIR9DCyGU0M7Jk/NVV75NsI
 snmy+MUqrOknUA+hGZh08Fygrc2jsShIxNAeBo5G8O+IUVHsN8GUX1XT1
 9pAwVDVqQpbbQA2ETswsHlBexC8+TDXyF7OnyGiNjfu/iD4x6gXlqefG6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="388414200"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="388414200"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 21:34:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="800481578"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="800481578"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2023 21:34:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 21:34:11 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 21:34:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 21:34:11 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 21:34:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KDxU/9HiCcCccjaS7cy4yjYxVYnqKlLhgF5yqMuhPNslLL63a6ElCsse0IZplYGC5OkHHRDlo3xGdAk/u9gnJE/cdB/Xl5e06SNcbtOAbGXOJzoUGdNh58SFxnzYMMuE5AftFxBrvoHrebAzyDz2hPudPMheSrMwHYvnEHtoXB+P6nLDf8QsEYFkvERLWg3gs+EXb6z0m3mO6zJc6srAUKh0TDNYaYzFsCx7f5sd7sNyfibE8s3t4Spc7bQ8LZRbGB5Cp4Gtg2guaAHGmglYjh6dj5t5wCIHfquC4yxUmTZ6mP9VVnvEVd0QiOOgAkOExudF6yPG9W9WpwW4yIjQAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mx+aymEyW3+56qDUGQgW1o0tYcwdMcltxmxWAzOLZDk=;
 b=QR3JbgPWEFQ2lg+DBPSS0+N0xKT7XNrxyNZadDSbjrGC5XuPXZngBCcXQokP60W8sCGRMDlI/8xNXYRssNwWFNgvgSnPzKllWB+ixoWSTrfXh/7QJtLs6Y7chGlfRQ6aeNBlVfm7Feal4NyGqxH98zox72SGxwuGTyBj9Mkl8wS023/HCyEstzl115dAcy259DJ5FpBB65OVo3RixE9sVUeOxqynaCOzQGJLj5F4EYkv0/86x0l3dNpB7ijIrUaW07nofOc7ldcnwfh7Qb0l2dlIyVMgA0Qx/Hn8Zl98cgncPoofui//G3Z21h9Dx7HsYYwjTzec5ocJtjIKSJOU4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by BL3PR11MB6433.namprd11.prod.outlook.com (2603:10b6:208:3b9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 05:34:03 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c201:113e:56b0:b43e]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c201:113e:56b0:b43e%4]) with mapi id 15.20.5986.019; Fri, 13 Jan 2023
 05:34:03 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v6 3/9] drm/i915: Adding the new registers for DSC
Thread-Index: AQHZJX8q2WYUDpMKW0q75NN1DOx0G66b1jvA
Date: Fri, 13 Jan 2023 05:34:03 +0000
Message-ID: <SJ0PR11MB67890C6BAB727E80B96BDE0B8DC29@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
 <20230111053837.1608588-4-suraj.kandpal@intel.com>
In-Reply-To: <20230111053837.1608588-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|BL3PR11MB6433:EE_
x-ms-office365-filtering-correlation-id: 2e6734d4-8bfd-460c-7f39-08daf527c7e5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yjO6Gii6hiNCgtdLOq6CJap89rT9egwy/eL9+YePKKSx9iFfIzElKgCZF0+1DtjDgDKti/fsVTT0wRJzMj9QeRviD6/Yq6eVIdUbOnmIV4EyWE6lwXvrB7pxx4nHaTd0OclR8doRGre8iiJuFSFD56In3bkfMCzd/r/NLfsGAWUcACEjP79ajC8wOd8YK3+UX84vUUiCNr2gJz+S8UP4kI9WpMReg/iX3vmcgnsNYuN4b1ZfS84SJaFXNoXCmwasJ61VgmYyl5hHvvhQADvX+E77j0Q7uXU+ymUQmka9cGvKWtkVpc/+HuHgTQtuJUiDAx8ieFkjqJh32jLcqikPCGSF2BgXzftwSe2oXFK2/jyhLFjPiC8FXN6rAK3rp7yNFJb9ZjnIU8ZZ21LzpjI7xk4VeheWICV/GOZfTcr3kU/Dbx0jyUg5BjPZEj6dpn+FTnBtBd5RP6N1nevJCmftgdAfpB1P+fEqJVxNK4R6F8T3osq8KZvOaTTnxYtWsUpBmzAiRzKYi5+j+qnGWXrlaKQgDtq+7kBZiFg+Lrfz6knWMKomT/IMhAiyywdJgjW9LoQvAIfc4p0Tsd5bxDFH3cGqJuYdq0f8uCtCCi1BgC/izAyo8MntzPCtEjAtk0N1N2xCI7WLqnsDcYdq0ertbxE0UPwl8sOpPt/2FRs2WEmOOF5dF64aezPFGNeJ/L+0fnEBLhoY2tRqAXvsjfdE3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(366004)(39860400002)(376002)(451199015)(6506007)(107886003)(2906002)(55236004)(5660300002)(53546011)(52536014)(122000001)(83380400001)(64756008)(4326008)(8936002)(8676002)(66446008)(33656002)(38100700002)(82960400001)(9686003)(478600001)(41300700001)(38070700005)(66556008)(66946007)(26005)(7696005)(76116006)(66476007)(55016003)(186003)(86362001)(71200400001)(316002)(110136005)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KacnJaWGC03sNrPDwKLixexgGlKraBGKWOyb70K+ffxn44ah4cK1FuXcrTtq?=
 =?us-ascii?Q?BgP0E/O0L4xxw7GvwIqHmF7rxVv1cppQVIdamsB45UDXoGtzN5SJw213cKpe?=
 =?us-ascii?Q?7h5I2GCl7Xi5Ufa+Yw2VQVQ8M6e4SDVc3hiChgFF65vsL0XSsRhq+AgPKB/x?=
 =?us-ascii?Q?4Puah39qZY1oXaMO3b6AZVD/MvO4RsVv76D5VnuWnVSpdcKyqd/lRize/R+l?=
 =?us-ascii?Q?f6FGX9SHFLoWCiQnew3nM+PLKLX3ag3W0iuvL/b5zlgQ8eFUJJJc1+MFewGa?=
 =?us-ascii?Q?5x8bn85PKTC6HPQfFRu00te/5aVKpouKnAfL9faM8yrtMGyHbpzZYgfVmvYc?=
 =?us-ascii?Q?EAAg9aT9KVZBYwg3NkQCOwcOlxSqBiswdEW0Voz/zqa0VGlMg/Y1gkTP++eb?=
 =?us-ascii?Q?KeyHTOQ2cJFppGcxCZjHH2Q7QG0wvfSEtSPbbH5o1VkjAq1knlpAaNBqwySx?=
 =?us-ascii?Q?eYBlesqpRUggBIz7awwokD7OjLzDh1BDJzkHAryZhO+qiveAdCNVyaKQHEtQ?=
 =?us-ascii?Q?PXA4YDW3mG3jWizUTtTbJU24mDvS9iedomeT6ZI1psqJOcaWmHZ6Ts2wFt5V?=
 =?us-ascii?Q?aT16optXpIKkBzyrAvA0nQhhlU/0YSV2JY4sgtiBg6QiHsB8uk59gOn7NWQW?=
 =?us-ascii?Q?V/h5+G0BxH3IFNi0pYTGJRuhj7UyTKevh9QwGmFOLdPFvbKCaM6wDhqa337V?=
 =?us-ascii?Q?iN4w+ZncgjybCeuzTtyU0gDrv55iAuo5sWoK/mrW/tOgySe3ThFPdasN6SST?=
 =?us-ascii?Q?dBI860vO9mLjI+Xxop1tiUUvZAxyqQFRtn6aoE+k2pJS54s3OUU3oChIQCiP?=
 =?us-ascii?Q?r26YiiH/FwaakDpRK0oPK5VZ1y1T9ndGN1cRewZQwECX206XhtKinWuQFTzF?=
 =?us-ascii?Q?Kqej4BcWHy0Dy4LeaO6NqzrbU839hOveeFsVzH8polFBn6JnQvY4bWF8HSTt?=
 =?us-ascii?Q?8V8QRUKcoyyVU3FaKAp6NcQQYB1NWA8VgBzb7JJCKjtXuCEvm/1yddEkbsrs?=
 =?us-ascii?Q?xX1wJnSL2fGRjwpHzwhdos87u1WWmXYuBVpG2RnJgyixBxumSGWku7O6Bn6a?=
 =?us-ascii?Q?0myxAvGXAWH+fuMZQrCyn0NsthybERPJw4gWrstHgam9ZQHmMSNT9cQdMcW2?=
 =?us-ascii?Q?MK2cTRXmc+uDaJFyVZbcMpKd1v5r0SieMnKIyIfLf/5NMVq3M6SUl5SGK3BF?=
 =?us-ascii?Q?MwUfyaB68vAF0sV5FHHVGysfeZr9CbJ/D2B9kzVgv3zPF8tHmpZJofOKNCtI?=
 =?us-ascii?Q?uqQQ03ypmInOUMyD0hF0Wnxu+nEvX2BDWW74ZElZ4wxKoac/I0cTn9m0ys2K?=
 =?us-ascii?Q?2Ss7AXvWsYHPq3BKstpD16OSwBhnzxmhnUO2r1Zy7pet7AApSZLHColHxh5q?=
 =?us-ascii?Q?kMwT/tciENR3HohyJkSoC9+1XEaEf3xHY4Cy26Mr51m7VNPQ/5R1nGKnMOxe?=
 =?us-ascii?Q?vlAr84KU/r279g8MA1ngzqG+5SEU6623Ojcon1xVgfcKna0IBhAXcw23RhJT?=
 =?us-ascii?Q?3qJNwmIMk1tGBFJhslDKMar+uvFxS5WBfIUZvdyAlVg3Yq+kkAhU2MZm4beU?=
 =?us-ascii?Q?0QSYtaKOUQYiWDQq2Fbf0p2WvAB/heYmcGdbVULqsrFGRMBxhv62GUFXCkUb?=
 =?us-ascii?Q?PQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e6734d4-8bfd-460c-7f39-08daf527c7e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 05:34:03.2270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TIndhTtDjhrVdIKhX4G7qzgzU+6tZj0ARGDcxU+Yq9TthTJYh+nRkES89tfN43TH/wY+Ghq2jMu9QL7UDt/TtXgN2F+H57BatRpHDpVaAb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6433
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 3/9] drm/i915: Adding the new registers
 for DSC
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
> Sent: Wednesday, January 11, 2023 11:09 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; Navare, Manasi D
> <manasi.d.navare@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v6 3/9] drm/i915: Adding the new registers for DSC
>=20
> Adding new DSC register which are introducted MTL onwards
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Vandita Kulkarni <Vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 8b2cf980f323..69a645ce0fe8
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7766,6 +7766,8 @@ enum skl_power_gate {
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
>=20
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>=20
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  DSC_NATIVE_422_ENABLE		BIT(23)
> +#define  DSC_NATIVE_420_ENABLE		BIT(22)
>  #define  DSC_ALT_ICH_SEL		(1 << 20)
>  #define  DSC_VBR_ENABLE			(1 << 19)
>  #define  DSC_422_ENABLE			(1 << 18)
> @@ -8010,6 +8012,32 @@ enum skl_power_gate {
>  #define  DSC_SLICE_PER_LINE(slice_per_line)		((slice_per_line) <<
> 16)
>  #define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)
> 	((slice_chunk_size) << 0)
>=20
> +/* MTL Display Stream Compression registers */
> +#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB	0x782B4
> +#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB	0x783B4
> +#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC	0x784B4
> +#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC	0x785B4
> +#define MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> +
> _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB, \
> +
> _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC)
> +#define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> +
> _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
> +
> _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
> +#define DSC_SL_BPG_OFFSET(offset)		((offset) << 27)
> +
> +#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
> +#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
> +#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC	0x784B8
> +#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC	0x785B8
> +#define MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> +
> _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB, \
> +
> _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC)
> +#define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> +
> _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
> +
> _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
> +#define DSC_NSL_BPG_OFFSET(offset)		((offset) << 16)
> +#define DSC_SL_OFFSET_ADJ(offset)		((offset) << 0)
> +
>  /* Icelake Rate Control Buffer Threshold Registers */
>  #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
>  #define DSCA_RC_BUF_THRESH_0_UDW		_MMIO(0x6B230 + 4)
> --
> 2.25.1

