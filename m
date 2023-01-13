Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0FA668B4E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 06:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AEC410E1DC;
	Fri, 13 Jan 2023 05:28:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2739010E1DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 05:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673587731; x=1705123731;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4kxqc7NECk4Mywt0B13w9Qgd6OMMimkFQIcu2bGD72E=;
 b=cS1WUtJOCYSgO43V7yrzEAQUlzZeoKcaUh8A3CwFit+nxgiRQTZcgE59
 CDvmjdTB9P6Ta0p+YCMaTEtS37fVY1PukvWncalXUIwOLtoEVBYmz/CIX
 lfX6VwnSK7g9it83sG+CmBqpgqa0/vmoBGUDhRjT3jpboQPYAEMeN0a91
 nSXtkM5GE1+dBjqvGdrqoIZYWdKsW99l8iaD5Bm6TuFoVMgHmIPOertZs
 E3+4Clyz1LDvEsZp3bPLYc0H/5t7M0UwNLf0EP2LHZPbU++Cn5CF3qKrq
 HnhVhvO00ViiHNL++bCqV9c+wxVdrS1DQuU7NvtLUnLOdJrTMwrGVOhiu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="322618497"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="322618497"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 21:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="986867931"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="986867931"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jan 2023 21:28:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 21:28:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 21:28:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 21:28:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 21:28:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1yngnr1DS/js/zZky5qYtf6CmiEsb/mLFsaOZXV18qFPdDAkgpeIgTA+svW82Dpp03Amt8RsS31JpiY7Y6vM+TJ2c/AxM0WgCI5eV3YN+7HYU0KMJatLdFNIU8XihU+YaWSwlBQ5tz7oU9jXHPEdLHZKtW0k4HDEV1iiLGqJzMDKLnVUWG+o3uB2dpEHN9A2CrVkvTglIDZiOEggYp61ndt0vs64btX1UY2cI1UMrhzLisIfWZiRVtTriTdW5qoQ909n5bCvmFk9JiV0yrhfogY+lin35kEqgUEM5GTAoZWjDTxVYFB1Lf/8Lf3jN2RsmHYSc4qay22Ya6kliuv5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r0tsqAqob7wRx07NRWyNGMvx9tmHy/8ccPbN/5XeGrk=;
 b=lk3XBzDBML2DGBAM8eOnoHry7UHpFkIIJf+AvOoyByNTEQX5gKNdSdxC+OVqV7R391Fi2Dhe1YxhKw7kTdKVf7dcgWMkQfSMhd3NjhV39q6KCl2K3OF3NauP1SEgk6lc5HMKE5hqLdSHOgAMLKMEnhlpTM5JdE0Dr8EfkkOFVlHi6XwqVOfHlVKGRDmi/5mgpHzdxIg+IvGgbJ9xQw5pMRrmoNeyc6AnQ9cWYuM3rB+sKccXRY+VxOAgFMmIe56Sf4LAtSRDXvhRmF1k/azhgea5VT8J7NZfbPXluXboImcA0Iqj125XgaYn3ZT3NSrxW4R8rDKVcpyi414qM9sXcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by BL3PR11MB6433.namprd11.prod.outlook.com (2603:10b6:208:3b9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 05:28:46 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c201:113e:56b0:b43e]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c201:113e:56b0:b43e%4]) with mapi id 15.20.5986.019; Fri, 13 Jan 2023
 05:28:46 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v6 4/9] drm/i915: Enable YCbCr420 for VDSC
Thread-Index: AQHZJX8sk61jWjb4W0yucvp6nriepa6b04AQ
Date: Fri, 13 Jan 2023 05:28:45 +0000
Message-ID: <SJ0PR11MB6789C7ED334BC65866CC3A498DC29@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
 <20230111053837.1608588-5-suraj.kandpal@intel.com>
