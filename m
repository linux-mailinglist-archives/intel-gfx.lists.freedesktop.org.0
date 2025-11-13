Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBA0C56503
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 09:40:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B19C10E7BA;
	Thu, 13 Nov 2025 08:40:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXFW61Un";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C08B10E7BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Nov 2025 08:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763023219; x=1794559219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fuC7uuT9GqjOtUsxcqeMT2wAOTHsBe84o6UkI5kWEWs=;
 b=hXFW61UnBdPj7ZepwulzcBO/pj1rAcGtDtplc74T/OVuHC5H4DIwpVc1
 uKCMZBjk/N37KCE4Fvwnq4oPV4HImkX/2AkKO8+xmpkp/++brN9NXhP+R
 Hm5BrHOjWGrjFWHty+e78j+3pllW13tr8NmU7EshzA+BSLEph4uUIl40n
 veHMMxvjoWYtWPG8j4i2JretuoC88O6pXuQejUa1zTKL/gRibbGNxRDS8
 6jE8UgFVbLUhdqDRBMAV96vqEgOSD0arxpibjPdXdexilKg6r3btibkYX
 6ZlYABPBgVftAihH5DDo9NzL8VkcoWU/CD4WVSMj0NbGuK/B9jWMx58xf g==;
X-CSE-ConnectionGUID: tyvhJp5ESMaxHLyNGHdCtw==
X-CSE-MsgGUID: yoMKBMGOQy6Thhhasvbafg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64303015"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="64303015"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:40:13 -0800
X-CSE-ConnectionGUID: BLVeG+UXT4ahuwzACQkM3w==
X-CSE-MsgGUID: dHhGELKYSymOgulY2pofXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="194617680"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:40:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 00:40:12 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 00:40:12 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.69) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 00:40:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=miGToJt8uHsuqw9oyXYMrBGjHEyvuMeeSK4M/SJewTx7+Jg7CU+llGXhc9WgG08DNn55rjJYRDrUn1FcR6zVo6b2zVTuK2+Q+vmhkVYFlAJ+liTNuUh1v5N1qaHPAbN+JRFY2NDolFOMbO6IAbrZdnHcXrclKM0iGVyAypqX9eoxYUnwrcCMjsWWI5G/EK8d9mD31z4+61mJbqWpvDloUzsjf/4rYvGavkEJ4z7+cOY1GMwkuqCunVc9bfLebfMs+il2RoNqmGauU5nXc63+m1p96trBvopWE2tZjjflBhGV5THkkR29kM+vIfEBcS/UBlud+FB0/p+qAopApSPfSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EL8Gea8S5FmcCXsKcZU2S1FAujyXsIVb5dI13ZhHS4A=;
 b=J3fyGwMExE0vqMRgMI2Vn99xjKBfuKDFiasYWdQM3QTb09g/WIWuo7IUV6bEcreM3N/+1WFrwCAdH8VindMInB4OpYbkIVwEumpT2+rRq/G7YBvZUB6tlNEdjoB8TC7E7g9tGK1TryeCLSeZdIldpE7yYjHPEKBpQ9IQYrqvRS0dLTmjl5KnR/ZkoZMrGd2ZQVFEpGKvXqmyo9j0Uzyc7hmfbFSKobxEGk02mSGKWZBuM1C1SlcP+R0B8CWApRYhMtdlReD4ZEhAZo/xuplUR2v9RNuo3GK/dfxIT1zPEHb7H35oJv/XW3At+zWgqH0kApn/itr1pijs+3Jz/Xb98Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8987.namprd11.prod.outlook.com (2603:10b6:208:574::18)
 by CY8PR11MB7798.namprd11.prod.outlook.com (2603:10b6:930:77::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Thu, 13 Nov
 2025 08:40:09 +0000
Received: from IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::c011:ff94:944e:f96e]) by IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::c011:ff94:944e:f96e%6]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 08:40:09 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "andi.shyti@intel.com Jani Nikula" <jani.nikula@linux.intel.com>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: RE: [PATCH] drm/i915/gt: Rename MCFG_MCR_SELECTOR to STEER_SEMAPHORE
Thread-Topic: [PATCH] drm/i915/gt: Rename MCFG_MCR_SELECTOR to STEER_SEMAPHORE
Thread-Index: AQHcTXiQpAd82w+u+kqSnqzrHbdaJ7TvKOyAgAErN8A=
Date: Thu, 13 Nov 2025 08:40:09 +0000
Message-ID: <IA3PR11MB8987A606ACBEFD539CA68D60D0CDA@IA3PR11MB8987.namprd11.prod.outlook.com>
References: <20251104111840.2110000-1-nitin.r.gote@intel.com>
 <xcpkhpdscppbj4sladrj6sbaa2pd3o5rl2n4gnz4at5jb6vkis@lmlga7fxeu4c>
