Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D537C4C94
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817D510E2F5;
	Wed, 11 Oct 2023 08:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D8510E2F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 08:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697011392; x=1728547392;
 h=from:to:cc:subject:date:message-id:reply-to:
 content-transfer-encoding:mime-version;
 bh=wi+GHKIEJzIeeSp0jeFLIKvPyjEWTPGOv4ouKbC3R2s=;
 b=MztfoN0jMTWgRdBsQaY8OpziAujzaH5Zd8SzfK4durj3g4V6Xl1J1xkv
 zzKwEdBnTKHymAVl5x5A215qRUUmndxB9Pj4JSjYbOc9ngfRY0xe2pU2f
 efqYJTVeqYuUVhjijrGJdeejbNFibTNlzgpDIGnLKaaqrPqeK1BZ1nWhQ
 LaAUlW3aywAjod8AJOFkrs+Llrdglv6JjbeRlGbZMkvcxvWUCVt1pcdaJ
 P01225ZicWqVUCDK13mN2v0IbRKA+oH5/xsrUvT6yMeEj1PITRnzr2BfI
 JEcrz6avG4t9DOFIc7+UFlELa+KnF+SDMknVh9vLSNkhyeODjeRyIWMhT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="451099309"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="451099309"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:03:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="753730850"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="753730850"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 01:03:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 01:03:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 01:03:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 01:03:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2iARfc30A97R/DsZkF5JtOb4w+TMOYoFvv0SIdFSwsVQk7lhhbV/6CVvVKFZzntUmRpJlDqunAcD+Un1hYwjniXJBnT2P1sv2zZ862Rn6yOff7NeVfN17l4f94omw1leupLvpiCjLTG4v/9WGs0/RGtfETtB8+bKBVnMWY5jvxQ3Tgc/ThxMoP7hmNDGjmEguGhccxShHQXzFT75yxYfRvGm7Zbs/BSEctPEPTIAjqN1bPR2GkxaD7v3Klvw7GrzE2/AUowfvMx36PYg5yruhUJfY7Ye8i6H9LRnVqNzV0jnIOUCZyaQIgXvRhOw26V1F2ynpSNbd7e2KzVAOVf7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BS86b/aip0wOrEPHR2F//JcZO5aV+uAmWdJlmM8XGKY=;
 b=CpS46+pG0RN7ICOusenfMVJaHDP1KpS19GyiK+o15qyCZ97bDjYbDhC5N4DrKE5huBdRqe3c1Ks85d+WRnYsZDFVIwsTi0uORtOTmoJtAeXD3yCdPjolSYsuHfJLlJu1pWHyPYPLK7jjbpCRPWYyyslgbpEawRB6QC1J79+Il5FLvIWjuataYC7YUCLs0mFdpoQcAT+Bh5FbPPns//N8gmZ1sMC61oNINx68CmKk1CY9Bwnhxw9XiIY+/4I2RASKoajM2FlBKtHy9a91QEvsFGjxAqF4pbb/lDu3W4jFpADTcP2ufkiBkbbSn5n6n7xydzEP+S/M2vqQ3IUDkwu/8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by DS7PR11MB7860.namprd11.prod.outlook.com (2603:10b6:8:e9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.43; Wed, 11 Oct 2023 08:03:08 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::75a4:d1e4:ad84:d541]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::75a4:d1e4:ad84:d541%3]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 08:03:08 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shyti, Andi" <andi.shyti@intel.com>
Thread-Topic: Re: drm/i915/mtl: Remove the 'force_probe' requirement for
 Meteor Lake
