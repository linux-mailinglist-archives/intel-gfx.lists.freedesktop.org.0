Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8A0BC5F22
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 18:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA6A10E854;
	Wed,  8 Oct 2025 16:06:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwI7XnJv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BAA410E854
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 16:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759939606; x=1791475606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8rq3mN97e5rT7zRog49elCvJzxM29LKL1jplTMo27A4=;
 b=DwI7XnJvIhBGNotCMz3GxNKRhrrOBUqBITsFBPgKDcMKJ9fryUbWUY0x
 TNWAz6sZQAsupJL2885UTDt1js/Q5p/M9gkDf/mxINHH45Y+ig5rI3xiW
 H4egLwXBq7tyRZloKBqmSa1muhFTh12MaLP1e0BDqey0i0liQEAz8CFn1
 bBvdrjCNhMGXqDVErmWrL+Z3HMYnyfbTWIr4I8C5orRDOeIaZ5b9/56zW
 1riKogqgPIaex+4jLE7O7Mg9oa+YClTAgDamr/l/Ib4GXSrJuOYQ7/DnF
 vgHpQPYNRaEBZ0IKJlj4Ncsnyh7Rbx1/NI+AD//QgwdvXxohs9gJ5ufm/ A==;
X-CSE-ConnectionGUID: d4GNh3e/Rd+jSemim3yK9w==
X-CSE-MsgGUID: C+pwNV1MR0+hFKsEVnz7lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="79575989"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="79575989"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:06:44 -0700
X-CSE-ConnectionGUID: O71rPZelQaeFuPTTsFI+GQ==
X-CSE-MsgGUID: OnSUxHpeTgC9D30CUkuNvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180506278"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:06:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 09:06:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 09:06:43 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 09:06:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gRNgSxN04Ftms6P2G3E7Ilet8vvUogl12cztnJmEOyxyTa6/4MybmthouGKi6gM+qQ3jyDwhXksEiqYZRdoLl2wUeDFCrEUxPNtRo4dJ6ynNqkM95fGVopO7hVylH2pZYogqH3J6kllQMnvfy/CD9mgwE1Xv+hQQmm2O3hfqxMWRE9XZxiMpmGkc76c2dKJYdphwXcWtu1zSsSLSBmTcOG2mFzG4+DgikLd7H6OuPEtex4mNW7o3rBeCwIB+AA/SaLPOIa1uh8uEK0bboPH7Vu5Vml99swyPx6svKlSYFUWg/Ust2LNSxL7hIHaicTskopCYO/hQFypfzR7hyxBbwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mPSA/dMJrMKMi7RxiwryjWEMQIHzlBkJFI7x+UCHsQE=;
 b=A/eYB7TCOfTxRhYjjFAHg43h4rwTohNEHAD0PhH83XVJOEl8xVZfqolhrK09h24zdVyx8GDMClecFvTvWcLbQGLCjujoJiyzmL0qK0O+hOPG5wfZboJQCwMcf+uOh6iajabNucjLhESxWIUQC/JHkT4AzheRsTjtSvTe1hNmr9v09MbxUpg03Y0UTeHgnmfIenLIfk38XkYQ7d6qBN8M27qB1Kxlpqp4r0BIZWCftxPXJXEtGQGFghjEz5bX2iBC3RoZb+cDP4jUKCCA/LhIPVGuXCa2jL/xNXZG/KR72aFJy2u32er878aAZIYfXPFhMIHQWGdiO6ABe1xvXSQDdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 16:06:40 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420%6]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 16:06:40 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar
 Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>, "Chris Wilson"
 <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Topic: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Index: AQHcN8iMlqXLmHFdTUuiKqVlWShhm7S3Mh8AgAAA+GCAAPmMgIAAOJrg
Date: Wed, 8 Oct 2025 16:06:39 +0000
Message-ID: <PH8PR11MB80407C75DF808C33C70B1FBDF4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com> <aOWFMICISzSZ_3nH@intel.com>
 <PH8PR11MB8040A2CB337190DC80B80BB3F4E0A@PH8PR11MB8040.namprd11.prod.outlook.com>
 <aOZXVYNnUvxnrr-6@intel.com>
