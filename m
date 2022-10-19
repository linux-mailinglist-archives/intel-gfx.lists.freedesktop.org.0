Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0340D60468F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 15:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4441A10EAD8;
	Wed, 19 Oct 2022 13:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281BB10EAD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 13:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666185294; x=1697721294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ONFo4CrWZtdnOJHk8hB45Bh6dH7+HBjhoHyjB+GYZnY=;
 b=NaM6nVJcxqrLcL98QP8O72I1yNwo99oUgK/5+9jXeVL8S8lqpPc1d290
 xQp1XLNYkWabkaFEm6ULTbCFaZCjc+CpO5uBYmZ9ts0Km8lohBkhd7CrA
 ahr1I1S1JSUvhVrB6rf/MHZCTvacsqiDcp1FG1v5xp2FbFIOYjOC9j9tb
 V0w/WxDdoyoGlDpXaHkirI/EiBqjO0Y+DKaF4kXTz4JxeZPnkDpJ1Q7Uu
 qGuJEqhUGIPsvCSpzjhbhQCgUxZjQapYP5v0l01FioEn+hrwtRRnKjNt8
 8VjTNRRJe7IjkskaqrIL1xQzQQOe0lrplIniHNFcazV8bgFUVCHUod9cl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="305140687"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="305140687"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 06:14:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="580333771"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="580333771"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 19 Oct 2022 06:14:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 06:14:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 06:14:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 06:14:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+zWWqBWVuyo03ykEEHvkOE5jcn+cc0W/9rFPZOFogd+vdw0/FB0ICjE6r9b3HNwbd2tYrNGBNB36eACmz6rWs3fKzUGY0EIdSlLMUBecrIowCsybA2Osz06rs5Yz+uSjKqCmd98VECHD5dR7T3OyeVCck+4I1aJj+hKzgt3+pfGA3oHw23yHjtuvkSpitJtM3hitN060RhxyTL12YuNhYwgHzDtO6N9yweKO/aDVW4ybwCwSIRRR9mRTi82vpzr7NIzVuHcLj7K5iPdX5UHAG0YRDkNrusb7oc84P0d0iqJdEtdTDjfL9amG1ajpPBVWqhTm4k1SSXq32VwExEWvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a09T6v/NuPeUReb2/TSpPHjiWvJ7PqRihiQmF0C5Z5g=;
 b=bftHX1PRpAFlWTU29f6IJD/CBz8i4PjlRRYTDgttXXaWPM9dL2+5qdQRuUiYlaelEqehrsHuoFmos2pwTl6dfGK6vR8r/pdMgjgrQYjIL6xIvxAKTNvK+WT4FfJqob5nrEbcmK0sPolNx9BpuPv49yE6m4NYAVyx1qDM02gEoDCzQ0JVOMz7Dj5Srg7MSPERdIpaWf43wEFv+wq+ceYzyLjKSouM4Vg8W1NnYHUp06W1M10GPB9omqG34TN9RM5dy/zDh0jKAVxDwVYHYX2/map280R5mdmrI1VBaf6kXto4kyNQqxUNYGiKbY81gRPYyN1r3OOQ2/9kiYUnqzktgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Wed, 19 Oct
 2022 13:14:50 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02%9]) with mapi id 15.20.5723.034; Wed, 19 Oct 2022
 13:14:50 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tauro, Riana" <riana.tauro@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/hwmon: Add helper function to obtain energy
 values
Thread-Index: AQHY44C3Y2XeOZ4rKkee+WhpBvKTH64VsImQ
Date: Wed, 19 Oct 2022 13:14:50 +0000
Message-ID: <CY5PR11MB6211E2ACA5F99B9DA40B8400952B9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221019060402.2807360-1-riana.tauro@intel.com>
 <20221019060402.2807360-3-riana.tauro@intel.com>
