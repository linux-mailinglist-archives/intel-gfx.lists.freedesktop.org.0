Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B7D632092
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 12:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32908903B;
	Mon, 21 Nov 2022 11:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909488903B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 11:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669030151; x=1700566151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BVMsrSPD5I18U3uFoKnq+3YMyIQ991zZmbhGgWHxQgk=;
 b=cgRSo+Z1BGrLIzN7j5YEzTzU2FcG0RNZqkbSO5zxbdslMESTYfuVaI3W
 7gJ20FsJIqogc9XHh+pjXIXlrcF7o1OgkF3urzfqeIGBNk0ES6UNlMh0h
 30HKrYu0lN0p4Dh4bs+vLg6pvRKqVlMWbm51oqpvjHFgpYalPHOpjIJNk
 IFtbt8Y1HLY763M/rzFlGKS0m8Iw77AztrtyYKoPyQsKeKJm6l0/W37br
 4y5UrdEWT/GGZ2Wgb1r/Z6zvqkfBPaWcpMxcafCkKTbmk4IWgMWqGRoB/
 jXGxbKabZiuxQTsgCDefYkjhJiysz0BhO8JQulopcHp0BRu/5uoLsqZaX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="314683104"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="314683104"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:29:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="672064839"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="672064839"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 21 Nov 2022 03:29:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 03:29:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 03:29:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 03:29:09 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 03:29:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJOwmjlsmMFO6guYV/zrhAEmTQJ2rXFPb9f+mcUhNbcqUa8wxUIP/fTY0pbsk2dqJch+y4URaKPpQo2JJVtaJ0dez+feHHC0Yipde2l6j+eyyeekJd8RLb6X/fxLVF+/+VWGJK6JIUNqNHHjILUhA8NAWDa+cBjJ9l49mxzcL/9VGjtcWcQK0tkdJmIUbQwQgBPYYpw4bBueh7YoAGe5xIwnAMA1lPFWN8Fag7/CyygyOru/uRuQTLvUL/KSy06e6NVcD0MKUGW81PlzVTvRAb2RCfAGwo9c8FrXMcP33c5vkHc9uyRxVq9z1FbsnWScDCQPCITb175Rk9jMlJxhhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jez6Z1cHQfIM9BkzD/MrGCwOcJ8rVtjcdSuMKxrHhDw=;
 b=cp72O8uDBvaaCw3O0oDNsv/FD+My1cuHy9xSs39Rbh/QqLgJwHrgreiKBHYDyOz9bywwRqIaP8sM2x10G+4JReg2xxs3vAGY7V0lzuz98KszYGMA/mHt50ii87DPEyXx2n11n/RZaQY8AwZYGtHwHDT3/usJtjn85xx728axmgs2IoBOE+VGZU/y5HfIXmFP4IciDvg2qWd0rcR2EBqlLIs95Mp7LzChKOymGW9gWC0yAV/reoPwH7FFNGrvxSZTeO6FP4ce5LOG+F8tGS/1O1TXWr0/2+0GIiKbHW68b8WeYKOhYRlj8HAG/XsTOTF3FN/Rv28Br0VoHkT4We/31A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by IA1PR11MB6515.namprd11.prod.outlook.com (2603:10b6:208:3a1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.11; Mon, 21 Nov
 2022 11:29:07 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5813.013; Mon, 21 Nov 2022
 11:29:07 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
Thread-Index: AQHY/ZDX0KIGaRvcB0GjSOKI9tuJTq5JNymw
Date: Mon, 21 Nov 2022 11:29:06 +0000
Message-ID: <CY5PR11MB6211B459E20B5EA67B310BD9950A9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
In-Reply-To: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|IA1PR11MB6515:EE_
x-ms-office365-filtering-correlation-id: 9ef59a51-d54f-4b2b-e9cd-08dacbb39a0a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WvUhN2yRB4x/T0eIjtZD3cePyiyFfzHzkEGrAUB/MUuJqd3RIqC79vA+2VM6bqMjO9UgdX7/K3AUp2T+JnRheghU0+1i2Imx7Ynh6VvGhw+kS82qXjvCc9CHK5ODLcACVRmFv18VY7p/FMPS6yfR/O57efKK909jTGKNshwr3z45gUYtSxyPDcrrsLADaEsmPkYJni9HagqCq/ar8N5kYY2xisLFU5qHpdROzkX0wBQJuFG548fbzd0gN1OSC9S/sLdMvHQQeostsY6bP7ipbupGE8i8/i+vyjceNDkUgGmc4UNJJUyMFbM0usNRjcfBjJZc4PmqaRuDAxw8FmGhUxzTPjzyoznuu4rSU9yZcxkdrsXkai0X4m8CesF2G2HOmSrJx1ywnMjLDhwomieJSL5OOa6TFn6t+ye8PYV5zIKoPanWYGJmqzaYmOBHHNvL5TycpoBbK2nHKoR+VdI7fHuPDb/iixln7dcIqEeFVwZh/+XglrGTatlC+/Do5k6nABybrEs1BwtzTPKckYmE3QROKYdlSbv1D2MzLZis+lP9aW9DKWn/ByDztsdGfSH66/Np3nYjM+DQaIXhbRjK23tgV7IOg/WoVO+qE9ztj6dd2Tzpc8iXAKFL34DdNcpdond88imoxINgqNTjZR9SPSCu1XbuWjI4/1jmIcJliWgG1YUL7fOEA1MLEqooA50bljaWuBNYxP66S1qFtm7cOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199015)(6506007)(186003)(7696005)(110136005)(26005)(55236004)(9686003)(53546011)(2906002)(478600001)(122000001)(71200400001)(107886003)(38070700005)(86362001)(82960400001)(55016003)(33656002)(83380400001)(38100700002)(8936002)(76116006)(41300700001)(66556008)(66946007)(66446008)(64756008)(66476007)(52536014)(8676002)(4326008)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OEbtqqZpH3Eelp44xdU7Ey7D7xjWvQhWdyGLXFOfdRVTL73aO84mMdFBbYMQ?=
 =?us-ascii?Q?1kRvV9iycV/fu5w3bcSlfmEtIeaUP8aebOtZ8gruVHnbEkvbN4UpETlSw12k?=
 =?us-ascii?Q?RUPJEpmhGQodDCp4LbFLlW49TUbE/pzfDwCo7O3TxkHafKCnOihKP3o6x+L0?=
 =?us-ascii?Q?BfxOixGbJglFPC2Aslac1T05tDmZHCWs6EdqkwC9PkI37ApEqSslSK+dYR74?=
 =?us-ascii?Q?mEErnHO5OXKRtsYMGM8uxriyxIsOINQ+NB+ZnADXY4OxD2GOvV/sXTFUzme9?=
 =?us-ascii?Q?oE4rX4Koqk/D7qQKMAQ2IFswes2/L2+3AXf4X8XwYpK/x+gaZUuA2xnGM48S?=
 =?us-ascii?Q?ccpWSZVZcPiKwC7VZ5kxduH9xLR540pKKWxmMEs43L/nZ/mbxJctaLksf0C6?=
 =?us-ascii?Q?DOajkWTjNZt1lQrBsMwM2hrClGL+OmTLQrxe5JUZdrHMEmdegz7SApJF60HN?=
 =?us-ascii?Q?XX2v74FV1wbjVY+MBAzj/uV2Uodz0yScXs7P4Yu/Yo0gEZ1vorcKwVGlrOB+?=
 =?us-ascii?Q?/uogOv6Afg+i6ISOsIhn0FdisvjRa5IpIuZZog3DyJ1RJjC2hpmriY02rqqq?=
 =?us-ascii?Q?ErDDIwY9jnYBWjsiuIf1Q7eUwUMR/JewiKLxkXFBSyjh0ilcCqlYLaJR8VKJ?=
 =?us-ascii?Q?H/uX3QM6ItR8RcQ5t4cuA0bIN7GHLKRGotr59kJwPh0c3xJji12Bo296/Oo5?=
 =?us-ascii?Q?hlYy5ryRa5JXUc3SNkDsJv31p0HG9BFXVlJ8J9UgOvE4HAMv7j2vqbxTUInU?=
 =?us-ascii?Q?pZ1I/tS7xx4g8wGuPWZ9RcExV1v6expCt/XwsZWQS6XNA/4OqGsh/urRUJiA?=
 =?us-ascii?Q?zPDaft0HQtH/s/PvJiRFD/o8dgcPrgbS6PByh2IS6t33CtV4oDuX+PBq5aQb?=
 =?us-ascii?Q?GpJHZfEwQv2CTwOUmMy6Ilc3Oxaak7Z7/PnZuYateuT1l02MkOEoKfSfVYv9?=
 =?us-ascii?Q?TToH+WWTcSAZG7W6PDpwitrjs/pa2tlzYq7Qu7a7tf/+xTaB0W9o2ww8sT89?=
 =?us-ascii?Q?PeO/+P4gv/VU0XA6HEqwHmf9TxlmaLVnsU48vvyd1MkQrSLSnkM3YG6cBbXt?=
 =?us-ascii?Q?XhCpVTI2KHtVSzYjxz9QNmOXtnIHmgrnvjUHoGTkjEKHuLETqUhAE+Pc7Eps?=
 =?us-ascii?Q?kj3/PeLf/drWS7BqTxw1Su7D8t5XZFXc/FJUxAVXBTjlc0q7LLamIw7Cct2m?=
 =?us-ascii?Q?KsPBJuIA0kk4exrQQHNiRhDsQZho8syk1pdIxsW3ijFNG87rO7z7U2c9+dJy?=
 =?us-ascii?Q?mdPOH80j3gjAqInTNpRU+l2NIurdxzxr8LuyPSuy8uWsaocCyuLyDskrsnV0?=
 =?us-ascii?Q?mnqzAjze0cUPNpzRDPtTzM2DVxpVkSjY1r+C8/PS73nEBjFBPWtiJEE52RKB?=
 =?us-ascii?Q?/TWrF7/yfI5DJ1TOoHTGN6DSc+q53xrtWcIzM7y7Zd5TcM1UorM+/ynUJXBQ?=
 =?us-ascii?Q?4LEhKCxmpFkI4GyP70G2vsvuSLbDmtVizDSQm+0VYt8QNqN6sd42yfs9N6w1?=
 =?us-ascii?Q?yhuqZsDHMH47zhpxm/gn800v/Xeo2nFRiE/WyBR8wMBKGFYhHYQ3LPhwKd+Y?=
 =?us-ascii?Q?Gpj4d2qztrWPExgP4TQkTtN4opVJd603q0R9t/0G?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ef59a51-d54f-4b2b-e9cd-08dacbb39a0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 11:29:07.0025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LKd8LEPDQIumcmVKTK5yXXFdHZXkXLxI26EDy+H4waQt1GE9hdKki+F6WUNpI69pwSgPbzmvaEM+WH8aOpacohY4O6rJsR2TpjYin7Istu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6515
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Himal Prasad Ghimiray
> Sent: Monday, November 21, 2022 3:32 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> bandwidth via sysfs
>=20
> Export lmem maximum memory bandwidth to the userspace via sysfs
>=20
> (v2)
> Add TODO comment to have client parts specific condition (Anshuman)
> Remove prelim prefix from the sysfs node name (Aravind)
>=20
> Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h   |  2 ++
>  drivers/gpu/drm/i915/i915_sysfs.c | 28 ++++++++++++++++++++++++++++
>  2 files changed, 30 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 8e1892d147741..1d59b84b86ad2
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6606,6 +6606,8 @@
>  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed
> point format */
>  #define	    POWER_SETUP_I1_DATA_MASK
> 	REG_GENMASK(15, 0)
> +#define	  PCODE_MEMORY_CONFIG			0x70
Please use DG1_ prefix as this mbox started from DG1 onwards.
 And  please try to follow the ascending order for commands attest for the =
