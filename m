Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vZVKGXCVO2oNaAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:29:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4296BC910
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:29:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jmPAZ+LM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1B810E07D;
	Wed, 24 Jun 2026 08:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32A410E07D;
 Wed, 24 Jun 2026 08:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782289773; x=1813825773;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QL4+z2gD56DBF/V+S8U2tmqXt2UZsAZZrp56PpruwIA=;
 b=jmPAZ+LMChl/JKmkCYi5bwhWdB9ipqjrzD3kVwqTbjBg/3fjnuDRPnai
 yF2LQlZOutVz+I2QUFy1dr7j+KDcdZYEMpoe8Zod8s1slcl4NnzriFdgI
 wJo+JzPQVSx7cw0w5nEjufVCnzkKZfhg3BNoNseMyOZjMr9h2xyIORmTr
 Gt5zDMbHvwoCbe5CXBNiT2xjsnexR2SmujdHzySw8zLioUZryTInfeFd8
 Y2bk5/rWmEFCC5o8AbVxby1ONS6zJPYpKAmneMnpE9cIr0t2lGBRmge6E
 fgD5jqA8OFIVk1Fw3rJRlY2fRrR/KoPRihOJ2Jaeky/pdVyahwufiCmm1 g==;
X-CSE-ConnectionGUID: +/CpeMACRc+SeVbqz/hMmg==
X-CSE-MsgGUID: XqWj3E3QRKeBjWsN2sVAPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93403614"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="93403614"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:29:32 -0700
X-CSE-ConnectionGUID: FvIB+JIDRHufe8YQH6iyZA==
X-CSE-MsgGUID: QGMVx93MTFSSrZ0QaCkyEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="247411080"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:29:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 01:29:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 01:29:31 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.47) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 01:29:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y23+B+ccsueaLzSBvjJ/rfLCyn/+ACYTuETsmepW0/UTAFJS0zf3u+wa/BMjb6O2lhEMotwCC6usOvhayFL/6IucHYL3yAeDObngoIzPfpidHdB78sUe9KvENau2RquM3v+l44BiQbbxk70ttlNn7b48UvTZqv/3NbuzCQEuDTU4MYa2MNg2sRjUO6nGGkkrkm//so5iFLe+9yAkwu2eoJE5d+zp3J49ndDPPzH8I2pJAWEjYQ+qX0rzehVUKMROdI1lHiP274Pl2WcTu3fwJazjZSd0nc4rX3XasHqNBjgkugDBw2Bx9AHBmLXCdhUOfng+GdTGurzY3WxysZVkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QL4+z2gD56DBF/V+S8U2tmqXt2UZsAZZrp56PpruwIA=;
 b=jYN6KiO9t1MTBthxvL1xLtC1tu/LbyNtxm5G5OnVoJME/5o5aKONAJR85CqJVWn9XkfcjW604d2Ts1+d6yrUD64u9hYh6KX3qKaf1XVpKjtQle33khbLOzvANKGEI+CK6X6eJQV4ay5L5vF9P8wpIcrFz9mTU7J+G9lQd0W0ShBEGXC9k0J9tuCpUB3ObwRZaSlZxqgWwGSc2+WewqnZw4jU/tlg4oHXgcwdafRMlJDjZjYfmvsCO6sTjqNIefavwNHeYfg5ZSYpeRVDWUi4H7QPhZqltClGQL/U/Zs0Z8jeomLakMdgnoZDXen9RDSjeVFGhwTpGqrCr+aTQHLlVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA1PR11MB8447.namprd11.prod.outlook.com
 (2603:10b6:806:3ac::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Wed, 24 Jun
 2026 08:29:22 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 08:29:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 13/28] drm/i915/dp: Factor out helper to get link rate
 capabilities
Thread-Topic: [PATCH v2 13/28] drm/i915/dp: Factor out helper to get link rate
 capabilities
