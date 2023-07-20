Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D0275ADAE
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 14:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5963410E134;
	Thu, 20 Jul 2023 12:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A58F110E0F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 12:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689854469; x=1721390469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6X/JQc8BJmOvhO1rBNyRIySCsf5D2qduiAo6hrWVXNU=;
 b=Z5AF7ZAqaREGTPNrKtk5wGA/WqZlvFXsFSSWzLqfygmDDu7/cjoE3auF
 VRx89b2dqSO3/8glUYZpd2GkedPrYZFFLNlejaN99g8RLh6i8RqmQYer8
 JJbgY7J6icndOu991/WvF7y/qnDPthzOb7IWm3PMrC/sf32lJxJPbetRQ
 GC2Vgw+SCDJBBm0ClXswO1TRXFUJ4RlBpfIrUUitraVKTytWnuhzp/1b2
 t62gZOidrEeREJSWGMNO/Q5VbRITPAxfN1Hr/fqc9uJe5ZFrfMwNC/QVv
 hBIaF4OCR5qa819k4QZs/gugyhCdDywAvV11w849yftnSiwfcaGST8jyD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="397585967"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="397585967"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:01:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="789772865"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="789772865"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 20 Jul 2023 05:00:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 05:00:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 05:00:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 05:00:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nF013PV8igHwYUzdMLD2kzkgXaC5bVN9k8HwE7iEAo7QKFR7SbmNEmbWIpsJlsEM0TtAmK7gUjqvyMuvL1WBbvJDhPNjet+sj8rGrPrkDKK5jimFdTFg77JiHWFpfH9qPRjZR9QcmARY2iFSTEiuW9ZAdd/5UcJqomaNyWe9VGYdDfIqt+tRk0pKCzScejNcG99y0pa/ihSoyqVZR7zwVLDPRXSOgQ2NX7tyd8dGuCmtF/KIHHuxrALLjb5Jns4fjPkW0g7FH9yvUep8PYZUL1wsmIc5cIQBQjFgaQ2a+SOk5EWymYOxknnhbSc9YLM1szkWspr93GBqn6TIKuzi3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5+syEYyOj23PD3JCChstK6w1F869o70kdx9W7gaT0A=;
 b=Hs9HN1NwOPo3At6v0NeKnLnEa1Fo2DCgJsZ7LiqQWDeaI8EFbPKoyd3sVCarHUxUGIsaYpxpPHqnavnTsxxGHxkZrjX4TrCTyYPuMDEWeZC7aBFWwtcPJflgz17ErNLridCKXa6alxY+YfwpIB1/sFV4D8zqC2yxF/YFGx3282fNg6D1DBWIIWGrx7k1KKl/fuYFJr4/fawIRVAop+o6w5f6dbKjQQ+hh1nxJLZARiSGjT8r6IIuzt3zXWgXqJbkqg4EXb0IzOj9N2iASkahV+pPrDafuzag0UbX5e64w5FP+cHdVso8eXgYC/b9hp7cfZ98EQsXbqQEOtT29UWTVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB8016.namprd11.prod.outlook.com (2603:10b6:510:250::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.31; Thu, 20 Jul 2023 12:00:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7%7]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 12:00:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/2] drm/i915/color: Downscale degamma lut values read
 from hardware
Thread-Index: AQHZszSjeRsBc0OrzkyD7lahGmjN+q/CnP1w
Date: Thu, 20 Jul 2023 12:00:30 +0000
Message-ID: <DM4PR11MB6360761689664E1C063DB2C0F43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230710134317.2794177-1-chaitanya.kumar.borah@intel.com>
 <20230710134317.2794177-3-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230710134317.2794177-3-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB8016:EE_
