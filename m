Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C866D7E09BA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 21:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81ACC10EA87;
	Fri,  3 Nov 2023 20:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B1810EA84
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 20:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699041704; x=1730577704;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1xWcD7Lc2PzukPZXsoDdevtOkRptnGjR0bV7g1kw63g=;
 b=hwOGo7Y/EeAKTovBT5OF0tFv+KY2P/H7uuYMCBZ6UJg21yEtTkuMl9Bg
 ISUtxhgOWlfseuJK9xp+xiRzB9hFZMd5vlzZ2sDPupVIp1X6gtUiLy5fY
 Gzs//1tBi04O1bksSEAUPcwm15smvnw8YfGpiPaqABXoxEI/zfgKtAbc9
 xb1ad99c+vhE5wKCjgsK1LWRnF5su4gM4yYnFsHwpxTAMB8HxWjLAQy1U
 GocvorrKyDMjlpgl1Q3/ETXG+IdcrADqI7hUd9xU2oCEmuDhOuz0Vn5lV
 yxN92uUIEBx/U2P4YGyEgW6P/QTnE8VFQyLQdF5S3HrTwkYcAXORF59vj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="368350801"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="368350801"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 13:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="711607810"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="711607810"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 13:01:43 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 13:01:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 13:01:42 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 13:01:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CeWiGuriHPJsoX+XaCfC+gXuLkY6ZZSVQajQkC/6mSfRvbLSj06+O4qfirZ4m49GGxv3cf+3fDbnNCVyYREHMA6j3otAp6AuG/M+3PXOjFH5LlfA5qUHJjf9d04jOFLRE5VAAtJuj/4nByvbwZtIGNHZGXERbSSIDharC1fv1rWjiDeIRliCbXs/j4OaM7V4MAnmSl0MZPoOy9sCw5yhc1yokOoj9nJvBHUhC28FJ44+KjnTZPDxchUneb7utgOwNxN3iJZ5Kmq02Y0GK5o0c9Qwqjhz78OIdfwagudMnppoP8LapjGqzcs2Xl8C9jjFuQLyey41UWYn0iAfOTKYAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SWTQ2RjgI55OSLFTns8cl3Q6XhDhh6EtkC6zAqVlPvk=;
 b=FnAQNLbK4XI4v6PlPp4f88s0FlPEBE/0hS+qLsiMYajly6JGMIlrh8SB9OzvSQ4rWhKXX1eD70L0Cc4vou/YQ+DaJozqsR1s9IIftYPI15FRFwRHyV1DuhkNSsSz3O6OHG9wXDZgR7M6r4DIpCmqeT6YgDkqmyKTcR7rK5rTMbuHRnnMPorZ2Q30isXGSDuZvO/bo3D/BjeVgZAXW8ad+H9PBJ8mNoY7y7NVWOE5rOJ7+YCz5WyWLSjCCH7KaB60vU79NJ0CtaV80UdQWxnk/tVRGkg047q/JjyPVi994d+Bq4X4ld+V5HxFBgv+41J0wMZAYR1dsfJXGge9Fn2azQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.21; Fri, 3 Nov 2023 20:01:37 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 20:01:37 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU caching
 into DMA for MTL