In-Reply-To: <20221019060402.2807360-3-riana.tauro@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|IA1PR11MB6492:EE_
x-ms-office365-filtering-correlation-id: 5eb3b432-8a8c-4803-4de6-08dab1d3e756
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BKdZMSSVyWYysKuzHwK9vQfQSD+LEpDOXMDhDmgkt8YHnQa5Hxfd7vLL0bnTno5BFRmPEJyavuU3VIoiOiQmSkY2uo80GNZ6I8Bj/ulIWQ6L8qHF/V1TkgH6R5B2Hw15z6IfXKoITBu0xxXw3Ffw5gJMFjus2pQZMiFTFD6fN0RJ5u4pDS42VwT60qYyhMjyHM9TAC/8MQgY+BgO4wiEy4337ECBgxDsrrM1amA1H5gZdNuja0Fw7sej+uB4UtjiZ2hHOfMnfIHEdTYwhVRRS3b8bp8LD9BfNHQ8grItsxIlSeyCHDv+KWqyl9RFq3/ZFxT79fzPAEfcEVshUAJLMuzequhL6pWr+8g44BwC51PRHm/E6fgEcgRpeZhO2icCDApfLdfsuFG+59QuvMHPOCz9QihM0BZM0LGMQ0MDtWBLOdq0BsI2mPWvnZtB6924rCvMVhnjKfJ3uHajZTmbvQ2In8lesBMSlLvROA5pC9VYYVjdSgk6unHYtpa7tsNijoHLycF++HhqWr3z/xbuKV1rLQK4IH9Mm6GA1ThNt5DBnVX7Xyw+Z4QyqvdmvLm6IVJgMhOf2XV1gSbZL3hSinIGsbaEsvCPYdW/bMewIpd9+1+KR7Gc9tGtkWeIUV4dLYupRx+Tvluen6PcPG26bhTrwetXanAEIG9um9xbXvy734r+fMGdmVdm+CM5cX6j1lSghqXan7HoLn6Bf+VuKPYQRr4idwnMTQzd5K//U3AEmrfU8z/VtsWAyFBRc0OGRcKMzRi6btXPrDZVNg0FEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(396003)(136003)(346002)(451199015)(316002)(2906002)(110136005)(54906003)(186003)(33656002)(26005)(9686003)(41300700001)(5660300002)(38100700002)(55016003)(8936002)(52536014)(66556008)(4326008)(8676002)(64756008)(82960400001)(66946007)(76116006)(107886003)(66446008)(55236004)(53546011)(66476007)(86362001)(7696005)(83380400001)(6506007)(71200400001)(122000001)(38070700005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qKZdq2Ztq8bcCkL3cEqeysi0FeZ2rhE/RSRVHo8FPJQ6Tr3la0jwEoplplV3?=
 =?us-ascii?Q?15rmtJvMz7t2JONj5rqUYB4EXzwGZ5JswOLuXO9ClNHEBjvTC4rFEJof2QMN?=
 =?us-ascii?Q?fMHS3X876YkBPkmShmMTmMkemNjpjfxba/ZzSHGRkL9/zJb6rbkLFbVK7xHR?=
 =?us-ascii?Q?dSuSrJDkyKtv69mB2IesqH03oI/qYDv/zS+gbEg3HBHj8nwTR4K1lrveSW44?=
 =?us-ascii?Q?uo+3R4QAA3DkRt+WFu+9b3l8ULCWeWunP+l9WQtnD2qFqTN5+6Qhq0JrMRl5?=
 =?us-ascii?Q?PRdLNNxVF7+enYVpNsFhvb5uoxrgPODHaH+uwobW8vcF7wUzekOnxwx9Pxu9?=
 =?us-ascii?Q?KHopxCHJphqZ84pk+u0VuCv+UeBqWW8BoO5gevFONz+dAQcNZvgSkNeozU9p?=
 =?us-ascii?Q?r8Vn7jNthMZHHqwkGgyZUP1VarF7fhQvnxAPkB2Dd190A8XGxi+YXqRBzF/E?=
 =?us-ascii?Q?LMYeJbRgsV6LJeNMletgKrzBsd8etavCCqf3OEWB3xXCorSOdEB0Cz+8pAET?=
 =?us-ascii?Q?2uHHLJMUOF7m3mIN7gQqTViXGhe9WRCJrBWd+iN6IwA+NsnxBIB0/R+mMblF?=
 =?us-ascii?Q?MfUauAnwJN6oUfU0xX7vnpiwdJog45Euwy0XUTfAT5M3whG5wVWUfmA31Zeq?=
 =?us-ascii?Q?vpOIPN2j34kUn6qtIH4pvEWuhl2a2hRdXb+TKYtHDklX7WYHujrx+Br2cATm?=
 =?us-ascii?Q?7ijbp7awhkllXGE4Z+0ohFLwIfyrFROyK+4I5c3WH6RmE3QLYyhpV5izZmK3?=
 =?us-ascii?Q?c3pUJPRaLC7C4knA+qvbUgbUkWpzGyxkcC/qGEqk3KXvxLyb0ctvqoeXJecX?=
 =?us-ascii?Q?scLyWP0NDka4yDCEnUrRuo1tyQ8I9K4ySw7J6q6V25JQdahPjj3evoUSl8Og?=
 =?us-ascii?Q?nMKOND/iBrRBmVba8sOUdMfriLl8IX50ebGQYd2IhuHQUR98GNrPz8KaCB0I?=
 =?us-ascii?Q?AX+pQ0HFrUsM6SYmt+iqp5169xkPvdf2anog+Z4o3QVT9DN3c0d/ba5CYzti?=
 =?us-ascii?Q?cYWoVtr/rY9XliTNj1Nqzl6Tg6bV0XDwneg3fTJYlqJ8T2TLt3zHk7MYs/tQ?=
 =?us-ascii?Q?poNYviIhNyCdIoOD1dcU097tjJ22OSihRyz00YR1LEzz2mP7m/W62w2YUfGf?=
 =?us-ascii?Q?altaFMxq9SZHus8FK2ANYpTvsF05qp0YyEUPhBF9i3tir1WhU75iOSf+A2BC?=
 =?us-ascii?Q?K3EN3MMTvyAaqi8RfmYcdcBh88ei88Ht4x8oswKt7Ha/qjIGbg34b8F6M1O9?=
 =?us-ascii?Q?Hk3QxSD09zLlyh0hzwaRXYoyGwJdTFjOY92XeCOvrzvwrIif1BO9coQfq7Ab?=
 =?us-ascii?Q?eYJnBH0VLLGAXsQS1hsQbR/n19KBa9ZbnK+u+eLP22xAdAoj6xerXkIdOkRa?=
 =?us-ascii?Q?fUH12/+jBv9TjYfq6WAxusRitj0qQfi1dQ1MsMdic4SYVk86X+sZdeKLdZ/4?=
 =?us-ascii?Q?m0DaKGD8HYdB1UX5rKjm1htd/O+JW1Ve5H63vnpEYEQ27rZ1397vQDOgH1Su?=
 =?us-ascii?Q?/4W1PVl2vAmNu7rXguxYJOO5Y8n8h7n0DTlW38oUZMbmd8zGp76tjk4NLXoy?=
 =?us-ascii?Q?gJTmFgf+HeHA5NuPSV8M8bV1Ho+cBiSMPUA+ogaw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eb3b432-8a8c-4803-4de6-08dab1d3e756
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 13:14:50.3442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4NUnVH4qf6zKFmxSL2zHW/e/jbwaFPOByGLIEKaVcyyCzEkcJIJPlB+D43Ax30tZCtkMjZ0B7oPNKI8NmaBs0DmFs0j3Qq/6RS0MMNGnsvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hwmon: Add helper function to
 obtain energy values
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
> From: Tauro, Riana <riana.tauro@intel.com>
> Sent: Wednesday, October 19, 2022 11:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Tauro, Riana <riana.tauro@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Dixit, Ashutosh <ashutosh.dixit@intel.com>;
> Nilawar, Badal <badal.nilawar@intel.com>; Tangudu, Tilak
> <tilak.tangudu@intel.com>
> Subject: [PATCH 2/3] drm/i915/hwmon: Add helper function to obtain
> energy values
>=20
> Add an interface to obtain hwmon energy values. This is used by selftest =
to
> verify power consumption
>=20
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 23 ++++++++++++++++++++---
> drivers/gpu/drm/i915/i915_hwmon.h |  1 +
>  2 files changed, 21 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index 9e9781493025..1eb85cd96171 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -138,7 +138,7 @@ hwm_field_scale_and_write(struct hwm_drvdata
> *ddat, i915_reg_t rgadr,
>   * hwmon->scl_shift_energy of 14 bits we have 57 (63 - 20 + 14) bits bef=
ore
>   * energy1_input overflows. This at 1000 W is an overflow duration of 27=
8
> years.
>   */
> -static void
> +static int
>  hwm_energy(struct hwm_drvdata *ddat, long *energy)  {
>  	struct intel_uncore *uncore =3D ddat->uncore; @@ -153,6 +153,9 @@
> hwm_energy(struct hwm_drvdata *ddat, long *energy)
>  	else
>  		rgaddr =3D hwmon->rg.energy_status_all;
>=20
> +	if (!i915_mmio_reg_valid(rgaddr))
> +		return -EOPNOTSUPP;
	We can check above in the exported API function then we don't need to chan=
ge the function
	Prototype.
> +
>  	mutex_lock(&hwmon->hwmon_lock);
>=20
>  	with_intel_runtime_pm(uncore->rpm, wakeref) @@ -167,6 +170,21
> @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
>  	*energy =3D mul_u64_u32_shr(ei->accum_energy, SF_ENERGY,
>  				  hwmon->scl_shift_energy);
>  	mutex_unlock(&hwmon->hwmon_lock);
> +
> +	return 0;
> +}
> +
> +/*
> + * i915_hwm_get_energy - obtains energy value
> + * Returns: 0 on success or a negative error code  */ int
> +i915_hwm_get_energy(struct drm_i915_private *i915, long *energy) {
Please keep i915_hwmon prefix.
Br,
Anshuman Gupta.
> +	struct i915_hwmon *hwmon =3D i915->hwmon;
> +	struct hwm_drvdata *ddat =3D &hwmon->ddat;
> +
> +	return hwm_energy(ddat, energy);
>  }
>=20
>  static ssize_t
> @@ -441,8 +459,7 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32
> attr, long *val)  {
>  	switch (attr) {
>  	case hwmon_energy_input:
> -		hwm_energy(ddat, val);
> -		return 0;
> +		return hwm_energy(ddat, val);
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h
> b/drivers/gpu/drm/i915/i915_hwmon.h
> index 7ca9cf2c34c9..fa3b13568b37 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.h
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -12,6 +12,7 @@ struct drm_i915_private;  #if
> IS_REACHABLE(CONFIG_HWMON)  void i915_hwmon_register(struct
> drm_i915_private *i915);  void i915_hwmon_unregister(struct
> drm_i915_private *i915);
> +int i915_hwm_get_energy(struct drm_i915_private *i915, long *energy);
>  #else
>  static inline void i915_hwmon_register(struct drm_i915_private *i915) { =
};
> static inline void i915_hwmon_unregister(struct drm_i915_private *i915) {=
 };
> --
> 2.25.1

