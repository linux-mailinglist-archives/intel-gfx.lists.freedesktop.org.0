Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FFDB9A98C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 17:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0E6310E763;
	Wed, 24 Sep 2025 15:24:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADH99ZN7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EFA10E76B;
 Wed, 24 Sep 2025 15:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758727460; x=1790263460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=iPaXiqDsfMe8AB5jI8Kygw3nAU7J70n8ad4Yy70YgR8=;
 b=ADH99ZN7Yxxc4gLtn76CZu9qe5L9pkYeKxf9aTEooW7PD2nFMgYo0l1r
 U0XFpJ/sp41iTZH3TTiUcsqtPLjfGK/t5Z4zYsUukV7Tzk83clZon87mg
 xVCysCMM7J3yccFefwfpR++y71GEXhm6O6x2iCYR37M5n8LaCZqwQE73L
 9rtTsq9pa23y+EXI81Kxzt7fRJQWMLaqk2XEF/sWCJEKdBU8MYnwxfLSn
 7xh9RCBVKSfNCRJ1BrjIF+NwIh2GhZgURruiWhSeDAHxpx68G3YNi4EEt
 ttk1dOkNCzvHiy6Tcph5pSpmuzWUPuVQYkx8mewjviR2uZuDtE6YPtjxy A==;
