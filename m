Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 805179C1007
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:47:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D01210E8D9;
	Thu,  7 Nov 2024 20:47:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cwZgO1z4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3AB10E8D9;
 Thu,  7 Nov 2024 20:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731012457; x=1762548457;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=4EiSvTwZNYRTmHBJdRkvzi0Zrn/gQ0Yd27AvMpsMKG8=;
 b=cwZgO1z4LDUAQ8/BRWED6rk9QPbzHVYH5WQ+1V4zOF550d6HDN9F/jjH
 Dx/gPCmc4NR7kjQo8pf5Y2xb+sHGkaPFoCRLbqfWaIkAy1sZyLHFIpV0T
 YjuJzv1Lfv15m77y3l5ojj6diNzteVf0QOG3rcPk1i3Nk6kY3L0BvFVYb
 UhYVoF3Dteo5JPFhPtwJzq3KNlOogL1xOaSy1SqPHMRTqu3XyS7DfhIyy
 FVU3goL7iSqLdRjrbO2c9ByraKfldsWmKqzy9dfO0H86nHRSnLaYuIVdF
 V8sG8boNuqEiKAtHiJRMZ/Q+ukU2wl+c1RKyGKfBzyYZkoTY1ro2okgrt w==;
X-CSE-ConnectionGUID: NGTdfK4TSO6TaTHaj6WxBg==
X-CSE-MsgGUID: IGgBSZR/RVOZ3vA09eVTdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34571962"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34571962"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:47:37 -0800
X-CSE-ConnectionGUID: qo9zVRgYTpuSdYaL9Qv9NQ==
X-CSE-MsgGUID: NyBUpqFWTdCa4BcyJ+joYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="86029610"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 12:47:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 12:47:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 12:47:36 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 12:47:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jGWu8Aaz9QfHXs/v6USSva93byFJrHUE19mDIeYX7yizaV4O4YoND5THyxHcBW+FL6sevJwUNq6as7p0iga94G2f66OQ9pVyAo+tX902dxh/nE+eQvatuaTysaMUdvoFSPT4BPm0Vi/dApaF/B6EA+qeRuAWdty2e9ehIN7KOf5idUjOXvWlM8dSJtAkN5xvRZH4yjoavvQ4XJN7l8cHqV/DPSUapupF3J2B0NbkuZPcN+PxwhZVl0CJUFTQWHZb4cMvRPaXOBF6Yl0OIE6zPd+1cZ5S8dabgqygCFYDneyrtI5HQhP8FdcKoAgiZR6KevkaeE0zj/u4IQeck6skNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1gdBdOJuBwWdlBqTGqlmtiL2mby1nRO19aCjdBUTmg=;
 b=qwqcVY78s3Vt7ctm6r7EMdlSbowO8YpEf7OLpZ8/Jq67rYltieKwxokUg4ZExPsDV09kWSMHsMs5mw3dkIAAtaCxTvx6UNkcBjpyvk5gWl/vcmp6XOPDqXOgtM+uoDjeQo56R22+orVdFW5I0DfIeITG7AQu1DbW0vy3H5UYSHiIL4MT53OG9vFVceodgax7kFtuCgLs7EqTvIiTXzU/zCTEACXOp4HIiSj+hQU3tHumrtmkKFQRLeZomvjVjH6rtYnk0GTBW+Y541oTXY2wp3yJHYSTloK4+3POdtR3UMYku9m+3KpGMpDDMinuTW56IPdI7I7GJyPh8S84vLG7Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Thu, 7 Nov
 2024 20:47:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 20:47:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173101047610.92682.5793541337752745725@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
 <20241107182921.102193-18-gustavo.sousa@intel.com>
 <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
 <173101047610.92682.5793541337752745725@intel.com>
