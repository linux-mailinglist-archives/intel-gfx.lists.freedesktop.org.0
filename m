Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD8BA0AF4A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 07:21:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7973C10E1DC;
	Mon, 13 Jan 2025 06:21:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EqSX+HB2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A2F10E164;
 Mon, 13 Jan 2025 06:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736749273; x=1768285273;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F7vSoGZR3Ql8JlgiD773cQl4rhcIjcf0OjRzRhB29Gg=;
 b=EqSX+HB2lhY6uGboV1f91xO5h3oRu+CmX7KAC6fp8d6UaqDLxJXIHmVj
 kOrXGuon0JqVGGslfwXnHAQLBTkmq7T6ys7N8QWX3hQi3DSk1SJ5xpue5
 i/5z/odITzu4AoazvAhlJAJwGGKh8UYrlGnyF+RNGhKaDVwkfC769ndV5
 3CUPXoBp4PIbfP+mou+4xEJaxQY3vou0HeuLwrr+Fy46WM/Kb00CTzlIr
 kIANWqODAxHT1zl5BqRbBZZIRjJuSAH0Xa5qVFlMkGhxA0a2dIpyKDu2d
 qN8ChQaexKND6Eze5C7hm/5bMupMErtgI46O32ib08ArGjorRvXRv68uo A==;
