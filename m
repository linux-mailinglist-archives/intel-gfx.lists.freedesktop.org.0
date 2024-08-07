Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BFA94A31C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 10:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DCB110E459;
	Wed,  7 Aug 2024 08:44:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IBj6an5u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B95810E1B3;
 Wed,  7 Aug 2024 08:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723020258; x=1754556258;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s0t/RsBb3HCZ707sa5uDAh3+SDmE7x73GO5S328zd0I=;
 b=IBj6an5u1nrdGK0EA6WA9hx5Ot757fsu6qV8svjpIe9NwamgT/Lccz6o
 tCcK30r+TN8FZY/UPdi/Ybq3LgMwha43qES62oN+Lg37rFsb4szZq+hsz
 rwIQBvva3JD3rWuLSYa/sHBV4K0fHwsr5D1RmsP4H8aVXT1LAzegJol8J
 Tce/QSTO53vzTyyfPutUOdwIBoKJZhKM2rRsHCHXm4+dBRN4IZrafBe8n
 ZahjulH6PE2bMwZTe9FHt/nsb0wSh2vAr0qCCW5AZmEH+xTlsGDSp2nm6
 xSoejuIIyWZL+QmsW+YdKXLQXjrYHGdDMqW7lnmSvYdcGVP8st8mEVvpz g==;
