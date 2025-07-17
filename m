Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B409B0910E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 17:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DB110E312;
	Thu, 17 Jul 2025 15:56:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m+S09iHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D3810E312;
 Thu, 17 Jul 2025 15:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752767792; x=1784303792;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rc4kLTR09CbmngkKLF4ivp/xDs1WkUg4HKGj4M6XgQY=;
 b=m+S09iHmAVyaKmSJNv8NLPM/+LRW08OWBKMz/NrRfQgfim11Z+hzlnI/
 cjIfUfne/Xg2SpykOpYSP2JUuvU3iVJs9W6h5he8erz0R/DSM60D6jBkm
 1IaVuFLReqg7jWxSn5dK+2G8x2M+4tE7DJv7K8BdlfsequU87FnGz84ki
 iRYXv7RhsS/JvV/iVii3JohLdFtEbT0K79eINiyaEb7dfzc0H7KSksC/o
 GiZoAUQwj/N4UaR9IVtZlJGUx5qSbD08RMyz8VKghfyzy0cMs891uxPud
 nKIH2q5WMjvrzp+cJaNzfUgwYykeEujz0Bks+3vWPkXT3X1mNrcZ8HTOb Q==;
X-CSE-ConnectionGUID: qVPZFxP9TRiP+rr8/qGBcA==
X-CSE-MsgGUID: 2qbVYGwNSWy5opTy2+7+9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65619696"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="65619696"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 08:56:32 -0700
X-CSE-ConnectionGUID: OO+rM3cLSYCEQpfDMzt+vg==
X-CSE-MsgGUID: aN8wbVIuRjOA8MNyEUI/Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="157212197"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 08:56:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 08:56:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 08:56:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 08:56:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nbuaW5Foo5iJuIPdTLKsho6eL3SV4BQVX8Vr2Mz9ZyVAXI4XOGmP80/jYW5xJtXcD2ofQjhyhmt5NISubFB72uzrx1XIzpb4Clz3qfO60dIfIIJlemYpT4wxZo8IjheSBwAA08TbT1VtsA1kDXvDRfzb9/CU6xV8pvqU4vWIxcyn0HB4SejK09w4TJziEQr6C078C18rO98GvNiOvM/IrmM1jKu3lBMm9YC6bkKWjNnrifvVgzaFVFebweTDLuUEC9D66ppQJ2NH0eCyeM7c0/KBumsI4CnrPrqyXv54CVge3pcvXfX59pMJ/k/ZFLS4/0aYFs4siEsNIbQ4e8zvYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UHLZgUoPE1ozq8PqaHcgBTp7wFkRu5YK/8cd5NvLPEI=;
 b=AIWGRdTFRrXsaI9h80SdXCeetQR8IxqI7g0uhXgAl3RyCt62hfu/coaOTZY0Zf+juLsr9xMuTZC800InY0/+KEXsNUmE/zXqtS0wuhr8jgeKBaqKttFKv9y8L5vwN/xaBaSMeQHW1v6+RV7yHcw4RCImDaVy2MLhpjbu331MC/HTHXgYIPBVszsi3qY/+UsS1e2PMfqeA9pPa8eGh8ETNGOuZzEqbcdVbRo2F5kvlnMTg3jPrVAVuhNZAhKGyFBTbfYVVDWExt5s2asuEeZtbraGaRwXcJfsT+/oJT55W5LKDeVTjzWU8hjgSE1y+c1LZhFa/iTr5emZFYZffwo8bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7434.namprd11.prod.outlook.com (2603:10b6:806:306::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 15:56:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 15:56:13 +0000
Message-ID: <62f66373-78d2-48e8-a0c4-2bb6ecae21c5@intel.com>
Date: Thu, 17 Jul 2025 21:26:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Introduce helper for display workarounds and add
 Wa_16025573575
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <gustavo.sousa@intel.com>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
References: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7434:EE_
X-MS-Office365-Filtering-Correlation-Id: 7518ea35-d04f-4f5e-d265-08ddc54a74db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXVVdDJBVmZpZ1l6RGJPdndpM1hVWE1NZDg3SENUVHNtTWNtdFlyU3J2b1p0?=
 =?utf-8?B?aUxBNGdTQnBLSnFXeFo0M2lBQjN2QUxEUHlYcmlKMVJ4YisvQWN4b1ZpdG9F?=
 =?utf-8?B?MWpaM3Nndlk3TTJsYi91M21QZDdJTlZTc243NkVjeTVmV1Q5b2dCWWtTcVVk?=
 =?utf-8?B?Z29EVU92VDdDa1NlL2lwVTFYc3JUR3phcGJnL0N4ZUsrckZWd05rc0ZDaUx3?=
 =?utf-8?B?MDJrdDU5ekRtYU9YU0JoTHZOZFg0WE1KZHhySWRwUVhJQW5Sa04rNGR3TElt?=
 =?utf-8?B?Q3JqUDlMWGtEeEF0NjQ4eGZJbVVRejE4ZlNlemh3Z1FNNGdNM21velltbHhS?=
 =?utf-8?B?UkxoL2NCVytZbk5ZNnd1c2F3dzZTZ1BBbDZISEEyeXlLd3Nyb2Y4NU42OTJN?=
 =?utf-8?B?OHIvRkNHWnZwQlFYY2VhYmRhMS9EQW5Nb2c0RG5uVWFhNlM5azBsT1pieG1T?=
 =?utf-8?B?OWZUSENndG9xcUc5QlRSc3Q1RzllUjk1RDNFUHplcGFlOW5ucSt1R202Qlll?=
 =?utf-8?B?UFhBSGZDRGlPOUZuU3ZZOEs1M0YvdzZaVmpkNUk2NEJJeGsrY2xsRHhQS3Fv?=
 =?utf-8?B?YWlMSmhaVmFtU2NoaXF4czYwSy9DQUkwSnhKcHg0RGR5cEdaSDJDMDdUTEJv?=
 =?utf-8?B?M2tlK0loMFBQbmRQZG5UZnhxZE8yOWVNdVI5RnZYTG1vWlFrT1AraGxxdWtn?=
 =?utf-8?B?di9IZjR0Qzlva3dSNy9RZ0tLblB2WjhJelIrRllDUm40OXZGbFhKb2lhOU9C?=
 =?utf-8?B?cWlncDdNWmNQQnpINjczMnFJbGNDRThWZ2tPL1d3cXVrL0tWZXk1a1VtSXl3?=
 =?utf-8?B?ZDNSZllxbU5aRXBjVzBiWm1CNldoSVhFQTQ5NVRoZ3BGR0tiNlhUZnhnLzc1?=
 =?utf-8?B?REZzUHV6WW16UUc4dDNjSlV1RkQ1TUVjS2NOKzJMeHdFRHZldFlMK280Qmlq?=
 =?utf-8?B?THVjWmlBNlkzTkVGNWVxWEpWenFzdDl6NjdYS2E3QWhoZWRSa1ljQzE3WDJt?=
 =?utf-8?B?d1UxRTZXVnFPd2craktJTFhIZ3NHVGRQeGJlUmMvanBMQnlWWEFZVHBhY2lX?=
 =?utf-8?B?VE9GaDNkMzkzSkJjUFNCWW9HeG95aDZTakIxc0FsU1FIY3h2WmJMT2k5V3A3?=
 =?utf-8?B?MlVGaEJmN3ZORnU4RmU1aEIvRXFaODAxdTNBdkJaeWpYYlFScmNiTWkrckg3?=
 =?utf-8?B?RzdSVitIUzBoTURVU3k1NllKZUVQNzlBVkw5dHBVZWV1S1d5N3JjUWpBdy9T?=
 =?utf-8?B?MnU4bWNtS1VhWHVKMUJWQjFZemdOczAzdEZ0NENSaFhvZVBmRTZYUjdtYy84?=
 =?utf-8?B?N2FGb0VFUjk4a280UjJxZ21Uc0JXUmZScHQwODJ3cjErS0haQkJQL01SR0k5?=
 =?utf-8?B?SmhlU2tlV0RUKzJZRFNyL2oxeVJPaVM5Z1pMaWEydlJ1aTdRbUxPS3FNUzVv?=
 =?utf-8?B?RnJIL28vN2NpU0FZZkVOOEd4WWVOS01LN2JYTHV5Uy9SbE1rOTlkRlNpMFVF?=
 =?utf-8?B?b1NCTUdkcTNnazZaamw1ekQrekNzLzhPR2NKZ2IzcHlYTDhHalJHRWRSZmh3?=
 =?utf-8?B?ZE1WQkkrTGJGTUJxaTB4VHBLUnFxNXlXUE95aGJ4L201eDExWER3RkpoREhu?=
 =?utf-8?B?a0V3MkZEbmJFK0JqY3ZNNDZpTFBUZ0V5WFVPODJpVmRjcHRvTC8yTGt3dy9K?=
 =?utf-8?B?UVJhMTN6NU50U2FIYkN4UXNmNlZDNVdCOVpkamhHaGFxR1ZySEF6Z0xqdTdE?=
 =?utf-8?B?Vi9reVRXblBTaUdmM25lVi9td2krNUFLS0lGYXBqUzZ2VjUvdHdlY0lJSFBH?=
 =?utf-8?B?ZS9GZVFyY3Q1WExweVNlZHJSa2Y2L1ZhQUZjSm5VRDJHNGpDYUxFbkRxWTZl?=
 =?utf-8?B?OVUwMEoycm9RdWkwMnJ6UWwramtnUTRma2ZKZy9aYUphM3orbkxLOFlQb0d0?=
 =?utf-8?Q?Pko2P5DJ5FU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTV4L2VnVSt6NG9QdkZuQzJmYTE3cW4rVUlLcGdiOTZiSEoyYWY4YUIyb1RP?=
 =?utf-8?B?QlQ3d2ZvdDBIK241bVM0dGY4OGk2TnpocHNvaXFTSktLZkRjS09VZS9mUndT?=
 =?utf-8?B?NjJ1bVlDRGRkZy9rZm1DWnBsNTB4dzFuc0huWXdWeUhhN2dSbXV4L1RYNXFr?=
 =?utf-8?B?OWtlUURjNklmZ1p2SWh3Q0hEcU5FQkhsaXVBNVN3ejRBQk9FNXRIUDdQZjJr?=
 =?utf-8?B?V09hS3dLbkloWHZ0YkFGN2FXM0ZYdWJwdm1WUFl6S0lLc01FcThRUk9makVH?=
 =?utf-8?B?VFZaTXlqdkM3RzczOXprd2IrcDlaa2JMM1pHV2liQXI0SEQxRS9Ua3l2V0hR?=
 =?utf-8?B?Z1YvWXFGVVdvd292anpVOThka0dzSVJhbVNCNEZwUWUxZjBISE9uL2Ywbm9o?=
 =?utf-8?B?bHpkamoySXNHRHZub2pCd282MlFtamNpeFZJMW1iQms1ODl6M0NMZEYxMWEv?=
 =?utf-8?B?SkxQY1JWblhjNFkwUUpEYTVCYU9meUtRcks3VnZaS0gvcytSMmJKYktUTzNp?=
 =?utf-8?B?MWtoMFVYZk9zeGl5aUI2MzhaM0xIWlBGNm1uVmlHQUZCdTNCMlpNNEZERDAx?=
 =?utf-8?B?R2s4akllK1lab0l4eXREZzhiOW02dys2MnJkS2pGbE1FZjdlU1ptMk9sQ2pH?=
 =?utf-8?B?amhFVjBVR0NVWS9XbGdyT29hQ21EeXVjaXpyTm9WeVJMcjdjczgzbDhsR25H?=
 =?utf-8?B?cllZbkpTMG9wamxtbDVGb1ZtNHdWbUYrYkUxamNOWDRpZkRwNWVXUGsydHNQ?=
 =?utf-8?B?ZlkxY3dMRC94ejA5T1I3MGo1LzJ6aGRYekdERVJyRTNVUlpwMnNyOWx3b29u?=
 =?utf-8?B?eWluV2FaNlVKdm9JMlE1YWloM2F5RjRlL3RudUh0OW9PaVI1eWJ3cnZ1V3BK?=
 =?utf-8?B?Tkw4TXR5U0JNaGFSaUsyNHVsVnJsMTFBcFNMMEtMaFlqYzFFWWpqcE9XcmI1?=
 =?utf-8?B?emtuZmQrckVrUGtTU1ZHNmE1cXRzeHhnRjh5T3lrbEwwL3UrVWk5YUZBb0Jt?=
 =?utf-8?B?d1FoUzNKbXdvVU1URFJxZU5Hc0pWMFhHbFlXRGxPTGZtcHBZaXNpSW8rc3pU?=
 =?utf-8?B?emR3dGN2MElwVHZ6WDVhRnpkZnA0NTVHeUh2NEM1dmRudXhXajYrK0g4RjBQ?=
 =?utf-8?B?SlBpVjVZaEczeUxZamhpdFFJb0N6aFZRR2ZzcjFqQUllb1RpL2htN21ReFVJ?=
 =?utf-8?B?Mlo4TFM3RXYrUDNGekZURmZjSWdrYjRyV1l6bk9rck1qaWF0ME95YjRpei91?=
 =?utf-8?B?NnVLQjdXbkwzdmJvZDZvMTdScjNadVQ2d0JCUWt0ajkxcWNGT01NaG02eU91?=
 =?utf-8?B?a1ViVzFaZGxjc0NTQzcrUWxyb3Rzb1lIeE9EWnpOWDhESCtSdXhleUxIVU1F?=
 =?utf-8?B?RkE0S2xHc3ZXWENKeExuVEdLSVllY0VaTWswa0RvTzFwTGVrOVBHTzJJRWVt?=
 =?utf-8?B?TUxVM0gxYkxDeE5YZVRBUFVheVQ0ck1QbW8xSSszYTRUekZHR0VHZVIwMnhD?=
 =?utf-8?B?YnVzbkJRS2dQZzVVWlR1M3dWQUhVNDFrSVRzNldoZUtmRzRqdUVUYXovM1Vw?=
 =?utf-8?B?aW56YkRsQWVqZHZMM2FlRURnWTRlZ21GWUFWR1A2ZlhZNnAvYi9qVlh5U2Z4?=
 =?utf-8?B?SDZlVVpKcHpwNVJXcXFqMkZoWk5qaThzRHdxSWYybm1USFA1ODdibFJiTHlr?=
 =?utf-8?B?Y09tS1JjaGdoUFNLZm0wTVBUcm12bk93Y2Q4RE9NQ29COE9JZDBXWTB5MDlF?=
 =?utf-8?B?TzNSSE9rMGhGaWFMNEV2Rm00eW04V3dCejRDNFRiSjNLWStZODViRHMyZWpn?=
 =?utf-8?B?aDBKVnZ6Rmx4UHAvYkJveGxVTTRiVDYxTkQyVVF2V0cvenJJTkVNYUsxMmRj?=
 =?utf-8?B?WXVRUWFJTWJmdEpxODU2NGhRdVFtWnRwby9PWHozNGpsWk9sZVBseks1VTNa?=
 =?utf-8?B?OGU1SWcxeUpCMzN5dk1COTJlbkdYY2hZTlJJK3kyQXd2QkN6ZVNEMVN1MVNH?=
 =?utf-8?B?SXpqVlNKWWptaG1yZGN1SGNaNTU1QzJmL1Fud1gvaFBCcDI3cEoxU1RIeE0v?=
 =?utf-8?B?M0ExS2owcEtlMjJ1NXYxenQvRTM0SXlnc05EbWwrTDBGQ1VJLzI0Q0hCY1VV?=
 =?utf-8?B?TW84VWVWeFlCS3B1Kzk1cUlrZ2ozenRQMkF1SkowNnlYbUtCYWtoREtsK25E?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7518ea35-d04f-4f5e-d265-08ddc54a74db
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 15:56:13.9091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Dl6H5W9PHdqAW3zEk4pgKlAQDmK//snas6cwJ4djCSxsS3MJ7MxhVd5qdBHja+x+/itGNThppMKZn/JR/Qz+FMkb/OqxyW040VJ82JvOSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7434
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


On 7/11/2025 9:48 AM, Ankit Nautiyal wrote:
> This series introduces a generic infrastructure for querying display
> workarounds. The goal is to simplify WA checks, avoid open-coded conditions,
> and make it easier to extend support for future workarounds.
>
> Patch 1 introduces the base infrastructure using an enum and a central
> helper function. It also migrates Wa_16023588340 to use this new interface.
>
> Patch 2 adds support for Wa_16025573575, which applies to PTL platforms
> and requires preserving additional GPIO bits in GMBUS.
>
> The series is in response to the suggestions to unify workaround handling
> and allowing future automation or generation of WA logic in [1].
>
> [1] https://lore.kernel.org/intel-gfx/7f079861f91861e9e895240cd3272f6e29deab7e@intel.com/


Thanks for the feedback, and suggestions. Thanks Jani and Gustavo for 
the reviews.

Patches were pushed to drm-intel-next.

Regards,

Ankit

>
> Rev2:
> -Remove MISSING_CASE, use drm_WARN.
> -Simplify macro for display_wa.
>
> Rev3:
> -Print missing wa_number.
> -Add more documentation for the WA.
> -Extend the WA for WCL.
>
> Ankit Nautiyal (2):
>    drm/i915/display_wa: Add helpers to check wa
>    drm/i915/gmbus: Add Wa_16025573575 for PTL/WCL for bit-bashing
>
>   .../gpu/drm/i915/display/intel_display_wa.c   | 27 +++++++++++++++
>   .../gpu/drm/i915/display/intel_display_wa.h   | 10 ++++++
>   drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>   drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
>   4 files changed, 70 insertions(+), 3 deletions(-)
>