X-CSE-ConnectionGUID: opzs2fazQ0aS5l6BiL5Lfg==
X-CSE-MsgGUID: skZWoyIgTri16yqo14rO2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71706782"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71706782"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:20 -0700
X-CSE-ConnectionGUID: nSWoaStPRNCCg80CYem/vQ==
X-CSE-MsgGUID: sS8jWGzxQAyS3S8JtjuWtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176653390"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:20 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 08:24:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 08:24:18 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 08:24:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KRKbxPyPuasCm+Cd9ssAaK0CoG4dtW2ZRLcVRDqlKXEPf4Jmbi4W9xYm0bXUuPJD+Bvep2Z2yPT2x0jLL1zbFenbdY7Po4+zjo6rI6L7oSn9MvhskbwE/5wYwPtqQ/QomH3rFdq/XDZ1ARN0VpIYHFhZKiVKdXBRofRN3u8SiH7O289aN97ow5Jpk662KlqdcWXaxP9KN8jGI6oRLSwHXJS/8Nw9NMMxlXR9aaox8ux4ChH0Fa++oPPNSU6cdCBd9AJdM53E2rSUVMMhnh5KGleqwKM4GHULNRmOugMOBwSaL3gBEdckIADfhr7+PLO036IpRVCQR2aMkFQRZIeWWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Aa0IiTjNO+/qkdt/8KgQERpdOd/F3xgf6Cd94KOtlM=;
 b=ceg1J2ALoEiAbN2EC7K3xZqBGcVfVSMgJzb18lAq96NA0ivn0bElQQ4r297qgIPV0tmts/vTSLU+VFrZM2kmhxfvlCwWQVBcHKhGDruQ7dgOGguaF7d/3cRwlm6Yi4mkp6BgJ5S455xF/MrimuXl81wAkh0PqM/ZC9yj5oqj5xSBwkkl0XRfZEphz8YzH2DSipDpL/I4PgrlKxG2b6OLrL/1oCcgVVPVv+RUH5Pg3lvq8ULjnTup3CmLPnS6FWtqF9XAa9f4IY1v5DUgyG2Mp3v8zVX0KOlzzi3eqhDWYS6v+8KkWrqYpju542lWzESgd+I2/ZjaB7Q16GKyjq8amw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB8962.namprd11.prod.outlook.com (2603:10b6:208:565::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Wed, 24 Sep
 2025 15:24:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 15:24:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
Subject: [PATCH v3 6/6] drm/i915/dp: Handle Synaptics DSC throughput link-bpp
 quirk
Date: Wed, 24 Sep 2025 18:23:32 +0300
Message-ID: <20250924152332.359768-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250924152332.359768-1-imre.deak@intel.com>
References: <20250924152332.359768-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P302CA0030.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB8962:EE_
X-MS-Office365-Filtering-Correlation-Id: b8da6b53-e29d-4c79-d6eb-08ddfb7e65d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ymp2R21rVUhkejVoQ3BKWkJMVWovWmphaVordS9JVGRwcGE5Sm41dXJNdXIz?=
 =?utf-8?B?cnVJZExhNmJmeXcyTkpTMTFuUTc3S0IrbllCRU50VGl5ZXRPd3pjOFlNQ00r?=
 =?utf-8?B?WGZPTWNkM2pjTEVUTStUVSt0VGljMG81OThyaHVBY25VVWhydHFBUnlnaWpS?=
 =?utf-8?B?K0ptdThFNWszdDdZNkp6bXR3RVFvNnB4eWFrWUVoMWMwdXpBQUtsdm1Sa1hx?=
 =?utf-8?B?T0dZNTIxbDFZNy9IaHh3UTNtWFJkL0ZObjNKb0tTanE5SGkrMDBOWXJoQ3hi?=
 =?utf-8?B?cTVsOUxSMlNWMU9GbmFDd1pEMHNpSEUvT1kveWJURXduK3AxVk92REg0amYw?=
 =?utf-8?B?Y2VaaFpidm1UM2ZOVHRDNE9yMjE1QnEzYmhsMUU2bVdMSjEvQVhPcXNJemNs?=
 =?utf-8?B?bC9GK0FHYTRlL2NyOFduc0NjR2dwQy84RkNFQ2s2ZldlR1kyZjNsZG5YTTFN?=
 =?utf-8?B?ckVrL29LbG82MVR5WEJkV2VRVWVGd2cwUkpETXhZbC9hUnJacGh0dFFyWEZy?=
 =?utf-8?B?RzVRbEE1RmVnV0xaUHAyNlJXSlpSTzRmM0FqSTUzcVBZZFlQQXpUQjdMRGdu?=
 =?utf-8?B?WElQY1FhZTNqNUpDZHF4ZlN4dUk1aTQ3a2F4Q1pxNWZuRjY0dWE2OU92VE5m?=
 =?utf-8?B?UGRLWmNySWIwUTVtYVMrRmx2bnR2ZlQzS0t4RmhqSWNuTkdwcEZPcEVOaHp2?=
 =?utf-8?B?MFRyS1pBQmNJS0t3aklIcjRZRDZZV2pFb01NbWRYbVdJOFNDQzBqNXdpc1E4?=
 =?utf-8?B?cXo2aDFuRGk2VE9MY0ZlV2ZQUXBRS0U0REg4NzRmNTFFbCtCdFc0N3NGUG9P?=
 =?utf-8?B?bFRBRUpsK1dQY0RRc2R5aFZlZ2p6NVFyUDVsa29Xci9aVGYyUloxc1FEVlRi?=
 =?utf-8?B?bjI2Mi9sMlBlZ3pGODlNNk5JMUlHcXA4WklScys2OWFZakhUSUJoV0JhdXdu?=
 =?utf-8?B?SzF3UGZDMkJPN3BCc1REVUk0N0FPd1NYY3d4ckNEVmpXblhWdGt6S2JlR1Fq?=
 =?utf-8?B?RUJhMHpHWk1Ta1FJU1lPdllUU1NmUklEZ2RSYWhJbGhRSldNTG9BTzhyaHFW?=
 =?utf-8?B?Z2FxV1VUUmc2Y1M5SzZXUHJYWkVEdGh4c3VlTWtkWXA2aHBLckJXYksvN2Vv?=
 =?utf-8?B?MTQ3RlZaSnJiU2RUNG42bThYZ0NrejRNZDNyM1VDTFlKbjdaU0FQOFJvdG5D?=
 =?utf-8?B?d28venFFbHp6Z2tCSFVJWURTcnZTUjJmYnh0RVZrdVFEZWE4bnNlWEE5YXg2?=
 =?utf-8?B?NmUwN3V4U3dkSW9rTzJDaHlWek1QaUduMCtoYnpCaVprZ2hGeEVTTTFvUlNY?=
 =?utf-8?B?SVVvSkUyN2E0ZHFoUCtOUFc2b01iWVFGbmx1VG9ncGF6SG53bjgwUGlYbGhL?=
 =?utf-8?B?R2w5T0ozSnY0eFRjTHBrV1VPaVZwbm1MbWU4cGdKcHAxZmJ5VmV1WWdxQUcx?=
 =?utf-8?B?Z3RZQ2VJOFc5ZzNPUkNJQXV6ZW1DTlNVT3Bsd1lTY1g2RzF2MjdiTFlraDQ0?=
 =?utf-8?B?cmR1N3dSL0x1N2xpL0EzVVJIOFVqTEpQUmpVamwxVWp2UmxGQ0FNbVZaMmNu?=
 =?utf-8?B?UFpXd1NPR2tGNS9acmExWlZVQmhFNkl6aXVPNXhreCtFdXM5WGpqNDQ2NFA5?=
 =?utf-8?B?aGliY0ZTd3dGU1pTc3d1U29TU2NaUHJuMU5oQnBRRVJESmVPRGkxb2xxSDVs?=
 =?utf-8?B?RzZjY0dlaE5EUWM3R3d0T0puaTFGTnhac1VDV1lTc1ROQ0RKd1RvU0oxRWlO?=
 =?utf-8?B?QlRWc1U5OUhCY2g1dXVMUnNOSlEwMloyTXZlT29nK1RIbDhtMUppMTJ2eGY5?=
 =?utf-8?B?NFNURXo0ZVY2SHlsbFBiUEcyUHBWaWMyUHpzTDZWRzRReHU2T0FhNVQycXJU?=
 =?utf-8?B?VktrUDZhdzg0RjRpT3BCVXN1NElvWkEzR1d6S2FWcnBsVXFNMThDRjRDYnVR?=
 =?utf-8?Q?h9LiHjy6FTI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFo4ZjZId3lTMkN5REozS1p2Tit0RURITzRQelhNbkpvdTJNV0cyVFB6dysz?=
 =?utf-8?B?T0poNWVxTURaWFNpS0J1czdXbDZlZ1Z3TldQb3VSbnVVcnBIWGVVd3A1Witt?=
 =?utf-8?B?akpyMEQvc1loNzVKc1BuUEtxUEhNb3JTNkowdFQrT0l5QjlaOGYrT1AxK3Yw?=
 =?utf-8?B?NlBGVU5BOVN0d0ZVV2tMTnZVU2Y1MDdjOU5SbHV5Q2ZJczhFaUVLZ0gxdGRU?=
 =?utf-8?B?NlNSSE8yUEJEekdJUThmOUpMa1dUanczZEl4NkpxckQwaEpkc09TZHpMajkw?=
 =?utf-8?B?UDlOWnNJL1pIT0JrZ0hMcDFTOGt3aFIxMkJZc1E5K2xEb2hYNGpwbWtuM29R?=
 =?utf-8?B?UVRZNzBPZzlMa29HRzh2ZzhWTmRXNXFmaitBQzc0Mnc4Q2kwYk9rUHRTVVJ6?=
 =?utf-8?B?aThqdnBLckNzT0FCeHNYUTgwcEF0dnh1dkExZEhBOXF5djRUWWhQcHJnZUVH?=
 =?utf-8?B?L2FDR3ViVXJpTWtYOEYvamVDeWhTSGFnT0tSYkdlcTE3WkN6cVZRVWdqZVlW?=
 =?utf-8?B?NGFTTVhDQWhXNm9DVmtUVll6ODVySmVUV3plS0pEekxNaDJqQkcwQWY2Nk5s?=
 =?utf-8?B?ZjhGK3Y3cWJOZk92RkFJUDZvZGFlaWZVYmw5L3pzbFFDWjZ5cXFETFNudXZT?=
 =?utf-8?B?QTlRUUhWa05LTjh0U3JCSGJjRGkvT0FzRmdYSlEwU1FzRUs5Si9HeThKNHBX?=
 =?utf-8?B?a1FSVmNPOW9zRndHSHlGWE5idVNjRmVkMG1ZUUxXVHdYeGcwUkFSY3NubUto?=
 =?utf-8?B?SHhjY01EdUZFTlRDQzRka2swL3BCVVFDeGx4eWp0WERwT2FNc0p6Rm9PcS8v?=
 =?utf-8?B?VTJ2SDMxakwxeVlqUjM5TFpCMUFBd0ZDcDE5QlU0V3ppVFJSQ1c4T3VkQ29r?=
 =?utf-8?B?WExTTzcrbThTUTVtTWlnWldIVmw1Q3VaaHRicUdoNS9GcDM4UGF1eW9iTDZ0?=
 =?utf-8?B?d3ZMWjR4dmZJcXNWWjRxZDVNdFFqRWdNK3dlY2JoUGFhcDJDcXRZeks3d2hG?=
 =?utf-8?B?NmVBYXZLRERuYWp4elp5RS9VeHFRdDl2MXR2d3R4YWwyQ1NLNE5CdTFFa0lr?=
 =?utf-8?B?V1VWaGZpVFhCRWZEQmZCeFltUVpNWS9SRVJCbVZSaWdUQVhNc2xaWWhKQkhK?=
 =?utf-8?B?RmM1cGc0TTBnUkhrLytDSzBsV1J3M1dLRXlvcVE1M3ZlUXA5QTVFRFNITEQr?=
 =?utf-8?B?VWFFS2hKUE90YVhCZFZaeU1xREc1VFMxK2VYbzBjM0cxeGNxN0pyWWFYVXRr?=
 =?utf-8?B?L3NCeGpLZ1doeDNhb2tTN3ZtN3RqWjl3ZG5MQ1RUWER4TDFYSjMvMjN6Y3Bm?=
 =?utf-8?B?UXFyR1A2U2YrdFN2ME5vTjc1Z0E4ck1nTUNScmY1c3dxeTdyL3pTYW1pNVV0?=
 =?utf-8?B?RWtuUjJlZ1lHWi9DbjNtRFdtQUJabVcyTDF4UkRVL1BLTWNDYmZVUjJMN1Uy?=
 =?utf-8?B?M0FJd0NPbDEzRExTRWxkMEJqL3JBdTNjYmEzejVKYVJSMmpwa3NZMGM5aUpF?=
 =?utf-8?B?VDdDNTNzM1NKc2d2eUZoWFR2SVQ3YUhrc3BSb1RORmlBdlVOKzhkQ2w2Q1Zt?=
 =?utf-8?B?Slh1dVhNMFkrMkg5SHZnS05vL3RsK2w1aW5PeEhrRTR4L0lqV2dhMzBZSFpz?=
 =?utf-8?B?QklZTXdYZDUzYjBXVjFqM0RFTWN4L3phWmJFdGR6bk93RERBaXMxMDdOSnRM?=
 =?utf-8?B?bzJkUEpGY2J2em9BZWxIcjZHVWs2NklrTHdCRGhmdGV0RGIrUjFOcml6YWh6?=
 =?utf-8?B?QkxaS3MzOHJpenBXVEFwK1owYU1qWVhEWU1saCtQQS9oTStoQyt6WkQ3SzRP?=
 =?utf-8?B?b0liN21LVXJOb09rMEtQWWl4N3hsNkFwSUxJSkVXcmQ4T3FYTEl1cE1lMHp3?=
 =?utf-8?B?T3RuRGNZM1hwUHFkVmF5OWt3dWdnZWtZWHpGdE9kZlZnZENzSnBHdmlEdlpV?=
 =?utf-8?B?WlNuVFovQ3RxNkc0N0ZGQi9TOGhVNzMvUDl6SXZibEEwOGQwODFWM1haUHFX?=
 =?utf-8?B?cjF0RWQ0enI0aGxNWFRnZFZmYjZHU3REQmdOU0p0bW9YL1l5QkxuVndqamZK?=
 =?utf-8?B?MDQrTU9zdFBFbW9PZFY1TVB2eXUzVlgrYjRMdG1pR1RVUUtHcUFOWklXNG9X?=
 =?utf-8?B?ZFlibnVHaDA1VmovSnNTNDQ4R2M1d29IMzh3SlRaR0c0N3czLzRvbzNJZ0FI?=
 =?utf-8?Q?5WSlelD2qG3QCnSAEublyOvD4sZgkddtW51IYsty/eit?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8da6b53-e29d-4c79-d6eb-08ddfb7e65d9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 15:24:05.1148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LAsCu8MTOOZv/vH8KIkfS4Znhz6evxnmnL4agB93fUKwVtABSD4C6krC2BkOJqbswntBgWCc2mEcYQidJQseZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8962
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

Handle the DSC pixel throughput quirk, limiting the compressed link-bpp
value for Synaptics Panamera branch devices, working around a
blank/unstable output issue observed on docking stations containing
these branch devices, when using a mode with a high pixel clock and a
high compressed link-bpp value.

For now use the same mode clock limit for RGB/YUV444 and YUV422/420
output modes. This may result in limiting the link-bpp value for a
YUV422/420 output mode already at a lower than required mode clock.

v2: Apply the quirk only when DSC is enabled.
v3 (Ville):
- Move adjustment of link-bpp within the already existing is_dsc
  if branch.
- Add TODO comment to move the HW revision check as well to the
  DRM core quirk table.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reported-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 57 +++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 73bdafae604f8..aff63bf0f2294 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -551,6 +551,7 @@ struct intel_connector {
 		u8 fec_capability;
 
 		u8 dsc_hblank_expansion_quirk:1;
+		u8 dsc_throughput_quirk:1;
 		u8 dsc_decompression_enabled:1;
 
 		struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d7ee17d3f75a6..6b148008505ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2480,6 +2480,40 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static int
+dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
+				 const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!connector->dp.dsc_throughput_quirk)
+		return fxp_q4_from_int(INT_MAX);
+
+	/*
+	 * Synaptics Panamera branch devices have a problem decompressing a
+	 * stream with a compressed link-bpp higher than 12, if the pixel
+	 * clock is higher than ~50 % of the maximum overall throughput
+	 * reported by the branch device. Work around this by limiting the
+	 * maximum link bpp for such pixel clocks.
+	 *
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output, after determining the pixel clock limit for
+	 * YUV modes. For now use the smaller of the throughput values, which
+	 * may result in limiting the link-bpp value already at a lower than
+	 * required mode clock in case of native YUV422/420 output formats.
+	 * The RGB/YUV444 throughput value should be always either equal or
+	 * smaller than the YUV422/420 value, but let's not depend on this
+	 * assumption.
+	 */
+	if (adjusted_mode->crtc_clock <
+	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
+		return fxp_q4_from_int(INT_MAX);
+
+	return fxp_q4_from_int(12);
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2511,6 +2545,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	} else {
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+		int throughput_max_bpp_x16;
 
 		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
@@ -2525,6 +2560,19 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
+
+		throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector, crtc_state);
+		throughput_max_bpp_x16 = clamp(throughput_max_bpp_x16,
+					       limits->link.min_bpp_x16, max_link_bpp_x16);
+		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
+			max_link_bpp_x16 = throughput_max_bpp_x16;
+
+			drm_dbg_kms(display->drm,
+				    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
+				    crtc->base.base.id, crtc->base.name,
+				    connector->base.base.id, connector->base.name,
+				    FXP_Q4_ARGS(max_link_bpp_x16));
+		}
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
@@ -4232,6 +4280,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	connector->dp.fec_capability = 0;
 
 	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+	connector->dp.dsc_throughput_quirk = false;
 
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
@@ -4252,6 +4301,14 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 		return;
 
 	init_dsc_overall_throughput_limits(connector, is_branch);
+
+	/*
+	 * TODO: Move the HW rev check as well to the DRM core quirk table if
+	 * that's required after clarifying the list of affected devices.
+	 */
+	if (drm_dp_has_quirk(desc, DP_DPCD_QUIRK_DSC_THROUGHPUT_BPP_LIMIT) &&
+	    desc->ident.hw_rev == 0x10)
+		connector->dp.dsc_throughput_quirk = true;
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
-- 
2.49.1