X-CSE-ConnectionGUID: g6EkFuFESHa/Y1lYhuYjew==
X-CSE-MsgGUID: udSp80kxTeOzjD506w1L/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31745822"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="31745822"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 01:44:17 -0700
X-CSE-ConnectionGUID: yuw9gWyxQ9qTYFGBF36GFQ==
X-CSE-MsgGUID: K5G0FnTBSPKmSLt9JvhNlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="56469189"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 01:44:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 01:44:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 01:44:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 01:44:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 01:44:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LRIvaNmHpW3yqd+uDXYyoOd8MAeRMLSh9WIq7xf2Xs6zXVQpd/AVxhuEfcEcQwIAabVFxT1PLCN2HPfr1Ps/ATfRTEw3KM9yF1fejyvlq8dPAwPVpQ+sbPUfGyxlAAX+nndqZo8aFJ2/1tYuwW8yD1uZJV73MBbxd+z+rX/eI/EonysuaV78Ytd5ARn+klVYacdncD5/PU9s7hP9FmGxfE2Hnp8LHsGYNfNw6y9UHgFRnF/zpgWmeW5/F96vXDNauBuvWncWFn2tiMNJA8zBOEwZHKs/5vEhlu8h+Ep3+oFYzmduFQf+OAS2rhtOMe0UMQ9VoGaUnSH4Qw7vX+U1LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vFvC4p1s08MJ18KojWWkgMhMtL10wzNUSNaU3nctDg=;
 b=R91ozLmVF2mSNGruXCpsWtSiODSrxtuzeaPRqHvz+BiYoqxupZG1jKpid/bHWzfSaLcAsOgsV4ZXP8Vqw3foJIr231YgYKd8B+q3dLkeWRYB3Or/xAHkf0udBxfdCtuYMyaVsL4JnYBYj+3nS7Vu11miHYpRUW0+XzcxY/n/OQpgMv6tJBb3/EItSehL3H/QQf3/GEsBCKhOzv39U5yQJG4cXl4kqoEkkavbteMVNXeK4nP+OogZiRnR7NlUtCF99v1Ysf1QG8FkyU4hribi4GqtwnfaSoHkG9hCZmnEPUA0v5A1CkXMRwPEB7kK4wLnJthI2rv5287s54xIUIDyzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6768.namprd11.prod.outlook.com (2603:10b6:a03:47f::8)
 by MW4PR11MB6715.namprd11.prod.outlook.com (2603:10b6:303:20e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.29; Wed, 7 Aug
 2024 08:44:15 +0000
Received: from SJ0PR11MB6768.namprd11.prod.outlook.com
 ([fe80::6532:8e88:5e56:cf52]) by SJ0PR11MB6768.namprd11.prod.outlook.com
 ([fe80::6532:8e88:5e56:cf52%3]) with mapi id 15.20.7828.024; Wed, 7 Aug 2024
 08:44:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/bmg: Read display register timeout
Thread-Topic: [PATCH v2] drm/i915/bmg: Read display register timeout
Thread-Index: AQHa6H6l97hsJkTeN0uBRU6j8Y8+HrIbd2Dw
Date: Wed, 7 Aug 2024 08:44:14 +0000
Message-ID: <SJ0PR11MB676849AE2C78BD121D61940EE3B82@SJ0PR11MB6768.namprd11.prod.outlook.com>
References: <20240725125735.105194-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240807040307.1246114-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240807040307.1246114-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6768:EE_|MW4PR11MB6715:EE_
x-ms-office365-filtering-correlation-id: 2010116c-85cf-4deb-0ba1-08dcb6bd1e25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?B78Wt9S+CSGIVr18ToYDCWElS/Y1sPP24aOoLLYfSi1GJ2C4OtBRMd4w2pCl?=
 =?us-ascii?Q?ju18tYOGxtIN0q0lCxE9oEM8U9AspLHYEfpvyihSs7JvS1fNAxojyj9Udasc?=
 =?us-ascii?Q?cQR4M/mH8x2k8ny+DuUGjCxjYatyY2A2snPEPU3gxAoQepy5D1nGslveiLep?=
 =?us-ascii?Q?EQ7b/WB8HBb6y9+nBPRMKq9czz1SiJ9/a/bE94U4x/FNuJMq3m3+bvBp1tj5?=
 =?us-ascii?Q?0A0L8O/8zqflNc/nuq4uGgb0wn3mV7Jrl8Qy3Vn4QoebB9+qour2VPlajB4w?=
 =?us-ascii?Q?D8NQjibii7FCU3MGrFKU7kZ/8fx6lMSxUCI1v0/Gvedkyff2gapgamfxRnd1?=
 =?us-ascii?Q?f3ina3eH1ahAz+ZAc0kZ48PoBLX2lzjlBKOYDX7a+1MQmu/UV0jfbmcuOKR/?=
 =?us-ascii?Q?QHPw77tCPHCbgWwX972/JnwjEwadNChqBFFyIo2+7RX5nx2d7say/ZdW6djg?=
 =?us-ascii?Q?nWIAWEX3Jbo+dAg7jv3WK9OUGAN3A6MX5ygq3TJj0RkLYdtPSaIm4ixy7xsT?=
 =?us-ascii?Q?SPLKi6AjcC5jCu9PBhwaMvVe1JAShfB4txMXjd7l3ZOJc1G1Ciket1oiDoo+?=
 =?us-ascii?Q?M0MiNIY0XuKXOlZcvX928VX1ytGUCe7dXmiF3SHUzcSsHLXABTKLruXdzuBD?=
 =?us-ascii?Q?KIaqcyQ0seSj7qMNh1/oAOMwUyGznvDh3OaDxqwTa4Wov6IU++gtvY9XDXM4?=
 =?us-ascii?Q?1pkGJg36EGLXgnmzLR3p5dGjRTA407oEE4pWzaQKz0Fh2/3em3tdVCK3GH42?=
 =?us-ascii?Q?bKQc4zGyQbqdG2kkvkQPICabM+caFCt1IMRIcXUCpNDaLUaTBk25iwIP5Xpa?=
 =?us-ascii?Q?3utbotrXOtR+9VNRTU+Xp+sQawyxn0sgr2u1yH0jZmzYmUIfyivDyX1V8oc9?=
 =?us-ascii?Q?pqVwTB5z5vC3B2d3inZj+kQQ88C9u7SvsT+lXQpC/dxwEItb+M2m5rJ9i3Vd?=
 =?us-ascii?Q?GZckRSh/+/1oZy+rdGEw/50yBmpk1w4BSVzU3xAtLkyaNauiZ3osEjndSBAR?=
 =?us-ascii?Q?NpYieh2dJhmsxHAroLnl5TzupSLKftbjHtlDdneElQwCROM+KI0kZDldZdT0?=
 =?us-ascii?Q?b1yRoI+8WlmSj2927pjhIRPwdrPt1Z0xdiiD+EkVeMvS5UErmvJCiEVK0AYU?=
 =?us-ascii?Q?C55vmoxuwesQ2rhrI/UDSWBgEPccyGpxr+hdx5CCMZokCCcg3yEiOZinW8mx?=
 =?us-ascii?Q?EKcUD7hFj1iWrut5jITB71EULxBeDw19PZq/iWpc2+jEDAQN2LF4y+CiNpCi?=
 =?us-ascii?Q?KEajY9htzBofrme/01NikDcbFyuFXzQ3kLeeYAvtKWqKOclHgY1fkwuHxhSz?=
 =?us-ascii?Q?fg5fgQBLlGROIlKxwJiY1YORccqASYqaspNtQABJLxdzwvnQR3YEZ4Tw+b1u?=
 =?us-ascii?Q?bO/RqXUzrKRnvu9kpoyzF5wgxD7pC+UQQO3Hmt8ykEyIOMinCA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mQgmHidJP22PbWRaNFhtU7YK3/Kap1arQVEofL9KYlU7UWHbb6YaDpyQH/JP?=
 =?us-ascii?Q?eCtAi8JswH5rBqVHNzHnUPVII7IJpcG/iOocS06NkxLCj6PyCIge7aqdu1H0?=
 =?us-ascii?Q?Qx+/BbRu6u5w5861an7sflewQ4fWmi1Nq3T1scVBGleSvkjxcG5f6t1BmQPK?=
 =?us-ascii?Q?J6DxAwarL3tK05zl3j1InHeDEUhtyVpUFEKlEfECIjlll+j8y0rMpFdJFPlB?=
 =?us-ascii?Q?yf4g+hWzlBlyG8edUjbcWWZH9VnZBb6Cj8qegjhc499IJgeA9HtXlN9VgSxH?=
 =?us-ascii?Q?pu1a/La8ifQ8Z+Gw+glz2cm76RzEs6Un+hIZzUm/n7Ve0BLurgblc+h3HFvt?=
 =?us-ascii?Q?xmVh2AOPWb5w3bj2oF44DRDIaQFiwZEhUdp5frweoulC7NVUL957R1V6HaVR?=
 =?us-ascii?Q?vZJ1Jy9MVDBr0mQxK91noLjecJe2kcDhre+Do4q1IDONHOXn1ZFkQjt0bN9h?=
 =?us-ascii?Q?fZRNrACXx45MdmFxIE2q3/gU8JFobDG0BGa9UEdzHXAk+2WcHZZ1v+lH2EyD?=
 =?us-ascii?Q?ROsRcoC0Vq9spVHgyRm+SPqtnDZVTAqqKnrcivgwy6mCtY4jCzuptWOyC4LG?=
 =?us-ascii?Q?mhum8lnzTl47fUFmWF4u6mHLsKd5bkb9ksVInNLQUoHTjjiBekhmE4Ez8zT1?=
 =?us-ascii?Q?acW2xDkg8p0kegTGsVNUf4fUT5LM6xIFaEMPe1aGNuofU67NgVTRn5VMgEm8?=
 =?us-ascii?Q?sabfoLiidpEyXuYPIayu2pJy4Tm8PTZ7HLA4m+FxvjG2EN/sBfHRtwVa2NOn?=
 =?us-ascii?Q?coBwFDgWtze9sBwLZo7sO7APu4M0iOEPt8RZ+Pj52WKstuj8DZ3HGKoQzRaE?=
 =?us-ascii?Q?RPJvvHCiz6Wt+HPU/d0hkRrBk0TVfl9xvjbj36SKzfRAF9/VYKJ4PYgN8R+h?=
 =?us-ascii?Q?gCVnpNMl3/SLvYFSjydYmG2mnaqfG77BcEM18lbCJ74Ro5I0PLwbUn9HgOAH?=
 =?us-ascii?Q?IWFUPicdh4TesEbi7W3uqCIQeG+U+7QlbChOhxtjcXZQSj2Zds1T88TgfYio?=
 =?us-ascii?Q?7Ry75BPFCCQ7mlQ+gRSuIGSPdGB2Qsb50x82xw1Xql0Po9gJ9cuDIhwMR/Ue?=
 =?us-ascii?Q?cez/AnyrFN+XuosN/KbLTRLGvkqh8I89kLfGRAkXN/cE3BgBgypniOuTjoLb?=
 =?us-ascii?Q?6b8HxNTUl+mNcPVMi6PYcoUzBPcRMz0Z3x9pEii9PLJqJfTLR4uEbXiI78l4?=
 =?us-ascii?Q?LESN9+x3MFvsw3SyRTPt2/Su1u1BUx1PHjbbty84+UIOoU514erLyoH9rjYE?=
 =?us-ascii?Q?wMvIQjDjHJQLDjM5V7KvNM5RzoZiuHx6kk5zHEEpaRAAwv84udyyIry71+fC?=
 =?us-ascii?Q?nOWOgVskaiw+wMqwnhcrBquNgLZD2Nude/3mKiNABuOHrae486qtG6NeCBqo?=
 =?us-ascii?Q?IYh+FRoxcpu7u1Ol7dhDBBBPN2bZgQ+IXTfPg3IkDsVVM5qUSqcFB8zhafFm?=
 =?us-ascii?Q?s8sQwnF6NUuVur7fDK3MLaHOyohLPR2hMc+OMJI3uh5qsGvQZ8c4MOLQX6oz?=
 =?us-ascii?Q?NLSouNrR7t210KybziD4gCWX0aPDb9fT/GANDfWXA07buOjwFcc87KfHb0hR?=
 =?us-ascii?Q?KSYa6tTO2ngkv5XRV0z38va+pVQdgdt7Q2NGG2wF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2010116c-85cf-4deb-0ba1-08dcb6bd1e25
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2024 08:44:15.0029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PIm9udj8fxuIAVFT0ZMDikl7Riwyj7vjiHArblBTrIsTimnYwJzrlN73U6tNpvK/Ydy+vJcVrGEz11Bpzp9SqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6715
X-OriginatorOrg: intel.com
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Wednesday, August 7, 2024 9:33 AM
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Kand=
pal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v2] drm/i915/bmg: Read display register timeout
>=20
> Log the address of the register that caused the timeout interrupt by read=
ing
> RMTIMEOUTREG_CAPTURE
>=20