Subject: Re: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 7 Nov 2024 17:47:28 -0300
Message-ID: <173101244899.92682.12331831987185316729@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0280.namprd03.prod.outlook.com
 (2603:10b6:303:b5::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7191:EE_
X-MS-Office365-Filtering-Correlation-Id: a7ebf384-84b4-413c-4dc4-08dcff6d6741
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3BJcHhyUzJsd1VBL3l1OGdIK0xrTWt2MzRtNjlTVWx3U0hybWx6ZzJQM05z?=
 =?utf-8?B?TkpDZjZzYXFsN013Q2NFMkJDS1ozVjgyVFVhblJiVjZRTTJnUkVZeGFtRU9k?=
 =?utf-8?B?YXpTZWswdlRsR1VOL2l1T0djL08yTlJJU1Z4WHVmZDkwQW5nOU1UNDNMV0JW?=
 =?utf-8?B?OTFvVHBGQkQ5NU51clJlV3JiblJUWTdxRlVRNkxqMjJDSGFIZjVQU295cFRh?=
 =?utf-8?B?NFlrbVZ6K24yejBIako0VnpOWDYrakJJT1ZhbDhqbU9YVHhtVzhzOE5Cakhy?=
 =?utf-8?B?ZHZya0RhZ2Qra1orNkNiK3dzQmJMK2ZQeW1heFdVSmhkY1hlUUxxZm9lcFN2?=
 =?utf-8?B?eEt2Q1NsZHRqbXBXVUtrRU1MeWFGdU16OWVvSVlLQ09lcE5rNHhWaXhwUzFN?=
 =?utf-8?B?dHNOTjg0dWdXbGkvNzZqMitRNEtOZTQrejlIUjEyMWpkRzBXOWhKbWU1ZG1z?=
 =?utf-8?B?Q1dkZEh0Rm5Xems4T3VNYVhPV1UxQnNmOGFMakgxWUdBSTJLNmZjL2tQYWlS?=
 =?utf-8?B?NDVFRmNpd0twSU11MlBDMDFXdzRzcDRzWnRJNXNYQkgvNkZjSmE4eG9oYXBq?=
 =?utf-8?B?TkkyY2JnMFN5MGJjVmlibzRzbDN2VXY5RHl5Ky93dXFReUdaQXA0WEtDYXox?=
 =?utf-8?B?d2dGcndadThOeS9HM2szcHMyMzdONVNERXliZWZCTnhFb3IxNnpFRUlXMjdk?=
 =?utf-8?B?dmZTU0Yzd09ncFc3MjJWT2pxK3lNNmpGNXY3NnhGeUpzWEZNVDZLaWFvQjFa?=
 =?utf-8?B?b1NyUnQ0RGwwbHF2S3AzWEVJTWFpUDkxNnh5M2NWTzc5TzNUdUcvY2h6Z2pN?=
 =?utf-8?B?OWZUOFJTd0ZYb2RIS0VjeFJoOTZ2YStHUVhDWW1TeGVpQU96b2NIbjR2MXBC?=
 =?utf-8?B?Wm1zSlZibjYxOUl6ZDB1M25VSDJ1dmd1Y1dpNnM5L0M3ZnN2aGQrcHNwRG1H?=
 =?utf-8?B?T3FTNC91amIwN0x0ZnRyMWcwWmN5OXhsQTYwamlOdkJVQjNDSlorb29UcGR5?=
 =?utf-8?B?VVBSc0RqUzgzOUVRSm5BQXlpL29uTG11Uk9LMGhocTVmd2NOTU1iekxkMDZI?=
 =?utf-8?B?eERQM3RvL3o2UzdVRERmSnB4UktoZmIzbUZlV3U2UUhRTU5hZjlqUUJ2R2Vx?=
 =?utf-8?B?bXdqL1MwZ1I2RHk3cGQ0OEVyTGNtTCt3Smlqem9jWDlTQjAwVnI4ZjM5MVVY?=
 =?utf-8?B?OWNMVDZuWDNUSkNnNkpRdkRxektIVFMzL0RYWGhtaEF5UmxrVUorK0orbkpZ?=
 =?utf-8?B?Q3V1QzcvUkRlVjVQVklHODdpRFBQdDZjWFZkTWhEb3ZiTGpIUHU0bFZaWDZO?=
 =?utf-8?B?MkhBYmtkVkZtUTUyY1k2WGtTWUlZbDhBK05xVGJoWnhMUXFobkNWOVEzbEFD?=
 =?utf-8?B?MWlNVXJxRG5vaVdmYlFiWFV4SmdiaW5OM3hEUFRXU3NlTTloNmpEakhvUFBP?=
 =?utf-8?B?aVVTNVdZcEdrZjM3bG5oZGh5bS94MUdNd2lJUUxhUWVGRy9IS1dteHBVWE9W?=
 =?utf-8?B?N1d4b0ZWWWNrdEo3NXUwZTh4enhqR3gxcUcyd1hXcE9EMTNsbVR6eUFoRHBt?=
 =?utf-8?B?SEJJRXErZi8zNWEyS1paWGljSEZTN3VtV012WTZSOUppL2dxU1QvT2UvQXhN?=
 =?utf-8?B?NTc1WXMzK0NLODgxamVhbkJJcHI2NG1oK1VIMWJiTjhldmQxcElHcHZVQXBC?=
 =?utf-8?B?aURFMlhFaXE5M1Z5M3crNU45OUdSSVY5SEVxNDVEZk9ZU0xGTVZaNmpFbGZR?=
 =?utf-8?Q?I4nSqGhHg5nDND+9uHwHlEMKiIdwWSgqKj9D5oQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXJPUFlGeVMySFJXTU5ucW93bmwvSzc3VnNPN3QwcjVHdE5VckJjK3Q4VzJv?=
 =?utf-8?B?MFMyMUhZWUJyVDEwNll0RERFY3orRWFqRENGVExkMXdyNXVsKy9yRk84STRr?=
 =?utf-8?B?RHMvM2hHa1dYZHdVcEJjOVI1LzhyZ3Jpd2NHR0VpYW0xL1V1UW94c0NqcWo3?=
 =?utf-8?B?ckdkRzVrS1JDVGFXVjZpTkRjZldwdU1Xb0UvVmpDbEYvYnJvZkNPcWJZRFUy?=
 =?utf-8?B?NGR2VHVGdnpmQy9HSm5BbmllNFpGNjZVN05CWDRTR01OODJ4K0tPSHFNUzg0?=
 =?utf-8?B?Q2ZUcGJjbGZpb3pkcDdJNk1mQW1EanU1cGxiU0FiSkVTRmhRZUlPdDFqUlFu?=
 =?utf-8?B?VkRYUVZYMktncXFtdUZNdTVJR1l5ZGo0TkRFSmFLSlJxRTVqSFdGN21TdTFp?=
 =?utf-8?B?d3dlUVpybFhJVlpHNVlxK3ZFZGs3M3VyUjBIZWhpNlhQQk11aSs4cXFVUGhx?=
 =?utf-8?B?MFpaTmplanU0M05PQnN3ZFJocW1SMTJDMzFZUVdaTWV1VVVaclU3U24rR1ZF?=
 =?utf-8?B?UEgweS83eGIwbGw3OGNIMUR4WGxhZ2tRSGtHOFN2aEMvQjlIU1pCVWxZL3Y5?=
 =?utf-8?B?dnVtd1pxSDI4YkpZeng5YytsZ2V0UCtTM3JEb21ybTVxbW1CYnhLdVRGVlpY?=
 =?utf-8?B?SThwK1FOUGplWmZzVC93NTRyNjVkR1NFdWludTgzZGJhT3VmU1NWek5WNmNz?=
 =?utf-8?B?cDJoWWFIR3A0UkRDeUNaVEcyQ3F4WHBjRERwQ3R0SHQwcENmYTN3TGZPTis2?=
 =?utf-8?B?a1FBQVJ6MlYwRzFwUnhIY0VFWTY2QVo4ZGs5VjRuTDdYemU2L2o5S1Q5K3dn?=
 =?utf-8?B?OGEvZUVsb3FLK1JMV2N4RTNuSUx4aFZnbkVSdkd0bml6RUl4OCs4OHJsMXhm?=
 =?utf-8?B?TW4wSThnK1I4MkxvWmk2Vk85elM3VWNqTStwWmZTa0NzNzkyblJXa1B6d0M3?=
 =?utf-8?B?RmJISjYwUzNxbHNqWDN4WCs1bjZ5VVpHTEpneCtsTC93clRYVWxFSzNFTTAy?=
 =?utf-8?B?Ujd4OWo1a1RlWDlNNWNXZm1nUXNrOVRnRHhIYzZobHF6L0JydFNsRTZuSlNS?=
 =?utf-8?B?bHU4eGJBSmdxbmNhQVNWTXFuRGxXSnJjMU5GWGU3cTEvdnpSSnhsT1V6Y3FJ?=
 =?utf-8?B?RDAzdTc4UG5MRkVRckhPSlZmQWdqamVwSzZDcFVGdC8vN1hIOCswN3RKNEJQ?=
 =?utf-8?B?ZmxaV3ZHYk02QzlCdjE3Qmk2bTRFNGl1K1RGSG02bU8xbUZOeVJmKzFhZWlU?=
 =?utf-8?B?UzNlUndXTTVWeFhMY1ZYMGYvTnNlT1hyK1FSTFpQSlN3anFaeVltY1ZtM0RX?=
 =?utf-8?B?akhZeE11Ujd3ZERCRzJUMHA1cEVaSkpYZWtTTVR4ZjJvU2tlclJXYit0L0dT?=
 =?utf-8?B?R1ZTTWdOOHl5SldqZVJyektMZ3pyT1llS3Q4aC9TbDlTdkp0TmRDUktqTisz?=
 =?utf-8?B?dTRkWU4wY2Q0RjdCbFZab0NPVUJnUW5zQTllcnFkMDUraStmdjB3Um9lamRh?=
 =?utf-8?B?ZUd0ckJVd00wUFZmUTIzeHhpVEc0TmlpVmc0SWRsS1dCUVN1bFVtM2ZHK3pp?=
 =?utf-8?B?dVNmTXpzQk9NVkk2dXJkNnh1UjUwVmxKbDVwK3IxQ095enFTZ3hqTTh0OGdV?=
 =?utf-8?B?NFhLL01YamNDRGVqQ2dSdEQ4aVJyckh6WndXK0h4dlJRa3Y0ei9MOGhxcytr?=
 =?utf-8?B?OHJvWWJEZUd6dVZTZ0VTL0x4K285aklXMElRamdjc3JqZDhXaURxRk9mRXAy?=
 =?utf-8?B?SFBUejdEQTUxeVFDWGFlaTJUOGx4dVNOakhzNlF3TFZMZG5PQnVWNEZpTkVw?=
 =?utf-8?B?aGpqcW1TWGlnZ0pVNXdGM2JGUnFISTcweW5NY04rK3FpdlpORWJZVnRqZUlv?=
 =?utf-8?B?a2RhQzFjWTgxVmdqQXlDSW85WHlhM01keDY0MjZ2Z2hzUlhCdWdmV0VnM0RV?=
 =?utf-8?B?dUhpblJUZmhDMGRsVFc1VHBQY0tidngrWFJCWDE4dTMxb2RLYWttYzMvTldQ?=
 =?utf-8?B?MmZWSEV2L1Zvd3N6M0NsY0ZGdGdPYWVGWWhrU1F1Z1cyWXpFY1g0RkxnaFMx?=
 =?utf-8?B?NGFxWkxQNXFCbGJnWVBoQk9hUUlZZy9Qb1BuY09zNVIrT3BOUTZoZjYraFVn?=
 =?utf-8?B?elcrR2VVdlJ5OUd0eWFmUExXZHFUdDR1dUJ6RXdWVDBId0UrYW1sQlg4MkFF?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7ebf384-84b4-413c-4dc4-08dcff6d6741
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 20:47:33.1386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TcJ4qnvOlBpD4Irpv8o2k1McHiuez3PAzsodLqprhYhOVXyA170VwxxFFc6mooURA4BjjUl5XLudktwzz1QczA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
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

Quoting Gustavo Sousa (2024-11-07 17:14:36-03:00)
>Quoting Luca Coelho (2024-11-07 16:23:06-03:00)
>>On Thu, 2024-11-07 at 15:27 -0300, Gustavo Sousa wrote:
>>> There is a bit of a chicken and egg situation where we depend on runtim=
e
>>> info to know that DMC and wakelock are supported by the hardware, and
>>> such information is grabbed via display MMIO functions, which in turns
>>> call intel_dmc_wl_get() and intel_dmc_wl_put() as part of their regular
>>> flow.
>>
>>s/which in turns call/which in turn calls/
>
>Thanks!
>
>I'll do
>
>  s/which in turns call/which in turn call/
>
>as the subject for "call" is "display MMIO functions".
>
>>
>>
>>> Since we do not expect DC states (and consequently the wakelock
>>> mechanism) to be enabled until DMC and DMC wakelock software structures
>>> are initialized, a simple and safe solution to this is to turn
>>> intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
>>> properly initialized.
>>
>>
>>About "safe" here... Can we be sure this will be race-free?
>
>The initialization is done only once, during driver load. The wakelock
>will be enabled only at a later moment. So, we are good in that regard.
>
>However, now that you mentioned, yeah, we should also consider that that
>we do concurrent work during initialization (e.g. loading the DMC).
>Based on that, we will need to protect "initialized", which means:
>
>- initializing the lock early together with the other ones;
>- always going for the lock, even for hardware that does not support the
>  wakelock.

Well, a hacky way to mitigate this is by checking the DISPLAY_VER() >=3D
20 before taking the spin lock, since that info is queried in
probe_gmdid_display(), which happens at the "no-mmio" phase of driver
initialization.

By the way, that makes me think: is it too bad to do the same kind of
early MMIO via pci_iomap_range() for ICL_DFSM_DMC_DISABLE? We could
avoid this whole thing, since we would already have the correct value
for HAS_DMC() when i915/xe MMIO functions are called.

--
Gustavo Sousa

>
>Ugh... I don't like the latter very much... But, with those provided, I
>believe we should be safe.
>
>Thoughts?
>
>>
>>
>>> Let's implement that via a new field "initialized". Not that, since we
>>> expect __intel_dmc_wl_supported() to be used for most non-static DMC
>>> wakelock functions, let's add a drm_WARN_ONCE() there for when it is
>>> called prior to initialization.
>>
>>
>>s/not that/note that/
>
>Thanks!
>
>>
>>
>>> The only exception of functions that can be called before initializatio=
n
>>> are intel_dmc_wl_get() and intel_dmc_wl_put(), so we bail before
>>> calling __intel_dmc_wl_supported() if not initialized.
>>>=20
>>> An alternative solution would be to revise MMIO-related stuff in the
>>> whole driver initialization sequence, but that would possibly come with
>>> the cost of some added ordering dependencies and complexity to the
>>> source code.
>>
>>I think this can be kept out of the commit message.  It's not very
>>clear what you mean and it sounds much more complex than the solution
>>you implemented.  Unless race can really be an issue here, but then the
>>whole commit message should be changed to an eventual more complex
>>solution.
>
>I meant that we would need to revise the initialization code and find
>the correct place to put the DMC Wakelock software initialization call.
>That might also come with changes in some places where we do probe the
>hardware for info:
>
>  - We need our initialization to happen before
>    intel_display_device_info_runtime_init(), because we want to check
>    HAS_DMC().
>
>  - Currently, __intel_display_device_info_runtime_init() is using
>    intel_re_read(), which in turn uses
>    intel_dmc_wl_get()/intel_dmc_wl_put().
>
>  - The alternative solution to using the "initialized" flag would be to
>    make sure that function does not use the MMIO functions that take
>    the DMC wakelock path.
>
>  - However, __intel_display_device_info_runtime_init() is not necessary
>    the only function that would need to be changed, but rather
>    basically everything that does MMIO before the initialization!
>
>I hope it is clearer now :-)
>
>--
>Gustavo Sousa