In-Reply-To: <xcpkhpdscppbj4sladrj6sbaa2pd3o5rl2n4gnz4at5jb6vkis@lmlga7fxeu4c>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8987:EE_|CY8PR11MB7798:EE_
x-ms-office365-filtering-correlation-id: 62940a23-b1c4-4fee-231b-08de229040c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?mImzspqc2gXRVBH1q/hM0CiBxP+HjeXCu2n14yImL48KTthYQqaelszQAz6t?=
 =?us-ascii?Q?+EHvV6pj8gqvMrJ6Nrv/OFID9hMelzYp/lKvoiBRJ8D36p8JOTbXW9T/Vbpx?=
 =?us-ascii?Q?oSBqaJQXptk67Ch4V657JM/7mmrdSDkIst4f1NQy8Sv6kB0TEsp2guvK7Da5?=
 =?us-ascii?Q?RyL1fMNWEnaLUFNXi9GXlq0mgdtd9U/q4W+to7Biha2cBoNQoY/N0/DcWxXw?=
 =?us-ascii?Q?ub9Hn7//Njus+GOoNG5nO5H6GT6FGci16h8ny2O9vitjseYdGsebrkQWJj1C?=
 =?us-ascii?Q?Yx+HbQsqQbTF3PSnMpEnxwTj24FEbkVrjthxO2rypGWkUbfEH9bepWH3Q74s?=
 =?us-ascii?Q?BNKXBVtxxXTJzDrcWH58L7GijzqJWzLE5UeNKnGTlSAl5zThUVALRlMURXsh?=
 =?us-ascii?Q?1sSQAH5Hx5GTfmTDiC7W8VcCvT2K6m5I+A8GgYnKUMWpXTAZfQ/GJQNgyWE2?=
 =?us-ascii?Q?yyK5Y+q2BtTjFRJpyb0Fh1xDumvPQpVk8p73429wpOlboJUIaEsUWlNC+mpj?=
 =?us-ascii?Q?wAWfhUGn2Rn+RlrW7Tgow7C/mLVicpaZ8F49knWmRxoyzJKLd9+ui02tZbiK?=
 =?us-ascii?Q?I4IF2NoWTS1myRiDOos/kg77qJGdJdG9hJjElalJ7QeBN0t2T+71fNqj3csk?=
 =?us-ascii?Q?FQ1ODkVK3CNwbtQPx4GykbY3b8ZTedmxsAzRp5FF6YS/PjSsHahEbnyjuDep?=
 =?us-ascii?Q?gqBLmsiJf/qNNYbJouw3FZd2wMp7J+bSu6tup02+qFIXfQhoJsOt9yhrb7tr?=
 =?us-ascii?Q?N4mbgPWO/GiCaM7AJLWgypYtBBfe5o6RVC4CZWSdGM2M0OomhAMWoyZ1+Lmz?=
 =?us-ascii?Q?xiD2UVuctelkGjXTA9XaKxtuPItWhVDSwd3P+5xDPc3vJJY+Ezatx9EIyXNp?=
 =?us-ascii?Q?ZKbyahTaCjEtJXnkemBFDGMmL93Lr1/RPSZ0Ygzg3xKkwdUEBEyZUNZU3e4L?=
 =?us-ascii?Q?r2tVUPXmnTqAtMFG2LrWPaJ5jL2o6b8qnT70z5zWEqsQbzGHyl/Hme1Yzrq8?=
 =?us-ascii?Q?0ezg0vmYwftFmmBK4+NcMa5J4R/Sw2HEps6uSiuB6TZfvuU/4USL4dy4Sxpb?=
 =?us-ascii?Q?laEOyVmIrwZgKRsIY/J49iiwb1F9nPeuyfh1Ay8xHL266BFFK6ac4wDaxIPD?=
 =?us-ascii?Q?hrOfYScsMinVQguF5V4M/OvaD8/5Oi2hwD62imZdNqRRQi24HZOvL44qCu03?=
 =?us-ascii?Q?P5WJKfuByiulZmSLjOVKUr2huSr2K3ViE3kj5Hj+FMIic36EJwSIlb2YyDD3?=
 =?us-ascii?Q?SsVix6BAjC+rUJHfa47XA03lyoJFwCfpP/utcKvy5k+Iw0+1/UbRvkCWkJbV?=
 =?us-ascii?Q?93wQPv03t4jmBzuyKhJ9x0LW7e9zonugLsFNGr0l2Sdnzvo/KvFhXStqBnTX?=
 =?us-ascii?Q?SRcnS0wJ3PZuY7hmRg3ponGgZyT+j8ZKvQeWp/0mhJfYk0o+mov+wqFAU5lD?=
 =?us-ascii?Q?8SY8zUMHAJvgRMFYXQSX+Q06s0dXHHpliP2r6iXrRcmVN9aCtYObPYX3Fhoe?=
 =?us-ascii?Q?LiaZf78WOjBfYo8PyEXHEBNxQUqTU/+2CfJn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e3xw0HLazsN/+vUFp7PMtIaAt85xXFFhYTWWRYgIVQizm5ZnwcbGepU1ylbE?=
 =?us-ascii?Q?gFO3KvJk8il05NKbV3k/6cfI9cpDLBKAWIuSm/MkNWY5RHp7GInYvFrfP0uo?=
 =?us-ascii?Q?OJetyUTmM0rFCCKYIPq1qQ0Qs6i777TY7O1RYNGuDMfs2UKYesSVbGfkKA7T?=
 =?us-ascii?Q?gsibrqvLT1APPUkqvrxc6h5MlRVZSwX+Wc+thfe/2oZ5tpgGqLn56cgL7Vru?=
 =?us-ascii?Q?7jRAKAHgbdUwzCQxx+iQlywpjqUd8VUdSsUJqxWxKbqgoIFX9HB4nIgWN35P?=
 =?us-ascii?Q?Z/aKcfxDYf2ZraFzDP1VxU+mx0uHMQHhgxU9qN+/FUBE+5fIRJfIhW7emNxH?=
 =?us-ascii?Q?pSgcouA1FRtZIn893X5oGX+SxOPvwulFDbyafffP2heZR/R26KzCw2yYv601?=
 =?us-ascii?Q?/35iUWhemvLC92ZUV5sRKs619gXpKydvnZxyQVb/cT/1AoMLEiU7zvdsxzO6?=
 =?us-ascii?Q?GrMcRj/uG7kYRHU1gFCOqka3cz9MCKmXhpPT8AjkZq54LAvm2IHCNw3dtWkX?=
 =?us-ascii?Q?rCMambIVDc/ZWQGBF6OYUMGIrweihLOdhRBGNnBhhnqtGQc+evyzjIzpFaij?=
 =?us-ascii?Q?+hZQATnXwkN//o0dazXrZLmr51mvun4DGCwA1qNYwSHQGPlj5EGiDiLRWS5Y?=
 =?us-ascii?Q?V0vd5FWlmysyLdY0+PkG5qZ9zCTiXX/HTtK/NWZqIvkWkJ3lEv+4BiHRBZC4?=
 =?us-ascii?Q?+OugoWg2ZZko66M2RjapXyxfcoT2NlWud+A6jUMhvsb/47dnsk/3tPVp8TLq?=
 =?us-ascii?Q?+ANb0AMd7Vn7dUbKtb0ou+xElewf1YR0Nrv/aG+2jaeQQQ9+oskql/iOmuyp?=
 =?us-ascii?Q?8DJ1eDvUFVVyfXHNCsSGTvs5vHAA8o106XycDiRw4gUQR0Hc4E6X5ARVtF06?=
 =?us-ascii?Q?kc8cJyTYhiImEaxBBhOrPQ4EY2YE/nI61svlRkjJ6KyKATH+/NddP3M6f3YA?=
 =?us-ascii?Q?OuG8slMriMMfppMpAyhiyCb7oY8fj5rRlZOAf+JH9ujrV9RhvW8KepkjNn5B?=
 =?us-ascii?Q?MI+ESnykDfWRTiqUqhweCGg/ootH67gtGjR84AjTxAsywe2SbDkhUBCVECfj?=
 =?us-ascii?Q?jc45kz0ntdc3dcqyIxjMjzTbtG+GK+gG913FDAQxVimdOfhc/0Mjp/yWQTK1?=
 =?us-ascii?Q?to7o7NkkPioBQGlWnnsbjo9nTFQTMTn5Ic5UXjs1c7YeAnqbEUBb7CmFPIqY?=
 =?us-ascii?Q?8BNa4cROZWR4JX36St1xGqsEt3TLPsd13kG73wg5eCLoZ9c8xyzVxxwd7QUB?=
 =?us-ascii?Q?Mt9s5vER2Ov7qoVN9UYGySnRSuwE1k8lW8PDST3TsU6kwtVcipPesxPAxMs3?=
 =?us-ascii?Q?4ekMUaQX9EOgYxUmXlfpr0RO62Ju+IgvMOkTAkZyz3KQSYnifjUZBMya5+v0?=
 =?us-ascii?Q?Dl6MXlW1m7uE4rUOMybh+0YDBfcoj5LsE5z5krg97xLKl6jj/MEjIDTp9zZe?=
 =?us-ascii?Q?J/6JdOuMCaQgDslcdLrJJuQD0lK1t9zbxdbgevyClLNTd5E/ohzY5VbH3C/T?=
 =?us-ascii?Q?B/3d475vcq0t6VnfXPkQ+pjn3Bwso1LRtE//sOtC2vhVlZGad27lFn9v2Rpx?=
 =?us-ascii?Q?7kYMQoaUiAGeAF6fgDmlIW6PxHpy6WhG7tU+xZLS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62940a23-b1c4-4fee-231b-08de229040c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 08:40:09.0313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q8UcaAjy1tvgn8qSGcsqOs/QWanRzj6GDkGLt/JHsu/KtSp7FQK1fVKpJ0nW2byf4g6Df4oL/txIR14UHM7eeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7798
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