x-ms-office365-filtering-correlation-id: dfc45103-cbbb-4f64-a509-08db8918ea04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7ASxHXp8nVhAAP+Q2ji6D081PIdABuglRy8FTQxCUW6UIruCudhv+xgUVDoKy+gg+cEi9JNoTmJmxibjg+id+iTMjXrqFuY8IzHvrDQjF0IJTXdPl2SmLntgviw8qwPC+jzTJEvmBYgTKllMVn/ooVG0jR3duui4W1AXg7OkI0AEuhqljzN7wHxxpuF+aq43tuI8LZlwL0xmVI6KLrtHhKziyXfdrzUnf1OvHKtIsDpddnTOoOUx7vmbkYsVeqds399g491lV2nQ5/xrlUpx2Z7WgSrwteZBM2Qo6Wuy30qy6B9g/VZVExSFNg+ckMSGdKkQ9SQbkjYXMTWkh9+ukloR4XR+4aNO1BwmG4KUcHVoQxuZwktPqoL2goi069SmhryFQ9C5n4CsEm+tbgvRxcnS90O9D8sBKyuZ6xjd4hjnm9Pa2EukBrJrZSLcGhyVrzp1DU3gC6E72rpLxFXZNDVD1cQYdihvfDGe3/jDmwxopPr0lGz3uunY9fBzPcLUUkKNTWYosLY+P1lT+NvDBcGqs/GtNaoaikriUzUmxsa3bAWusppIamDh84wVuDHajg7LrQYNoTwAtUS8ARWJX5VwTMDusEv1bZ24RdI6v9AegSiIW/lHyN89XbWBIrK+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(136003)(366004)(39860400002)(346002)(451199021)(122000001)(110136005)(55016003)(71200400001)(7696005)(66946007)(82960400001)(478600001)(86362001)(8676002)(52536014)(38070700005)(8936002)(5660300002)(2906002)(33656002)(4326008)(66476007)(76116006)(66446008)(64756008)(66556008)(38100700002)(41300700001)(316002)(6506007)(26005)(186003)(53546011)(83380400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fbFJRtyNk9ZGR7iTcQUlIKGtZBWLx0lq4WS7kQCt9hem294X96z4NVAJweK0?=
 =?us-ascii?Q?Yc+cXkV3m+4cCdDvbOqAuAddSck9AwG4PP+8mym8DzDmKWZYRCQPccUiYzHe?=
 =?us-ascii?Q?De0MFkW6bwCaUFuTSN3l84cGcqMdOHH38pLOaeES86RpKMwrur5toYh/tfLx?=
 =?us-ascii?Q?dzVGJH22piMIJKT13i7hiFtVutzgR7quwQ1PJ5yktKBCuRbd8tu3on1idXMl?=
 =?us-ascii?Q?gBpEtOiydqPYrkPmBMDMMYOeuIHkrI3cX+5s+5+XUNt50ovd8ukD6L3/B7bG?=
 =?us-ascii?Q?8PtTYOkFcG+GzfnVu1o69r5m312cza1VFUNzAojAQ8vnZEO7u4pWMThdmfo6?=
 =?us-ascii?Q?b4DnOzkeMrMcPLEKYnEjmUoF+lA0HmgTbPw0Ayt5Tpg/qJsNhZVGtvUmaq8N?=
 =?us-ascii?Q?fLlJd8l7fuXVDGoP0Bm3jgqg8scvqWwenNrbIDnlF9ChUQoRpyznIVjeTDo3?=
 =?us-ascii?Q?uFCs4ZBTtYlyVpKk2hDMNRyq8J9fPRw516lvhAvkkGE0ay2YoH6k3xcC6GSj?=
 =?us-ascii?Q?ay6OZOqtRw1lUy2hQwXQAVRmBLxPGsIydjzG0YWJpxmnPBmGQYPpJn3lTOu8?=
 =?us-ascii?Q?MyO8eoFQIi2phSrNtM4b18Nanh27Q2fAg8Cq8sD7HRvmk/+lAneaY8sdngmY?=
 =?us-ascii?Q?BM1yFnixiQx77bRPGGCOBJEXVzUjunLQXAz2BBQs+nfV73VzJ3nTZv1swJUx?=
 =?us-ascii?Q?UrwL59QX5CGXjqnJpp8AlBP/qbXXSzmhWyNFwNQ+B8ThIpK/opX1xZrk5YbB?=
 =?us-ascii?Q?zrf5DyNxpn/1tpOXnQC5fzT37na18Q0t6sKsILoMc6fcV0nQGnZMBXqAyFhl?=
 =?us-ascii?Q?XY6WL4Xz0tI+6gI6oztoz7MnkeDc9Pqb2XBMzGZxaTE62yu6vxFmFcK3uPFf?=
 =?us-ascii?Q?94wO737OcZc4WHYiW2rsIyKg8EEkImUHbE5i7h3Z8WCI9ZayQv55B9FkzKSH?=
 =?us-ascii?Q?ANgKluhXHLTcuol8Z43NKDPdxoFZcqZWtwTz4DnnchSMYjw/2SaSs5d20AFx?=
 =?us-ascii?Q?nLAQnwawWB56/OF43maweggoEz9Y3mV/sEHdxjq6ztNX3gHQGOuqiFc0zs5Q?=
 =?us-ascii?Q?12DoC54alCMTz0+ZAcFCmTqlNwEKvevN2v+cIjizolA7zEY7sIVzIFCfWM0g?=
 =?us-ascii?Q?e9HZqIibFm5SQHFqzt/nZAG/KI1SMfqSIp5Ebt9s5guFyLsdp3tSWeEyBfMs?=
 =?us-ascii?Q?7bzUPMiuZ12awlz/1RiusBqMgDpfHc3oCJArjO9MS2wy5EjYApGZ8idAVkwP?=
 =?us-ascii?Q?hIsnTNuyRMyR5hvhYCrLrhO1Gy2ZcqZzAAXSZaloSADcVYrpbPZDMgGb2Zzw?=
 =?us-ascii?Q?B/hR3Yk8vZCt947gHBPKi5OxaexmNjpwCuBoRXdozr0yzYOoumWhDNigBEge?=
 =?us-ascii?Q?ptqIMFtsJgP6oBMiiCpQkaKrvvQbE8kwqRAX9KQqU5MWJAPwQZNfx6LTgnUH?=
 =?us-ascii?Q?RFE+aJVXEgqKCK1pYQNsRb2ttDP/2OvA4PQ3Nazii0IMJ4Q3krg1frtKmFJ0?=
 =?us-ascii?Q?TwH+J7qa84r5L43tIUs8hrMYrKMahZSILQ9H1lVx2jL3aGt8a//jEMfFFD9h?=
 =?us-ascii?Q?Ha1CJ+ICEDdR7UBQ2QL+1uFriSZKUorVLPSgjKX3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc45103-cbbb-4f64-a509-08db8918ea04
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 12:00:30.1396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: okIlL72nMYozrnvvO//2JZP+TbsYi3U5i6lj1xqdi9qdLAwYq+l2tGuhvBS1XJeOC80F0yeSi5dHw8ZrDclAZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/color: Downscale degamma
 lut values read from hardware
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Monday, July 10, 2023 7:13 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>; Bo=
rah,
> Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH v2 2/2] drm/i915/color: Downscale degamma lut values read=
 from
> hardware
>=20
> For MTL and beyond, convert back the 24 bit lut values read from HW to 16=
 bit
> values to maintain parity with userspace values. This way we avoid pipe c=
onfig
> mismatch for pre-csc lut values.
>=20
> v2: Add helper function to downscale values (Jani)

Change looks ok to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 15ada7fada96..41666e778c03 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3456,6 +3456,14 @@ static struct drm_property_blob
> *glk_read_degamma_lut(struct intel_crtc *crtc)
>  	for (i =3D 0; i < lut_size; i++) {
>  		u32 val =3D intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
>=20
> +		/*
> +		 * For MTL and beyond, convert back the 24 bit lut values
> +		 * read from HW to 16 bit values to maintain parity with
> +		 * userspace values
> +		 */
> +		if (DISPLAY_VER(dev_priv) >=3D 14)
> +			val =3D change_lut_val_precision(val, 16, 24);
> +
>  		lut[i].red =3D val;
>  		lut[i].green =3D val;
>  		lut[i].blue =3D val;
> --
> 2.25.1

