Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74660A6858B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 08:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA94010E2D4;
	Wed, 19 Mar 2025 07:10:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7KeaSgd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 763C710E2C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 07:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742368235; x=1773904235;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tn/4MHf8m95sA53ENc3TZGWQJqbpA5kkUXDaQ4agF/E=;
 b=V7KeaSgdNvAVQthoDaENj96AB3d8K4SL6AA/SKJfjMjwWthr/i9tRYGk
 0DYbcHs7SXiCsimQrwRfa9U+mwLLXPdJzsjzhrnqapbam6uplZiS5RgS2
 t0k+Zvp5lZil2Beei190vHq/mGROEPPvLUC24A9CrxiJLeQ3erMkqbPPX
 n2xOkS6oUzv+7TjACH2KuadHrhBFSY+LzSeRX5GPgzl48cV9AFK1V5CHz
 5DONYpsNcDmbwBT8yPfZ5T4VSBRgG24kEkCCv2s10jI1S9zU7/k6QBe2H
 cnL8pC3ZPTjU9RWA4QEkID83XpZwBOh8KB0cPDR01f/VVB4xvDSxPjSxS w==;
X-CSE-ConnectionGUID: rCiDUSjKQm6Sd+nI0ANP9g==
X-CSE-MsgGUID: fns79kWWQDugjkJgS3WXAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="43405109"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43405109"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 00:10:17 -0700
X-CSE-ConnectionGUID: gWCmi6UaQw6CeL/yCwy/tg==
X-CSE-MsgGUID: dyIBMhicRe+7WggEZVCiig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="127540434"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 00:10:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Mar 2025 00:10:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 00:10:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 00:10:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lWv03+eVtx8dYYN748ExoFnVjdRQR4UkCO8fw8FSNf0g1yYUEqo8b+hHK5U/CyVq69HaiIvyZ5sLHIc36Yd+L7PYChFsE1IUmIGRnuUJteFhN1vASC47gHJvABIoxf6MH+NTFyxTYMZDIVIK3ZWXKJl46HEnGr0l3p0D2l7ifn2kljCEtLLyk3Y2Q6rWAThC2C0VP3LSk6VlhbF4Xycyfax8GLYcfb39sqRA4ou5G3sxO4zyrWl0WlHj3MV6ShVXlvp/Z8SHztLqoEWkIN/nUlRwpLQdJztj6fVe1W+COhRypdWMLfoC1h3OSr2Ob0WcONtPJaDW2KREYX8xwvkHtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZsbokYlJh5bIRINKUgOvJIoeQ7kTJaFs3Z4mo2wWdVs=;
 b=MX+baw00g37JyL/Vym8xiAMQ7AhVVetYP53R1fgmRisHQEl0VtG4OJ1dj2cJWzYUQa9s9lwNHkt+tNJx4Y+TqhgiuW+kHDDYE1I/7akEJYQ3JbGFlqeEbvIhNeCDLPjTd5ELR+Aok1OZf/bpzDeu1Lgx2SChcUag7+DsUHINLW1wFgoJfNwVSmpiLIa4v/ZrumQ0nPuM4v+U7JWl0k1Fv2XyXrPKIoFdnRB69spdV7C4MoXjyY5YdgUMzgKCWlttdlnkyqBRJwvEdmKWkrjWzanP4o6Szl9W40eBamQcFwZBNW0B3QCicGd9IjcT7O+qc2scWn5gDtM+i3PXWrstEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB5700.namprd11.prod.outlook.com (2603:10b6:208:33f::22)
 by IA1PR11MB7774.namprd11.prod.outlook.com (2603:10b6:208:3f2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Wed, 19 Mar
 2025 07:10:13 +0000
Received: from BL3PR11MB5700.namprd11.prod.outlook.com
 ([fe80::7fe7:55d4:2fc0:6398]) by BL3PR11MB5700.namprd11.prod.outlook.com
 ([fe80::7fe7:55d4:2fc0:6398%3]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 07:10:13 +0000
Message-ID: <41a6287a-ac32-4d29-9e22-12a564b74bc3@intel.com>
Date: Wed, 19 Mar 2025 12:40:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [v3] drm/i915: Disable RPG during live selftest
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>, <raag.jadav@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>
References: <20250310152821.2931678-1-sk.anirban@intel.com>
Content-Language: en-GB
From: "Poosa, Karthik" <karthik.poosa@intel.com>
In-Reply-To: <20250310152821.2931678-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::16) To BL3PR11MB5700.namprd11.prod.outlook.com
 (2603:10b6:208:33f::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB5700:EE_|IA1PR11MB7774:EE_
X-MS-Office365-Filtering-Correlation-Id: d22a5951-6cdb-4f36-93ee-08dd66b5175d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlE3ZDl3bDdobnRwekpjMHM0Ykh5THZIZlR6ZXN0dG94ejA2aGlPemhSdGg3?=
 =?utf-8?B?MTFnOW5vL0VvWGlIQmREcElxVTI4ZkdHTEs2MjVuOEZVdVF2K29KS1ZKZHFY?=
 =?utf-8?B?MlhpMFNneUEvcXEyazJDOTFGQm5EaWN2NUw1dkt2azNiRW1UMytycGh2MXdD?=
 =?utf-8?B?T09TcDFNOXV0bzhzZ0w3ZVBhWDZaaTNBWDh2Rm5hMUdmdzZoV2tJYmwrcElE?=
 =?utf-8?B?dzhzaUhIcnVCRU5Yc25JSVJaQlF4NXJRUTMrSUY3WmpTblpSUUZ4RXJmN0Fk?=
 =?utf-8?B?TDZvb0xMalJnckp6bDFXR3p6djg0cE44RHpNNE4wenJlM21kSGNId2xQTTJU?=
 =?utf-8?B?S3BkN1hidlUwRHlpZU5DYWRYcDFwbG9hWmF6eHFqZnQ3c2VzUUFYNjNxRVFF?=
 =?utf-8?B?OCs2WURiU3JDaFpnUHVxdDdEbkU3a1RPaFVmSUhsbXppRmNiRk9jcXkxelcz?=
 =?utf-8?B?QnlJayszZW5wMHZCaStFN0lrYkVNMDBwZ0gyNitBYUFBN1BJTUVCN0FPMWRW?=
 =?utf-8?B?c2psSkVsUUFYYUVwSFlBaVZJSEVnQzEwTUw5UXdjbzQ0cjF3QVNXTzJmaWR3?=
 =?utf-8?B?V2VwRTluaUhBTlRNclU5SmV4M3dGVXhFMklyc2pNanllRkR2ak10L2M1L0I0?=
 =?utf-8?B?RHQ1RU1vUGJIN2g5RFQ3bHJ5ZGNaZzdkV0lieE5oL0ZjY1Z3Zkp4UmxwWkcx?=
 =?utf-8?B?NnRtNktSOWc3bFJIQVJhcFhLUStsSnBYa3h3TXhiZnA5MmVkMFArcTdVTUFM?=
 =?utf-8?B?eExlSmthbzBjOHo3SFVqdlZzQnk4OTQ2SDJ1UThhRkRlVm1iL01IRFJlRFRI?=
 =?utf-8?B?ZURGQjhwREkzbFpIZGJlaSt3WEVaZ3VCYU15am5UcXQ1RXRLd3BrcXhORFcw?=
 =?utf-8?B?TUFYTUNmb2NNV09IY25nSGlJNTFNQkJmU1ZtcDh2eE5sbitCNTljTm5OdFNV?=
 =?utf-8?B?ZzJ1c2VjcXU0VFFsZC9RRHhZNWdTQmpvUFM4Uk5raUhMMjZYRVV2MEVJemg1?=
 =?utf-8?B?UUd3QndJMmRwdTZIU0NILzRyUzBURnJTWGtPS2YvdjgrZ29EbFJYQ1R5dnFV?=
 =?utf-8?B?MTdJY2hwOEduTWZ0RDcyeWN0Tml5VGtXUjhNNW1HelRmZGpvMVlTYjRQWEJi?=
 =?utf-8?B?M21kd0dvOG5jb1hla3J3Nk4wVjJ2Uk1OTG9YaC90bzdZL3dOQXhTVkNIaDZi?=
 =?utf-8?B?K01sa3Zlc29tVWszdnJQaVNjTjVjbEJ4RlpKK3lZQXBNTDR0VjRmWnh5bW9i?=
 =?utf-8?B?djIxQmk3YU1XSzl0MlQ5ZldYNkdjTk1JbTBqSFVtazEyOXVwZm1qL1BaN3d0?=
 =?utf-8?B?MzREbzBEcnZXbldzYVJWd0J6MDZPWHZhNG5EZHNFWjZMK3JvWmFXbDR6V1dw?=
 =?utf-8?B?N3grTmMyWVNJR0FhNCtJRFQxL3RST3VwMUozRUQvR0ROU096N1NldjNtVmNK?=
 =?utf-8?B?ekcvbVd4L0VaZ1JqeFkxK0tFNEU3dTRjNUtYNjVLNHdhTHc0dUIyMnFlOW9Y?=
 =?utf-8?B?RHludU9USVBCY3B0ZDdCc1Z6MHY3U3ZmZ1NWL0VJUHRyemtOdSt2TW1PdmRK?=
 =?utf-8?B?UTNtc1lhdmxKRFBSUXNYSEdwUUkyV2taWjFRTlg5L3lxYmtXbUFESUtwSGpZ?=
 =?utf-8?B?d0x4SUVJRlNMVVNTaHYzVXUxNkhpYm5uL1AzeTN0dGU1eFErejNmcjl6Y0cv?=
 =?utf-8?B?NjNSMGlMY3AxeTloY014ZkMxOUVMUDBMZmNPRkphTmJwMGc1TCtGdUV0ZFBi?=
 =?utf-8?Q?0jlODc90V3gxd5oeOXJIiBBEixCkhghTlVza+DU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5700.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVI4eEI0WkozcnBxZ3FnNk8vdFE1bGR0MWJmQlpQTG5mNVEvM2ZrMDlSY2l0?=
 =?utf-8?B?YWZuOWZWYWFtK1I3Q1JtOUtWMnkvc2JTNytxbi9oeDNmQjhOcmxlWm95UGFN?=
 =?utf-8?B?NThqcTZCSXU1ZkpMaUFxc3VTcVc0NXBmd3JsYnMyejVqRVk2VVo4TTcxRVI3?=
 =?utf-8?B?UnlLRHVQZzQzcytxWWxVdlVoTVJJZDg0OUlBSEN5bmZ5UXJSQVBpRHBPK0Ex?=
 =?utf-8?B?N2JZbWZrem9tbUVnTDhiSlNzR0ZnYndPUjBQdkFyUWJnZFVSZHk4eDlDRXpq?=
 =?utf-8?B?TXlVeU9ySGdsVEdBczNqZ1RSTFJNbGllYU1UTFlXNzhyQWxucWdsTkdBbito?=
 =?utf-8?B?cFV1V1lJMjRCRXVqK3hmT0c4aHpuZlFRYzYyeiszNUlpOWV4M1k0VkJRSkQy?=
 =?utf-8?B?K1NZbTl1RDV0Wm1RV3RCL25BTnRCaVlaTGFlRHdHZW1DTkhlK0xSMi9FSk9F?=
 =?utf-8?B?SmJTVnNXTCtiQnNlTDhaRk9ab0VNeTU3cllzeDFsWGZzZzJsK2Qra3ZKcm0r?=
 =?utf-8?B?M3lFOTdDSDVuYml4TjZ3cExld3BlUmxwVmlkeDlOQlZGZi9kUkdXc1NMVXVB?=
 =?utf-8?B?aTEvZkdPNG1DM3hIaWNjYTFDZEhlNGpPT0o1WkZTWDFxenIrb0dTbEhDSjUz?=
 =?utf-8?B?VGZWTDFoUkZFUmRCYko5eUE0VjR1OVl3cUVYNlVRQXdlM21kYnR3MDB2Q01j?=
 =?utf-8?B?S09ybVFGbEJRc1drWnMyemh6bFhLY05oTUpPWGF0SFdxNHNjcWgxL3F3Kzgy?=
 =?utf-8?B?TWpPNFJWSDR4WFkvamRidmRWRGxLRlh5YUkvLzFNeXhGd04zallPeTBKRnBV?=
 =?utf-8?B?cGRvQ0F0U1d6MUZtU01vWS9mZDBQeWE0ajczcUpwRzFFU0dDaE5UdDl2V2Fp?=
 =?utf-8?B?WW5tcld4RXhGTHJIYnd2U05lTXMvRzhpTlhRQ0kydjNzdHJvNllvRW1DSmph?=
 =?utf-8?B?Z3FtMVVTUzJuVklhSVVuZG5qTzFoQkpqWGRkUDZ1cmhzRVZ3ZjhTbUxFd1By?=
 =?utf-8?B?ZEdRNzdIZ0tSWmxUNk0zbEphWTFXeUZzRENJVktITmd6RmdqVDhZcFg1ZVJI?=
 =?utf-8?B?SWlzbHAzTDJuTFphUEprUFByUXl3ZHBacUp6QkZwR0QzUFozQnBLYzcxdGdr?=
 =?utf-8?B?SzJTRjRLbmt3azY3YUx3dEdYWW4zMGs0Mk83T0ZZazBGVmV4TUNLanc3ZXl0?=
 =?utf-8?B?MmlSQW90QlhsSlVRZTNwTVQ3R1BSTHg1R0ptTnRITHJDeG1JQ0ZKNE5KQmJD?=
 =?utf-8?B?aTRISkc2OTJDVkw3c1FOd2Yza0FHTEd1UzlzWVFjU2lIVWt2d1AxT1dpU3ZG?=
 =?utf-8?B?U3F6SnhHZTg1VUJTWHFPRWM2THlqOUE0azQxMmtEd3NZTmxBSDBlTnVZVXpw?=
 =?utf-8?B?cmdmSDdlUkk5T3A2aks3bW9BM2hkZ3owZXlQT01KY05SZklXMktXdzNDMVZm?=
 =?utf-8?B?QXlBcGNEVHZPekdNL0ZKWGZ4clR6ZmVOb00ycHZTZVdEcHYrL2R1UUs0dzd4?=
 =?utf-8?B?RkFrYUMrZnA3d3hJMGZBNmZxOUdQT2dIMHRQSzk3NXNFZVdCNUw4TDIzTXRi?=
 =?utf-8?B?aEtXTTJEWWE5UFZpcnhIRmNXTjZFbVp0TExLNUdmZHRUVHJMMnNhSjM3cFdj?=
 =?utf-8?B?Qk50a0VaTUZKbjdFbTRka3lvRHRacHRvUGdnNkZnQldpSDl5UmtiZ2FaM2hZ?=
 =?utf-8?B?MStRR29ZQXNqZ0NZdXh1U25BUVdNb1Azd1lIUllaazdidGFYYWlQS2puZkJB?=
 =?utf-8?B?YzFVdFd4WGdOQUhkNFd6dkRxRzlPS2F5OGUxcDNENjg5ZXVBK2s2R2FoK3BH?=
 =?utf-8?B?dlB2cUpaNnNZRnZIMC95ZjQwNWRGSWowUGdQYUlnTld6SHg5c1h5bFNnZUhU?=
 =?utf-8?B?UndOdkxnazF1em5XMUZLM2sra3ZhbzBlU3doQ2VQdjJjZ0lUSzVueFBvOFBO?=
 =?utf-8?B?QmRsalB2dnNjdERDOEVZWjl0NFNRUDlTN3hoa0lIYTdaN0EzTXVFbENCUkI4?=
 =?utf-8?B?UEd2WGRia0xNL0RjanpFVW1NOXpSakN5d29uWFhRdHBFZStrc0oxRE1Hanlq?=
 =?utf-8?B?dmtFeWduZk5Fa0Z1YVhodVd2SGxPNDJZZXVvb2g2NFhnZVlJV2hjWWVETjBC?=
 =?utf-8?B?eC91UkpUYUNvS2pqWkhDRzREbE1EUWYrRjZBVm1lU2VSRWNFYUFOelV1V2ND?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d22a5951-6cdb-4f36-93ee-08dd66b5175d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5700.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2025 07:10:13.1100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IAv7yjjJMXK67RlBPuL8LxrsjCb6cBiNS1xrTFUjuC+HCJ1YldPuKIlj4AbmpHQhEaq0+zZgo5cUKBOEDNyAxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7774
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


On 10-03-2025 20:58, Sk Anirban wrote:
> From: Badal Nilawar <badal.nilawar@intel.com>
>
> The Forcewake timeout issue has been observed on Gen 12.0 and above.
> To address this, disable Render Power-Gating (RPG) during live self-tests
> for these generations. The temporary workaround 'drm/i915/mtl: do not
> enable render power-gating on MTL' disables RPG globally, which is
> unnecessary since the issues were only seen during self-tests.
>
> v2: take runtime pm wakeref
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
> Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating on MTL")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 ++++---------------
>   .../gpu/drm/i915/selftests/i915_selftest.c    | 18 ++++++++++++++++++
>   2 files changed, 22 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 9378d5901c49..9ca42589da4d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -117,21 +117,10 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>   			GEN6_RC_CTL_RC6_ENABLE |
>   			GEN6_RC_CTL_EI_MODE(1);
>   
> -	/*
> -	 * BSpec 52698 - Render powergating must be off.
> -	 * FIXME BSpec is outdated, disabling powergating for MTL is just
> -	 * temporary wa and should be removed after fixing real cause
> -	 * of forcewake timeouts.
> -	 */
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
> -		pg_enable =
> -			GEN9_MEDIA_PG_ENABLE |
> -			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> -	else
> -		pg_enable =
> -			GEN9_RENDER_PG_ENABLE |
> -			GEN9_MEDIA_PG_ENABLE |
> -			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> +	pg_enable =
> +		GEN9_RENDER_PG_ENABLE |
> +		GEN9_MEDIA_PG_ENABLE |
> +		GEN11_MEDIA_SAMPLER_PG_ENABLE;
>   
>   	if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
>   		for (i = 0; i < I915_MAX_VCS; i++)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> index fee76c1d2f45..889281819c5b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -23,7 +23,9 @@
>   
>   #include <linux/random.h>
>   
> +#include "gt/intel_gt.h"
>   #include "gt/intel_gt_pm.h"
> +#include "gt/intel_gt_regs.h"
>   #include "gt/uc/intel_gsc_fw.h"
>   
>   #include "i915_driver.h"
> @@ -253,11 +255,27 @@ int i915_mock_selftests(void)
>   int i915_live_selftests(struct pci_dev *pdev)
>   {
>   	struct drm_i915_private *i915 = pdev_to_i915(pdev);
> +	struct intel_uncore *uncore = &i915->uncore;
>   	int err;
> +	u32 pg_enable;
> +	intel_wakeref_t wakeref;
>   
>   	if (!i915_selftest.live)
>   		return 0;
>   
> +	/*
> +	 * FIXME Disable render powergating, this is temporary wa and should be removed
> +	 * after fixing real cause of forcewake timeouts.
> +	 */
> +	with_intel_runtime_pm(uncore->rpm, wakeref) {
> +		if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 00), IP_VER(12, 74))) {
> +			pg_enable = intel_uncore_read(uncore, GEN9_PG_ENABLE);
> +			if (pg_enable & GEN9_RENDER_PG_ENABLE)
> +				intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
> +						      pg_enable & ~GEN9_RENDER_PG_ENABLE);
> +		}
> +	}
> +

Hi Anirban,

where does PG enable happening after selftests complete ?

>   	__wait_gsc_proxy_completed(i915);
>   	__wait_gsc_huc_load_completed(i915);
>   