Mention the changes that were added compared to the previous revisions

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 7 ++++++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 ++
>  2 files changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 5219ba295c74..5ebc1fd10a92 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -905,6 +905,11 @@ gen8_de_misc_irq_handler(struct
> drm_i915_private *dev_priv, u32 iir)
>=20
>  			intel_pmdemand_irq_handler(dev_priv);
>  			found =3D true;
> +		} else if (iir & GEN8_DE_RM_TIMEOUT) {

This here shouldn't be in else if but should be its own if condition.
Also since this GEN8_DE_RM_TIMEOUT bit is being introduced here and will
Only be used from display 14 onwards lets use the XeLpd naming convention
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> +			u32 val =3D intel_uncore_read(&dev_priv->uncore,
> +
> RM_TIMEOUT_REG_CAPTURE);
> +			drm_warn(&dev_priv->drm, "Register Access
> Timeout =3D 0x%x\n", val);
> +			found =3D true;
>  		}
>  	} else if (iir & GEN8_DE_MISC_GSE) {
>  		intel_opregion_asle_intr(dev_priv);
> @@ -1710,7 +1715,7 @@ void gen8_de_irq_postinstall(struct
> drm_i915_private *dev_priv)
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
>  		de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
> -				  XELPDP_PMDEMAND_RSP;
> +				  XELPDP_PMDEMAND_RSP |
> GEN8_DE_RM_TIMEOUT;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
>  		enum port port;
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 0e3d79227e3c..54df05046ad8
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2396,6 +2396,7 @@
>=20
>  /* Display Internal Timeout Register */
>  #define RM_TIMEOUT		_MMIO(0x42060)
> +#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
>  #define  MMIO_TIMEOUT_US(us)	((us) << 0)
>=20
>  /* interrupts */
> @@ -2574,6 +2575,7 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)  #define GEN8_DE_MISC_IIR
> _MMIO(0x44468)  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> +#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)
>  #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
> --
> 2.45.2

