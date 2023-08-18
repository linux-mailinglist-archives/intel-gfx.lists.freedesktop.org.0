Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9F47805C8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 08:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4112210E060;
	Fri, 18 Aug 2023 06:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6AAF10E45E
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 06:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692338411; x=1723874411;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pNAvrae4wLiwm2SKv3+QJYj54feGPAz51RFiPgqFnAU=;
 b=hM2yWPX6JbQOaZePlND39KFCgYHq7JXaPsSbQ+Jkrx3sa4fXmvOZHFaW
 7gX0kQhybS527IFtGVFFGwLAuz5eJRrKEvhMtWSZUe/meOCO+tGYkjacZ
 LHAZLSi3VOUbclkrRjIn1ykaEzoU/lNxhT0igPTaqBx56CeyTZf7xDhSP
 sbXe15rsaiKI9wTKIjPxD7gAG4mu5QR8QBJmTJ2PR2CPNd4Bg88j1kZIV
 GW8acbIBQXKg8gcXcstoPZ6rPTR9I/kOkibc4I46uvD5m9i+jTvykU8ul
 sGTjqtVdLwY9SaL/1wvt3O/QYgcHr1q6ZOobBCx0xhXXNJ17OHa7qDW0c w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="363182255"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="363182255"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 23:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="908734726"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="908734726"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 17 Aug 2023 23:00:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 23:00:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 23:00:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 23:00:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 23:00:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqbwAmAKDDfsszu0pRJVEB3xz2nMgCsnBAA1uhYKijelq7s4nQxM2W4Qz/Kvz1N11rYu+5cNcPsd0r5FLCABeLKgpRLVNolsTGzqpbBEDO4C2T3s5sh8nQC6Ae0SnhoGSIxOG1/hQ9tNWCAPI5Ask/CaDzC1ov8jHlVIt/DEQhwRO7siHdmDGtQy2vPlSphp5zcrgiSCiyzTGlnI0D+LlgCDU7agl8NVJAVG6LM9h8DyNfQmAsiDxgbzRSi7S9/d9sZvD3LSvSqw48niS1cfH4FonY4rEyoGTR8ooZNoPQnaOtbo1muuNLbyhQP/3FDhERHlErnHINVtpIP82G9pSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jKvrzRrFQdQgWw0bFR1QuU74WFWuAoXOmAB1GJVyviU=;
 b=lg9ZjslWe/tqPvolbn5ygO34XnxHpTSczeyBfLK/H5VRw5k7pdhJ7gY5N6gQKr7RU2L1k0TvOxoKqphIS+eK200jc5+vntGYKigG5uEc65JNIZt20kpnHY1D/vYoC5GLHcxlIaJXZsEccDg7sVqt/XmVQApj4jJMUug4oZ+qyw/wBFw7X0DFGV0QNe99GHaTDKWGG+1bhB4EIjj3QKr9KzyEo9NZyHh19tRYAgQt8wkGaZ/WBSJB1FWgfbshCcXQ8GvQ9LUws29EO1L/bCUDemRNKtJxeMOn/VEGJa/iL4134i4VoKVjUu6cBY8i3PNafqFdB6IkRiRsxIBbg6d+6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH0PR11MB5627.namprd11.prod.outlook.com (2603:10b6:510:e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 06:00:08 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6678.031; Fri, 18 Aug 2023
 06:00:07 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
Thread-Index: AQHZ0YczhJwER5VSgU+VZl91Y/RYZq/viYNw
Date: Fri, 18 Aug 2023 06:00:07 +0000
Message-ID: <CY5PR11MB6211DF1509200AA47C77246F951BA@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230818024558.10780-1-sujaritha.sundaresan@intel.com>
In-Reply-To: <20230818024558.10780-1-sujaritha.sundaresan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH0PR11MB5627:EE_
x-ms-office365-filtering-correlation-id: e23c0661-fdd1-4bfe-cb0c-08db9fb06002
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iPJJc5nlg0X8mkuDC2+9SkeJAox4X7ZHPUQRLoGksaN3dFdly09FeM1sGkII4xb6Q321BojUvgG0XDLcfODSiilncd9w6Aj+SkmKD+nzOu1M7HRVByIY8kgwyJxPicWac6C4bdnasx1TBxm0pCq38CQdBBC8QloNHJgj6+Kqaq6GNrXW6HxXuRr9eEy8PIXEqCaGPhefmdIdjkr5/N7vMa/1qHcQ1aANVGZxPbeq896Izo0/2nCmMjQu7zXuMxwkokke5jSQJoOfBtZMyYLNj204Rvk3Anvz31nIaEOS0uKaO9X0Gajo4BhD9upJoR36cAsaFMtpOIO2W6yYgD2M5DcT0+sNgdJYISMfcgh7JjG47vXqeTEkN0BjSvgsl1SmNEysiO2Qs8ZQSha21XkztRi4DuTYdowTiggfKoCMNH68OMnOvX2eD5XPabuftpYqtGiQezpVaCgd5gC824gF6P1CjSMxPH/JMsOtAeRxgonRuVyFZNGmtcK0xdzRvt3XBbWIXjKjQXZdzPnDHZfqPDaOeOqfWU/W5NyyenPnN7OBdhDKbPTdaGZ4Mbuquj04PztVaAE8r639n9lFxv3c4vabLwZ35p8VN44LCZv4J5fHMMATI1gXpM2U+PICj7yg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(376002)(39860400002)(396003)(451199024)(186009)(1800799009)(86362001)(33656002)(82960400001)(122000001)(38070700005)(38100700002)(55016003)(478600001)(5660300002)(110136005)(52536014)(76116006)(6506007)(66446008)(66476007)(66556008)(66946007)(7696005)(71200400001)(26005)(316002)(53546011)(64756008)(9686003)(8676002)(8936002)(41300700001)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sCL6/9TQbwQmokDseiO9+RPMDxH59cgr1/KiODZzc8cmthHjNLLe38DToZqV?=
 =?us-ascii?Q?a12DnzmXZbecubrCOTiL+QQ6JhqUKw/1Gc0iNMbeSa1MzMU1TDUR2a9CdC3n?=
 =?us-ascii?Q?MVbGwXiiNYBtl83zJYzorqZU/n0WXAjh/rux9MRZOCBlC6LW1iq5JP7DxfJm?=
 =?us-ascii?Q?p7c/g7dtBpSTFRDORGEay2FtJPo8MaBFweSzD9IJ+SFNgiZtXHxP+6HXZMLx?=
 =?us-ascii?Q?MYyExWTeFh86UViHOPBC0DGYfYnj2b9DsIR7Fnwf/0ihAm7u9LNu2BOna9K7?=
 =?us-ascii?Q?gsXLEZ5hxLnWItJYqSDqvB43HlrQ0gou21xXlghWuLG4kdE/Tn5C0XStr4rf?=
 =?us-ascii?Q?kx1emoaAYbaAWonHdvZYR2yyLS5jzX1CgO/Rj7FRbxgb/3n8GI0fXY6Jj7fZ?=
 =?us-ascii?Q?QSEgZS3UXoXwQsbx0EQcd6yKWAoX5Q1Y/pocTRkZ3P2ePQLMGIipP2upkJjZ?=
 =?us-ascii?Q?09scrhAaAPXmFAVOOla5MMDJAcvO/L3RdJXgZAi4ebNMmZwVwrv43JhAvwB9?=
 =?us-ascii?Q?aURQ9LN7BuGM6a543FppqkmeURgskAfJr8/0/3ZM2+JeQ7LeQxX1YmYJlnu0?=
 =?us-ascii?Q?yAwvZFkDxUPyhrNJ8epb+OBKjTR5nb3U8pEfeZYGxBc+NUpr2b6pD4J1rKCs?=
 =?us-ascii?Q?iDDBuaJ+2zQ/DdjKrk0PDUqHSTbQ0A3RqTOAIiFl/4f4SLFfNlj96rj7IdpX?=
 =?us-ascii?Q?tC1bNBsT2EYancag/Hc+mASyyzwEFMzwGBboUf3nAYcQWYYl+TXTejnYpqCT?=
 =?us-ascii?Q?JnY5rrvhqdyUlgzV5kUl0tAS57kCWLudwuxF8Hs3CovArtn99Oa/3XZyggJt?=
 =?us-ascii?Q?uJbT9VaEGLeBiM0cHv3D9W7hs0PoJqZFUwMqHRY+vuKq2qvtSDLrYa1RXN6D?=
 =?us-ascii?Q?u2qSVT91NPIsnod7PnFcq3zTlVT1Pp6vZGIctJteYai1C1gNGeRVvpaSORaf?=
 =?us-ascii?Q?yYHCJn1kIuFNHWwdMMddJRLRtruYJ0vp/QSEVAA8FKN48oiMalkXu/dp8Oaa?=
 =?us-ascii?Q?pCTJWu5oveID8FMgEBeB6Toba4cLBFvKAKvnty/5HgjMIzKr8jPqb2Ii92DL?=
 =?us-ascii?Q?voF4DWFrAyo2I7BhUb7quASIozO7a399FnRm4kmKAxFkfHVr+Ot2eDNj7tbY?=
 =?us-ascii?Q?ZJEeHAdEZ1pm2UlEoHc9WENqlHd4peKAp1McEHChBQdH/pxFqHPvRdkzWf2V?=
 =?us-ascii?Q?8WF/ot/79RzMEMEWbpuMbua6huR2XzGS44URKTUefUoG6qJLAH7y6D7JCxOE?=
 =?us-ascii?Q?haYpvi6Hhiaw+MQyOH+JeCcQ55rVqZ8xBy8m/NwNjzCmAUacG+t5S6JSJfQw?=
 =?us-ascii?Q?lef1qde3+1CCD8RNfaecUzrNHwXCMa09C7Sut+n9qBcF/sA0RIsmQd1e1oVb?=
 =?us-ascii?Q?5P7af8uxuLBdl8u727Nh3jzONZL34u12NG8+06Y8zHaeV7j9HL+V9dnDUate?=
 =?us-ascii?Q?tVDpOtAqc+KzXjK3u3LomlrucMPrmfQTh7UwQoQK60poId+T7XnFQsjYphSa?=
 =?us-ascii?Q?+xv36FTXiaFUM43/mvHAE5Edx353r/9a+f4o2Y0uKVXxa+ZHtylYYbo+XTRD?=
 =?us-ascii?Q?Zzv3ngm9fZyftXRG4x7iMrjgStQVrDtN7gWl9GDL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e23c0661-fdd1-4bfe-cb0c-08db9fb06002
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2023 06:00:07.6314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lSoKnV2jJnax7snfznDCmZtn1IadaSPj2l2lx3SJyt+Ie1XvAtOmx0yTkoyG+wIYhZmJpdolHxgfcrOfqsaqmPhis/onUvuZtsZLA4+pRmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5627
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Sujaritha Sundaresan
> Sent: Friday, August 18, 2023 8:16 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
>=20
> Added intel_pcode_probe, promoted wait for lmem init and intel_pcode_init
> prior to mmio_probe during load, so that GT registers can be accessed onl=
y
> after this, else MCA is observed.
>=20
> Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
Both DG1 and DG2 crashed during i915_pci_probe.
BAT is failing.
Thanks,
Anshuman Gupta.=20
> ---
>  drivers/gpu/drm/i915/i915_driver.c  | 37 ++++++++++++++++++++++++-----
> drivers/gpu/drm/i915/intel_uncore.c | 12 ----------
>  2 files changed, 31 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index f8dbee7a5af7..92cafceaf447 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -93,6 +93,7 @@
>  #include "i915_memcpy.h"
>  #include "i915_perf.h"
>  #include "i915_query.h"
> +#include "i915_reg.h"
>  #include "i915_suspend.h"
>  #include "i915_switcheroo.h"
>  #include "i915_sysfs.h"
> @@ -436,6 +437,32 @@ static int i915_pcode_init(struct drm_i915_private
> *i915)
>  	return 0;
>  }
>=20
> +static int intel_pcode_probe(struct drm_i915_private *i915) {
> +	struct intel_uncore *uncore;
> +	int ret;
> +
> +	/*
> +	 * The boot firmware initializes local memory and assesses its health.
> +	 * If memory training fails, the punit will have been instructed to
> +	 * keep the GT powered down; we won't be able to communicate
> with it
> +	 * and we should not continue with driver initialization.
> +	 */
> +	if (IS_DGFX(i915) &&
> +		!(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT))
> {
> +		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
> +		return -ENODEV;
> +	}
> +
> +	/*
> +	 * Driver handshakes with pcode via mailbox command to know that
> SoC
> +	 * initialization is complete before proceeding further
> +	 */
> +	ret =3D i915_pcode_init(i915);
> +
> +	return ret;
> +}
> +
>  /**
>   * i915_driver_hw_probe - setup state requiring device access
>   * @dev_priv: device private
> @@ -547,10 +574,6 @@ static int i915_driver_hw_probe(struct
> drm_i915_private *dev_priv)
>=20
>  	intel_opregion_setup(dev_priv);
>=20
> -	ret =3D i915_pcode_init(dev_priv);
> -	if (ret)
> -		goto err_opregion;
> -
>  	/*
>  	 * Fill the dram structure to get the system dram info. This will be
>  	 * used for memory latency calculation.
> @@ -561,8 +584,6 @@ static int i915_driver_hw_probe(struct
> drm_i915_private *dev_priv)
>=20
>  	return 0;
>=20
> -err_opregion:
> -	intel_opregion_cleanup(dev_priv);
>  err_msi:
>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
> @@ -778,6 +799,10 @@ int i915_driver_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  	if (ret < 0)
>  		goto out_runtime_pm_put;
>=20
> +	ret =3D intel_pcode_probe(i915);
> +	if (ret)
> +		goto out_tiles_cleanup;
> +
>  	ret =3D i915_driver_mmio_probe(i915);
>  	if (ret < 0)
>  		goto out_tiles_cleanup;
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> b/drivers/gpu/drm/i915/intel_uncore.c
> index dfefad5a5fec..4a353d4adf86 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2658,18 +2658,6 @@ int intel_uncore_init_mmio(struct intel_uncore
> *uncore)
>  	if (ret)
>  		return ret;
>=20
> -	/*
> -	 * The boot firmware initializes local memory and assesses its health.
> -	 * If memory training fails, the punit will have been instructed to
> -	 * keep the GT powered down; we won't be able to communicate
> with it
> -	 * and we should not continue with driver initialization.
> -	 */
> -	if (IS_DGFX(i915) &&
> -	    !(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT)) {
> -		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
> -		return -ENODEV;
> -	}
> -
>  	if (GRAPHICS_VER(i915) > 5 && !intel_vgpu_active(i915))
>  		uncore->flags |=3D UNCORE_HAS_FORCEWAKE;
>=20
> --
> 2.41.0

