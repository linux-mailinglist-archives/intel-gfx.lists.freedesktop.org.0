Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 701C5769AA7
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 079F910E2B3;
	Mon, 31 Jul 2023 15:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E44C10E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816705; x=1722352705;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nbD1bTD+APLgAzmWvI3nJfzN/V5pOoTFZvD8rawr9bs=;
 b=Bp6wRxy7kJ3QZojriYjkuR+nPn+b8eUlv0fzGdG9ba+e4O7aaIeKDC7G
 Fu++EnToFwu6vtUTYGaoTO3EcboUn4OfAI73ORgHAnp6JIM6sSuxwHaMb
 KfeIX47c41TF58jpl3BQLi1xiO4uuhjn+yayp5z2wP1EbuY1z1IfvzAbs
 QHnBZrevHrc7+as2Jp5N/lWOYwChPTNVtzShEE2chUyl3uYIpxHiXeZh4
 QxMOgTVTSW3XtSQ2+6icnDWH8UbrUC9FfQUmpKuqYImae892o6R5AQ997
 6lLLpcmUp+n1Gl0IQCgLyD4qmcKK21kGGf9QV7Oi499xppoM2K7/l+bn0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="432863880"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="432863880"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="974895883"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="974895883"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2023 08:17:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:17:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:17:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:17:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:17:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cSS3omYOdkvbTtX4HfHK6G3/C0PISHeOMsJrh8BzDwFRI/HNK5Ic3TSqmsxg8NQ4BZmMZp13iPm9QsDjiwsP5qDGbrfC4yZZzerlhZcYjFGxPUe4y/stT64JnNUFzmdsZi8IGOZVYilKmJ0bDMTSZ+XukuGk8h0h2GEO9L11FmNuTW0FHLLCasT7cERUCi5P6ZASiJJIXDWzdSJywHiYSzKBTEYpFb9My+B5F9yinAncHajG9g2W7jNOGovROkRCkm+NxwwJY7lJ3ecDQYx15B+dTubYX1LwkY9tgcq+z9h+6cYO0WjQNI2wHVLWwU0KgAaMz2vq9e/urIlfSg9QdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E0EUxOFNH/SEhiXo0+wk3bslgkGdNVLioRB/zVcZL/s=;
 b=lfnCGIq87o4TWrzvZWGC94HIXU0ZVdyfYTmji0yqQ33siwdGI9jdSRzmGLCR+3fy6OciQiO/BEo5OwwsFzab3cOOXaQDzLEDTm6r7X8LK0NjPXHTb5GA8Qg1sikhtRetHWC+8n9gMPLkve3TAZTxA0ngbAJkx/7HNe4VPtLCsm+Iqhe1pr2M3KkPxDVBMyvEN2J0bMb/QhX2NkcnzXdk6uDMWWDUwpLOhJzWmnV2RB9HPqmh3dkj2Pgt+r6h6dif11VQdNRRv/lmdyUDegkcTtj9BId3onDaLGWK+VK25Z3H4T/f4+L4Xt8Tb6twvJPw7u/F1NAxl1a0ZjvLCr5Mgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SA1PR11MB7063.namprd11.prod.outlook.com (2603:10b6:806:2b5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Mon, 31 Jul
 2023 15:17:52 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:17:50 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 06/14] drm/i915/cml: s/CML/COMETLAKE for
 platform/subplatform defines
