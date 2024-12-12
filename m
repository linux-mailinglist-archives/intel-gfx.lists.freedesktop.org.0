Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24189EEE24
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 16:54:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E38010EE29;
	Thu, 12 Dec 2024 15:54:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FmpnUDcT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1638E10EE29;
 Thu, 12 Dec 2024 15:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734018872; x=1765554872;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0gwVGwnTne4dtuvO/cGGPSlnXWmg+fUidBwKEykuR4o=;
 b=FmpnUDcTH0Dn750jmVAIMzOXcnWaAfBgVgQj9ALX/E70SuyWyN+JIqId
 DoUDpPtYpmHZ1I+4oajmjRKEMKTdpanVcnR2QIDmzU+QtAQAJsIccNE6c
 R1+aV2HRLtxQ8CMv6xKSXGfvBT6Mu46ljpZomfST0w8NHsbOa2VH/9ShT
 oa5ELcHxx0TjdbQDqXLOTPL433EgiHhdvwWCNM/VqHqr+iPxmlCQVAN29
 01XOooJ7kkL6EjaW2M+xuSpa5ElZ7bgDXfeoVNOIky7gqZZjSVZGx0qMN
 pcdmBdCy0HGZUfBmfgeAarJcjnu6Lvfmx+sdt7YSna6FBDWkBirvxd/Kk A==;
X-CSE-ConnectionGUID: Y0yn3w1tSmy58uSgEWAzfQ==
X-CSE-MsgGUID: 5FbhXVtKR66JM7o4jTvIAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34582351"
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="34582351"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 07:54:30 -0800
X-CSE-ConnectionGUID: +bxUahZkSsuO+kDBCNbj6w==
X-CSE-MsgGUID: zQ78EP38QOSilcY9W2gSCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="127062941"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 07:54:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 07:54:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 07:54:28 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 07:54:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MfHnqSnEtGtCA323kp08MQP1DQcA3bdcNQkllkXmxHQBqR9jQ6NFV/t+BJqc4iE8iWi+R+jiDrQKjCek8vWcyc44V7Fb+j6bNJSrxMnbU0KC7HL1HyDv/D7Yj35YsgNLMJxMgpxakFO1IZQruDrebpKxfAJkHHyTcwIcu60aOBTDv55vPjz5HbQA+oASAp9sWsNdfrNnT5psv0DX9g40/KDXE1Db09y71VMZOfsDMjDApLXyA/lzkOVMnh9LtAqFcRAujHr8KDi+Sc0Kp8nIgvFyYb44zqS/SXSzBesKgLfBPPx01Cf6mdhAzEoY5k8CSPE+ezLA59XV88k+v5dYhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0gwVGwnTne4dtuvO/cGGPSlnXWmg+fUidBwKEykuR4o=;
 b=A2KClsqHaly/WSBVveYqR79NLDaQe1T0wXJFQK/8wtZSjJeaxn3z3bVqcevraXE1lxLzeQ2Z2SOyD/2gPCvVm7JiunepRsFlC4nF9g2fkexXdwc+TFHVS39uURuKRteDhSmadfO31EkbMs79Ff0zSK85QLOUDQy/Lx0Tw9VUgm/nxB4VVW7eBbSMFUNqkRX6A66CArA3jqaYhWPVcyG9ecVnNhLrck8+VOr7eIz88Hb4CZ29LHCGyCa4zmC+1jYpBEutEBbIqx9bEFaLhnh/XOG/2USFiF8iZ4BsL5TOJKfoqFEVfv1OLC6v9pN3ODlrmPU7TiK9NeX/X9lxcr5GGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Thu, 12 Dec
 2024 15:54:08 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 15:54:08 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Topic: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Index: AQHbTKKrDH5oE8YCPEOW7tz5Lf3SeLLiubjQ