Thread-Index: AQHc/c11tZ3v/oc+IkaIdP0VlsVr8bZNa2nQ
Date: Wed, 24 Jun 2026 08:29:21 +0000
Message-ID: <DS4PPF69154114F1431C6AC5FC30928E608EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-14-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-14-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA1PR11MB8447:EE_
x-ms-office365-filtering-correlation-id: 7f6d6ea4-f254-4d34-22a4-08ded1cab12a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|22082099003|18002099003|4143699003|56012099006|11063799006|6133799003;
x-microsoft-antispam-message-info: Uyul3GrEUN2qefzT1wXPYngDq3lThniazPotgzS/xU0FGRvdQi6HrqfkYzKfEXn4roadN6LiB3FIxwrpFni5obzAeDabqqcFxpXczNduWf1tM6NPAX6BbZVbsiqB7Smg7S8Z+9Qvn/lPnI41ilRZ8y6uqrZN/Yu7n4YgPJAcn0CoBVbj5pedef8PUoXTrfLrKMHPNxAAH8ZNGRphRgi3F96VqY0hLCMMtefsEaoMHBK0/Fpx1q4iocq/C/5k4XNgEiAqILtcHbKRf9VNVEuFOggvqbcsOvz7UTQZnDVV/OtamAx3iq/wu2rjyVuq9dv7to94hLJ58DDHj1rmCsbsgLDN85DX+PDWYaUsP5eoTbSO39rgi7ELerMinhZJkVrqDSXxGjmEhj2RsoU8FqSlW9wKMN2T/Txl+vOke2aVeWdH0dpd7Gy/jxwma2xu4pnhINTVosaYAjYzgVSewmJvEZyEn+ebOEsdypgSE4s5HDgh3ymyBjZ3b67RfErCbC4YfkOMA3R9N2zEwFcSLnpbT+Qt2TgsGaUGze0EEYtwfCeewo8YT2p0WRnEDvK+ufSw6aHj2SeShDMzG5Bh59ijCIuCsw62LLeBCOuDtxq6Ddp8aOohfF9lQ0ey+cYh7eZJJ+DZndhNjyHjMw/eaCWMJ+8GsFkH/WrW32/2OrAc3xjauNkXSu6527y32BsjRopigB/t0/4fEey6HazZATS4JYsmVevJs/NOIDJGSXpnsmg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(22082099003)(18002099003)(4143699003)(56012099006)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3NMcE9DaWRtQzc1Q3k0aTJSdHR6M2d3TlNta3l0Y1cveElTN3J3NFRobnVa?=
 =?utf-8?B?UldLT3QvQWRYcEhIaFk3OTFWWmhJSEtGcEtMNnNCUVRRb1EwaHhVdjJBSERl?=
 =?utf-8?B?YkVMRjdSTmhvcFBmOGJ2MC9Dd2ZQOXZvYTg5QVpJQXZ6M2JzWFRjV3pMK3ho?=
 =?utf-8?B?NlBJYkZwdDBOOHAwQTh2L3g3VytoVGl6NFZxVDNML3dhYmJ1S20vRGNrREpx?=
 =?utf-8?B?SWRpRmVrKzMzbkhkVFpaOGhJaldnMEwyTkVaYlM0bU5uNHRrSlI0blBKaEly?=
 =?utf-8?B?Ujl6bVF6MWt0SXFhVE5MelFYb1N3V0ttcUpieVdXS3lGelBxcGNQQmpwWTE5?=
 =?utf-8?B?TlB1cE9FUE15S1NudFJjYjVmcXp3c0xSMUZPcHRLTTM2SlJkQ0NPUm1NT2hD?=
 =?utf-8?B?UHVHOUE1aG83OHFLY1pRc1dlbFZabXgzVlkzVS8yRWthUlRENUV1cW9LMDhq?=
 =?utf-8?B?b295dDd2c3UwZXlDa3ZVOEM1NWM2N2lSV1h0bnBHOWxGZE9zM1U2S2RMOEgr?=
 =?utf-8?B?VEg5U3hBQ1JBbFFiOFI0TGo4Rzl0T01Qc1RydmRTVEF1K0MyQ0hlTGxUenpP?=
 =?utf-8?B?by9lSUM4QnNWT3FZZkQ0S3pjWmpNeGFJWFczU2F5a084THNRbnNvN1RrL2s0?=
 =?utf-8?B?OWJPQjlTR2J0RU9lcVp2cVZSazMxV1RqYjluYUpQcDVFUCt6dXpoRmFldTRK?=
 =?utf-8?B?b3BNTmFWT3pvOXRrQUZIZjg0OUR5R0F6amZkMHh2WUdPLzU4dTNaQ0hzU0R1?=
 =?utf-8?B?TGV1S1J0TWVES2pHTXVQV3B4cVVqbXVHWnFrVzZwUVMrQURGaTBkdHFiWmc1?=
 =?utf-8?B?enIvbWgzYnZ2WnU4Y2JNd093elczU0NDZ0N4azNuUWNwc2hGNkpwNzNxTUJ6?=
 =?utf-8?B?VDZWTVhvSUlwNWhjb2NOMFRQMnRxU3FZVEFKNUU0UXdQbjhXR0dHWW51bVZU?=
 =?utf-8?B?T1RKL2tZcHRrRmJqbmgvR1FpWE5iR0FLMWxzKzBPeGpuQ2JHVytQbk9HTVh3?=
 =?utf-8?B?ZTJIbmRWQ2xqVnlSSk5WQit5QnZNNVpNWnVORW1Ub3RQdTM2OEVTWXNjSmQr?=
 =?utf-8?B?WTQ1YmxzSlBQSHBXL2tVZTNWajhCS1VaRDZvZ1hJYXlsNGR1d2U4ZXZVRkJr?=
 =?utf-8?B?a1pnWTlPeThmb0RkQWQ5dzhLUmtnM2ZNeUx4VkFHTm0vbTVLaCtaODh2VjFI?=
 =?utf-8?B?b2w5T2R5b1ZNT2Y3RHFCaHVlTjZmQUlZc0N6bWVDK25pcXFmaDc4OStVVllh?=
 =?utf-8?B?RnJ3QWxQa09xZkJRbGpCeHVVampYTkZ4RVJmckV6U2ZBc0Y4d0tMU05wd0pO?=
 =?utf-8?B?eW5rbWNUYXg5aC9xUDd1WGFOeC96VGliclVkQVdzSVhFbzVJdGRHdUhxNUky?=
 =?utf-8?B?UktGbklZa0UxVjd5MTVrb3E3c1pzREsxd2ZqZ1hzdmR0aWpQTEVZVUUybjBQ?=
 =?utf-8?B?ZWFRT3c4WG43a3BpcUtiMnNickpUZjF0M2N2amVSb3g5NVROdTQ3U2d3VHF4?=
 =?utf-8?B?Ui9vK1ZLWTN6WGpDajgrc0xMZjVyOU42WWNORm1aNTRuTzhXMmpSMDJMVnZU?=
 =?utf-8?B?NGpFbGQwOENwcTdLNDNGZzlWalV6ZTdIdHE3QlI1UDJkZHRLcG5wTFdCM09Q?=
 =?utf-8?B?WUV1dWE3VmR5ZFdNL2pybnRUTW4wLy9QSTh0QUlneGpta1NBMTNlTmNHQ3E4?=
 =?utf-8?B?WW96NkxFem9SYXJYOXliUFFZZmFiRVRta3pOVkEwS1M0SjdIWjlCSk91K09J?=
 =?utf-8?B?Q1prTG9YWlBwQkVlUkFOZ3dmMSsrSXpaWkdCUHp2emVsWVdvcWY4VFhYNThI?=
 =?utf-8?B?Zy93ZE1lVUs3MEZZTXAvdXllbG04RnJ1TkFmaTJLaTN6VHVXWm1BOXRVaG9P?=
 =?utf-8?B?R2Z5UXJCcmZRcC9NdHh4cGtBTVRNOG9qK3doVGMrRHpqQzN0emtMMDRrbkhv?=
 =?utf-8?B?QjFDWG9KdGM1TmgxUG45WGtwNXV4RmYxZ2RYanpzdUk4d0lYSGowTWpJN1Z4?=
 =?utf-8?B?cFNUY3dSMDVnR0E2aE5RZ0NNcFc1TUE0eTh4dkN5QXl5dmpabVZnaGRzbmZk?=
 =?utf-8?B?b0lhMGs0TUlJWGJNVFczSVNiQUlnaGViL0VkN1QwTno2dGFVeHh3S2RvNXJr?=
 =?utf-8?B?T2xzd2JzNkZDaVlCSHNyRUlSSWpWYkJqSlRpb1lFNXNnWkhnTmwxRWI1WUNQ?=
 =?utf-8?B?aDFaY3FwZDV5U3VSLzhqV3EvaXAvYnU3bGFxUFhnMlZ3L2N0cU1lc0hMY0tZ?=
 =?utf-8?B?ZXordVdMcWNVOTdGbXB2Y1VKUDhxaC91YmZDZ2lvL1lRUUlKRW4weEo4UTBj?=
 =?utf-8?B?ZXRhN3dRQjdaeFNCTElVangvNXdGaWpZTHVuYkUyb1hwMnJpSm1wQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: R6cAI+rCdzLHoB/qM39bIOpW9Ku7Ms9PiS+2KnXjB041y3qPp19cHVi+k0UxOhCDek9NUziLSucLyF3Z6SzI+9fqzrkRnYs4mMYeonVu2bkEtzopFPTTZLh08Nq0QW8zRegn6B2j9E14iHKU+WI1Rn5RqEJskRxveVLEGtpvb8yefcXVCrI+RweY1n+80vQ4tjRkUo/OAku4x8rRLsuK1dTtia9C8J3NIfZ5O9VgxwrPXTfMIWHzDS3ZG6T6MRD6SVcaY4eShbwkSMgTKEt7JBW9A6f6+/oBj+XTeGMDXv0GlFtiR5lgDI4M2dvkGtq3x4YOgxyRmyWncVZbt58KvA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f6d6ea4-f254-4d34-22a4-08ded1cab12a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 08:29:21.8781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 363z9Or7Ai2VuUWoG4pI5GmAKo/ViexEKkvrhIamYNFaOk/4ofJAU+Tou/yqxHSYXWxtNovb/uz6rE671/TTow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8447
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F4296BC910

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMjMuMDkNCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMTMvMjhdIGRybS9pOTE1L2RwOiBGYWN0b3Igb3V0IGhlbHBlciB0byBn
ZXQgbGluayByYXRlIGNhcGFiaWxpdGllcw0KPiANCj4gRmFjdG9yIG91dCBhIGhlbHBlciB0byBn
ZXQgdGhlIHN1cHBvcnRlZCBsaW5rIHJhdGVzLiBUaGlzIGFsbG93cyB0bw0KPiBnYXRoZXIgYWxs
IHRoZSBsaW5rIGNhcGFiaWxpdGllcyBhbmQgcGFzcyB0aGVzZSB0byB0aGUgbGluayBjYXBhYmls
aXR5DQo+IG1vZHVsZSBmcm9tIGEgc2luZ2xlIHBsYWNlLiBBIGZvbGxvdy11cCBjaGFuZ2Ugd2ls
bCBleHRlbmQgdGhpcyB0bw0KPiBnYXRoZXIgYW5kIHBhc3MgdGhlIG1heGltdW0gbGFuZSBjb3Vu
dCBjYXBhYmlsaXR5IGluIHRoZSBzYW1lIHdheS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgfCAzNyArKysrKysrKysrKysrKystLS0tLS0tLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDY1YTEzYjJmNzU4NGQu
LjYzNWUzZWRlMGQ0MWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gQEAgLTY3NiwzMyArNjc2LDQwIEBAIGludCBpbnRlbF9kcF9yYXRlX2luZGV4KGNv
bnN0IGludCAqcmF0ZXMsIGludCBsZW4sIGludCByYXRlKQ0KPiAgCXJldHVybiAtMTsNCj4gIH0N
Cj4gDQo+IC0vKiBSZXR1cm4gJXRydWUgaWYgdGhlIGNvbW1vbiByYXRlcyBjaGFuZ2VkLiAqLw0K
PiAtc3RhdGljIGJvb2wgaW50ZWxfZHBfc2V0X2NvbW1vbl9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiArc3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0X2NvbW1vbl9yYXRlcyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJCSAgICAgIGludCBjb21tb25fcmF0ZXNbRFBf
TUFYX1NVUFBPUlRFRF9SQVRFU10sDQo+ICsJCQkJICAgICAgaW50ICpudW1fY29tbW9uX3JhdGVz
KQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlz
cGxheShpbnRlbF9kcCk7DQo+IC0JaW50IG51bV9vbGRfY29tbW9uX3JhdGVzID0gaW50ZWxfZHAt
Pm51bV9jb21tb25fcmF0ZXM7DQo+IC0JaW50IG9sZF9jb21tb25fcmF0ZXNbRFBfTUFYX1NVUFBP
UlRFRF9SQVRFU107DQo+IA0KPiAgCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwNCj4gIAkJICAg
ICFpbnRlbF9kcC0+bnVtX3NvdXJjZV9yYXRlcyB8fCAhaW50ZWxfZHAtPm51bV9zaW5rX3JhdGVz
KTsNCj4gDQo+ICsJKm51bV9jb21tb25fcmF0ZXMgPSBpbnRlcnNlY3RfcmF0ZXMoaW50ZWxfZHAt
PnNvdXJjZV9yYXRlcywNCj4gKwkJCQkJICAgIGludGVsX2RwLT5udW1fc291cmNlX3JhdGVzLA0K
PiArCQkJCQkgICAgaW50ZWxfZHAtPnNpbmtfcmF0ZXMsDQo+ICsJCQkJCSAgICBpbnRlbF9kcC0+
bnVtX3NpbmtfcmF0ZXMsDQo+ICsJCQkJCSAgICBjb21tb25fcmF0ZXMpOw0KPiArDQo+ICsJLyog
UGFyYW5vaWEsIHRoZXJlIHNob3VsZCBhbHdheXMgYmUgc29tZXRoaW5nIGluIGNvbW1vbi4gKi8N
Cj4gKwlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCAqbnVtX2NvbW1vbl9yYXRlcyA9PSAw
KSkgew0KPiArCQljb21tb25fcmF0ZXNbMF0gPSAxNjIwMDA7DQo+ICsJCSpudW1fY29tbW9uX3Jh
dGVzID0gMTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBib29sIGludGVsX2RwX3NldF9j
b21tb25fcmF0ZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3sNCj4gKwlpbnQgbnVt
X29sZF9jb21tb25fcmF0ZXMgPSBpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlczsNCj4gKwlpbnQg
b2xkX2NvbW1vbl9yYXRlc1tEUF9NQVhfU1VQUE9SVEVEX1JBVEVTXTsNCj4gKw0KPiAgCS8qIFRP
RE86IEFkZCBhIHN0cnVjdCBjb250YWluaW5nIGJvdGggcmF0ZXMgYW5kIG51bWJlciBvZiByYXRl
cy4gKi8NCj4gIAlzdGF0aWNfYXNzZXJ0KF9fc2FtZV90eXBlKG9sZF9jb21tb25fcmF0ZXNbMF0s
IGludGVsX2RwLT5jb21tb25fcmF0ZXNbMF0pICYmDQo+ICAJCSAgICAgIHNpemVvZihvbGRfY29t
bW9uX3JhdGVzKSA9PSBzaXplb2YoaW50ZWxfZHAtPmNvbW1vbl9yYXRlcykpOw0KPiAgCW1lbWNw
eShvbGRfY29tbW9uX3JhdGVzLCBpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLA0KPiAgCSAgICAgICBu
dW1fb2xkX2NvbW1vbl9yYXRlcyAqIHNpemVvZihvbGRfY29tbW9uX3JhdGVzWzBdKSk7DQo+IA0K
PiAtCWludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzID0gaW50ZXJzZWN0X3JhdGVzKGludGVsX2Rw
LT5zb3VyY2VfcmF0ZXMsDQo+IC0JCQkJCQkgICAgIGludGVsX2RwLT5udW1fc291cmNlX3JhdGVz
LA0KPiAtCQkJCQkJICAgICBpbnRlbF9kcC0+c2lua19yYXRlcywNCj4gLQkJCQkJCSAgICAgaW50
ZWxfZHAtPm51bV9zaW5rX3JhdGVzLA0KPiAtCQkJCQkJICAgICBpbnRlbF9kcC0+Y29tbW9uX3Jh
dGVzKTsNCj4gLQ0KPiAtCS8qIFBhcmFub2lhLCB0aGVyZSBzaG91bGQgYWx3YXlzIGJlIHNvbWV0
aGluZyBpbiBjb21tb24uICovDQo+IC0JaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgaW50
ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMgPT0gMCkpIHsNCj4gLQkJaW50ZWxfZHAtPmNvbW1vbl9y
YXRlc1swXSA9IDE2MjAwMDsNCj4gLQkJaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMgPSAxOw0K
PiAtCX0NCj4gKwlpbnRlbF9kcF9nZXRfY29tbW9uX3JhdGVzKGludGVsX2RwLCBpbnRlbF9kcC0+
Y29tbW9uX3JhdGVzLCAmaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMpOw0KPiANCj4gIAlyZXR1
cm4gbnVtX29sZF9jb21tb25fcmF0ZXMgIT0gaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMgfHwN
Cj4gIAkgICAgICAgbWVtY21wKG9sZF9jb21tb25fcmF0ZXMsIGludGVsX2RwLT5jb21tb25fcmF0
ZXMsDQo+IC0tDQo+IDIuNDkuMQ0KDQo=