Thread-Index: AQHaDbfEEaJUlFLxp0W83RnNEcAlwbBpBKaQ
Date: Fri, 3 Nov 2023 20:01:37 +0000
Message-ID: <DM4PR11MB5971CFB861177DF38E880CBE87A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231102175831.872763-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231102175831.872763-1-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CY5PR11MB6186:EE_
x-ms-office365-filtering-correlation-id: a822a9dd-6a4c-4cd1-2b33-08dbdca7afef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oyrq6MldTvZktdBua74OYbpwd6jvxDgkTAaFV9yyUwte6aFewgJIURqSxENq7eBKwbgHmc1N5yDr28K9P+j//M/mxwdj4WGO/TYzZNcPIk2B/DDHQO+4MgxyecsPzWRbxjljN+vSPRwgMQ2kdvHe66qsyye+EY2mIUeIo1y3LjPGCdItag1QBLCMclXAgyUAvrQ3BjUQohVFyptmEoolouKEPckTuROIWXpeHWzH2b0LcQhyI7sG6mibdWJjgtU1B6HSJ3iCwKDugLeTQl2KAGH5uruOXbjGpDkcCjIk/qz6uO4vtw2vD8QbOejPqfXVxJuX4qP9WPuDRZRUYjWX/0WixTMcshiXsNWeA33UquWLh/hhbIFRk9vbHSYavgQ6odOrq4BTiNC5nBWLhsDGpi25unoZiQAYDlWYHPTLdEBjZWfBxxV0RaKUnG3jin8Sun1ByS5mvVcEDlZ3v/id9pNGvz2ZDL7TN3t7HRnej52r7h+vkCCEL6upP09fFDuh0diOPvWDUgZM+69j3fEXnFZLA6xEQWuX2FZbP4pLH8T3vI8oFKjmBV2JZenPNDSBnbE23Q4q4y1fR2BMbl+qbHwCwyZnPiCVOA3uOpZ6zWTAfaqunXIf4+INbK5IOwwS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(39860400002)(366004)(396003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(54906003)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(76116006)(7696005)(9686003)(53546011)(6506007)(26005)(71200400001)(38070700009)(82960400001)(38100700002)(122000001)(83380400001)(33656002)(86362001)(478600001)(52536014)(4326008)(8936002)(8676002)(5660300002)(2906002)(41300700001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CN8TnNdRuG0tOBWriwnnbOwzWkB3MvkdE68/tUgC2Gu5LgmeTPq/t8fICBYR?=
 =?us-ascii?Q?xJj4PJrw/flwHY095XTgBoMwi5X49ixlAu843ovvxQ3g4VxICPRZrbyFMJwz?=
 =?us-ascii?Q?L6i0N2DYe3mWITPMucFFgmoQ8ZCHrdJtuWouFv+2dLDJU2U6QuI3K6batCZu?=
 =?us-ascii?Q?tYwzd9klMwaL1us5Acsxmbt7Q1AtSgvBBRqK5lRUmXfNZ8PV0ebclnQJvhWO?=
 =?us-ascii?Q?z+3ISR/+HtPYH7UU616YQjrcWcNE5BjKYyiRWqxuKriC5v6a2p1Z/MTvRqC1?=
 =?us-ascii?Q?dHNjWA4EsRVUAeVu0aEmZUn2UTRuk/i+DXAnbLwyT6h7XUYWYqd+qfYw4njc?=
 =?us-ascii?Q?mkyJAk4BcdTMOkzTb1cCtVgO02ch1EV9to1UYcwWIEwLTeqO7TUw8Xj4hhto?=
 =?us-ascii?Q?kUmsCSsNq2KeIiaXQtk/Jwj5VLa0IeiAKhH8AReq7HrqhYyJYc78KtULdWtZ?=
 =?us-ascii?Q?57OR82gMyQQX4WnG/Amy2mwDSO6iaNQldkXrBBi/JyZXXuidzywpwU6SmIkU?=
 =?us-ascii?Q?7aNJEYAPxWcAs7uAShh2WXQvACbgax1BNv80wO7yb+il7FaQK8hCmcc7kMoR?=
 =?us-ascii?Q?TOtyoOwDAvBD39cPamN+YrZ0hz06qioIM0oD82rXcXUWj+3fatlV3qIHl4za?=
 =?us-ascii?Q?PA9CABnbJJunjHz+60O3TvngmcTyNhR2woMnHO6fIPdsWRq9gQaBgKXLNnOS?=
 =?us-ascii?Q?Ss3xOp/qf+0Ap4KOVYGvnlpeLwRs/mvyLG3L1xB/p32KiICycGOlUFSpCKGG?=
 =?us-ascii?Q?2y73EZZLKAWEPMRKNgfWc26UXsZ9hQWIXxy3rsgDNlLpU0Ye+QI8x/gZi7zh?=
 =?us-ascii?Q?dOsVg/PA4PdN9ACAhHE+IPIbIL2bNQndS/tINnorgUEpbqE8GvuC7RW3f7gK?=
 =?us-ascii?Q?N9ByL0QW5Covh92HWiZKBUQqgjfm+vtbFh6XQzDJZv+CwerO/cyutiP4UTJD?=
 =?us-ascii?Q?RtoB7fn/Uk9O392wu1qLnl4T+ZaLvOqXDgxaO1ZKfdWpaWxLL32Evvel521f?=
 =?us-ascii?Q?/xOnukl44f1/Hei5BotNH7aJMXHlTX/x+t4Kuo3tpm5xOpKYvNoV4lqn8uA8?=
 =?us-ascii?Q?FVzD0/M+quVVPFCkr554sVOPfSlZik4YXUPCCsDRHW2A2euVdctgzECE/AFv?=
 =?us-ascii?Q?3jP6V7ksGNVWpWsidX7Vs5BVl1YZlltIf4LmwKLZUX/I2NgRuxjZZ8i4E4r/?=
 =?us-ascii?Q?5QAg0KKbG/C7RpUIwWiPQRcP12fwsqgf9XUtQTdXaiZogAcjwdVRcvhlP5qV?=
 =?us-ascii?Q?VvKxb+O6XeTGVYFdEQp5/zd88Kx+YC5Qdn1KZxzC/omuDCWwBXZcJ92ymnZj?=
 =?us-ascii?Q?Qn2FsUHLQTuUfK7sxDZuiihMU4Ukf4NAyY0EdmEtFgtENz1blhsTnfDP+7vw?=
 =?us-ascii?Q?KZmeAWo3DrjeO9epTeGmPsIx4aAsR6CUyKwShSt2f+NB1nuOjaAyVexTTQR4?=
 =?us-ascii?Q?Nf40uOj5UzO+vuvPR4sIj9PbG8Kn1c2Lm23iFvLizEFnGspNcBcBegCSs6FW?=
 =?us-ascii?Q?C08XVmIJ2VzOM8QNxgAhpiTlG5wdBbPEcZw2Cha2Zel8w5qSHGug9otdT2ck?=
 =?us-ascii?Q?9M86A9JUTd5ad68Z05xiTr5aTQFc379eqyxEt/Al5e7CJ2XSEqpMGEpbG+kr?=
 =?us-ascii?Q?pA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a822a9dd-6a4c-4cd1-2b33-08dbdca7afef
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 20:01:37.1922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xzky18zlWGMbNxbcyHVDUQUvhMz6+dqdMTZeynNoG4VKMJoLJctB0yWlMYCXs4u+agyzjQqOqkrvcvOpN4z/xD4X/MlTyjZSWhNqqWfrBhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU
 caching into DMA for MTL
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
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jo=
nathan
> Cavitt
> Sent: Thursday, November 2, 2023 10:59 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan
> <jonathan.cavitt@intel.com>; chris.p.wilson@linux.intel.com
> Subject: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU caching=
 into