Date: Thu, 12 Dec 2024 15:54:08 +0000
Message-ID: <CH0PR11MB54449EFDBE5020FCC1FBA970E53F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-2-nemesa.garg@intel.com>
In-Reply-To: <20241212143329.938202-2-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ2PR11MB8369:EE_
x-ms-office365-filtering-correlation-id: 8fbd5173-955f-4cab-8ea3-08dd1ac536e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VlBkQ2YyZVRBZUp2V2Z1VnFaWmxCV0tLYnhYZ2ZqdVVuWURpR2xwcjNibnJP?=
 =?utf-8?B?Yy91c1B2LzAxK0g2MHRGamVUb25oUnRSeFJUVUswdDhJRElUMlJOZzJKRy9u?=
 =?utf-8?B?ZklxZC81MEhWQk1aZGo3V1VDRGhuNmtCcXBOYWFxalgzQzFsaUdYSFpYbGZX?=
 =?utf-8?B?V0o5S3o3UVBUU1lCZEgrbDRRVGpSa1hjenV1MXBUMEdWUFA3VktuU0pkdXBo?=
 =?utf-8?B?LytOWFJIRUNoc3dETmNqQTNwcTJRcE0wVkxxeUxrRmppMHRlVHVDQVdteHBP?=
 =?utf-8?B?cEs2OGpEc05NYTJwNHROSHpmQkxBWGlLS2VnZDF3RDVONHE0S2svVFZ2M1Nz?=
 =?utf-8?B?ZllFbnFnaFB2eDdxT3lET1B0NEphYm5ucW5icmJyVFg4OE16bnY0WWx0akd5?=
 =?utf-8?B?NkFiWEZQRUpLUjJTaVdmcTIyWjArRFk0eXR0dDlLdi9LRTdFUGVhSlBkRnhQ?=
 =?utf-8?B?S3ZYWHBEY2dsbXpQTDBDVnJublJhRGV1bGd3enhJTHdyWjJacllXOVAxdWx1?=
 =?utf-8?B?NDhUZVJYK2hxa040U241R24xWnNpSFpuTlRYSGlWTEZOM1MxeDlncytSS2VN?=
 =?utf-8?B?NWl4aW52OWNRaTRUTVhLV2F5T09XYkJpNitEajZqeU9YZVl6R3hGeENmMUtO?=
 =?utf-8?B?aS9LODNES1hHelcxTTRKRFBNN1F2ZVNKMnR0b0pTL1cvK2xmWWhSc2tXb25Z?=
 =?utf-8?B?YzlObkxNcEQvMXYxN2VLbHJxOS9xQ005R3pwb2pNMkpUUktyNXljWmpCbm1L?=
 =?utf-8?B?cnNpV2cvc285OW5CZk96dDZ2UUNFbmxEQkhUTzJrUjZFdXVOYkwyUlZVd0dh?=
 =?utf-8?B?ZEw3SGVvZGRIZGRqcy9oeHY3ZnNmSmhRQlhvSjFWdHFoOHJ2NDU3S0dJd2dN?=
 =?utf-8?B?ci9yWDllR3BVc3kvWmRlRVNmejNickQwN3ljUXVJR2gvUXVRcU9PZzY0MkN3?=
 =?utf-8?B?RmttZmdVMVYrS05IVHp4cU1VMjJTZ2JmeU5vaXpDQUxnQmlZWjJTaXNkQW40?=
 =?utf-8?B?a0RGS2FIcVF0TElmSnd2eEZyVSs1MzhkQWNyOEt0dmhSUmxPSDJyWFAwNVBW?=
 =?utf-8?B?d1VVNFJxTVVGdTlLV2JMVk9qVVdEN2hlQjNUeDJ6UEhMT01tZitPZjRSeVpa?=
 =?utf-8?B?akVaMGwwbDVqWmMzZm5aVndpSVMwcXNxUnM3eGdGcnAyTkhHUDFEV21SMnl2?=
 =?utf-8?B?WVNhUU1sS1c2TjVORHYzZU9PRFRkNU1hUVlwNGQ0aGFFZGR3VmgyZ2FMa2I5?=
 =?utf-8?B?UlV5T2haSHhQSklaeHFaUFNwSTZSK0ZuYVlKL0g3RW0rUkhMQjVPYktrb1Jy?=
 =?utf-8?B?VlpvSHovQ2hJemkrS1VNb1BqTE41TUlTZ01ldzdXTEhET3hzaXhqSnlKMVQr?=
 =?utf-8?B?S2dxM2dsRXVPbFlzWFJLN1Z3NXlkZVRFVU4vY1RMNEpYY3h3SjllSkJGS3FP?=
 =?utf-8?B?SE5VRHdPVGxyR01XaURCQWppZE5FeUdxOVNndUlNSlozaHAxcTlqOXNDdzlB?=
 =?utf-8?B?Z1ZiV1kyRytKNG1JM2xCREh1eWtPYStpZ3pQMDN2aDhUVndGZkx0VVRYbnpJ?=
 =?utf-8?B?RFB3NUZIbTFMZDFidTkrV1BvOVdZTjZxU3lISUhYRkdtRHR1bjR4aitRdW5Q?=
 =?utf-8?B?WnZ2STJIc1owSUhBOHZ0WWtKcWl4WmtEYTZyTng3WFlrSDMvNXRUQ25MNHRs?=
 =?utf-8?B?N0pZUFlHTG56d2JWUnJaYktSQXhBaVVQWmppVHF0V3hlUHlJUkpZbzlRRktR?=
 =?utf-8?B?T1NtbWxVYnArbiticEJuUlYrNWRxM0xCMC9CWXJpR0EydTM1b0JwdS8wYTE3?=
 =?utf-8?B?VlMvTDV5M1ZZRlpUL1NPOHlXS1ptWFJ0NzNpeGx5bTFFMTRKMWZYdzMxZHJF?=
 =?utf-8?B?d3ZzdzN3VFM3V3hvdGQvU0hPR2FUL0MxUFNtb3ZJa2hUZ1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUIvTkZNY1BKY08yY20wai8vMmsvekttUHRSSFd0N3pNdE1rZTVuWWF1Wmx0?=
 =?utf-8?B?S25rK0pXYkFPcU9WRU1QZWRiSEdrRkV6K2p3L0J5dXpvK0xwTDZuUTVyWXRP?=
 =?utf-8?B?Zi9TbXdid0hVSnMwSGV4QWk0OFUwcnBmRnpycDFVRC9KVVdTZHV3YXlZQkRk?=
 =?utf-8?B?OXd4UWUyYzFRZDhtOElyeTNGb3phZzh4bHFyenhmbUJrb1ZJd2dLb08zSzZF?=
 =?utf-8?B?ZTIyWnJWRHpmYmFaRXdDcGwyaGNRb0dFbzQwQ0p3a1hGZHUwYXh0cWN5SFY0?=
 =?utf-8?B?aVVITGNIbVBveHZacENXand1VVg1MTJCV0tYVVhleUM4cmxpRmd2R0RxNjNK?=
 =?utf-8?B?QktTeHBsMXZpUGtYTWRSaU5pR1BmYk16ZWpUbW1OQlh1QzBGcFdLTVJaSCs1?=
 =?utf-8?B?SklwTmUzWlhmZS8vZEMzNzYrSzBNNTZDS1JtMHp4TzBKMTJFQVpGMWowL3Vz?=
 =?utf-8?B?eTdGUGJZcHBkaW0zMEs1bXYrK29BN2hzU1RBZ3o5Q0xoYVF3aVY5THVVK0ZO?=
 =?utf-8?B?RFMxV3lCVDh4SzZ5dHhLU1pFclJyc0tNN0EwbEdKQ0JrbTNMYW0xcWJiZ29V?=
 =?utf-8?B?cDh4Ulo1Qk1rSURpZWtPb2k2OHlqSnNtZ2l4OFVmOUpzNVFiUzUrSHUrMEoz?=
 =?utf-8?B?Ri9JZFRLOWtTOUN4bXdncE9TRFVUVm1DZGwzSWUzeFpXWDFHWVRyd1pBTkVl?=
 =?utf-8?B?SW5IU2VGclRpaEs4Y3lDWTg5eVR2RWpuUEJBb2gwVzRaR0dRZlhwQVJwam02?=
 =?utf-8?B?VytCaE9xWWpSdFhCaFlCTldLYWlDV1NLREQzZTZXdVdvLzNRTmM4WHlRYjcz?=
 =?utf-8?B?dDhuaFlJbm44b082d3ZZUUxFOU1aV0hBUkdaeDhmRzhFRVB4cWMvblJCZGxp?=
 =?utf-8?B?bWhoYVpEcVpmTndJUGZEelNUZlgxZmxrYzgwcWt5Y2VQYm94YU1LOTF6Y3Q2?=
 =?utf-8?B?UmN5VXR2empxTTlVZVE0M2Z6ekRTMVFZbDhsS3YvZis4Yi9EaHpmdTNoT1Nn?=
 =?utf-8?B?dFJtTEpHYlk3dldUTjdLcWQxbUlaM0R1Y3ZSRFJpMG0zNmdpN0RjL2xzM0Zu?=
 =?utf-8?B?Rno5cXArNFl2ZjlzbytiYUNiY1I3ZXozd21HbGVSTVdOMldqOGNHTHJJbjll?=
 =?utf-8?B?WEZqNHdYWS80R1R1TWsyK05Ecmc5L0U1cWRXUFMxcHVGNk1XeURJSCtLMkVV?=
 =?utf-8?B?dGI4dDZjZ3ZmYlVYUlVFL2FYQ1p6OUhuSmxVTm9HbCtKVVQyVFZLWDh2YVFW?=
 =?utf-8?B?Mk84b3B4eFcxdlRpWXdKeUFvOEk3c1Q4YmhRVVVCbnlnWkVwdVIwdWhkdDJS?=
 =?utf-8?B?ZGxmRjR2dmFuampSOXVNNGRJRWdraEY0UEhGcG9kQUQySS9FbjBsRjR1ZW9h?=
 =?utf-8?B?b0dXbE9mMlNOcFhJcnFEZ0lHd3QyODBpdk5YaU1NMTM4eTJnZGRraTYrREFE?=
 =?utf-8?B?d1NXaVFkakJlQy9MeUN1QWU3a010TUtIdjZZR3Z6eGY5Z1FlWGxNaDNrc3c5?=
 =?utf-8?B?SEorRW5ReEZuVUJGSkVhNGM2RmVWa1NCdDR6TWVaQW1ZcmhDR3B4MEZBMGtG?=
 =?utf-8?B?Q3ZqdktoaFh5UjEyeWNUelgzWGNNdDROZjlybzQzd3RSWGhqYmQzYTgvaEJi?=
 =?utf-8?B?emxYUFJ2Q2FMbGptaVd3dGIyM2xrK3h0SmdSVkEvZzZzaDBtSEpzSkRRNlpj?=
 =?utf-8?B?eXpNcEpSQWRpVXpnQ3NLOVAxeHpFU1dyL09mTDlqYWdudnNTNkFIdk9xRVlI?=
 =?utf-8?B?T3FZT3RvRHpZZTgrTjArMXB0UHhTdmo0Uk9iTlBDenhHUW54VVE0THE5ajNK?=
 =?utf-8?B?SGU2QmVCelBUL2N6dHBILzJyZXVHZU92UXdYM1orK05WdmFJVitlYmdTVHg1?=
 =?utf-8?B?b1dyZHlUd1pqckJsVlVWbVpLVE5tNzQySnB5UzlLLytZbFg4K2xBcDJxdmtF?=
 =?utf-8?B?ZWJDOUt3L2hmNzVSK1AwcGszL2Rpakd5RmxCelQyZnZnTi9WM01YTWtIUWl4?=
 =?utf-8?B?NWlwY3U1MXV6S3RzRHdKVnJNQWd3aUhOWTRqa1Y2UkgrQnczZGZwdTZmaStW?=
 =?utf-8?B?aVduN3dCOWwwYnV0MHMzSXhrVkZYcWlKWEhTYWlWUk84dlBxQkg0dWlBckNj?=
 =?utf-8?Q?s5FbL/OQZ+NgzD8IP2Kt4g1Kh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fbd5173-955f-4cab-8ea3-08dd1ac536e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2024 15:54:08.7979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rxvwxBGdWP3/q64IGAlwgd9/nsIZ5pS1DSYyxKqpENsD+YcEWq56fgnc2OTf1+6ABDGg8Khf2xRzmFcJgxVeZ/hteM3EB73NguxO98hEne4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8369
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJv
dW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgTmVtZXNhIEdhcmcNClNl
bnQ6IFRodXJzZGF5LCBEZWNlbWJlciAxMiwgMjAyNCA2OjMzIEFNDQpUbzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzog
R2FyZywgTmVtZXNhIDxuZW1lc2EuZ2FyZ0BpbnRlbC5jb20+DQpTdWJqZWN0OiBbUEFUQ0ggMS8y
XSBkcm0vaTkxNS9kaXNwbGF5OiBBZnRlciBqb2luZXIgY29tcHV0ZSBwZml0X2RzdA0KPiANCj4g
SW4gcGFuZWwgZml0dGVyL3BpcGUgc2NhbGVyIHNjZW5hcmlvIHRoZSBwY2hfcGZpdCBjb25maWd1
cmF0aW9uDQo+IGN1cnJlbnRseSB0YWtlcyBwbGFjZSBiZWZvcmUgYWNjb3VudGluZyBmb3IgcGlw
ZV9zcmMgd2lkdGggZm9yDQo+IGpvaW5lci4gVGhpcyBjYXVzZXMgaXNzdWUgd2hlbiBwY2hfcGZp
dCBhbmQgam9pbmVyIGdldCBlbmFibGVkDQo+IHRvZ2V0aGVyLlNvIG9uY2UgcGlwZSBzcmMgaXMg
Y29tcHV0ZWQgYWRqdXN0IHRoZSBwZml0X2RzdC4NCj4gSXQgY2FuIGJlIGRvbmUgYnkgY29tcHV0
aW5nIHBlciBwaXBlIG91dHB1dCBhcmVhIGZpcnN0IGFuZCB0aGVuDQo+IGFuZCB0aGVuIGZpbmQg
dGhlIGludGVyc2VjdGlvbiBvZiBhYm92ZSBhcmVhIHdpdGggcGZpdF9kc3QgYW5kDQo+IHRoZW4g
YWRqdXN0IHRoZSBjb29yZGluYXRlcy4NCg0KTWF5YmUgcmV3b3JkIHRoZSBjb21taXQgbWVzc2Fn
ZSBhcyBzdWNoOg0KDQoiIiINCkluIHRoZSBwYW5lbCBmaXR0ZXIvcGlwZSBzY2FsZXIgc2NlbmFy
aW8sIHRoZSBwY2hfcGZpdCBjb25maWd1cmF0aW9uDQpjdXJyZW50bHkgdGFrZXMgcGxhY2UgYmVm
b3JlIGFjY291bnRpbmcgZm9yIHBpcGVfc3JjIHdpZHRoIGZvcg0Kam9pbmVyLiAgVGhpcyBjYXVz
ZXMgaXNzdWVzIHdoZW4gcGNoX3BmaXQgYW5kIGpvaW5lciBnZXQgZW5hYmxlZA0KdG9nZXRoZXIu
ICBTbywgb25jZSBwaXBlX3NyYyBpcyBjb21wdXRlZCwgYWRqdXN0IHRoZSBwZml0X2RzdC4NClRo
aXMgY2FuIGJlIGRvbmUgYnkgZmlyc3QgY29tcHV0aW5nIHBlciBwaXBlIG91dHB1dCBhcmVhLCB0
aGVuDQpmaW5kaW5nIHRoZSBpbnRlcnNlY3Rpb24gb2YgYWJvdmUgYXJlYSB3aXRoIHBmaXRfZHN0
IGJlZm9yZQ0KZmluYWxseSBhZGp1c3RpbmcgdGhlIGNvb3JkaW5hdGVzLg0KIiIiDQoNClRoZSBh
Ym92ZSBpcyBqdXN0IGEgc3VnZ2VzdGVkIGZ1bGwgcmV2aXNpb24uICBUaGUgZm9sbG93aW5nDQpp
cyBhbGwgdGhhdCdzIHN0cmljdGx5IG5lY2Vzc2FyeSB0byBmaXg6DQpzL3RvZ2V0aGVyLlNvL3Rv
Z2V0aGVyLiBTby8NCnMvYXJlYSBmaXJzdCBhbmQgdGhlbiBhbmQgdGhlbi9hcmVhIGZpcnN0IGFu
ZCB0aGVuLw0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBOZW1lc2EgR2FyZyA8bmVtZXNhLmdhcmdA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgNDEgKysrKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
MSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAyMTMxOWY3NTNhMzQuLjdiZTJlYTExYjhiMCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAg
LTI1NjMsNiArMjU2MywzNiBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfY29tcHV0ZV9waXBlX3Ny
YyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAlyZXR1cm4gMDsNCj4g
IH0NCj4gIA0KPiArLyoNCj4gKyAqIFRoZSB4LWNvb3JkaW5hdGUgZm9yIFByaW1hcnkgc2hvdWxk
IGJlIGNhbGN1bGF0ZWQgaW4gc3VjaCBhIHdheQ0KPiArICogdGhhdCBpdCByZW1haW5zIGNvbnNp
c3RlbnQgd2hldGhlciB0aGUgcGlwZXMgYXJlIGpvaW5lZCBvciBub3QuDQo+ICsgKiBUaGlzIG1l
YW5zIHdlIG5lZWQgdG8gY29uc2lkZXIgdGhlIGZ1bGwgd2lkdGggb2YgdGhlIGRpc3BsYXkgZXZl
bg0KPiArICogd2hlbiB0aGUgcGlwZXMgYXJlIGpvaW5lZC4gVGhlIHgtY29vcmRpbmF0ZSBmb3Ig
c2Vjb25kYXJpZXMgaXMgMA0KPiArICogYmVjYXVzZSBpdCBzdGFydHMgYXQgdGhlIGxlZnRtb3N0
IHBvaW50IG9mIGl0cyBvd24gZGlzcGxheSBhcmVhLA0KPiArICogZW5zdXJpbmcgdGhhdCB0aGUg
ZnJhbWVidWZmZXIgaXMgY2VudGVyZWQgd2l0aGluIFBpcGUgQsOi4oKs4oSicyBwb3J0aW9uDQoN
ClBpcGUgQsOi4oKs4oSicyBwb3J0aW9uIG9mIHRoZSBvdmVyYWxsIGRpc3BsYXk/ICBUaGlzIGlz
IHByb2JhYmx5IGp1c3QgYSBjb3JydXB0aW9uDQppbiB0aGUgZW1haWwgZHVlIHRvIG15IG1haWwg
dmlld2VyIG9mIGNob2ljZSwgYnV0IGlmIGl0J3Mgbm90LCB0aGlzIG5lZWRzIHRvIGJlDQpmaXhl
ZCBiZWZvcmUgcHVzaGluZy4NCg0KPiArICogb2YgdGhlIG92ZXJhbGwgZGlzcGxheS4NCj4gKyAq
Lw0KPiArc3RhdGljIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfcGZpdChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9ICZjcnRj
X3N0YXRlLT5ody5waXBlX21vZGU7DQo+ICsJc3RydWN0IGRybV9yZWN0IGFyZWE7DQo+ICsNCj4g
KwlpZiAoIWNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpDQo+ICsJCXJldHVybiAwOw0KPiAr
DQo+ICsJZHJtX3JlY3RfaW5pdCgmYXJlYSwgMCwgMCwNCj4gKwkJICAgICAgbW9kZS0+Y3J0Y19o
ZGlzcGxheSwNCj4gKwkJICAgICAgbW9kZS0+Y3J0Y192ZGlzcGxheSk7DQo+ICsNCj4gKwlpZiAo
IWRybV9yZWN0X2ludGVyc2VjdCgmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0LCAmYXJlYSkpDQo+
ICsJCXJldHVybiAtRUlOVkFMOw0KPiArDQo+ICsJZHJtX3JlY3RfdHJhbnNsYXRlKCZjcnRjX3N0
YXRlLT5wY2hfcGZpdC5kc3QsIC1hcmVhLngxLCAtYXJlYS55MSk7DQo+ICsNCj4gKwlyZXR1cm4g
MDsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfcGlwZV9tb2Rl
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgew0KPiAgCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0K
PiBAQCAtMjY0NSw2ICsyNjc1LDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAocmV0KQ0KPiAg
CQlyZXR1cm4gcmV0Ow0KPiAgDQo+ICsJcmV0ID0gaW50ZWxfY3J0Y19jb21wdXRlX3BmaXQoc3Rh
dGUsIGNydGNfc3RhdGUpOw0KPiArCWlmIChyZXQpDQo+ICsJCXJldHVybiByZXQ7DQo+ICsNCj4g
IAlpbnRlbF9jcnRjX2NvbXB1dGVfcGl4ZWxfcmF0ZShjcnRjX3N0YXRlKTsNCj4gIA0KPiAgCWlm
IChjcnRjX3N0YXRlLT5oYXNfcGNoX2VuY29kZXIpDQo+IEBAIC00ODY1LDYgKzQ4OTksMTMgQEAg
Y29weV9qb2luZXJfY3J0Y19zdGF0ZV9tb2Rlc2V0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiAgCQlkcm1fZHBfdHVubmVsX3JlZl9nZXQocHJpbWFyeV9jcnRjX3N0YXRlLT5k
cF90dW5uZWxfcmVmLnR1bm5lbCwNCj4gIAkJCQkgICAgICAmc2Vjb25kYXJ5X2NydGNfc3RhdGUt
PmRwX3R1bm5lbF9yZWYpOw0KPiAgDQo+ICsJaWYgKHNlY29uZGFyeV9jcnRjX3N0YXRlLT5wY2hf
cGZpdC5lbmFibGVkKSB7DQo+ICsJCXN0cnVjdCBkcm1fcmVjdCAqZHN0ID0gJnNlY29uZGFyeV9j
cnRjX3N0YXRlLT5wY2hfcGZpdC5kc3Q7DQo+ICsJCWludCB5ID0gZHN0LT55MTsNCj4gKw0KPiAr
CQlkcm1fcmVjdF90cmFuc2xhdGVfdG8oZHN0LCAwLCB5KTsNCj4gKwl9DQo+ICsNCg0KQXNpZGUg
ZnJvbSB0aGUgYWJvdmUgbWlub3IgZ3JhbW1hdGljYWwgaXNzdWVzOg0KUmV2aWV3ZWQtYnk6IEpv
bmF0aGFuIENhdml0dCA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCi1Kb25hdGhhbiBDYXZp
dHQNCg0KPiAgCWNvcHlfam9pbmVyX2NydGNfc3RhdGVfbm9tb2Rlc2V0KHN0YXRlLCBzZWNvbmRh
cnlfY3J0Yyk7DQo+ICANCj4gIAlzZWNvbmRhcnlfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5n
ZWQgPSBwcmltYXJ5X2NydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkOw0KPiAtLSANCj4gMi4y
NS4xDQo+IA0KPiANCg==