Thread-Index: Adn8GT3/gR7CabMBSs2g2/ZW6RoYKw==
Date: Wed, 11 Oct 2023 08:03:08 +0000
Message-ID: <BYAPR11MB27101EF88CCBDBA430108CD5A3CCA@BYAPR11MB2710.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|DS7PR11MB7860:EE_
x-ms-office365-filtering-correlation-id: 906d94a9-5b2f-4cf7-1a7a-08dbca308176
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DgcJYLcf8z/ao+9h78rEHEwcyVBJQZwQZ2BRZ7qRD+HUWuDe6OO6J6Ftu6hwP7ki4KzCVuKYzN5bFeUH8LObqUXYEYGuI96/P9tKuF+wzm6bcnfG5sUOl5NlgJLMRQKLwxQUK9IPpRKGDyG8DWdEQKWSuudMO6iBz/nES57fPZBJOYsR4xMcIFzzYaR6cZ+Q0a3lXaReobl6fTZNL6EdAqBO6YOrh1App2EChGGwVmkX5iwwDdGtSOoaBtXZAFFx0xown4GInWQ6W17Jmp8OGUucRXicXrel9acguuk27s5Kz9q17xHpo8qg12hQJ6jOI3PTPidWDsbfq5run8n9D+DitUTtqnvW6iEFeULAVrTedb75SLk9b01YJZADaqnTPLN4LYLaRaFTGQtiEXIXcbW9fW0cr19iElgdMB3EFM450RrtpT6aJyRY1+HKJGy2hyN8oYoW5GQcCJAaPSTbJjEAT4Ksd9IBiZyA6D5YTs/N2A55+wyIqwt9CMFfiMZYENDUgBYRqwwSNZ5zPCjMBwMZBCt6hFEDTUZkFBDOnpgxsOM9VdEkCddRB06mI3l9+TWIjdY8ftLrfufiQoX+SkBCMccT+HvBgrEaWEk9Ha8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(136003)(346002)(396003)(366004)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(26005)(83380400001)(82960400001)(122000001)(8676002)(52536014)(8936002)(4326008)(5660300002)(66446008)(64756008)(66476007)(66946007)(66556008)(76116006)(316002)(6636002)(41300700001)(110136005)(966005)(9686003)(7696005)(2906002)(6506007)(107886003)(478600001)(71200400001)(33656002)(38070700005)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8GglBFeg8BIcIIZdXWk8gOFskEXs6PQAirTyFRiCO4de3SAF/o/w/BwhKnJ7?=
 =?us-ascii?Q?YqD2ysSI9Y5FiSmwqyV1TlxifVrEwWWtoYEIDjyFTBCi/Nue2Egq1TRj2Fo/?=
 =?us-ascii?Q?tOv7iIhZSsIvlJc1LloZIJgPEwYw40cNXCubhFqYII4Y0F4kjtRWOY3wxRiQ?=
 =?us-ascii?Q?Albus6XfIZK5JM1T8WBsDTo43UWMqxklGIlnCwTdhQECoFrIKCl3cCRSkEBG?=
 =?us-ascii?Q?/zbQsXeYSPvyeVnmA7MncjUoYNB4Wokr0DGWt2j9i0zQ8kCskgXQYHe2XnR+?=
 =?us-ascii?Q?SOL5MvE9HpYUtdEbBf8dRFt/5+v0fKwMZo3x+6I0WLdI2a8q/+/z6wAFKZ1g?=
 =?us-ascii?Q?ew5l2AEPMolf/p4VUuwsGfrQwThSRoW0C1hMqmFcbXc5n20g/+h5p7anPE6V?=
 =?us-ascii?Q?uFOi3Z9Bn2RpAWoOGNEzcAxQVScv3+/hsf/KJQIHcCl4yKpmGr3RU1PV5+Nr?=
 =?us-ascii?Q?IclNTmwIjq7chE3onMiafxU6L252htC7D78BQD2pGm12eN0fwSF3cBuI8KPR?=
 =?us-ascii?Q?uh4vabjSt9gzPIZdAhFuWGFm6vaw/W1PGPYq8o3hsNKZxh3XNcmuJ8mezr3O?=
 =?us-ascii?Q?+CRC5Z9FVqYuBCiviCjUP5pU+uEZHqXWBbVIh0WSkDTszJlJ5OMygh0t7nHU?=
 =?us-ascii?Q?MHuT5UprMXjHUcs4RdFt+qZECzX4ioGFyDoI23fPQigmMyXMvprliMcgef9Y?=
 =?us-ascii?Q?xvv0CyznORLpSDefSNUc0Ypit+coPUnmQrxt3pUpeMBTbrOP0xtfaOfd7tfG?=
 =?us-ascii?Q?HU6C6N6xGiZAzBEB93YkYLkKXwW2zIv2/R5uWZHKvPwkOU9/2RPCHurBZeCI?=
 =?us-ascii?Q?q9xN67oG8p4TNelrdyk19prM0bkyxNCZ/ViP92Vinn7SSqOYR6P/BJXCjfKX?=
 =?us-ascii?Q?NY+/RPTowgr726DcU6nS9QfulfekIYX7U35N7U5V//asJi5S9CEI0AYqmVkt?=
 =?us-ascii?Q?j8rQfeR4gOoLu1Z4xui8vSvQr58b3Jsi0i2566zyo3Gqjo9sZ5CQAEuuT/2u?=
 =?us-ascii?Q?3cC9XKHaJvrghBL5g2/q7qH8DthmNOUtsJ1Sm/Wzs7Bh36eCuiO12EQMaxPd?=
 =?us-ascii?Q?kywXorlzLpMt536bcUaZ5cW97rXIMTehvztEhIFX/AocVv53+Lo2kGBj9lbj?=
 =?us-ascii?Q?rrR/eW4f9UjWPKxEWn8Eq+z/jFS3GuD9ArqJcd/aa6/nzqAipcXbq38T16Mm?=
 =?us-ascii?Q?7YImoPNTz8Uw78JHAcDWVt/25bJRJ8AhdlCANbVHdX3to8P5EVUYyaPGX0Mj?=
 =?us-ascii?Q?zGi+7K9zpZwqMYXNRsuqO1fl68XExQk2/CRbNWY70dr2WI/jY8KbjSqFbdDU?=
 =?us-ascii?Q?Q4QXm1umdpK5JGNQIMm7itJl6TxtHfSGUAcrZPBOJC8C4ysSJMFFS7P40P1V?=
 =?us-ascii?Q?RfGSVba+lxBwbEejAfkr8bMzXHB1T0ZsKD2fNdPEdeW9Y+JJ2nYComY5cOPC?=
 =?us-ascii?Q?RkyNew2+8Kfhrdv0WTRmegBfWooWABiMyE7Pne3GW9mG4AHwxB8flnGhhOZZ?=
 =?us-ascii?Q?T5knTLiKiD8YgjJxKTOpHNt3f131BxMjXQ2kXQC6sZfFHJ/7rgQGe3tvrDTO?=
 =?us-ascii?Q?1ifED93WcHZivp2eNYLM3CNLZWfKCkbyLx/OcQ5b?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 906d94a9-5b2f-4cf7-1a7a-08dbca308176
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 08:03:08.1699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G+9t+2KEulz+Fja4izHVIeIHb42Z92gL3EMVHY1/zwVwKnJrvVXeqhwBce/QYQOoIffSXi/+9YHu5KMI02m4ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7860
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] drm/i915/mtl: Remove the 'force_probe' requirement
 for Meteor Lake
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
Reply-To: "20231008164824.919262-1-andi.shyti@linux.intel.com"
 <20231008164824.919262-1-andi.shyti@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>=20
