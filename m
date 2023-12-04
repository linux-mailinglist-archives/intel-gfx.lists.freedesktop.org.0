Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B26803689
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 15:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4150310E027;
	Mon,  4 Dec 2023 14:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8615D10E027
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 14:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701699994; x=1733235994;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gl7GTROQer/OQMnJGCIoxuusHDrje82MAbfXhWZYq74=;
 b=N+AT2NcADPLHjWEFBEklqF0CvRmdfqaglWNAbLZm32WaItURVKb+xITz
 hk1s99HxVdN0LPb0nYmJKFedpu81lCToK4TilHhaoSPwDUcp52OJYCDqA
 bQXJO1oXBjtO8/O0xXyIQiopv/vzXQi1TMXrhQ0eEqvNAZrAxCHU5yffF
 JxIPSukFFd6jJjThh42hRYVJZcVcWyn2S495BAfMbEo1USJmTIM6reKME
 J66OprP+8yE8lKObhbAZsxNN6DOhNM1WLivirozb35pTFllOFCXHvdn/A
 ynIVOuG9+bJBBh04vvpGiOWgXxGB+T//mekobW1SU8qgZNDywjCwfEc80 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="587974"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="scan'208";a="587974"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 06:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="11985791"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 06:26:34 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 06:26:32 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 06:26:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 06:26:32 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 06:26:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lD1M88VT4sC38+JvnCbQKdadglURuLRF5Bd8rNDjNLgmb7pDw7p1FYOtTqAEfnX+toWAaKwwYPQxpgJg3DRP4BHpbGrZ0FYsEn8uz/OPRv5QGAh7mQUnYilUO3xhoJqQ4nHYS4rk7fXAbuA6dkfP3t2dsqUWQmLRUVcwnJSv30WJdYddpJEAZf7mP2EwZR7i6fQon/MYq93wwc3Dyu1zAMrZDjZqOwjWNymFIsJo4mQhGrDJi0Sv5FyQImusI2laevra3YRNPcSxiePtKhrjnPSvOzB0n+wzuZuaXG88irTGSXHRbMCQE89ArNUZHJVuQDazIb2zKkSwHLX2+LSY8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fq7KpIHJ1a1jDXOlsUFoo/baWF9+CueUaGb4kaTIzQo=;
 b=m7FPyXprY+7WSZA3KNf4oTT0ACmHxG4whprqsC4ftT/8YmdHpUV37bQQwPls4+K1aB902IlCFkhoS9i8mks3Tm/sKP3Ld6yhzxerD7hUVtDA3b1EPIlSLtYRNqmvSI5bNnSMheFnqW8EM1DbTJA5pUkFjD9k2k/eNoOv+wCTo9a/om2xf8yf7IK1EM9EzjKWlPiErU9hNcOopN9SoKDzyawsW7krfgFT9XuMog9a2Q/yBMXQ+jmc7xm9eXSP/1vrxXI0S0lvj9pTASYxuoLYVjQ0ZvnDctklfufpc3fugP7bWlH7Qgi8B0Pyr8xqDkljKH84u2INtPny9YsihK3KHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CYYPR11MB8358.namprd11.prod.outlook.com (2603:10b6:930:c9::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.33; Mon, 4 Dec 2023 14:26:30 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 14:26:29 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all
 quirks
Thread-Index: AQHaJr1fuPF1elrfc06ubKJB+z68gbCZLgYw
Date: Mon, 4 Dec 2023 14:26:29 +0000
Message-ID: <DM8PR11MB5655E1449D614B116D246720E086A@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CYYPR11MB8358:EE_
x-ms-office365-filtering-correlation-id: f53a9046-e2bd-4ff3-7ecc-08dbf4d501d1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6O95wiZQNDjOHLExiSOwwnwJBlb0TVwqpbHH20nJCOv0U/ABA9Cfy8RE/vEm/wyjujTn9tcJs6J39U0NyjeEikqjn5xj038nzDhK62x+k0kIUV2KkkYb7RggzmYTJ2TPcBWYSQdsSiXIIyRGRFo8ZsxNuTxq27fA+SnJfKYmB3m7OZtGHi02gtTVv+t5HO4KVUdVe8boQddzlOh0xaqnTCDSdEiacp9BoiautLV53xjA9m0U5KuAb/dKjv2p+Z/PlXsQ9FbHDBD76YZkScdoOouV5FHCYn9JLyHEBu7fQSNEn5mGmkqOdOZoG8ndE/R12IJ4jBsdq1hxCWQB2VrmQRtlZTWCji6Q8oc5VlUc4P1UEqLLeJ7tz3IU5oyP98/TJmd/mg+i1HjM3zt+o+593sIO3e1Wmy91raUbqqaUoIiSwOD6usvuF7lXo2SlOMzsS4H3DjOxrm9+RZS+6aZpGpef94ZaXXtRwJ6CuEv/b/OGRWUUYApxLIqMTHo7Q5rnMV/P4m9QTLya4Z7jBMUn0vDe1qSzw73POxZ5kGQsprGAzAkanPGrSofNsgCPpW/PVqDGoi1V/4AL4S6SR+fFqPDYOvj/1rIn7DSa6GM28aVa2yN3zPGq7YoSHStyb/WTs9PHlqnH/5BB/YYgJhnkWrF7OspR7iZ7RVWrAedvqWY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(396003)(136003)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(26005)(478600001)(966005)(83380400001)(7696005)(71200400001)(9686003)(6506007)(53546011)(82960400001)(316002)(110136005)(6636002)(66476007)(66446008)(64756008)(76116006)(66946007)(66556008)(122000001)(38100700002)(55016003)(5660300002)(52536014)(86362001)(2906002)(8936002)(8676002)(4744005)(41300700001)(33656002)(38070700009)(69594002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jrJCT8Ve5wd9KeRfS29TCAk75Oi//4/oJ1CxVy2K9kcfUaiHXvtgArXFIYwi?=
 =?us-ascii?Q?L5VnURP7g29HcdRvQrB+kx2GFm+dmbqea4WpDx5QgZO24uEng6SH2kmkYCI9?=
 =?us-ascii?Q?EISvK/Qg23ocJVOQ0gbZLa4xy3WfQCdHhnqHQLgQJYNjJmdYHtfmvzsAWVZA?=
 =?us-ascii?Q?BuI8Op6VO5WmIAvYVJu4PrLMf3VpU6rfDqvScqmOG3I7goEM5n5R6h250Gds?=
 =?us-ascii?Q?lNqJMB8LrKMHJZoM1+Kkx6r+sxzczicaP28VoFxrVX2abfpklaB6yIcW2DYy?=
 =?us-ascii?Q?HvE5UISQZdBq6gFtmf+lLo++u2OIlFAU5jI50knt2cyBESmQQUTQfXHaQ6nL?=
 =?us-ascii?Q?gmmtB9lI8RXT2gvvSJfELINViRxVSKvmGdRYV6ExDRkLq3EmbAnUaxwKWmTr?=
 =?us-ascii?Q?6yxRZv4oNjvAtaq8oRbYTDc4hfJ+RGj9frPWkCm6q+SVym9IvX5PEAjUfQ2M?=
 =?us-ascii?Q?FCfPnc/7W18GAwPwQPHtR6Z8HpVAtc/Bb1VG/GqaVtXRqS5ypp4seR9CARBh?=
 =?us-ascii?Q?ngt0EH7l/K8AO+fYio9cOKIiW99gC3qBY76EE4BvtSmWVxFSRSLu4xV1SNh+?=
 =?us-ascii?Q?rgpE2EDjLVkpUeZ1GsaqjHqQMHgfW9Cud51H+nhABvF9QVXXEcMdv3fox/IF?=
 =?us-ascii?Q?NLqnF97dRa1VgkxsvgNMmlr7XJO6W5AQ/H3MVAJ5o4ZutEVQ1ww6480CSoX0?=
 =?us-ascii?Q?kZ3iEwBUN1JY3u+yCvJYNuiIlSkatHdenz+/HpnwcOffPZpcSkeR6xRYKZZT?=
 =?us-ascii?Q?IzboZpHfHlhUqR/m+qzijf9LrLyVO7OQT8w653uxONH/avr+7C/B9Nwnq80A?=
 =?us-ascii?Q?4ULgY88MKHJ+03wXZn9qD7PN/mYARmxWbj/ZBaBjnXsaOAvJW9crjOWIQjcW?=
 =?us-ascii?Q?WcpI3q3dUY3vwOwsqpZ55X8rpjaEwMXH9sz7bqvXHf0Fj8/qo4BSHRAfMzg3?=
 =?us-ascii?Q?OQvr4p1/ZjelByQuGG4gharNs4f/edGcmc93WFzMJvubow5LAKB1MdZjXfpn?=
 =?us-ascii?Q?CzYNCXdKvYJ9/04NhSsoJP+FTVKI3S9j6EXfhifXPNib99//VZUkBaWUgMDF?=
 =?us-ascii?Q?aVPuMGp803Sig041dXrgaF+iRYzXecK/zg+l06KQLegbKjTNinwECdSgnBW0?=
 =?us-ascii?Q?E1BfICS3667aBolltef4SOZ+QchFWs8Rv2ns0tOCehvfl5G8PgsOSM1hgOwE?=
 =?us-ascii?Q?EWhwpDdAulyGgPmpPrl9rA/GoJwMK/ToT0AgrvDE8pIF+TL9ZSvja/DQoxTP?=
 =?us-ascii?Q?afAaUL/i6E07BkA/UIMZ3WM62Nwk/tdcWxOl9xeqv7wLtFMvEbBDZs2jWR5T?=
 =?us-ascii?Q?dBF017kD6eF0E/7+ffQ9vQYgXyZtl+wmPMQBmRD1JSmYyXMroiNdh0HaIgd5?=
 =?us-ascii?Q?4CV+zmUsW5h4D57ktGIrxNFN/opWvob5OZM2eaDJ6OaxL5txqqBRQ/+aBYP0?=
 =?us-ascii?Q?UQjOOd7wZRlCPzu1y4rM8oVLc44tWiXQCprApSrMR13e1fdRWxDj7Ipvdiva?=
 =?us-ascii?Q?GK1qYT2frbj02OQWlIRZ3zJLzKgmnR5E3QGCUHYnDvc5KZIgrv2t3NboFro2?=
 =?us-ascii?Q?x2yRUeg231MjOf4PnX+wj0wrrI0Ss3QTzIH5zUcU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f53a9046-e2bd-4ff3-7ecc-08dbf4d501d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 14:26:29.8456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PlhZf+WnaL13BpDzr+kSaRrCVgJ0/PyauYrxvIj3fXVEmjA2r2KnzOSVPWH2N4P9r6BervaqYjuEIw1e0RbdBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8358
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all
 quirks
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

Hi,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ka=
i
> Vehmanen
> Sent: Monday, December 4, 2023 4:10 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all =
quirks
>=20
> Hi,
>=20
> I'll send this first to intel-gfx to verify the i915 CI results. If all o=
k, I'll send this
> series to ALSA/sound upstream.
>=20
> This seriers is to address kms_hdmi_inject@inject-audio failures reported=
 in:
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/3
>=20
> Kai Vehmanen (3):
>   ALSA: hda/hdmi: add connect-all quirk for NUC5CPYB
>   ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Prime B560M-A

For the series,=20

Acked-By: Jani Saarinen <jani.saarinen@intel.com>
BSW already proven to work with https://patchwork.freedesktop.org/series/12=
7208/

@Nikula, Jani can we add this to core-for-ci?=20

>   ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Z170 Pro
>=20
>  sound/pci/hda/patch_hdmi.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> --
> 2.43.0