Thread-Index: AQHZv/zSmaEebz5maE2+CRIK0RoRwK/UBC5w
Date: Mon, 31 Jul 2023 15:17:50 +0000
Message-ID: <SJ2PR11MB77156842DCAC4A8E182A8CF0F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-7-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-7-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SA1PR11MB7063:EE_
x-ms-office365-filtering-correlation-id: 3c8d18d2-b655-4769-34c7-08db91d94dd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HRkVpySSFlpeMPHFK07LW5FEWYUr/9/Exagsht7OioiIMBcL3gUJz2ghkmGO7db0UxxRa7Eoj3aRpYUCNF9kLBgW9O6MbWPOKORPsaIT4ubR/n2NCz/vrBa9dSFiz7EwPN7E8ygIRjT4XrhOtDEqRcfs+rR4dKu2GnY6uuu8DhFdlHf5F9ZqJgP+6LKyHdfr5jSIOQTn/PYIpvJ0cjN8UjlOTX796X8bE45zlkaF4HkOSPIdjTH7Bfxtuo4IrkEszLYu5+fGcO0ia8nDRHl3oE3dCz7ft2fWUVWfZj9NAOcxqkKIZMeQxckFSltPu5/7yJwBikelsbmAGb8BtTCbmjT37H6D28KtG6lYQf9CrjlHklkt4NSxhy1+sligPUXssY5Hk3Yd38S9cVxPcBo0yqTLSbnHH2ESDdwZm2WDrVQFRxLWgQ7RXtxDYp8FdZG1z50s1wwgOdl1jijI7SQ0cHyyibrNgqA0krPGFf8z08LP/vgttrLZEwqHX1vLw0W/SY1ufx58bvfynuDdGpRHkDiN3Z3lE5c92EqpydUVdquNWpWMaei6V6S0ULKIvIpf7rh39WDkNyip9bkV75K1qpO0tzTipEJtVwLEJrdlb99jPlZiliQvbXLB4UT+1pwd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199021)(26005)(53546011)(52536014)(6506007)(8936002)(8676002)(33656002)(86362001)(5660300002)(186003)(83380400001)(9686003)(41300700001)(76116006)(71200400001)(122000001)(82960400001)(2906002)(7696005)(478600001)(110136005)(54906003)(55016003)(38100700002)(316002)(66446008)(38070700005)(66476007)(64756008)(4326008)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BldOkypd+h9A1B73P3Ko44FaHcyaY0nS4QC/HXWxTqvhhuE+LjHovIcWRn7D?=
 =?us-ascii?Q?uOBs9QsGR+oLXe6a27X/gpU1aZQ674ExUHSNRAhBExE/iEcRfpYmzQ2HmRkk?=
 =?us-ascii?Q?4Q8W3NWm9Xpo+95QjMHvimkFS6CWqkfkfmBW/f6aBzvGL7XBLkw7R3Cimqov?=
 =?us-ascii?Q?PZxthtq8qfPHv6FNpWkY1QG+i01kDgj/K5Cl3DjLefdQrRkpJQmxumQPuhEW?=
 =?us-ascii?Q?ELYJKWO5t+gIEh1xSp1FJp0B1E0ViVRHqxZIJyK1Nxmx9O4dSE/42ONYFn1v?=
 =?us-ascii?Q?XfQXf+fcL6yd/6McHRv4J89vsfQKYedauf7VlFSu4NteagCxqfrgopMKsMII?=
 =?us-ascii?Q?v4XKvHcu0BS2Xufwb5agebG4vyRO7dkA1XIX8qrm1QXr5bjZzh/YQH3fqH3X?=
 =?us-ascii?Q?CS/fE1vWulTDgpYGsvfK6cx4+aoGogN2JwhwmtoF4Tqh6VSWmiqmDwOKS0Pn?=
 =?us-ascii?Q?Alj+frQ9jrX5FPwC9Xl5a/wlrx5wVrquuwqV0fC+cJtmvLzMoz2m5XvDKrCC?=
 =?us-ascii?Q?/T/+bdcSC0BDPoWSGPGB04/ZpOnog9hHynUgzpDTjfO4tc8rz5CdDQ8DHifL?=
 =?us-ascii?Q?cJsROwAn6ubueoDaI2UsIhGN40PcomDTsCOxvkQbQ5Ndzd9hsWOTtZiyKXVU?=
 =?us-ascii?Q?TIVpItJytgbfvEllUf2tMdUrU1F0ciwJyj106aPGHEKGiGRGOFUzMp98kDWV?=
 =?us-ascii?Q?3ZdGjSX3H/ptd66XJ6zp9LeR3HI71PuvAvm9pjjxFtZJwLJ+PkguQH0mDOLQ?=
 =?us-ascii?Q?Odf1jlt/gjRs82rsECRIKXF6y92bFAATkMmztjv0bkXEIlYM55YV9KKBWNYj?=
 =?us-ascii?Q?D41BKRw7PAm957su0kexWQaCebCk3JAxT+WtmC0cY9kmotVhGqEfWVsokmwq?=
 =?us-ascii?Q?5NGITyUu/U3/EiVktLuxdjERvmorD/Byvu0cLHqgxMpAzSlbJffXYR7PcTw8?=
 =?us-ascii?Q?mLLWxl0bUsMjR2mJtlJuep+TqymF84a5/FxXHo7fJS+0ysh+yOzvPgUi8kyy?=
 =?us-ascii?Q?rzu9tjTg4PaMe8nR6X27JiXjokXLp25KINJmINBQUng2ejCizHUZG7TAalp3?=
 =?us-ascii?Q?9xarvPlTxVEFu9/0MR/5ryFVlqrmhuJbvRZX84y98oZ9XliMku967Ih5cd9g?=
 =?us-ascii?Q?g/WneuvMCxRJscumrSVaQGPU5gVqfy6DMqzBBPbhf4+fl2v2v3eGyVsdG5Ex?=
 =?us-ascii?Q?whJ+3X0Y/wpamy8NgkHszTVu9sbo4lRwsZa6jz/P/72EKEbjZrL0jijYBQ0m?=
 =?us-ascii?Q?YL63KVyISNIW69KEdnvTtwh7tVFtmhiCIJcgUGs0dLc3Rs4euDpgOOKL9XXB?=
 =?us-ascii?Q?0aI3glFIDRKx93oCwwIHkYF7Zwqeqcew2hCL55/7fy68YcG4Hxi/fb+4ZqSr?=
 =?us-ascii?Q?YuPq6w48k2gH6jS6uJ2S90Uhvpu32ZqsqmBCSDDaruDUqcdf6IXvbZZIB/TU?=
 =?us-ascii?Q?IXW2BJPZqPlh2RQiGNPAI92WWNYF6l/Mpkx+YwsawBjQKh6peUX8VsbTGvL3?=
 =?us-ascii?Q?8HwCwd8naHWnJzdkpGf77ScvC0w73ZDaILgLA37j66lLRgBxgw9fLSur/wLV?=
 =?us-ascii?Q?Kr61qed1PLJpS1Ip7DiuQXdHy+roWBmQi7ZPUvM8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c8d18d2-b655-4769-34c7-08db91d94dd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:17:50.2877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: URhb4UXR6QFc5vDDsqPV+xZZ90VCSGK7UhKnAlpDARRKHMuK3OIch8K1MaCjqsu33nAjyMmVoY89ZZsfrjNrXhnmlnPRYc2YB+3tqns+Dpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 06/14] drm/i915/cml: s/CML/COMETLAKE for
 platform/subplatform defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v4 06/14] drm/i915/cml: s/CML/COMETLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace CML with COMETLAKE.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