> Meteor Lake has demonstrated consistent stability for some time.
> All user-space API modifications tide to its core platform
> functions are operational.
>=20
> The necessary firmware components are set up and comprehensive
> testing has been condused over a period.
>=20
> Given the recent faborable CI results, as well, we believe it's
> time to eliminate the 'force_probe' prerequisite and activate the
> platform by default.
>=20
> Signed-off-by: Aditya Chauhan <aditya.chauhan@intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
> Hello,
>=20
> This patch eliminates the 'force probe' for the MTL platforms. Over the r=
ecent
> weeks, MTL has demonstrated stability, consistently passing BAT tests wit=
h
> success rates ranging from 98% to 100%.
>=20
> There's a single issue hindering us from achieving a 100% BAT test covera=
ge.
> Fortunately, we've identified the issue, and the proposed solution can be=
 found
> here[*]. The CI results are encouraging.
>=20
> Once all reviews are addressed, we plan to submit this series with the "F=
ixes:"
> tag.
>=20
> Thank you and best regards,
> Andi and Radhakrishna
>=20
> [*] https://patchwork.freedesktop.org/series/124744/
>=20
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index df7c261410f7..fe748906c06f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -836,7 +836,6 @@  static const struct intel_device_info mtl_info =3D {
>  	.has_pxp =3D 1,
>  	.memory_regions =3D REGION_SMEM | REGION_STOLEN_LMEM,
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
> -	.require_force_probe =3D 1,
>  	MTL_CACHELEVEL,
>  };
> =20

Test on my MTL device and it works properly.

Acked-by: Lee Shawn C <shawn.c.lee@intel.com>
Tested-by: Lee Shawn C <shawn.c.lee@intel.com>
