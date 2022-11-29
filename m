Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D44FC63B68E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 01:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361DB10E358;
	Tue, 29 Nov 2022 00:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB3B710E358
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 00:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669681421; x=1701217421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LwUjEqI4w49pyMf9jEV/liv4RZFNjvsdTIhViU+vLMw=;
 b=CZmLbvjkTM66DKUXIwViBxipEanau0bGMF324mMHQ1W1x1kjDjhTflGA
 5oaT4zXlw7VTTBuasuBWkJB7ln0KaqzyPHEEZmvlYcWmJiI8iK4sbrkfc
 GryENFFKAGUS1H2Fi0mfl2cNpoWGnu6RIOyXOtTzb5XFVobSezWLzbqYY
 z9ObTckNY/c2hPZlHUJY06iGWQGRBcrOVGwvy8Dys85pExNU/dfqvn0Hs
 b54Q6GSLevmR/ZBOR/+8e1BN1xcHxLXL1dfhNidDoG9QKDEmHNlJtgLxq
 6zBoU1HMdVRTCwD+EDATkR856fXHzKVA1FMnTbG0WAAXzxWIqCaQ5PLGr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="312606484"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="312606484"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:23:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="749608032"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="749608032"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2022 16:23:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 16:23:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 16:23:40 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 16:23:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F+PXqmDzWwy9+PXc8OlakO12JBXFHBPjoOzw6NDBj4bR6LIGxYzvOykXV65ZrKUa7N+oVEJlXlD9o1+qhINgvQFdI6pRnVM1W07ItUKdLomtkMPOCd4L5FFDwgAXIPcBiKhL9FY5ZdZ2OLSNvOcJP4MNkmSCCMSuFO/fwn5jKWi/XjaZ1p/m9lGEdOkJU2Qs2r7Tetn0KK/tIWMnYgg72D0WNigenbBpIrNo19Mx6H/krvBSDxK2Inqk6Vly4Vsc0zfgIkuvDCqKF0jiYpIrda7TYcxwkAq/kXMjiwtfl0USnZuIJA/pU0n62b9rewn2Fbjj36YOWqDT7mv5M4o4tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Iq4GBPT5/VdjRjFZKKyD19PyUUZbUoBNCDtR8BWoUw=;
 b=TePF7Z6ryJcPZi4i2YlvNQBr7CiFDB2a2gJmBAiBTRex8QTJ91wHrJLdtAHwz/yfQ4uCRIUaaOhxfXjcZeh9I+TCA2apEj5mLLXJx1v6tWIDYxkuMbEHZ1WAmCBvfh4M3K9zZEyN49NbOiIZPzPqbtwEql/J0rEmLtzEKzYK2Kpf0nHsRUvUjzFRy7YMXzkwjcFukKYkmJdCnXJg/RXdOxfcVdkK/1QefP3EzQUyX8EGkSMGiT8PoisAkzTaJ2nxhXspnnXX0IWrB5DkBSbiS3MpPGF9u1UEprhpVf1E6LU9sSX02KgWjGWZPgvIBy5qSFj2t0Rmn9dLAxpgPUzMbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BN9PR11MB5322.namprd11.prod.outlook.com (2603:10b6:408:137::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 00:23:39 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::bf57:6a:5cea:a892]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::bf57:6a:5cea:a892%5]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 00:23:39 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 01/20] drm/i915/mtl: Initial DDI port setup
Thread-Index: AQHY38vA+6dpdQHsEkG34FfmQNhz265VUbuw
Date: Tue, 29 Nov 2022 00:23:38 +0000
Message-ID: <DM4PR11MB59715BA7F577A8F60FDDCC3387129@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
 <20221014124740.774835-2-mika.kahola@intel.com>
