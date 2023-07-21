Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8060F75C001
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 09:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D180110E186;
	Fri, 21 Jul 2023 07:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18EF410E186
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 07:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689925338; x=1721461338;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NBuZfpx7GZ8dWcyvlT7YEZr4cEI0SokrzSJ4BZlDNB0=;
 b=PcRnsbKwo9ZIEDQ+Sh+6lDDzTa8rHrGWhMhsys4Xoo7hJOYeFVEUjptz
 Rk0Dn6Tvu5giuFTUUwUg+5Cl1qeWbv9adomqK7CsfsxQ+hbf/a+7BuonM
 X1OMGIRGqXQd/GUUaEloKjjuq8YohsDo2/+Ep9DpcMZ+mZ3TRMv4i2mk+
 SU1aAoFwIs8vG8axjLVKk9I8iug4ESSmi8zL5ixbpS5Z/Ioe8HqjdvE/F
 e7q5IE73n0BfAL0fHXd0hvCY0OZ7DowlL9EP6gL1VIL+cMd/86FuS68YA
 htID5AJUvRS+eaL1vS56Uv7Q/YSk6CeS7eCBJIqv9h7RUHSILjG1GwvdB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="351843011"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="351843011"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 00:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="724770728"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="724770728"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 21 Jul 2023 00:42:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:42:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:42:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 00:42:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 00:42:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kx6lb78hauMIvs+DcPSHEJMCMTuuKDhpNmTuhmUOjhHb+4aTQkUVsQohCL4pg9IaJTuGN1+wA7PHCbxJYpQu94jiTtd4Ngiu6gyfGU7QEjNm0UKBHCCpoC5EXK8KovKKo+XSo4OvpfpYQ0i0tgEzAEr1l8aO2apFF2uGos7qllg7vUmktFRByXJAqrhK7u6Xif4UahV83A3AKpNO9uU9N/IRWqWexruIgW1mP/wRc/O9uCAp57OfdMct7tkGgwPJeJte6ZwZDiEt9TzK0cSNp+KGsdhZ6zh3aCYZxtrNJ4Jf8jmmak04VTWqmshstsLukBp8MC13HZsMrWdwbfXPBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pGVjy7rIphCzMsNe2fGzKs6bLYIgi4Nl5wemdnj5as=;
 b=iFAtWyRm4iRx4AA07xGVc0fJoKvmFsbQbcfoTAyRau6rDsMYizImwe/GUE+kQU4ul2ABC8CEM17NlcDBmJUHPvmfTLzJaCwAjxUjcN7QUFqZTubWj1jEhCAQ6xH5fVxlFROcJfscewbHvwrXDj1sP9WQbwM/7Jbrx5UjZxNh707Kp2ElzzzITrVyH/FXL5SNEhsL3DlTqCetUIWGGw2KJFmt0q4UTxNNoewLPQinmL4vv9JIfRkuUknNfSiaK/eUvlSTCymGR5+tR7sc31EayYx1rrmipmWUmi8BX4rUWRKOzhPArgi/tnrcMnjGi3En2vSLlto74fWZ1eK0RonZWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Fri, 21 Jul
 2023 07:42:12 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6%7]) with mapi id 15.20.6588.031; Fri, 21 Jul 2023
 07:42:12 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/4] drm/xe: Move d3cold_allowed decision all together.
Thread-Index: AQHZu022VcxmxL1DiEOSTbkdtigs+a/D1rVg
Date: Fri, 21 Jul 2023 07:42:12 +0000
Message-ID: <CY5PR11MB6211E6B6DB4947EF85872566953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
 <20230720210353.214385-2-rodrigo.vivi@intel.com>
