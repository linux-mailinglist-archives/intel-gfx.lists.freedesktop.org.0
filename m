Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AK9FxSIsGl2kQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 22:07:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE725818B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 22:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D569610E78A;
	Tue, 10 Mar 2026 21:07:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T6QEhGEL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10AE110E23E;
 Tue, 10 Mar 2026 21:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773176846; x=1804712846;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mNZr4UtuAh2tE2D0EsOQw6W3SJ4ip6+JohBDjaL5NPs=;
 b=T6QEhGELsb++Yq8TeOiAyUQSX3VYeiqugxkeAO3q1GMRhjkjmDg5MU81
 XjcJdsQEFAKAVsGQz1emBs/JyKWoR+ZoR27qMXk0c1DNR6JEBbvuYqGx5
 4TgADkF0X4iChIJZfEdzDno1ivINayTs7mkn7c3g9ciUPruWBjPLRSVbB
 A1kfD6wIf9s3xYh+HBuoYjJDPI8UL9Itv8H9pSHtBJpar8No/NbUunR9q
 mj3W7WpPn1PeVDogLLrWS/McKA4ALS8Rh2WX3yGzOtT9h10UYxAggNDUj
 2+GNknXXSbt0Phdb9fKfL1xcrzfqNU1rwQx0LO2kNJV4LmsGvOFBdMusP A==;
X-CSE-ConnectionGUID: 6v8C+sBRTyu4PhYdBU0+Ww==
X-CSE-MsgGUID: 70pD1obuSwSxq/PMAMC4Lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="85591391"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="85591391"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 14:07:25 -0700
X-CSE-ConnectionGUID: vFr3Z5e3RMClOOq471APJA==
X-CSE-MsgGUID: DXgSRDvkRR67iUIe6YRBaw==
X-Ironport-Invalid-End-Of-Message: True
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="224423841"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 14:07:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 14:07:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 14:07:24 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 14:07:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oKgMAN3T38wKpUrU0G1f73ZXzYhET5WqnKYpnmXEW88PXEc2zxlq0Ig/osL2AyTfmzb2zed9r5DiadoToY0IpfrEs1z0lYDMHFAFFKegrgFG9LUFwcy9iHcHAAfX/QdydWXGn4yhxMWY64zNQgYJ/Ya+Jz5z3LY8fcVFci2q+Ujr3dTOQ46xBvEPPXEYs7zPt5n0RKfazdCEBHZRW2RQVrtTBRtAIvnXrGlCTylEq9Ytuy8+n/zcGySYeXBgJaSjWy3SqpvontoOl/vTuBpqxYFddd2vqV7A/xch0Xg2XVojoUpXMogYJni7hiqcNrRV9hGJxr43agCR9IMma6rNKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YKxZJyoy0WhpNhcdyI5Pt73Ku5/Wdt7vNcXQqW1ez+U=;
 b=Zx/n/A76smCdFl53fejlPmItfJcm75rvLnFdyz8TAb+uWvYCzVS+DYKi6FrEQvcbJJizXHyWeiVcnC7EWPgVo/W60DxT5Y9EWN07luIWM3bOVqTS4IDQLhPQ1unOI38M0unnKPKGgX8buf7OZxdsIF/nabBvJKDt9+7iG12uqVLwfoCio8GEhT3zFKRPEEN+yG3I0CEBGiCq64v1JXEjupsxFQSOLMTZalP4QzBg+9c/IMsMbkFGLaERD5nve8xxnwQz1CQhIAhgfIS6yakzTGiseGtywUsusuRWE2XnN9pUGt8pIEhk07peALBbtMoNpqTQyaPszJudhpoG4/hfFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH3PPF2CAD058EC.namprd11.prod.outlook.com (2603:10b6:518:1::d12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.5; Tue, 10 Mar
 2026 21:07:21 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 21:07:21 +0000
Message-ID: <2e6e929e-0586-4724-bb03-a9590dd92b22@intel.com>
Date: Wed, 11 Mar 2026 02:37:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/atomic: Add affected colorops with affected planes
Content-Language: en-GB
To: "Shankar, Uma" <uma.shankar@intel.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "contact@emersion.fr" <contact@emersion.fr>, "alex.hung@amd.com"
 <alex.hung@amd.com>, "harry.wentland@amd.com" <harry.wentland@amd.com>,
 "daniels@collabora.com" <daniels@collabora.com>, "mwen@igalia.com"
 <mwen@igalia.com>, "sebastian.wick@redhat.com" <sebastian.wick@redhat.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "louis.chauvet@bootlin.com"
 <louis.chauvet@bootlin.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
References: <20260218065713.326417-1-chaitanya.kumar.borah@intel.com>
 <20260218065713.326417-3-chaitanya.kumar.borah@intel.com>
 <DM4PR11MB6360F90857302E3EE94FAB73F477A@DM4PR11MB6360.namprd11.prod.outlook.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <DM4PR11MB6360F90857302E3EE94FAB73F477A@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0023.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::28) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH3PPF2CAD058EC:EE_