In-Reply-To: <aOZXVYNnUvxnrr-6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|PH0PR11MB4934:EE_
x-ms-office365-filtering-correlation-id: e119ff19-964b-4654-57ad-08de0684aa6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|42112799006|376014|366016|1800799024|13003099007|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?31mMz4dp5B87knVwSOtCYM3kGHNoehN1R8pOajiO9OKM6C2RrR+RbKfChr?=
 =?iso-8859-1?Q?CGnViFgn9wkaaz9kG3tafZTRaJ+pam7PgH1H3KldAozcHFe0bAkSQ9kyNa?=
 =?iso-8859-1?Q?g9jq1pxoH1mjopzIhprGv8NZSPiCaqg3eF1MXaSUgd6KGCjxtzRVBT29ap?=
 =?iso-8859-1?Q?/P2sFeX6bnosViHy0W/x8sWt/Zb5rldYDrZVJS9rp6XcHM3wE0EbpEWla9?=
 =?iso-8859-1?Q?fV0corVe76ses3z3exNc+SN70l+9McXJoTiCzVBXudh/TWXUZXQSNKHqYD?=
 =?iso-8859-1?Q?/CarvdSqMg07+FrQcmgHJUv14yiEb/AQW35lSScg88ZlK32UzZ1QxumLZH?=
 =?iso-8859-1?Q?26xVSgvadRggxk39i+rlwbXbYJjAi0T/tb9FgZH6PZAo/zjogQ6otT0JE3?=
 =?iso-8859-1?Q?PwmNVzXkZjD577UIhS6zDgAWayqdrGwFh+SUUoI9Eh6hM1Lndh3CppGo2f?=
 =?iso-8859-1?Q?8UNuQBpdDgTHJnglKYnbj/iiOluN6Q8ZQ7r2W61KaMUpUWGZPdDrGr690J?=
 =?iso-8859-1?Q?m4Tj/jJ/uwNVNcsI+uSAI8XJDnmfhZYR8wY1KhN1VPGeHMnr63psZ6aznx?=
 =?iso-8859-1?Q?mdQrvbd1VLxy8dHsVDjEI32Q09UDHeqfVKPUNm9J5Efp2gkmaMEh8JgmSV?=
 =?iso-8859-1?Q?kJFL5Axx4XX9ZvdNn4pGBC+VnX46gaKQU9Bw1lrn8cp9/yVhZRubcy4XfD?=
 =?iso-8859-1?Q?aX0WmBzbAuKQLDiJFAWdPTbz93HqAYE/8QmSifiaCeR6j43V6G9rCjJkGS?=
 =?iso-8859-1?Q?4/M1UauBpFu+KtU2lsqajN1AwFqT0GrksxlLgMQur7X3p1Vu74K4+otQcK?=
 =?iso-8859-1?Q?nBTXd00Rg8TzkbHgro4NN12DyNtJHUYkJr82G+yq2+8ffUWUrMI3vjg3oO?=
 =?iso-8859-1?Q?l5/lqU7FuUI9sHoYK7/6lsQ/UH0Fy2yGoqL7PyFh2foqgkeunH5CgUNZBt?=
 =?iso-8859-1?Q?J6guEgyO/zSnfVkkFIuGGVHgMwLgcOk9pYfa8RH6HonOkoa56CTDtJC8Mv?=
 =?iso-8859-1?Q?EqbvDW221/tYFnrAhBfxsaskjjq7bhsm3BHR3lsjZBzhSHIhI2AMbWEcsX?=
 =?iso-8859-1?Q?aXzaDOzBfiIAdNiqySyIv74wgfX7sX1S3Ex2LgaJocgLWab+L/3NtKTI51?=
 =?iso-8859-1?Q?Yb9xZlcT8rLrCSrZ87RCakwi4SuCbmwtXDCN1snY4UiqoLb7xCUfZexAci?=
 =?iso-8859-1?Q?yxN+cBEIk8+joMVWnP3+OOLPVKeKg6s3EynThqpjDpf3T9mq/GgJzvOw91?=
 =?iso-8859-1?Q?L5eiAgSnTT2+bO7dCVzodRQuMI+Jvn9lyw3ra3pfXpNrMZreYU/IZfll/B?=
 =?iso-8859-1?Q?ZI/gorn8bBCu2rozA867ZU+SI9aj2hcreHBE145nuJu+Tcne//cS4agJj3?=
 =?iso-8859-1?Q?NWmjN9OA9fqbIZ8tblC6VXAL3h+gZHYrxOciF9+JA+ld5Cip21QXAg811m?=
 =?iso-8859-1?Q?HzlAqfrGRdo3LG3RXz/4QG52OuGwMYTb5w91N16H56JrZuAgxQUpFqzqy4?=
 =?iso-8859-1?Q?j4vrszGTVpP5iRGpjjN3XhMbS/WSez7lc6goeo4NmAlA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(42112799006)(376014)(366016)(1800799024)(13003099007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DlgjgFMxfuqA3WOEN6YMwJwY/IiGM9lldvrTADczGnsYIO3GNVY1tqi3eK?=
 =?iso-8859-1?Q?iaTH3apT8S2m2+F8Ahn912EETyBhW8tl1RkpQWR7b/9KUtJOqWUoqngqFL?=
 =?iso-8859-1?Q?/nnZ1EtziTiTJJWmomoWV+UE67BSktMF68zUDmllRzduFd5tPauZcCYu6r?=
 =?iso-8859-1?Q?Q427MW3+FjXT8igehcvMGl8EzDU75axnA3MoYlmqvOgHaEcSt8m3gYF/GF?=
 =?iso-8859-1?Q?o0i7BMzLbzpu28WBkB188QxSpvopwBcK91mjPueCixG9PR2grSHB8SFgt9?=
 =?iso-8859-1?Q?ThzPLR345+TmI5goAug+Q76qqxR/BDyADEMAzi9sroQXXYD5vrhD1aImsn?=
 =?iso-8859-1?Q?CecUEgNVh0cC71QGlMffk/ZJIyxi5stJ95EHYvCjYzBQRmTGkUa+v9mmeV?=
 =?iso-8859-1?Q?J66jE1sjiTOQGjBSF6GJyu7SiWkIza6ET8pmIk9KDISmlrrLtTd2YKw53y?=
 =?iso-8859-1?Q?qbN4qNMFI/Lb5x/E7uu9zblpZOwHyYzmwZ26U1JMqmIBqc5aVcMQpMYaXE?=
 =?iso-8859-1?Q?zJ1/LV6GP5Zh6cWbVYjOKAQdhq8ddaCufDcPAGf5+79UCaYGubNUOXXygr?=
 =?iso-8859-1?Q?QkE6JsqkPqjQU6Ul6WB0ZKdWXoYS39M7vGZZgtUvYAeROt7bWeQgPnlag5?=
 =?iso-8859-1?Q?hFk8hjcYXbCbLdRO/FyBApZG+9BuIIFu01h604s2AyHpEjGZ7ZjTz2+U99?=
 =?iso-8859-1?Q?/rnpQ8jyEdO7bi3mFO5xqsKAleBxI4y6zKU1CdF6aFmz6LAimqv16mB+23?=
 =?iso-8859-1?Q?GI4t3GhmtS/UlUTs4qOLdWPXRJfXgGJ+QM5+oPyetPHF99ayYO3YGI7kVW?=
 =?iso-8859-1?Q?ESt29OcaEXxE1cLBsiTxI/wn6gyXczy2jXK8K+1wenrQpmlJ53Vu90rH7R?=
 =?iso-8859-1?Q?H0eDRn0XjsRMd9djweiLrPibXb2VrHLLLpxLFCn10FM7FvvD038xCCj51C?=
 =?iso-8859-1?Q?L43Y+St63Kz2vJ+nVs738E162ssb3hg5b6Yi1Sttwy5/xmrlb7QIxOwKve?=
 =?iso-8859-1?Q?cdNGsKJUCC8h+f9wDq3l9sRF5B1OBj7YlYgTtDt+B0s1M25nitZ5gu4z57?=
 =?iso-8859-1?Q?z8tiEMmGvVq50HxfVFrRPQw+sf5E5a0IABcQqF1B3gL4w2iGcNE7IgiKqA?=
 =?iso-8859-1?Q?nSBMo4BwXBEeHjHVnSbXCQcFxWy1gPHyt+DVH7mPPeVZR+vFhakU5xW9G0?=
 =?iso-8859-1?Q?zv61YbgHNaEpzjS5NGFIf1BCzxL6VhjsgfDVF5zD9Jdie65cwoEO/DMQCN?=
 =?iso-8859-1?Q?K3amRjm9tQaW+jw7ljZDrWO8ZC9zWkub1l2T8K+DYvLwAvYRbyGFZ6SxJq?=
 =?iso-8859-1?Q?+RifzUI/0DcxKwHvL+CpNiR9jfdiEu1MD7c1u09i6KL3aT6lpP11advxXH?=
 =?iso-8859-1?Q?C2m6Fv1/Q5pGQCVSN5DFlmyXjskzhKlMZNOvQKXUEl3NljSizKvLOelaBZ?=
 =?iso-8859-1?Q?dA9yiuA80zY73Q/grUJ4a4JkFH2DhzHso7eVTwSUqToDxJJjUOl7abP5ek?=
 =?iso-8859-1?Q?2dN3R/sy4Q+OoL6PaU1uBka0yPoZ2830BxMghon623nm0qlWB9IhWw0Jhs?=
 =?iso-8859-1?Q?ZeSpEGU/28ey0JTS/xpsNC0VPFqD13eV4oUDd1Xmvx/TSXXXbolZBi5hdR?=
 =?iso-8859-1?Q?oCKeX9cq5RR5U=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e119ff19-964b-4654-57ad-08de0684aa6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 16:06:39.7626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jcsM+T0aZNo8DmA9WJu7QrXKOM9pLc1y4MvoZjnaXC4Dmk4DGhuYBkdOsD8ZGXkkAEmRYrU2Em2R4A+Y4nZrmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
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

The actual bug is showing in https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14598
if CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dy  ,  that IOMMU prevent the invalid acc=
ess,  but if  CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dn,   the invalid access will =
directly cause system crash after kexec reboot.

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Wednesday, October 8, 2025 5:22 AM
To: Yao, Jia <jia.yao@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; Lin, S=
huicheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; Pin=
gfan Liu <piliu@redhat.com>; Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit wh=
en en/disabling i915

On Tue, Oct 07, 2025 at 09:40:45PM +0000, Yao, Jia wrote:
> You mean  intel_pxp_fini(i915)  ?
> This is because mei_me_shutdown  is called after i915_driver_shutdown=20
> in pci_device_shutdown sequence.  If we don't close pxp in advance, it=20
> will cause
>=20
> [  295.584775] i915 0000:00:02.0: [drm] *ERROR* gt: MMIO unreliable (forc=
ewake register returns 0xFFFFFFFF)!

So that is the actual bug you're trying to fix? Please just submit the pxp =
fix on its own.

>=20
> Since we disabled PCI_COMMAND_MEMORY in  i915_driver_shutdown
>=20
> Thanks,
> Jia
>=20
> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, October 7, 2025 2:25 PM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>;=20
> Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin=20
> <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson=20
> <chris.p.wilson@linux.intel.com>
> Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access=20
> bit when en/disabling i915
>=20
> On Tue, Oct 07, 2025 at 08:25:14PM +0000, Jia Yao wrote:
> > Make i915's PCI device management more robust by always=20
> > setting/clearing the memory access bit when enabling/disabling the=20
> > device, and by consolidating this logic into helper functions.
> >=20
> > It fixes kexec reboot issue by disabling memory access before=20
> > shutting down the device, which can block unsafe and unwanted access fr=
om DMA.
> >=20
> > v2:
> >   - follow brace style
> >=20
> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> > Cc: Alex Zuo <alex.zuo@intel.com>
> > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Askar Safin <safinaskar@gmail.com>
> > Cc: Pingfan Liu <piliu@redhat.com>
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 35
> > +++++++++++++++++++++++++++---
> >  1 file changed, 32 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index b46cb54ef5dc..766f85726b67 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -118,6 +118,33 @@
> > =20
> >  static const struct drm_driver i915_drm_driver;
> > =20
> > +static int i915_enable_device(struct pci_dev *pdev) {
> > +	u32 cmd;
> > +	int ret;
> > +
> > +	ret =3D pci_enable_device(pdev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > +	if (!(cmd & PCI_COMMAND_MEMORY))
> > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd |=20
> > +PCI_COMMAND_MEMORY);
> > +
> > +	return 0;
> > +}
>=20
> NAK. If the pci code is broken then fix the problem there.
> Do not add ugly hacks into random drivers.
>=20
> > +
> > +static void i915_disable_device(struct pci_dev *pdev) {
> > +	u32 cmd;
> > +
> > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > +	if (cmd & PCI_COMMAND_MEMORY)
> > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd &=20
> > +~PCI_COMMAND_MEMORY);
> > +
> > +	pci_disable_device(pdev);
> > +}
> > +
> >  static int i915_workqueues_init(struct drm_i915_private *dev_priv)  {
> >  	/*
> > @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
> >  	struct intel_display *display;
> >  	int ret;
> > =20
> > -	ret =3D pci_enable_device(pdev);
> > +	ret =3D i915_enable_device(pdev);
> >  	if (ret) {
> >  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
> >  		return ret;
> > @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev,=20
> > const struct pci_device_id *ent)
> > =20
> >  	i915 =3D i915_driver_create(pdev, ent);
> >  	if (IS_ERR(i915)) {
> > -		pci_disable_device(pdev);
> > +		i915_disable_device(pdev);
> >  		return PTR_ERR(i915);
> >  	}
> > =20
> > @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
> >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >  	i915_driver_late_release(i915);
> >  out_pci_disable:
> > -	pci_disable_device(pdev);
> > +	i915_disable_device(pdev);
> >  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
> >  	return ret;
> >  }
> > @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct=20
> > drm_i915_private *i915)
> > =20
> >  	intel_dmc_suspend(display);
> > =20
> > +	intel_pxp_fini(i915);
>=20
> What is that doing in this patch?
>=20
> >  	i915_gem_suspend(i915);
> > =20
> >  	/*
> > @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private=
 *i915)
> >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > =20
> >  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> > +	i915_disable_device(to_pci_dev(i915->drm.dev));
> >  }
> > =20
> >  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel

--
Ville Syrj=E4l=E4
Intel