In-Reply-To: <20230720210353.214385-2-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SN7PR11MB6557:EE_
x-ms-office365-filtering-correlation-id: 183fdb62-7520-440b-4cc6-08db89bdff34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1T4byTFABZtu811MGMDusIeb7snmsmh+XHP8RmgdUcUO2bERmbPLIeIxvEwjdCzGO9XfWNjBTEd6Nspo1Lgtfdy5alkRgaFAz8Je0Crbk+hR4g61ZPmYeHtA/WZNVkabrjjuEvEC9KnyYy4T48b6/qwnoClLCmz7cBq3L8BcY/7M//R+miMgm1xtWxmCyF2b9PKBD6i2tSq6OlJxaQnX916iulQN0tfyHBSu3vWA5TkW086Y+5x+jF0CxVuPkYfFKVsEo9rqMG8w+o5r54lna5nSvxXKDt376qOFJ+I7TW0YBO/uvzxTMulgOEnujBFKloBiIUHAHpWc4SHNY9Wk00Rc0FaNDNGD2265kQMFdU+sE35eu7Sa+F1tTSo35a9pBhli7Itf1hvE0ZVJHy2QV6PaKy8EiehAzxyYyJTGui/M/gy6ABZ5nIbTKDepmaxZgI9SaA6zOLUL56arLUv4EhMcjT33cvnY2O+RRGTxZupkx5+Fr3jLtCjDgrlx6vjmuKcjD0MqMIdJZfYdbVTuICPk9Wd3pnMJhA/X5NLvk2t4+kswjnRaW8telAAsORAJ4uV/SKqwRlRMN1503YKIsdqTNnMedhTRRrlyoKP91L+zmOObUmMR3hPd8OQxU2xx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(376002)(396003)(346002)(451199021)(76116006)(38070700005)(86362001)(2906002)(33656002)(55016003)(6506007)(186003)(83380400001)(38100700002)(9686003)(26005)(82960400001)(53546011)(7696005)(66946007)(122000001)(5660300002)(110136005)(66556008)(71200400001)(64756008)(66476007)(478600001)(66446008)(316002)(8676002)(41300700001)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G04GJH23cWKtofeY/5ZUlPl9skDIYey10kdfmm1c3sTmKrX6+uEvOoYpmlek?=
 =?us-ascii?Q?eCL8REEIjcB8mKVbz+dSiD44Ztn/h10lbn2/hHFV3yEwl0dVHRT2Slkxh8BF?=
 =?us-ascii?Q?BbLg9vRFi+NKqTqaC21gxtdqsOL84jldMvMiLh1KVShuPYGBOZOoeyHFyzaY?=
 =?us-ascii?Q?WUqrScWJnn1567DC18s11S9a/OOgul7/mTuRxNEC80G6SbkjnvKkIUcRk9mX?=
 =?us-ascii?Q?GXLTVdcyYnS5K/8cNJ1dps23lJ0qS8mwOOf4rJHg5ezEPqydWd0/64hfI5/o?=
 =?us-ascii?Q?YcezY1eMgLR33RpSpXeb7lLhy3wdeb3IVfhp8jA4fNbWZnuhzQnHCKlGfzYQ?=
 =?us-ascii?Q?JUboLLrN1ed5YVw+WHjQQ4SEOU2Uy2cn7fEbO/fWQEK0YEJnmTcgtj5YDSAR?=
 =?us-ascii?Q?Zf34k+z0W372BvB58eEMUeVY85i97iA+SqIonqx5W4NtVdr2KXPiROFDJZ/n?=
 =?us-ascii?Q?LwE/uXCEOnpkkN1sg4YYlSNLq0aWe5lNdmKHdsaSsGD5xEL4hRDKsX+RGeUW?=
 =?us-ascii?Q?hC21eIqMMZ2LEwPsBBQt/HaG9HdKiBMnCWryJa+4alR+jbHCEbULfXQhtkTp?=
 =?us-ascii?Q?euE/2TPwGEHu88mJ/8XJTVnCzaPmKJjTvReglsENSnmHdiTuJk25g5imkqlE?=
 =?us-ascii?Q?lMb4aYqVYxcxH7HIyfW8xgXTHgUCLTLRjC+IrWabrkspq4doVpnqtP0ag3PW?=
 =?us-ascii?Q?UwAB9nDMFxMbWaTccTFyHk+uGBRSRfFjmSxWUzJPI5Sui7qoBroL1AThhLXY?=
 =?us-ascii?Q?aKv1BvrIU3XIiGnf4BBoVx+yb5sXPHjXBpOxJjVEVirOEIrWhp/ZGb5jhLSm?=
 =?us-ascii?Q?N8m4KA5tjbSU/A31uJ86ADpBGQxrDvwEDKNat51+7o9QG53wiMyFyUoBSUNS?=
 =?us-ascii?Q?3CAZCYjEBV+16Q8YVIFLfqnjTdpxw+ACQNoRUu3rK8rhf4+zrnp4bxtUIwou?=
 =?us-ascii?Q?qDDgVt6LrTblgllvROd0jdLPEDBhw30XAGRW+XArkIKH+yJ+cEgFYCRzUqdP?=
 =?us-ascii?Q?YeKzLDmN7z/600rahr2IvkVQ2nU9CN5zJIBSgyGaOI1bRwmIi6R3889KJH28?=
 =?us-ascii?Q?iSIKT834BpI1Cv/k8d3RUBgS4kIk4cqwep99WvWidwyNuvskJYjMcmwterA/?=
 =?us-ascii?Q?coAnvxLe/D8/n5k92xGHA4GNETldCY958o5VB1bYNInYPYCExbaGBLd5n3JB?=
 =?us-ascii?Q?aoNK/h7SDN3E9Lc+x2YqmX57W7OVQjceZKNXs+M2vBf3VH5r/FzC0XELqMka?=
 =?us-ascii?Q?PAB1tjL5ri/dK86RS5Ljus/T70JbTNJ+ziM0qzpveZbRTrRXSw32sfPwl6Md?=
 =?us-ascii?Q?Da4tPF4+ZamW0VyXqJO/yZVGJP1cIPP4rld4Jlmtoq6sT53Ku2V/ue/RRR5H?=
 =?us-ascii?Q?pC4UDnbO/Cf6Ejsmnw3iYShlc36dTWa2d7CeJs3ZNbzWoXhOyRV6VeFTCaQj?=
 =?us-ascii?Q?tqGkHmPJ4Ylk6QTpYSOY6EyxUMO4Ji4BAzrjiKp7zy2EgYa0J9WoyuxB38LA?=
 =?us-ascii?Q?44DKQ9943ZV1hxrlREyr3E5z283D978oFCsNn60ZmAbXQ0Rbwl5bMqWRL0u1?=
 =?us-ascii?Q?v4Ya894ldu0NRwMMhy5tzU0GwDtquTSlGf1Qu9kq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 183fdb62-7520-440b-4cc6-08db89bdff34
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 07:42:12.6232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +FlI2FbR1lOpBeVSE0Ii18+OCxEtBKJrZmQXdDQTjZYSpbVeLgptIz5ZXvCLN4ZptEuK/0H0g1t8QZpYqkF60SpsiO6817lk0ovcXG9iQY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/xe: Move d3cold_allowed decision
 all together.
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
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Friday, July 21, 2023 2:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: [PATCH 2/4] drm/xe: Move d3cold_allowed decision all together.
>=20
> And let's use the VRAM threshold to keep d3cold temporarily disabled.
>=20
> With this we have the ability to run D3Cold experiments just by touching =
the
> vram_d3cold_threshold sysfs entry.
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
LGTM,
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pci.c | 15 +--------------
> drivers/gpu/drm/xe/xe_pm.c  |  5 +++++  drivers/gpu/drm/xe/xe_pm.h  |  7
> ++++++-
>  3 files changed, 12 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 0c4051f4f746..06759afb4224 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -834,20 +834,7 @@ static int xe_pci_runtime_idle(struct device *dev)
>  	struct pci_dev *pdev =3D to_pci_dev(dev);
>  	struct xe_device *xe =3D pdev_to_xe_device(pdev);
>=20
> -	if (!xe->d3cold.capable) {
> -		xe->d3cold.allowed =3D false;
> -	} else {
> -		xe_pm_d3cold_allowed_toggle(xe);
> -
> -		/*
> -		 * TODO: d3cold should be allowed (true) if
> -		 * (IS_DGFX(xe) && !xe_device_mem_access_ongoing(xe))
> -		 * but maybe include some other conditions. So, before
> -		 * we can re-enable the D3cold, we need to:
> -		 * 1. rewrite the VRAM save / restore to avoid buffer object
> locks
> -		 */
> -		xe->d3cold.allowed =3D false;
> -	}
> +	xe_pm_d3cold_allowed_toggle(xe);
>=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index 17a69b7af155..a6459df2599e 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -326,6 +326,11 @@ void xe_pm_d3cold_allowed_toggle(struct
> xe_device *xe)
>  	u64 vram_used;
>  	int i;
>=20
> +	if (!xe->d3cold.capable) {
> +		xe->d3cold.allowed =3D false;
> +		return;
> +	}
> +
>  	for (i =3D XE_PL_VRAM0; i <=3D XE_PL_VRAM1; ++i) {
>  		man =3D ttm_manager_type(&xe->ttm, i);
>  		if (man) {
> diff --git a/drivers/gpu/drm/xe/xe_pm.h b/drivers/gpu/drm/xe/xe_pm.h
> index 08a633ce5145..6b9031f7af24 100644
> --- a/drivers/gpu/drm/xe/xe_pm.h
> +++ b/drivers/gpu/drm/xe/xe_pm.h
> @@ -8,7 +8,12 @@
>=20
>  #include <linux/pm_runtime.h>
>=20
> -#define DEFAULT_VRAM_THRESHOLD 300 /* in MB */
> +/*
> + * TODO: Threshold =3D 0 will block D3Cold.
> + *       Before we can move this to a higher value (like 300), we need t=
o:
> + *           1. rewrite the VRAM save / restore to avoid buffer object l=
ocks
> + */
> +#define DEFAULT_VRAM_THRESHOLD 0 /* in MB */
>=20
>  struct xe_device;
>=20
> --
> 2.41.0