X-CSE-ConnectionGUID: JV6oaY2NQquIB38IXeGTJg==
X-CSE-MsgGUID: Laqew78qS2G3xEMD+tYCpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="36897599"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36897599"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2025 22:21:12 -0800
X-CSE-ConnectionGUID: PgeBqpL9QeaX/iAXelEKeg==
X-CSE-MsgGUID: ispJXmWlSU6nzvsrdEhqDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135257041"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2025 22:21:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 12 Jan 2025 22:21:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 12 Jan 2025 22:21:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 12 Jan 2025 22:21:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v6z2Cn4s/0AOGORifge4Exqo2Ibf1PgDmG5+twzM39o3I6H3998TOJPsVo12LSBZZUDXi1dJbaJ1SJYPmNI1HO8NgUuSWSfThXNz9ajYiVwnexkaTbKcqQnHI4OC64ijiwZ/46qv5jeqJK3QvKFVQCd548crReSl+ZSzvWrgke7OkDFvKA8a8LIjsjdLpI5zqkIhWbdHtwngtMePE1HBS9tgaQjJgiR2R/vdW76NgXmbXV5F4mkX91OOo3KajL5X71xnIgq6p0Gi5Dka/GENOkcqaP9vJcl8RPdVZwL38c4wvjUai5Xc+gO45Le6IUhjOs6/5KzJu5TtAKlDPwZD/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dW+x98w14snUAJHXuzKCSViFTyZcGA6yGwp7WWNLz1Q=;
 b=urQK+E2RpCkgo2vDihxmYvF7zSHkfYzCCG6bOhjLzPGSYrJN3CgD5lhaxCibWK46E/VJ2MF+m8jI3S7Tr08ym0gtp0FkO4V56FOIWH9rG3KtCVXiIaRKgyZK1FbQylAIT5e+XMsARqoq9clpLiIliBrh1kcbSRCz7BfKf/P2wG2mbj54XPtAvRzLhP4T79DAHq6xH24ddSZQFCL1etQ+2C5T42P1JIkUojmoJhDRVyGpsGkvDriLkpJTjf0NxA5I5HwDGN2kRX9HeR7vVc7Vd+OgmwUI0CZQ6IpBhfVr5wZVOACIXHhrP59NiLVJBCUyrWfMJRvfTUhVketemQK4Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7211.namprd11.prod.outlook.com (2603:10b6:208:43f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 06:21:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 06:21:04 +0000
Message-ID: <afd0e239-26ab-4d93-8151-f18a706aa31e@intel.com>
Date: Mon, 13 Jan 2025 11:50:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/7] drm/i915/scaler: Add and compute scaling factors
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250108123541.2101643-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250108123541.2101643-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0125.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7211:EE_
X-MS-Office365-Filtering-Correlation-Id: 6972933f-90bd-4e70-fbbb-08dd339a753d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3RsYnh0cjJmZ1BKWko1L01LZktDRUlpUnR3UE8rcGVraUFlSEFtc0t6OXBC?=
 =?utf-8?B?cU9OU3REUTc5NmdpZEdxbzhjdlY2eGQySUV0bk8zaXN5UXZ6UzlhRVV3NHVR?=
 =?utf-8?B?T1hpTUxLMGJjcHNKM1VCVnVDNEZONHV2V3pGaUdaNmhqc0RFT0JrSTJITWN3?=
 =?utf-8?B?RUxvQzJyNjlwRnp6a2oxSFhSZ0dUR2VaQ3RsemIvVUljR3JJMDlHT05YakE5?=
 =?utf-8?B?WVNXMGNZa0kxcnhvOXRSZVQwRXljcHdKU0M2RUpLRHZZUGkxSmkvbmQwYStl?=
 =?utf-8?B?ejhmK2hFZk02ejNzMkNpT2k1ZkNOVXVTRDY2eDJPTjFWTEtydU1ycmtlRG02?=
 =?utf-8?B?bGdOU1NhdFhONHc1K0lzMWR4MzRFa0o2UkpwWGd3b2xJaVVRM0R6aHRlOXdq?=
 =?utf-8?B?Z0VXODgySE9PU3lyQ3lwN1pCSFdnbThCc04renZNQWxSKzlWenVYQVQzdjZL?=
 =?utf-8?B?d2R2SmFXbTROUEVCa2k3YzRCWVF2aXpsckVHMU81Nk43U2hiZkVJellmb2RB?=
 =?utf-8?B?c0l6d1gwZ2xaRUhYa2hhc2poZS9lcUpRSlhSbjQzWmE1TVNpbTA4Ym5UYkV5?=
 =?utf-8?B?VjJ3cHdMRjRoVGFGblEyOWpBeGxuV01xSWNnaGtkRFdRdFJaZXJUVE9qY2Q3?=
 =?utf-8?B?aDM0K25Jc2hpeFFaSFpMMWQyV2ZhVVhXUXA2Sk9qUEI1UVZyZjR2SVhRRXB6?=
 =?utf-8?B?S29IRjV5NjBZMTBiUjFHVmFFbXdxQ1FUYVBkSk94N0c4MytBREErRTdEdXhp?=
 =?utf-8?B?ckxBM0VSOTlZaEV5bytwZWxDMG5kYjdtY0QxS1d4VlNvWTZQS01iMEw2SENk?=
 =?utf-8?B?cnNGZjM5d244eTJXNlNEQUlKTGtRc1QzTzZiSFluSTJzdjBSMC90NGRwRElX?=
 =?utf-8?B?SVRjZEkxVlFWY3loWitLZGNMOEZ6SzBUWHBicHZRdWc2V3N4VjFmVCtZaWZz?=
 =?utf-8?B?MkxBa1k1TE0vMjloVkhaaDNNaWZHeVpnazJDVkNjb0hDMEdTMUkyakkwRjJl?=
 =?utf-8?B?dU1LcHZWREpmeWsyZkVuOEIwZ3d5Ujd0cTg4NDZsb1UzOWNadFZwelVMNTNY?=
 =?utf-8?B?ekZpZ3cyOFFNaXlTelpiU1lxbnBtSjZGSmpIVzE1MW5JU05rRXpBN0E0S1N3?=
 =?utf-8?B?OTU0SS80TU1mNmtOSHQyRXJOOEdIV2JPZnMxbHNaRGgyUklvdFZmR2ZoL0sz?=
 =?utf-8?B?UGlQemNaZ0hOeUx2K2lDSUdWSU1RUU5kQlpKL1RXQjJUQ09TQVJhL0VTYWhO?=
 =?utf-8?B?MmRmNUFrcTFFUFljRGNGMWRQd01lTzB5RnY2elJGQlI5VVBwM04wSEdOVFV2?=
 =?utf-8?B?ajJ4WU5MVWtWYUdoUlZyek1WTDBwTHVxQTJ0S25EaXpIcjBDOVUzaWljdDIx?=
 =?utf-8?B?ckNqVmE2UUlXWGV6bWx6VEkyb2NLNmRYQWZOckhGQ1FMSlhicHV5dVhXYTFj?=
 =?utf-8?B?SFNxNzZGYm5ZSTdBdm9DQUVyczV5Y0xCaXRVOEpsZnMrclhSZElQNElTN0lF?=
 =?utf-8?B?SUV6dlByWjNOSVVvRmZYc1RrUGtLQXJxaWE1SGpEUWRpejdFYnVZcFBHNWZm?=
 =?utf-8?B?Tzd1RFpCV2dPZzV5V1NjNGZiVDZYb0hlUzlGd3RJK0t4MVhHYlVHUXl6bVVH?=
 =?utf-8?B?UFNzSEhKbElJYnVxWG0xQXFNM3Q3aWpkKzA2MUVEaFdVM1Q5cC9uM2w2UEpq?=
 =?utf-8?B?b0ZnTnF2Mk05dVZJc2RCa1ZkY2toRTZ4NVlsb01YcEFoRXdGaHNBQ3RqV0pB?=
 =?utf-8?B?ang3Znd3MmxGKzhuSFRreS9ld2laMzdlU3pXNU9LalJnVUd2SVgxb3FuZ2NG?=
 =?utf-8?B?Zm9abSs1RGRiMXh2RjE5VS9id28yY0lDYW5JTnNKQmMvSVNManZmU0hta1Za?=
 =?utf-8?Q?bd0WBeUyUpuhL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2szbzlMY2NmVkpSbXpNdEthRis3VTM5NGxORWtQaHRqTEsxWHUrRVNTbVg2?=
 =?utf-8?B?V1dUU2VPQ1JMalFXTmF2cW0vYTJDSy9pbmhnWDUvV0dxZ0NmMkRUdUlxRHBE?=
 =?utf-8?B?Ynh4cTkvK2lieEJqRXlKaWZmNjFVWW5aZ3lSWXdLdmJFUWZCOUlBMkJzL1k1?=
 =?utf-8?B?Njlod1VQQm5oMDAwOUhsVDN1ZXdPV25PbW0yby96a1J6SjZIZUU1OEIxQ09X?=
 =?utf-8?B?eDl2R2dsdjlJRWw5YWd0RTNzSXMwQVV0TXVKcnk1bmRwMGZaZm1jSms3aWo3?=
 =?utf-8?B?UDVNYnVRMGRkTC9lcGYzZ1RVakJ5RjBOS1Bhdm0xaEtKWFVodXg1Tnd4QlVt?=
 =?utf-8?B?S0VQNjJjSUpTU1dkbFZja1Z6SlNLWWt2UHpTUCs4cjJlZmVHSDEwb0FKNjUv?=
 =?utf-8?B?clJDYlZHTzNiS21sd2N1eHliRnVGMDVMc0FWRk9MMVlsQkF4NFFxbm5mNjlL?=
 =?utf-8?B?RE1UZUcvdGdOUC83bFJzclZsNkRQTUtvU3pIa0cwb3YybHNJSldHeHlQWE1M?=
 =?utf-8?B?Mjc2dytoMmVuczFiYmc0ZkhDYURaZjE2cTZOZ2lqUGx6dW4xME95TXVuQWJU?=
 =?utf-8?B?K3FzaTY3UkkwclNNRTBlOU9SdEdPYUFnc3B1R1lIdG5BVXhmRzlReTVYb1hz?=
 =?utf-8?B?WWlHZnAvTTZxRCtFcTNJdG1lbktPUzlLcnF2VktPZTgzS1E3UjJYeU9nT29P?=
 =?utf-8?B?NGlDY1M0ZGhLYnUrWEV1eHJJVXpRanYxTWE1VlVnSnplaTM0ZjQ1TVFiQWJy?=
 =?utf-8?B?VGp1anE2emRkV0VybWxUMEsrNE5oNDhZaTNGbVdDNEVVb0FEVW1VcDJ5QXR2?=
 =?utf-8?B?bC9IYllsSGFFUmliTnBWRVJ3RDdjVEdKL0lmbGplTlQ0ZXVDSG0vSm9QR0Na?=
 =?utf-8?B?b2N5T2hRN3AzWkRIUUdzVk5PdnZiYi9IZDZBSkNSc09OR1piYUFQNEd5UDhx?=
 =?utf-8?B?cXVoWTlkTWErNm1IcXhHelZqWVBwSmdiV3lhaXF5OGhVR0xKMmdUQk80YUIr?=
 =?utf-8?B?akxWVHFCL1c1MncxMU9NeFEyNzBLc2NIREJVenZzWHBrQXJmSzc5bjZaN1dO?=
 =?utf-8?B?RGlzZEhtY3MxS0ZCeURLSGNDeDhabUZ3NFBXa1hFVFJhb1h1UHBWRWlNZWNs?=
 =?utf-8?B?UXVWaFhGbEl2Z1ZmZ21yY29vNStjWjNaeUc2Yy80QjlwSnhjbHVMQktjSStT?=
 =?utf-8?B?SU84ekpIcG96Qm9uR2E2Z1ZuV2lzb0Rrc25zNW5MbXBBWnJWK0laeEZiOHBj?=
 =?utf-8?B?endnenVJVmVpTkhnSTFvdlZNSlk0ZDRaT2dhY3VwN3NxalZNVEs3YkMwbzhw?=
 =?utf-8?B?VlJCTGNnaDNqaDNTTWFxZlZKN2N1SGJyNnVDeDduNlZyU2I0VldlTzdOZzhB?=
 =?utf-8?B?ZFdZU3BuNm5OY0RuMmNnemN6NDRKN2ppWG1HcHNSOTdsRWpFREwwN1Y4eTNr?=
 =?utf-8?B?cHFPVFlwVy8vUEs0VDN4Ykt5VkwyNTVsQWw3Vm1qVDVjUmVUK1RzVnRyOVN2?=
 =?utf-8?B?YXhsNmVEbGpiN0doZS9nRWo3QnlWQ2x3a0MwWWM4ZGE3eWVmbCsvV0NCdXBZ?=
 =?utf-8?B?Mm1lRXpOM0EzM2pLS21hR25DTEhsdmlzRlZaNWdYSFdxV0R2NWgwYS9IcTRY?=
 =?utf-8?B?NHREOXBBNjVJczZyNVZIa1M1TEs5R1BYM2hVYTFRd0VkdG1nb0x3Qk1NbnFV?=
 =?utf-8?B?VnVQR1o4eTdYQmg1aFM2NHZBTHhKZnZidFVxSEZucDkwZ0w5cmF3S1ErODg1?=
 =?utf-8?B?elJlYkVXeTV0elZlZHNTMjJid3FDcVcxL2pQaW42SytnUDVERTNJSnE5endn?=
 =?utf-8?B?QUVQdnpudlkwK2IrUVdqaDVNbG1GMUdlREVzcms1eU1NN0VHcUUvQkNhQ1lI?=
 =?utf-8?B?dGZ3NlVVa2Z2V1AwcTFTampKTy8rQVZQT3crdkFtc1F3VHROdnZPb3JPTU8v?=
 =?utf-8?B?bE5VSzY3YVo0Q29FR0hTUGpYS3ZlQXZlQXlPbTA5bTJhNng2eEpkTDVkM25v?=
 =?utf-8?B?TGN0RkFxcEFxL29uL1J6ZzlxM2N0WCtFUStPQVNmREgzTUNPSWFWMnVJVytz?=
 =?utf-8?B?T2FpTnI0dVFwTjZLbVNObDhjaWdmdHVMNnlLRCsvRm15VXBBcVVFNzJPK2gx?=
 =?utf-8?B?Vk9YZ0NyZjVwRm5rVFpNZDNYZWxVck9LK21mUUhMY3N6NTNpMk56M2NPR2FG?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6972933f-90bd-4e70-fbbb-08dd339a753d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 06:21:04.3033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HDXvgkjlqd4aQr+MslR3vGz6VgJW9GvNMsg3ECKmNqPPalrFBa6m/38n4jrJTaqakRTlh4edWiIzZ9mI3t0BCVtQsqNZYtO5vAwUUHiTy3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7211
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


On 1/8/2025 6:05 PM, Mitul Golani wrote:
> Add scaling factors to scaler_state for a particular scaler user.
> These factors will be used later to compute scaler prefill latency.
> Currently, only plane scaling factors are stored, but the same members
> can later be extended to store pipe scaling factors as well.
>
> --v2:
> - Rephrase commit message which corrects typo and information about
> scaling factor storage. [Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>   drivers/gpu/drm/i915/display/skl_scaler.c          | 3 +++
>   2 files changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8271e50e3644..603f292996aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -711,6 +711,8 @@ struct intel_initial_plane_config {
>   struct intel_scaler {
>   	u32 mode;
>   	bool in_use;
> +	int hscale;
> +	int vscale;
>   };
>   
>   struct intel_crtc_scaler_state {
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index ae21fce534dc..6c69545fe172 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -424,6 +424,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
>   
>   			return -EINVAL;
>   		}
> +
> +		scaler_state->scalers[*scaler_id].hscale = hscale;
> +		scaler_state->scalers[*scaler_id].vscale = vscale;
>   	}
>   
>   	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