> DMA for MTL
>=20
> FIXME: It is suspected that some Address Translation Service (ATS)
> issue on IOMMU is causing CAT errors to occur on some MTL workloads.
> Applying a write barrier to the ppgtt set entry functions appeared
> to have no effect, so we must temporarily use I915_MAP_WC in the
> map_pt_dma class of functions on MTL until a proper ATS solution is
> found.
>=20
What is the performance impact here? Are we disabling caching only
for the pte changes/scratch pages or does it extend beyond?

Regards,
Radhakrishna(RK) Sripada=20
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Chris Wilson <chris.p.wilson@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 4fbed27ef0ecc..21719563a602a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -95,6 +95,16 @@ int map_pt_dma(struct i915_address_space *vm, struct
> drm_i915_gem_object *obj)
>  	void *vaddr;
>=20
>  	type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
> +	/*
> +	 * FIXME: It is suspected that some Address Translation Service (ATS)
> +	 * issue on IOMMU is causing CAT errors to occur on some MTL
> workloads.
> +	 * Applying a write barrier to the ppgtt set entry functions appeared
> +	 * to have no effect, so we must temporarily use I915_MAP_WC here on
> +	 * MTL until a proper ATS solution is found.
> +	 */
> +	if (IS_METEORLAKE(vm->i915))
> +		type =3D I915_MAP_WC;
> +
>  	vaddr =3D i915_gem_object_pin_map_unlocked(obj, type);
>  	if (IS_ERR(vaddr))
>  		return PTR_ERR(vaddr);
> @@ -109,6 +119,16 @@ int map_pt_dma_locked(struct i915_address_space
> *vm, struct drm_i915_gem_object
>  	void *vaddr;
>=20
>  	type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
> +	/*
> +	 * FIXME: It is suspected that some Address Translation Service (ATS)
> +	 * issue on IOMMU is causing CAT errors to occur on some MTL
> workloads.
> +	 * Applying a write barrier to the ppgtt set entry functions appeared
> +	 * to have no effect, so we must temporarily use I915_MAP_WC here on
> +	 * MTL until a proper ATS solution is found.
> +	 */
> +	if (IS_METEORLAKE(vm->i915))
> +		type =3D I915_MAP_WC;
> +
>  	vaddr =3D i915_gem_object_pin_map(obj, type);
>  	if (IS_ERR(vaddr))
>  		return PTR_ERR(vaddr);
> --
> 2.25.1