>  drivers/gpu/drm/i915/i915_drv.h                    | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index cd85b9fed129..35e6e3a5ddf1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1740,9 +1740,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder
> *encoder)
>  			encoder->get_buf_trans =3D icl_get_mg_buf_trans;
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		encoder->get_buf_trans =3D bxt_get_buf_trans;
> -	} else if (IS_CML_ULX(i915) || IS_COFFEELAKE_ULX(i915) ||
> IS_KABYLAKE_ULX(i915)) {
> +	} else if (IS_COMETLAKE_ULX(i915) || IS_COFFEELAKE_ULX(i915) ||
> +IS_KABYLAKE_ULX(i915)) {
>  		encoder->get_buf_trans =3D kbl_y_get_buf_trans;
> -	} else if (IS_CML_ULT(i915) || IS_COFFEELAKE_ULT(i915) ||
> IS_KABYLAKE_ULT(i915)) {
> +	} else if (IS_COMETLAKE_ULT(i915) || IS_COFFEELAKE_ULT(i915) ||
> +IS_KABYLAKE_ULT(i915)) {
>  		encoder->get_buf_trans =3D kbl_u_get_buf_trans;
>  	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) ||
> IS_KABYLAKE(i915)) {
>  		encoder->get_buf_trans =3D kbl_get_buf_trans; diff --git
> a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h index
> 04107696e966..e6f77498d46c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -636,11 +636,11 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  #define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
>=20
> -#define IS_CML_ULT(i915) \
> +#define IS_COMETLAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COMETLAKE,
> INTEL_SUBPLATFORM_ULT) -#define IS_CML_ULX(i915) \
> +#define IS_COMETLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COMETLAKE,
> INTEL_SUBPLATFORM_ULX)
> -#define IS_CML_GT2(i915)	(IS_COMETLAKE(i915) && \
> +#define IS_COMETLAKE_GT2(i915)	(IS_COMETLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
>=20
>  #define IS_ICL_WITH_PORT_F(i915) \
> --
> 2.34.1