Hi Lucas,

> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, November 12, 2025 8:08 PM
> To: Gote, Nitin R <nitin.r.gote@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; andi.shyti@intel.com Jani Nikula
> <jani.nikula@linux.intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>=
; Tvrtko
> Ursulin <tursulin@ursulin.net>
> Subject: Re: [PATCH] drm/i915/gt: Rename MCFG_MCR_SELECTOR to
> STEER_SEMAPHORE
>=20
> On Tue, Nov 04, 2025 at 04:48:40PM +0530, Nitin Gote wrote:
> >The register at offset 0xfd0 was incorrectly named MCFG_MCR_SELECTOR.
> >According to the hardware specification (Bspec), this register is
> >actually called STEER_SEMAPHORE.
> >
> >Rename the register definition and update its usage to match the
> >official hardware documentation.
> >
> >No functional changes.
> >
> >Bspec: 67113
>=20
> I'm looking at this since you asked me about a similar patch I merged in =
xe. In xe
> it's a little bit different since we start official support at
> Xe2 platforms.
>=20
> >diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >index 7421ed18d8d1..2282c1f16f44 100644
> >--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >@@ -62,8 +62,7 @@
> > #define GMD_ID_GRAPHICS				_MMIO(0xd8c)
> > #define GMD_ID_MEDIA
> 	_MMIO(MTL_MEDIA_GSI_BASE + 0xd8c)
> >
> >-#define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
> >-#define MTL_STEER_SEMAPHORE			_MMIO(0xfd0)
> >+#define STEER_SEMAPHORE				_MMIO(0xfd0)
>=20
>=20
> bspec 52127... before MTL this register was called MCRPKT_CTRL_MCFG
> prefixing with the platform where it changed, for clarity, follows what i=
s done in
> i915.
>=20
> I think calling it STEER_SEMAPHORE for all platforms would make it cleare=
r, but
> I'm not sure it's needed/desired. I will leave it to maintainers to decid=
e.
>=20

Thank you for the review.
I also believe that using STEER_SEMAPHORE across all platforms provides bet=
ter clarity.

- Nitin
> Lucas De Marchi
>=20
>=20
> > #define MTL_MCR_SELECTOR			_MMIO(0xfd4)
> > #define SF_MCR_SELECTOR				_MMIO(0xfd8)
> > #define GEN8_MCR_SELECTOR			_MMIO(0xfdc)
> >diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >index ece88c612e27..594730f221b8 100644
> >--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >@@ -1405,7 +1405,7 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_=
list
> *wal)
> > 	 * we'll just steer to a hardcoded "2" since that value will work
> > 	 * everywhere.
> > 	 */
> >-	__set_mcr_steering(wal, MCFG_MCR_SELECTOR, 0, 2);
> >+	__set_mcr_steering(wal, STEER_SEMAPHORE, 0, 2);
> > 	__set_mcr_steering(wal, SF_MCR_SELECTOR, 0, 2);
> >
> > 	/*
> >--
> >2.25.1
> >