In-Reply-To: <20230111053837.1608588-5-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|BL3PR11MB6433:EE_
x-ms-office365-filtering-correlation-id: 39d35d1d-d9a7-4e03-46c2-08daf5270a95
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CWgLK4XELjPm7NneYvFaBopWkaEnntKrJVB4sKj318r/4B/7zcH/XU5uZDJFq2YsxNunqpVeUUTj0kWxcp//Sz7zeT+Z4cq/oRlrhJRmE76Y26el04J4Cb+VOF0Bnfjjo88+5RS08lCWiHfe0TvZW8uCZXsZJtvN+WwEG1RY1HTW3oKI7pWsKzDYG9huVjkJWV1L7tMbe56ibOiew5TslpO4Jrskr2YlVcEB/aIbJrmA0msqHHgMXouuHkFMwAfOcVS1mBroN/WCiUWIHHg4f/2cvq/pt3mc2ZKDd9Qbho6TKLHbu3YHPSiyIPAFENnGxZO8Q50bZg7KaocCGxdIugEJL7IoZ9cnipde+TMyrZYlRbqNIff+iKHVS8i4MaJ0tR8q1Wi8wGlV/OU4/gMug+CARwbEcHgDT+54hf7InzkC6HqirjWUL/95fqw0N7ZylmysR8e0HCzxYgDqD4k4NY0zRFG3GpEEVTr85K6PWlGx27lPnVOhyns/2WVLKiHN//SBh5VIkHlae8uRcUtiRXKoS2nXlJdS0t0mBe31Q3qg28WfJ/Iv4j+U8g/pNKVxU3RS7RRjd13OkxTXeCb3TFeyc5sNMl3zdbYRiFR3Q3lZ+Irg8aCkatqO7Pey4HoKUyfek/d/ARTZuwgkBSv7c+Bqng3/AXSt2vHPQpZLs7CxAvZFqKLTrmeZ2h82lwX/H9QAcqKzXnRgS8dus3NS7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(6029001)(396003)(136003)(346002)(366004)(39860400002)(376002)(451199015)(6506007)(107886003)(2906002)(55236004)(5660300002)(53546011)(52536014)(122000001)(30864003)(83380400001)(64756008)(4326008)(8936002)(8676002)(66446008)(33656002)(38100700002)(82960400001)(9686003)(478600001)(41300700001)(38070700005)(66556008)(66946007)(26005)(7696005)(76116006)(66476007)(55016003)(186003)(86362001)(71200400001)(316002)(110136005)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jmt2aK7aQqm5K9RJFT3Xy4FjtnzmCKc5tPUHYelYULVZswWNp+uyY6Pdp08O?=
 =?us-ascii?Q?nnKuhCRVDblAL8K+awMvOnvdLjHBi41UUXLC20DCYySqnaVHMCymsKiQVB+i?=
 =?us-ascii?Q?a/syvqA+IulaJPHcaT8k/lh3l9QPmOXReuKK/LjXunopn0tDOVP4rq3nkfFT?=
 =?us-ascii?Q?iPqMYE1KB8C/duwYoNORuptXU4y7MEbEY4pj1bBSgFztSQUF154B6V3tjpjQ?=
 =?us-ascii?Q?0fqjgcjW9pT+YHDwGJAn54jLpi+0Lm30ZkdFYFkDtTCJz0EY4pBqp+CcZu8M?=
 =?us-ascii?Q?MG1TQGH2/7FLHExpazdY2ae85pODc9elUIuPjbs8liOe5cjuDuFk9UMaA0uV?=
 =?us-ascii?Q?BmEx2Dj5lYB/DPSsImsuHCQT8piFoSFZ9OsaWtdhP2HJ5Yz+M+E9xCzZUmH6?=
 =?us-ascii?Q?vLNhKt9E6o8hkteSOIytyF5N6aq0nD7Q2ZZv5LbhUFO2vz0p74jehMDA6NKQ?=
 =?us-ascii?Q?Ukur8w8soyXHUQ+0ZojFMuG01t+OKeCZgF3hUC6RTiyzEbM5k0wqgSE/q9uV?=
 =?us-ascii?Q?/hfroMEaTH7CvVMif2Kq+vLFVrW7sThs2XpKJIF2RXUiAuGbK9WDECj+azav?=
 =?us-ascii?Q?ul8nhbbRB3gjKWjyysVApccpbTXzQWU+SBdOQuYWDUCR0lfTd6aQneqhXV6I?=
 =?us-ascii?Q?6ktgdNHya6d2mA/QQ6Us9X/n0auRYkrM/O39xfOsgBXHGpTVwl/GNlHtyRRO?=
 =?us-ascii?Q?AbJ7Wni943Z04ltvuavr3nL4DAxrUC3SDya2rYYtiIiVNz5zDdwf9z9te1GK?=
 =?us-ascii?Q?hiH4EF6g+ZEOw/4/tW68jv5BsPfX7id8pIaqXtwm2vQg7xGAxWooCJi6QvHT?=
 =?us-ascii?Q?XMKmVV2YgBWq9msMANRZGDH7WWy2myKy8g/DKd9kXt+tR1lvNlmnSLHh3bHw?=
 =?us-ascii?Q?WteX1GmpQZHehqIewDO0Fx0smqVuPLUPIb/f0Ma6+98vrSrtdA/DBLV4oA7C?=
 =?us-ascii?Q?OZUQtPRxE4etqs5AKsjBQhrQVfeC3elOClkylv4zDkG7XWpsfMAA5GuNzvbb?=
 =?us-ascii?Q?rufT2mxQzaPqNwOvzLMLobzdkDKmaj6MOAp4N7TTkY0nGrg3qsrvmGZVxbO+?=
 =?us-ascii?Q?yztY9shoz22u3+x7K6eakoRybPCh7J3eOrIU+7G3xcHeEH5w8kxomAWF//fA?=
 =?us-ascii?Q?+0Ldg7mai6rdvPtP2MXLN77WhB9yRvnucoE7Y3/iqxRMuTjccXnWjA7rGrAt?=
 =?us-ascii?Q?3EQx2BMIbLrYnsxPxzjoTnnVHUmXcvKtgy1FZUGGiHkvwR0TLEfYqTJNPqx6?=
 =?us-ascii?Q?X5D6bFTOQvEgCexqlil2/4qDNGRtePnMPPDjRuDOuYNwxmk2X+tTWr4d3obW?=
 =?us-ascii?Q?hlL+uCa4E7tXt84RnmDDR2R5wQ7qguLSYtcDD1rvAM8LRLbag8w1/KB+QshB?=
 =?us-ascii?Q?fu3maMGOA3lPxGpvVummpbMvTYbbVaC/LvlSin9k+LzHg89HwO3ozI0vqu0X?=
 =?us-ascii?Q?qWf6WvXC2AX2Ho1UwnQGfLrsY197mLyGnhLVLPbR6MhBprRwzeaOXhEIvAJV?=
 =?us-ascii?Q?8CTR8Ze6sTX/AmvXTYG+PN61VNjngYXBnu7LBlJK7PnrjT+n5g8f1pRF2IId?=
 =?us-ascii?Q?6wI+6C0wOSufnaWS5cGf7Ra9Ivbqj16qr3Tw9pmG0ViAYDOd6ytdjAcoLq86?=
 =?us-ascii?Q?vQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39d35d1d-d9a7-4e03-46c2-08daf5270a95
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 05:28:45.6275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dz2gnDZlNL9Qjn+4sbXFHi+iq72fYV05SBTeOgiFlm9OCGI3AVjt6MTmNcYpaa7QDvsKJVxvvLMKPzAuWt23rz1V9EWrx5/IagZwooaQLV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6433
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 4/9] drm/i915: Enable YCbCr420 for VDSC
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
> Subject: [PATCH v6 4/9] drm/i915: Enable YCbCr420 for VDSC
>=20
> Implementation of VDSC for YCbCr420.
Some more description on from where the tables that are added in this patch=
 were