X-MS-Office365-Filtering-Correlation-Id: 65d6878b-08fa-4b28-066f-08de7ee90533
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: f2YJ5Y8brhx5Nw1kYeDkUf1Uf+zCgewCzpK3+sFzmC8Ato7GhMC+3lhYZtsfEv6jWTMtEeiysjFYLT9+kIJoDBokCj3aqLahgja9lmRKME8MRUvvpm2sazYa+pPF2CqGQI9ARJUwm1vwViHoxM5kwdm30aaBlORmrOXrBGI2lUefnJlTY4c1hu0GmJWtWYx80pCO93/MJdhEz3Mz3PDo3mpankXBvUc86tw5hlF0VCYQUTmwZGTzmKwTcp9GCJr86Cdj6Ctxf8E/qSg1lASAUmHrOiQjlt2SENctJsuXFOg6TuQxEOSPtUy93OQO7FlwBi3H2+1QeV7EIuqf8+KHxSwDH668BKGtYpKgVeImRJFEGXu5dzRwzJzkVeU3YIPx3lF4BlTq8mpVMxUqc0AW6LEL294oReNfXAE0zczVIT0SqPqt3CuoSrzmxHzQ6CTmo4NMtd9vb8RQ08gb2UpC+2l5/a3s6CiTqPhux+TH29Hjgzv10SF9pJIL+rz7j1KMiYJj7EGwx71d+UA1+ruDpAduPsZr6ecuCCDvBMrbjLTlCJQS5E9PbeKTNLsR42+cfQDq7dP5tsZTMx4jWu6gCwywnehextksD8o8L9OsxXaj0H7a+p6td+MHBugLV4Q27an3hngw9iyJIkdgJ70wHWv/G3B017MO9t6vbWckZa2RoXwQPtLjLB9hJYuOBFCkZbqkepQI71SKcMbKxjpyuxhGVNQpd3VRaFilgs0vYpo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmUxRkQvSEd4d1daaW84UFd4T1B2RGJINTl2RFp2UFFXVmxDMVUyV3FlT0pB?=
 =?utf-8?B?RnQwZ2VYZ3A4YmNUYzJSd0FSaUgwTVRFY1NKSEl5THJ6aFpWc1dveERSYUtG?=
 =?utf-8?B?c3BOTU9mMXNQQlBqWDN5Ky95eXc5bGpZME5qUE1YbHNueFBGZGpkL3NjallB?=
 =?utf-8?B?dWxDR09aZnVabDRLcjNnRWJvQ3dmRXFpZmFyREZJcWdwdktwemtsNy8zdm9W?=
 =?utf-8?B?RUY1MUdNaHZmcXNodFBWMXFKWnZUelo5ZVAxM0pmd01mNzNyZGpSQ2dHUjNy?=
 =?utf-8?B?R1A3V3J3TDh5UlJxclJYZEQzMmFPMkd0Vkc1V0MvVHVEL0dSLzB1c2xxbytQ?=
 =?utf-8?B?QWlTY3BvWHlXY1VnOFVwU3k2aXBxbUFEMm9LUFM4UHNJZGhmVDFjYXlKM0Fz?=
 =?utf-8?B?a1lqZWt6dUtZckJlOEFSTUdKMkhqN0RNSXhERUQvVy8vYkZBVUpQZWxFZzNJ?=
 =?utf-8?B?Q0xlU29CaUZ3OUZ5TEZYM2N4RFFwVzdkQnhLNDZJdjdRUjhJV21taXFFSEJU?=
 =?utf-8?B?QmJBNzF4Si8zS2dSZXVZRXozWEg3MVc3UjgrVzlpTitXNkVub1NHcmJIaHhH?=
 =?utf-8?B?bUF2RXJpclN1Y2o1cW9XbjZJd2JJNzN4N25WWXVZeE5HVm95ZVFvTXJHVkJy?=
 =?utf-8?B?SkZLd2JzVHFTRlM1US9xUjJKZms0M21QSTlFdGhqdGlXWnFXUVlMc3BOZngw?=
 =?utf-8?B?OTRrOCs0cHdxbnJpeU91NzIxUWxqRDlQK290SXZtSnlSankvS3BOZEJ0NVhQ?=
 =?utf-8?B?UVFSekZqbHhjM1Z3RHYvcDZkclpEMG5xM1NCSjNVYkxYUWM3ZWFsVmhJSnFU?=
 =?utf-8?B?cEY4QXpOZllleFdoOGJ3TjlKMWFTbVZtamU0Z2hhWEw1SFJaeElHQmJMY2ZV?=
 =?utf-8?B?ZTZIcTl4TE1FN29ZSmQwclhRb0xnWGp1Q050TmZJS0xrSnAvTTdOUEVpR1Nv?=
 =?utf-8?B?emtzZ0psNnZ2dHhWL1YwZXpockZaZGJQNGRFbHVkd0xUZDVtNjhqRGZ5NTJV?=
 =?utf-8?B?aFVVY2c0aTREZlZ3R0M2VjREWUpOT2tSVDRBbVdocVprSk52blprRkxGWEwv?=
 =?utf-8?B?YWtUQXlQbVVaS3NTc1lPL0JtTmo2SmNlNXZHd1pxWUo1S2hCNURmSWZxQ1h6?=
 =?utf-8?B?UWZQeHl1Tk1BNUVCRGlrc0d4b0NSNmlyMHVxTURWcXBxY2Z1ZjUvNGdZWlIw?=
 =?utf-8?B?emR5VGMzYm0zc1NuVkxxSTJHQ0UybFAwMkhmTTNucTRORlQyUTJWREpVaS9J?=
 =?utf-8?B?ajdEQkZwSzI5VElMb0tDNzRZY2M2d1BEMDEzUGpLSWVHZmF5SkFrbVFtNEtk?=
 =?utf-8?B?TCtrUjBhWldVZW9NTVkrcFFJazZiS2lZQTdoNDVMdjBkN0NNUTQ3OFhCc0JV?=
 =?utf-8?B?bVdNeEg2MGswcXoycHBnYUE1bGFLYUl6UnJqNjdqNGc4Umo3cjQ3b21ram9T?=
 =?utf-8?B?U0NJK1NCM3I1d3VYWDZzcC9WQWhqQzUwRkJmWjhHcDZ4bkFrL2c4RWpLQXo2?=
 =?utf-8?B?bWtocDFOb0FvL1FoUGp2ZU43WGVvMTBUODFtODZCVS9ubmRuTytuMjY0SCtP?=
 =?utf-8?B?WGt1YjcyMmlMcXR2V01Vamp6cytmdDF0c1BzNy9IZkJQZ01RZ2dRVUJEWTVB?=
 =?utf-8?B?TCtlR3k3YnVnZG9jTFo4eVFNZzFaM25YdnpYS0s0a3lveWZwcWVmaWhOeEUw?=
 =?utf-8?B?MmNEanMrcjZ6VWZoSzZFU2dNRWc2T0dFUmFDSFpTVTJnaVY5SkJQeUQ4L0x0?=
 =?utf-8?B?UEFnbXVLRnAyNTN2VU40a0VxOGNHZzRlVjZ3YnczcG00YXBOQmZ3c0pKWGp1?=
 =?utf-8?B?bUxxQWl3SUFTMEVhYVJ6T3k5aHNrcEtHcDFrajkxY3B2aTM4VUxMU1NKZ00z?=
 =?utf-8?B?aDJ2eUs1VWwrekszZ1lvVmQ2OU8rUDZjd2hPUklKN2kvZE1OQlBHb3hGRXNY?=
 =?utf-8?B?Z0Via2E5QXFHRi90OUtYSE11THRYODMzMW44VDk5U1VsR25IZ3VkSFMxYy9k?=
 =?utf-8?B?TmhiSGFUdWJTcG93YXhla2cwZUxHYVFoeTdUdHZ0Z1JGM3pqYnZmSi9pbkZV?=
 =?utf-8?B?Q1BvSzdwY0NoMG93RG04a1ZDTWErR1V1S2x1cEtYWTZyNU9YWUcvY0hqZEV0?=
 =?utf-8?B?UG5XQlROWmQ4OVZZeXRMZGE3d1FFbW5vdU1GUURMME5UdmQ4QVBSdGRONVFp?=
 =?utf-8?B?MXJiN3hpZEpMbFQ0T05QNmdWSGpvY1FCZU5uM2lXUE9ZVGhJKzdMRmJOOWJW?=
 =?utf-8?B?VUdRQTdiUnNvNW1Wd0FYOWZSZWR5VFBUNmpOWi9zQk5lZ0FETUZvTTc1em1q?=
 =?utf-8?B?aXNZYUtvTk8xc2FqcFJvdUpDMFBLWDRlbFA5NUVnWTBzcTkwNDlMR0d5Y3FW?=
 =?utf-8?Q?cmannItZ1/B33dIk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65d6878b-08fa-4b28-066f-08de7ee90533
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 21:07:21.6232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4JVU76KJuH7kM9vwojNvblTHOYdHZQs2pcmtJMnuG2gWy5tsQtixCauwF6tnTIQu94Nf/9UJcoE0f935lnsk4YgiSPp4eD9vjb4PpLw9JJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF2CAD058EC
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
X-Rspamd-Queue-Id: 0EFE725818B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action



On 2/24/2026 2:07 AM, Shankar, Uma wrote:
>> Subject: [PATCH 2/2] drm/atomic: Add affected colorops with affected planes
>>
>> When drm_atomic_add_affected_planes() adds a plane to the atomic state, the
>> associated colorops are not guaranteed to be included.
>> This can leave colorop state out of the transaction when planes are pulled in
>> implicitly (eg. during modeset or internal commits).
>>
>> Also add affected colorops when adding affected planes to keep plane and color
>> pipeline state consistent within the atomic transaction.
> Even though colorop is an object in itself but practically it doesn't have any existence without
> the plane. So to add to state along with plane seems logical. Also its good to handle this in
> drm core than individual drivers.
> 
> The change looks good to me.
> Reviewed-by: Uma Shankar<uma.shankar@intel.com>

Thank you, Uma, for the review.

I have sent another version of the patch where the colorops are added 
only when pipeline is enabled. This avoids flooding of following logs 
when pipeline is disabled.


  [drm:drm_atomic_get_colorop_state] Added [COLOROP:288:1] 
ffff88810db07240 state to ffff88810e040800

Let me know if this looks good for you.

==
Chaitanya