new command we are adding.
> +#define
> MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
Here as well use DG1_ prefix.
>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv,
> pvc */
>  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */ diff --git
> a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index 595e8b5749907..69df2012bd10e 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -37,7 +37,10 @@
>=20
>  #include "i915_drv.h"
>  #include "i915_sysfs.h"
> +#include "i915_reg.h"
>  #include "intel_pm.h"
> +#include "intel_pcode.h"
> +
>=20
>  struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)  { @@ -
> 231,11 +234,36 @@ static void i915_setup_error_capture(struct device
> *kdev) {}  static void i915_teardown_error_capture(struct device *kdev) {=
}
> #endif
>=20
> +static ssize_t
> +lmem_max_bw_Mbps_show(struct device *dev, struct device_attribute
> +*attr, char *buff) {
> +	struct drm_i915_private *i915 =3D kdev_minor_to_i915(dev);
> +	u32 val;
> +	int err;
> +
> +	err =3D snb_pcode_read_p(&i915->uncore,
> PCODE_MEMORY_CONFIG,
> +
> MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
> +			       0x0, &val);
> +	if (err)
> +		return err;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}
> +
> +static DEVICE_ATTR_RO(lmem_max_bw_Mbps);
> +
>  void i915_setup_sysfs(struct drm_i915_private *dev_priv)  {
>  	struct device *kdev =3D dev_priv->drm.primary->kdev;
>  	int ret;
>=20
> +	/*TODO: Need to add client Parts condition check. */
Nit use space after '/*'
/* TODO: Need to add client parts specific conditional check */ would be go=
od.
BR,
Anshuman Gupta.

> +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
> +		ret =3D sysfs_create_file(&kdev->kobj,
> &dev_attr_lmem_max_bw_Mbps.attr);
> +		if (ret)
> +			drm_err(&dev_priv->drm, "Setting up sysfs to read
> max B/W failed\n");
> +	}
> +
>  	if (HAS_L3_DPF(dev_priv)) {
>  		ret =3D device_create_bin_file(kdev, &dpf_attrs);
>  		if (ret)
> --
> 2.25.1