taken from and spec reference will be good to have here.

With that added the patch looks good to me.
Reviewed-by: Vandita Kulkarni <Vandita.kulkarni@intel.com>
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
>  .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +-
>  3 files changed, 180 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> index 6f8e4ec5c0fb..6e86c0971d24 100644
> --- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> +++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> @@ -17,6 +17,15 @@
>  /* from BPP 6 to 36 in steps of 0.5 */
>  #define RC_RANGE_QP444_12BPC_MAX_NUM_BPP	61
>=20
> +/* from BPP 6 to 24 in steps of 0.5 */
> +#define RC_RANGE_QP420_8BPC_MAX_NUM_BPP		17
> +
> +/* from BPP 6 to 30 in steps of 0.5 */
> +#define RC_RANGE_QP420_10BPC_MAX_NUM_BPP	23
> +
> +/* from BPP 6 to 36 in steps of 0.5 */
> +#define RC_RANGE_QP420_12BPC_MAX_NUM_BPP	29
> +
>  /*
>   * These qp tables are as per the C model
>   * and it has the rows pointing to bpps which increment @@ -283,26
> +292,182 @@ static const u8
> rc_range_maxqp444_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444_
> 12BPC
>  	  11, 11, 10, 10, 10, 10, 10, 9, 9, 8, 8, 8, 8, 8, 7, 7, 6, 6, 6, 6, 5,=
 5, 4 }  };
>=20
> -#define PARAM_TABLE(_minmax, _bpc, _row, _col)  do { \
> -	if (bpc =3D=3D (_bpc)) \
> -		return
> rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
> +static const u8
> rc_range_minqp420_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_8B
> PC_MAX_NUM_BPP] =3D {
> +	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
> +	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
> +	{ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
> +	{ 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
> +	{ 3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0 },
> +	{ 3, 3, 3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 },
> +	{ 3, 3, 3, 3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0 },
> +	{ 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0 },
> +	{ 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 0 },
> +	{ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 1, 1 },
> +	{ 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 1, 1 },
> +	{ 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 2, 2, 1 },
> +	{ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 1 },
> +	{ 9, 8, 8, 7, 7, 7, 7, 7, 7, 6, 5, 5, 4, 3, 3, 3, 2 },
> +	{ 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 6, 6, 5, 5, 4, 4, 3 } };
> +
> +static const u8
> rc_range_maxqp420_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_8
> BPC_MAX_NUM_BPP] =3D {
> +	{ 4, 4, 3, 3, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
> +	{ 4, 4, 4, 4, 4, 3, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
> +	{ 5, 5, 5, 5, 5, 4, 3, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0 },
> +	{ 6, 6, 6, 6, 6, 5, 4, 3, 2, 2, 2, 1, 1, 1, 1, 0, 0 },
> +	{ 7, 7, 7, 7, 7, 5, 4, 3, 2, 2, 2, 2, 2, 1, 1, 1, 0 },
> +	{ 7, 7, 7, 7, 7, 6, 5, 4, 3, 3, 3, 2, 2, 2, 1, 1, 0 },
> +	{ 7, 7, 7, 7, 7, 6, 5, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1 },
> +	{ 8, 8, 8, 8, 8, 7, 6, 5, 4, 4, 4, 3, 3, 2, 2, 2, 1 },
> +	{ 9, 9, 9, 8, 8, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1 },
> +	{ 10, 10, 9, 9, 9, 8, 7, 6, 5, 5, 5, 4, 4, 3, 3, 2, 2 },
> +	{ 10, 10, 10, 9, 9, 8, 8, 7, 6, 6, 5, 5, 4, 4, 3, 2, 2 },
> +	{ 11, 11, 10, 10, 9, 9, 8, 7, 7, 6, 6, 5, 5, 4, 3, 3, 2 },
> +	{ 11, 11, 11, 10, 9, 9, 9, 8, 7, 7, 6, 5, 5, 4, 4, 3, 2 },
> +	{ 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 6, 6, 5, 4, 4, 4, 3 },
> +	{ 14, 13, 13, 12, 11, 11, 10, 9, 9, 8, 7, 7, 6, 6, 5, 5, 4 } };
> +
> +static const u8
> rc_range_minqp420_10bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_1
> 0BPC_MAX_NUM_BPP] =3D {
> +	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }=
,
> +	{ 4, 4, 4, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }=
,
> +	{ 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0 }=
,
> +	{ 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0 }=
,
> +	{ 7, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0 }=
,
> +	{ 7, 7, 7, 7, 7, 6, 5, 5, 5, 5, 5, 4, 3, 3, 2, 2, 1, 1, 1, 1, 1, 0, 0 }=
,
> +	{ 7, 7, 7, 7, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 2, 2, 2, 2, 1, 1, 1, 0 }=
,
> +	{ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 5, 4, 4, 4, 3, 2, 2, 2, 1, 1, 1, 0 }=
,
> +	{ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 2, 1, 1 }=
,
> +	{ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1 }=
,
> +	{ 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1 }=
,
> +	{ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 6, 6, 5, 4, 4, 3, 3, 2, 1 }=
,
> +	{ 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 7, 7, 6, 5, 4, 4, 3, 3, 2, 1 }=
,
> +	{ 13, 12, 12, 11, 11, 11, 11, 11, 11, 10, 9, 9, 8, 7, 7, 6, 5, 5, 4, 3,=
 3,
> +	  2, 2 },
> +	{ 17, 16, 16, 15, 14, 14, 13, 12, 12, 11, 10, 10, 10, 9, 8, 8, 7, 6, 6,=
 5,
> +	  5, 4, 4 }
> +};
> +
> +static const u8
> rc_range_maxqp420_10bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_
> 10BPC_MAX_NUM_BPP] =3D {
> +	{ 8, 8, 7, 6, 4, 4, 3, 3, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 }=
,
> +	{ 8, 8, 8, 7, 6, 5, 4, 4, 3, 3, 3, 3, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0 }=
,
> +	{ 9, 9, 9, 8, 8, 7, 6, 5, 4, 3, 3, 3, 3, 3, 2, 1, 1, 1, 0, 0, 0, 0, 0 }=
,
> +	{ 10, 10, 10, 9, 9, 8, 7, 6, 5, 4, 4, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 0,
> +	  0 },
> +	{ 11, 11, 11, 10, 10, 8, 7, 6, 5, 4, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1=
,
> +	  0 },
> +	{ 11, 11, 11, 10, 10, 9, 8, 7, 6, 6, 6, 5, 4, 4, 3, 3, 2, 2, 2, 2, 2, 1=
,
> +	  1 },
> +	{ 11, 11, 11, 11, 11, 10, 9, 8, 7, 7, 7, 6, 5, 5, 4, 3, 3, 3, 3, 2, 2, =
2,
> +	  1 },
> +	{ 12, 12, 12, 12, 12, 11, 10, 9, 8, 8, 8, 7, 6, 5, 5, 4, 3, 3, 3, 2, 2,
> +	  2, 1 },
> +	{ 13, 13, 13, 12, 12, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 5, 4, 4, 3, 3, 3=
,
> +	  2, 2 },
> +	{ 14, 14, 13, 13, 13, 12, 11, 10, 9, 9, 9, 8, 8, 7, 7, 6, 5, 4, 4, 3, 3=
,
> +	  2, 2 },
> +	{ 14, 14, 14, 13, 13, 12, 12, 11, 10, 10, 9, 9, 8, 8, 7, 6, 5, 5, 4, 4,
> +	  3, 3, 2 },
> +	{ 15, 15, 14, 14, 13, 13, 12, 11, 11, 10, 10, 9, 9, 8, 7, 7, 6, 5, 5, 4=
,
> +	  4, 3, 2 },
> +	{ 15, 15, 15, 14, 13, 13, 13, 12, 11, 11, 10, 9, 9, 8, 8, 7, 6, 5, 5, 4=
,
> +	  4, 3, 2 },
> +	{ 17, 16, 16, 15, 14, 14, 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 6, 6, 5, =
4,
> +	  4, 3, 3 },
> +	{ 18, 17, 17, 16, 15, 15, 14, 13, 13, 12, 11, 11, 11, 10, 9, 9, 8, 7, 7=
,
> +	  6, 6, 5, 5 }
> +};
> +
> +static const u8
> rc_range_minqp420_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_1
> 2BPC_MAX_NUM_BPP] =3D {
> +	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, =
0,
> +	  0, 0, 0, 0, 0 },
> +	{ 4, 4, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, =
0,
> +	  0, 0, 0, 0, 0 },
> +	{ 9, 8, 8, 7, 7, 6, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2, 2, 1, 0, 0, 0, 0, 0, =
0,
> +	  0, 0, 0, 0, 0 },
> +	{ 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 3, 2, 2, 1, 1, 1, 0, 0,=
 0,
> +	  0, 0, 0, 0, 0 },
> +	{ 11, 10, 10, 10, 10, 9, 9, 8, 7, 6, 6, 6, 6, 5, 5, 4, 3, 3, 3, 2, 2, 1=
,
> +	  0, 0, 0, 0, 0, 0, 0 },
> +	{ 11, 11, 11, 11, 11, 10, 10, 9, 9, 9, 9, 8, 7, 6, 5, 5, 4, 4, 3, 3, 3,=
 2,
> +	  1, 1, 0, 0, 0, 0, 0 },
> +	{ 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 6, 5, 5, 5, 5, 4, 3=
, 3,
> +	  2, 1, 1, 1, 1, 1, 0 },
> +	{ 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 9, 8, 8, 8, 7, 6, 6, 5, 4=
, 4,
> +	  3, 2, 2, 1, 1, 1, 1, 1 },
> +	{ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, =
5,
> +	  5, 4, 4, 2, 2, 1, 1, 1, 1 },
> +	{ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7,=
 6,
> +	  5, 4, 4, 3, 2, 2, 1, 1, 1 },
> +	{ 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7=
, 7,
> +	  6, 5, 4, 3, 3, 2, 2, 1, 1 },
> +	{ 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 11, 10, 10, 9, 8,=
 8,
> +	  7, 7, 6, 5, 4, 3, 3, 2, 2, 1 },
> +	{ 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 11, 11, 10, 9, 8,=
 8,
> +	  7, 7, 6, 5, 4, 4, 3, 2, 2, 1 },
> +	{ 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 13, 13, 12, 11, 11, 10, 9, 9,=
 8,
> +	  8, 7, 6, 6, 5, 4, 4, 3, 3, 2 },
> +	{ 21, 20, 20, 19, 18, 18, 17, 16, 16, 15, 14, 14, 14, 13, 12, 12, 11, 1=
0,
> +	  10, 10, 9, 8, 8, 7, 6, 6, 5, 5, 4 }
> +};
> +
> +static const u8
> rc_range_maxqp420_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_
> 12BPC_MAX_NUM_BPP] =3D {
> +	{ 11, 10, 9, 8, 6, 6, 5, 5, 4, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0=
,
> +	  0, 0, 0, 0, 0, 0 },
> +	{ 12, 11, 11, 10, 9, 8, 7, 7, 6, 6, 5, 5, 4, 3, 3, 2, 1, 1, 1, 1, 1, 1,
> +	  1, 0, 0, 0, 0, 0, 0 },
> +	{ 13, 12, 12, 11, 11, 10, 9, 8, 7, 6, 6, 6, 5, 5, 4, 3, 3, 2, 1, 1, 1, =
1,
> +	  1, 0, 0, 0, 0, 0, 0 },
> +	{ 14, 13, 13, 12, 12, 11, 10, 9, 8, 7, 7, 6, 6, 5, 5, 4, 3, 3, 2, 2, 2,=
 1,
> +	  1, 1, 0, 0, 0, 0, 0 },
> +	{ 15, 14, 14, 13, 13, 11, 10, 9, 8, 7, 7, 7, 7, 6, 6, 5, 4, 4, 4, 3, 3,=
 2,
> +	  1, 1, 1, 0, 0, 0, 0 },
> +	{ 15, 15, 15, 14, 14, 13, 12, 11, 10, 10, 10, 9, 8, 7, 6, 6, 5, 5, 4, 4=
,
> +	  4, 3, 2, 2, 1, 1, 0, 0, 0 },
> +	{ 15, 15, 15, 15, 15, 14, 13, 12, 11, 11, 11, 10, 9, 8, 7, 6, 6, 6, 6, =
5,
> +	  4, 4, 3, 2, 2, 2, 1, 1, 0 },
> +	{ 16, 16, 16, 16, 16, 15, 14, 13, 12, 12, 12, 11, 10, 9, 9, 8, 7, 7, 6,=
 5,
> +	  5, 4, 3, 3, 2, 2, 2, 1, 1 },
> +	{ 17, 17, 17, 16, 16, 15, 14, 14, 13, 13, 12, 12, 11, 11, 10, 9, 8, 8, =
7,
> +	  6, 6, 5, 5, 3, 3, 2, 2, 1, 1 },
> +	{ 18, 18, 17, 17, 17, 16, 15, 14, 13, 13, 13, 12, 12, 11, 11, 10, 9, 8,=
 8,
> +	  7, 6, 5, 5, 4, 3, 3, 2, 2, 1 },
> +	{ 18, 18, 18, 17, 17, 16, 16, 15, 14, 14, 13, 13, 12, 12, 11, 10, 9, 9,=
 8,
> +	  8, 7, 6, 5, 4, 4, 3, 3, 2, 2 },
> +	{ 19, 19, 18, 18, 17, 17, 16, 15, 15, 14, 14, 13, 13, 12, 11, 11, 10, 9=
,
> +	  9, 8, 8, 7, 6, 5, 4, 4, 3, 3, 2 },
> +	{ 19, 19, 19, 18, 17, 17, 17, 16, 15, 15, 14, 13, 13, 12, 12, 11, 10, 9=
,
> +	  9, 8, 8, 7, 6, 5, 5, 4, 3, 3, 2 },
> +	{ 21, 20, 20, 19, 18, 18, 17, 16, 16, 15, 14, 14, 13, 12, 12, 11, 10, 1=
0,
> +	  9, 9, 8, 7, 7, 6, 5, 5, 4, 4, 3 },
> +	{ 22, 21, 21, 20, 19, 19, 18, 17, 17, 16, 15, 15, 15, 14, 13, 13, 12, 1=
1,
> +	  11, 11, 10, 9, 9, 8, 7, 7, 6, 6, 5 } };
> +
> +#define PARAM_TABLE(_minmax, _bpc, _row, _col, _is_420)  do { \
> +	if (bpc =3D=3D (_bpc)) {	\
> +		if (_is_420)	\
> +			return
> rc_range_##_minmax##qp420_##_bpc##bpc[_row][_col]; \
> +		else	\
> +			return
> rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
> +	}	\
>  } while (0)
>=20
> -u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i)
> +u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i, bool
> +is_420)
>  {
> -	PARAM_TABLE(min, 8, buf_i, bpp_i);
> -	PARAM_TABLE(min, 10, buf_i, bpp_i);
> -	PARAM_TABLE(min, 12, buf_i, bpp_i);
> +	PARAM_TABLE(min, 8, buf_i, bpp_i, is_420);
> +	PARAM_TABLE(min, 10, buf_i, bpp_i, is_420);
> +	PARAM_TABLE(min, 12, buf_i, bpp_i, is_420);
>=20
>  	MISSING_CASE(bpc);
>  	return 0;
>  }
>=20
> -u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i)
> +u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i, bool
> +is_420)
>  {
> -	PARAM_TABLE(max, 8, buf_i, bpp_i);
> -	PARAM_TABLE(max, 10, buf_i, bpp_i);
> -	PARAM_TABLE(max, 12, buf_i, bpp_i);
> +	PARAM_TABLE(max, 8, buf_i, bpp_i, is_420);
> +	PARAM_TABLE(max, 10, buf_i, bpp_i, is_420);
> +	PARAM_TABLE(max, 12, buf_i, bpp_i, is_420);
>=20
>  	MISSING_CASE(bpc);
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.h
> b/drivers/gpu/drm/i915/display/intel_qp_tables.h
> index 9fb3c36bd7c6..a9ff9ca29938 100644
> --- a/drivers/gpu/drm/i915/display/intel_qp_tables.h
> +++ b/drivers/gpu/drm/i915/display/intel_qp_tables.h
> @@ -8,7 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> -u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i);
> -u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i);
> +u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i, bool
> +is_420);
> +u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i, bool
> +is_420);
>=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 207b2a648d32..ed16f63d6355 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -422,9 +422,9 @@ calculate_rc_params(struct rc_parameters *rc,
>  	for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
>  		/* Read range_minqp and range_max_qp from qp tables */
>  		rc->rc_range_params[buf_i].range_min_qp =3D
> -			intel_lookup_range_min_qp(bpc, buf_i, bpp_i);
> +			intel_lookup_range_min_qp(bpc, buf_i, bpp_i,
> vdsc_cfg->native_420);
>  		rc->rc_range_params[buf_i].range_max_qp =3D
> -			intel_lookup_range_max_qp(bpc, buf_i, bpp_i);
> +			intel_lookup_range_max_qp(bpc, buf_i, bpp_i,
> vdsc_cfg->native_420);
>=20
>  		/* Calculate range_bgp_offset */
>  		if (bpp <=3D 6) {
> --
> 2.25.1