In-Reply-To: <20221014124740.774835-2-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BN9PR11MB5322:EE_
x-ms-office365-filtering-correlation-id: eb1d1b50-afb7-4fd6-50d0-08dad19ff65a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ahPP5XROHxy8M/OVCMNS6DVyyRQGbyQcVOIdsaae1XSfNAjomNoCKHuwyvmlBjWAX5hXDzv4Ye7pdZpXBnt1e5EkXurkp80rI927fT1Qc4+63B9HLwuRXVwej+TwlorcduvYKyHvUpVl/TL71X9/Blm6SLx2y8kMSkWnFs0l5RSr/MqoR1/oFJVYtJ408ccY0/tOCN7mM5I7mbpj2mnm0haL/hvo5vhqxxJ3x4CYoHtcfGr38Nh6yEb/oRGAq/VxnHyZwLtFBh7h3GoMRYz3NKEDfZclsZfzFrnrV8Jzw26MVjyv+q25IdntzE38cAUwD/WCQXl5j6nJ25pxGz9YSgLOKYkfn1PslnWF3RaTOkaebmEFjNx4F4WjcBDrOffQ5MymSKIpB0rVHN+xmhZaKUGF7Zo7++a2iwfIYygYl67OiwgtP8IAF4K0U93mmFit1bT+SnGQ5NAmnEHXM8ipIkfAzch8TdoHGt0ZLHUrb73xLNt2ErYzhDq25jehsysueuFzhVMw5vT8fJ3Wvsh0sP0s+OSrzQwtVkdjCRO0iI6SeJQ8XUyLqANZzymKXRhCxJMvZFMUQ4c8mi6FT4wQUr2s8YSBcoYPj2m9DcvQhxMr/e9AjOKLV66XNn92PRjb+vWC/nxDz58q0nP7jYIBbRcLrUwwViBGjl89tyGmZ2RtJBuwrReFJIhysOlpZ3FwQiyrWXsSRS6lEJJkq7yKSw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(396003)(366004)(136003)(451199015)(82960400001)(53546011)(66556008)(71200400001)(122000001)(26005)(6506007)(9686003)(38100700002)(7696005)(41300700001)(8676002)(66946007)(66476007)(64756008)(66446008)(478600001)(76116006)(33656002)(86362001)(38070700005)(4326008)(52536014)(316002)(110136005)(55016003)(5660300002)(8936002)(186003)(83380400001)(107886003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qquucRmYuOmuRzI6fPJUNXL16z3sAxycRG00qFU+Whb6gSMWtb1WaYK2nLVQ?=
 =?us-ascii?Q?i8zuGmQ769MlTo/vufBkFI6xRl0V+MTiW3P028MC//RMVI9XKEoNpw4is73b?=
 =?us-ascii?Q?aO1VLdOg0sdKA9t8DtsfVE48+dstvjxrOsJI2KJy1cnWkmRvjV7ZZ1upExWS?=
 =?us-ascii?Q?14HkAkX6bGDTUWbdqnTwTEsOQ/IAxprKFSh3SR5vrVDKrpXHt9OiLOFyRzYW?=
 =?us-ascii?Q?1bHsd2vUDN6IyMTRSz/N87kg2W+VsyM4Z/kPjEIdpV1FgKFDy/C29OzUz7cG?=
 =?us-ascii?Q?9eW7pqc+fAyfZWwEta7VEtDCxXkRDA5IOMdFT+Yw8yhm+mrJEpt7Dky+KLOj?=
 =?us-ascii?Q?hZ20mQilXTUItqdkIYDsUt9hp+7bPBuj1kBFVwzwlHNMM4s/yv6eHOMkYD5A?=
 =?us-ascii?Q?iu57rbGajES2FWsI6oMDxUGyHevv0VWJbvy+Rl/J5p49MU75uekzADASZYBU?=
 =?us-ascii?Q?JSIlEH+SJBQb0J8vlPIioJkVatKma1XrgtB+IppnxzmWvxELPXgfoUc5mkW8?=
 =?us-ascii?Q?nBPYUGB9IvveR00yJ1DR0Bx9X1Ul3O+9KzqHm1F8jmhYSyWV8PsvAhsT6qpn?=
 =?us-ascii?Q?DCmhWrxDr9p9+oh8psDG8h0gfU08Qky79XzwQNoB1iSHz/2pxPwwDgY6f825?=
 =?us-ascii?Q?weMMdUZP14/bjl4AMr7X3eyVNlFPs1GIc8m8F5lery7jyU3Tg3pqoKv+t3Pd?=
 =?us-ascii?Q?TTp6ntPpaD4GXlAWlZxnTaT41UpFEYC51Y+qvosE7mno0b4350uRWPV7LA/C?=
 =?us-ascii?Q?fAaCij6HzeLxTwNOvNBGBKYPbl3BWs18fIFNHqXVWkOSlgwegSjNTMjw5un8?=
 =?us-ascii?Q?Mq3/dz0pXdaKCv0IG12bbHJfqLbmJpMddzn9sBS9cV76VuOgTTeETCSz5Bib?=
 =?us-ascii?Q?fHdGvpzfDH6YI/25Vc/J+x6iTTxCM/QWvO0BPlJGnk/DVaxyt3QhsHCTpzeq?=
 =?us-ascii?Q?DzW1Xh2wFWGzGqOFsBtppzzr2b708L7kyJoQjVzHcRYYTh+8YSuhzg3768v2?=
 =?us-ascii?Q?KyW7xLN4a2l3Svjl43W+I2X/WEzFgmYvSrJs4TvG39P2SaKfhyqueX1RCDsi?=
 =?us-ascii?Q?25EXVg+W+KKOmHw00sE52lBFN4+psule4FVFvDmRAMdAaD37bms4/th+xBlD?=
 =?us-ascii?Q?P8JEFG3q+78jnVi7yemZgSYNqmZNDpTXxZMVWeh6oUJozxtWt6yrxsZQu5fO?=
 =?us-ascii?Q?kSZGkeGy9WVc+GmiD/hT72wDPMLGyvVxPJWL3p2zlqN7HPwNyUrc5sIZpv8P?=
 =?us-ascii?Q?x+f/YFUloTwz/O5ox5kz3k1OWOOlIeZKkW2ikIDuymqsOBl4yCb9GtTZe6SV?=
 =?us-ascii?Q?ZZwsFKVoWMXh/xSWs59M9G1HI+OSi2we0ukA+TCp8hwxrbBePm2Wcah9VaRR?=
 =?us-ascii?Q?/UJHPnfO7WhH7AQV0EAydsF2oQnVcNMOpwVriSOgkzs77JTxLMlLAd+3rKgI?=
 =?us-ascii?Q?APxdnJv2/KSAkSPI5L0XqbALJxGUdSdiwK4gVlcYwvThSBShdp+OHTB11taD?=
 =?us-ascii?Q?ulpsQHHaxK0ZwLbmmjA2vYzHjAAn8CdMGpQ1S+gOuVnaaqzQ9Lkzk5YkJlpf?=
 =?us-ascii?Q?tT3k0CvXolj+AKsqt9FcKr+Ie84UCKiDKAt/waUHMzFNOYziHE7mGa0eaBA0?=
 =?us-ascii?Q?aw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1d1b50-afb7-4fd6-50d0-08dad19ff65a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 00:23:38.8996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nrD8hpYkdZWdmmnv2d9zMiZcU1aQHJpjaGMqOnCJt+giGupUqCsxVlXolgGKPAjmqQbf57a24OhlEJs+bHTrw+Fk81nT3LqvR2IgGsW1biE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5322
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915/mtl: Initial DDI port setup
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
> From: Kahola, Mika <mika.kahola@intel.com>
> Sent: Friday, October 14, 2022 5:47 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>; Taylor, Clinton A
> <clinton.a.taylor@intel.com>; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>
> Subject: [PATCH 01/20] drm/i915/mtl: Initial DDI port setup
>=20
> From: Clint Taylor <clinton.a.taylor@intel.com>
>=20
> Initialize c10 combo phy ports. TODO Type-C ports.
>=20
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>=20
Shouldn't this be moved after C10 phy patches. Apart from that.
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c52da2a21896..6a8937a7d2d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7900,7 +7900,11 @@ static void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>=20
> -	if (IS_DG2(dev_priv)) {
> +	if (IS_METEORLAKE(dev_priv)) {
> +		/* TODO: initialize TC ports as well */
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +	} else if (IS_DG2(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
> --
> 2.34.1

