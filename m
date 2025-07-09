Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34E9AFDDC8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 05:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E43D10E1F6;
	Wed,  9 Jul 2025 03:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gIdi00yd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D52F10E1F6;
 Wed,  9 Jul 2025 03:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752030263; x=1783566263;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rywdTfhRhHx9LHt2LvvcIbnBjyrnHzP79+MjP9CEvGA=;
 b=gIdi00ydPN08E52FPuu8BUo5TtPPFTS2/V4kzZD0efVw4qMc0rn/jiWz
 63Bqztw6Wbn1cqr6196r+3fIkDapuTR74FJ/mUVuSDWH7oO4y1rveXsRh
 wJvhLsa5iwwhJnARmU5mchcT0TqyVXMlArzuWJeCa7X1MKP5A/AliZnff
 XxWxwU+QT3ktcrsn5rFYPgH27rHLiqXdtRvbXnhK1UHu2aLBSUhnDbmB/
 FHkKJuXthOjsy5vvpdW47yUzqTKRTghMDaro0jN4t/4jiGGF6KAuH+o+m
 gMEyx2IM981nFlOrRVMrkvx5pCwFG2zGV7jydjlkfWScqvWpRMERtyUrm Q==;
X-CSE-ConnectionGUID: 3fQ2ivz4SNyY+jwVviV6YA==
X-CSE-MsgGUID: 1Sp/EQnJRpuiY7kTiaYbNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="76828835"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="76828835"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 20:04:23 -0700
X-CSE-ConnectionGUID: 9sWos0TPRJeLpGZbQ/Bbew==
X-CSE-MsgGUID: oHDTRuCpQg6tGSprv1PQGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="159687037"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 20:04:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 20:04:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 20:04:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 20:04:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EaajOfwhzbdiSZvpwxWGxdB8lEN3XwseUl2eGePLpnTQgnGlF200xtLaSd7WvjXa3ZPgxVc5eijKy65vXoRUufXln852G4sd6VZrUtefGY5D69Naa6TTrWRCUaZ3+lXHbkYo3ITIWfVcXB7MlkYYWf64aAWEJiBINx/+orWjeRqWHDXDmVRN9s7GJ/6pbL7hRyRZjOmzXIW7OM6M9ZujF1qVoX4TeCoSqS9iTTUa81Ng1DoGFUgRPwVR7JKwm0pNUrG7QZfHUBpR0wnnsXStibydBw4/B/L/yLRYeyYMNixyy3/JADagLqTmoQDZTm73q2kh+by2lA9kfWAlbXg08A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=El3jBTPpXLZvUcOG8JMG/kCeDhIhTBLzKUNEnZTRU44=;
 b=DptKStrw8f2AciRpZW+DZbq2AdRr3wUhvFP1cb6jtx8RlMo35nDDATs7p6cMslXREIIO6xKF11Ej/13FpXqi0riH4d+giJKXQazbCrDs9PGP234EOeXgNVqXXeH78bLr8AUr5+ROW6cDru+PrqKb97sg90esVxcCrYQ8YzUaqlZ9AnAVCemXood2ysV8588BkC3WKsMxIR1AmOdx68ZaSKz0XPAdQVUY8I5yvG0GvXiMyFEAlHz1qjfBu+oiTzYVUeJ36K8ZKC428V0Mdss01iFuBF7om06YD5hC5zPBm0JkepxGd0+I8MqQrf2IODU90ICNc6ibGw7JAf+ENiRZjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7869.namprd11.prod.outlook.com (2603:10b6:208:3f6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Wed, 9 Jul
 2025 03:04:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 03:04:05 +0000
Message-ID: <3d02b636-2c50-4f0d-9c6f-f6ba7159d2d3@intel.com>
Date: Wed, 9 Jul 2025 08:33:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/xe3lpd: Prune modes for YUV420
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Jonathan Cavitt <jonathan.cavitt@intel.com>
References: <20250708043328.1086192-1-suraj.kandpal@intel.com>
 <20250708043328.1086192-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250708043328.1086192-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7869:EE_
X-MS-Office365-Filtering-Correlation-Id: 93cb2870-3c7a-481e-52ec-08ddbe9543c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cndOOVZYRkg4QkNiSGNoblZTMUdBRmRiMCt4L3k3clpUTURuWTU1NGNaTzh3?=
 =?utf-8?B?UVp5WjlVWjg2cEgzTjhTQjdCaGdxbWJkYUxpSXp2cXNrTUZTMzlzN2YzaStZ?=
 =?utf-8?B?ZjdCcjFIdnhtRHNtMTF5eFZTUjhMSHhpMUhQWFE5ZW5pclVLUHZUcjF4UU5N?=
 =?utf-8?B?a2dyY1VQdldENXpzWVpNY3JTdVZRaFF2aCtZdmlFcU9IbzJnQ2xzaFNBSmdF?=
 =?utf-8?B?L1luWmJNUEZCcG9tbDFNemRMS0NIMEV5S04yb0lPVXJkRFlEK3VwLzRudVJ4?=
 =?utf-8?B?Z1ZkRDVqQ3oydWI2TGJuNmlKbjkwZUg2UnBrMXlMN1pFMTZCQVdlRnluRHYz?=
 =?utf-8?B?RlkycHZXVlI0MlpVcFRvamd5ZCtheVhRdXBGbDY4ZTFydC9KaDloQTc5YjdS?=
 =?utf-8?B?YXBjbXZhU1hhMS9JdjIzRFdQWmhaK1hnRm5CQzVFYWFJbld3TE9kZlpMVGpW?=
 =?utf-8?B?dzEvaVduZW9pdGhzQXgxdFNEL0E4T3FKVjBzNEczRHdFS0orWW9YY0VUMEho?=
 =?utf-8?B?UWhXYlNrUzBXVTErTjA0cm5xcWJDWks3VEdOUndzT25BeWFnOWpVd1ZRcVMw?=
 =?utf-8?B?cTFUamp0ZnFzLzZpanF6U0ZiYWxTdzRRMkV6Z005RU5hOUVlMmtpdjdIN3hZ?=
 =?utf-8?B?dUJ1SGJ5SUFUalJOUlo1LzFFNVJIMkh6RkJuc0VobnFROGttQ3k5VGpLNnRG?=
 =?utf-8?B?cFpKY2RvNHp4Zm5KN2R0OWhJSE0rdU5EZ2FxL0NaVXZLaUJRZUhDVkx3ZjNS?=
 =?utf-8?B?Y0s3YUpWNllYU1B1cDZMWHJnbEhrbk1DdThkWHNDbU9vV2t5anYrWG95dDdx?=
 =?utf-8?B?T0ZMR2Q1ZmpSWFhVY2lUeVl5a0hrTVFRak1wWk5mMFJZdG9wRGUySEdFUWtR?=
 =?utf-8?B?SkdERzJnNFo4Tlg1MEtEUlBTKzYrSm54clZmZGdhZFZqOXFXTzFPSWZzUDJt?=
 =?utf-8?B?blNhWEZPYkdrRXNIZVZkWVpBdk14aDVSM0pxa0d3STRzSEJtL0VRWWIrWXZt?=
 =?utf-8?B?NWJOZGc0dW1HMW1JN3o0S002U01oZ0xlOXZxc2Y1MGJ3MWxCUitJdktpL3RC?=
 =?utf-8?B?eUxuSGF2T0EwblFEcWltMlplVGRtMENZMyt3dnZadnduRkE5aUUvRExhNUVE?=
 =?utf-8?B?TjMvdE9hN2lpTVVjbUJmMmtZQ0VaVHFvWUR1d0lyZ0d3MmNWU0RnVDhZUXEw?=
 =?utf-8?B?aTZ0SFdQTlhsajJHVmJXS2NkV2hQeW5qWUZwOGRzeE9DZ2FycTlZWk4zUmxm?=
 =?utf-8?B?VEE2Nmc3Q0lJT3hmem95KzN5UVNwaSs1TGtzZkw4VFJYejZVeVRXK1FGQzIz?=
 =?utf-8?B?Y05rUk43Z0xoY2RFOGNQbElHTlpxLys4MHBBOHpqNFB3d0FpOGp3cGtqRjVC?=
 =?utf-8?B?OElXVUNDUG51N0lOTHR5a2xuYXFDSFFxNHliM3JXb1cySEFKSmd0V0JCSDV1?=
 =?utf-8?B?U04zbHNvcWwrelJGaklBYU9rL0N6L09wSGhvTWpGaG9DTlkyTWs2djlDNFIx?=
 =?utf-8?B?WWNJVWxqbE50NER6dlBXZGlWa0xVRENEQlJNT25NSHRYK2lxNVZub2x0NWN6?=
 =?utf-8?B?S2x0d0VDaDBmY0NnTkREalpIWlR0MmorRTJ5a2FXeTZPU3l4Y0M3RDJrdDVl?=
 =?utf-8?B?anl6dS9yczB3cStHVjBaTFFRakRURHN0U054Vkh6NHVOUDVrdEY2RkpRMDdR?=
 =?utf-8?B?eXhON3hzZjRON2k3VWtSU0M3L2Npc0RXOVpLZERiU3dBRXZ1Q1BVekZDS3Nr?=
 =?utf-8?B?YStTbjBIREc2K051UGNkUk91MVZPK2VLY2R3NnlRS1o2Y0RlRjk0YWNiLzFI?=
 =?utf-8?B?eFZ4VlNic1l3M1R6TGRQWnZyd0hjOFJpaFp6VG9BamVoSld3MmVtNWRFSzAz?=
 =?utf-8?B?bXhZV0tQUWhjUGhydlFVV0J0WlQ3RGtzR1liWGtESVY2dGFtWElUbUxrV3VK?=
 =?utf-8?Q?tUtFWAzNsGc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVFXMkFJRjdpMjRVTWU4VStrVUJ6bUN1dU9oNzVUQ3RTQXgremU5a01YVHZH?=
 =?utf-8?B?K1pSVExzclVsVTJhQWorWmJoTVRIUlBKM1dTenFNcyt4RDlYWmNjVmw5VTZS?=
 =?utf-8?B?UU9xeExzaTFJamhxcVBZeXdYK2s3bVdyaDk2amdIbzIydmc1QmVqdVo4ckpu?=
 =?utf-8?B?L05mZzh4YjBiZTdGTjJoWVVWMWFPd1NzODV1aXNRdC84R3h4VHV6TnlxdGdk?=
 =?utf-8?B?aVk1M2FsZk53WE01WVNJRTVXTE01eWdVOXQzYzVNdlgrQXNvdGhuRHI3OVhN?=
 =?utf-8?B?T2VWa0tJVVQ5T0JYREt0bEp4OFVvSEV2RmJ3VWhmQ2xzNlFqR3FMdm1CL3Rq?=
 =?utf-8?B?cGp2Q1dXd0JiOXBQRUhHWWFndUtnN2thZlVKdXJHTkMrbG9LQ1phSnROaGNR?=
 =?utf-8?B?TDE2Y1ptZng0KzEvNmlZM2VFZm5tL2VOK2NUR0pOcThGb05Cd3FJUmM4b2Nu?=
 =?utf-8?B?OXFsNmZ2bmo1aWpIRlZoNUxaRDJrd2J5a211aGNBSVN1MlhTWXJUNkpVdW1R?=
 =?utf-8?B?Y3pSaXZHLzN4Nm1DQ3ZNSWdlZWpPL3BNVCtzYmRsRFRPOWFpUmh2OUw3Q050?=
 =?utf-8?B?WFJjWlQ5WFh4azdqNjl4U3FWZjcyUTVSa2xYTlE0L2hJeFBvaWt5enYybkF1?=
 =?utf-8?B?OVlnS0RjZDFlTEhlMTBUT0hDZnpJbDIyZTZISmNpUytpS0t5ZGd6MXpoRXM3?=
 =?utf-8?B?dWxnNUphZ2taMlJpcExyZ2NibnkzQzlmUXg1MUs3a2YvSi80TzBCQUxaWXpu?=
 =?utf-8?B?dmZrNjNDNWpiemtvclBBMkZpMkRCL2JlemFXTmdXZDJhK1lQRXlNL2RKSnlC?=
 =?utf-8?B?TlZJUVVIbVZlL09zemhwUEhEYUlXWERqRGdYRnVrRDJyY2ZWYWtpek5wQmpW?=
 =?utf-8?B?cXdseVBOWEZZZEt0QWtTRmpZb0VaTVg0K1VVMzNrQ3lZaWFYU3o3VGtoSXVo?=
 =?utf-8?B?cjkvWnBHRWRvUzE5b2VPR0hkc0NpSkgzbjlVTEdRWnBYNjlXZzJkbUZ3WkZ6?=
 =?utf-8?B?a3Btd09wM3NKUytkK0hldkdJUkF0aWdWTy9PT085YUxjQzdSZkN2SVYxcFlN?=
 =?utf-8?B?Ri9kdjFoVkVudmxrQTNzNTM1RkhWRXAycUhmenpGVlo4NXZldG9Ub0Z0Y29H?=
 =?utf-8?B?VGlWckFDTWMrbVdqUmtkMitIMzJKenJqT3ZuV08xN2lJaVllOFNuZFpQRUJp?=
 =?utf-8?B?OGFVMEJoZk02Z3ErenVndlA2QXM5bXZJSEFIeldoaktuVGV1dUw4aEx2c2Vz?=
 =?utf-8?B?RmhvYmt2RU80QzNyV054ZkhJSGxBSUdXaDM1NndvRTRWME4wbm9mWERCUVVD?=
 =?utf-8?B?cnpLamgyak51MDdjaU5vSldrbkdoS0tVRTQ0L3dFV3h4ZjZQb3NwTkhGUGYr?=
 =?utf-8?B?RHpLQlBjZUFMSDIzSWp3enpPZ0hEOTZlYko2aklnTnl2c3pGQnJTT1NmMjlU?=
 =?utf-8?B?b0tXNzBpMEdETEp5dytUd0xrYUM4Y042NnNYZUZqNlJJaitWNnEwT3k5YzhB?=
 =?utf-8?B?d3R5aVpRZU9yMFk3NFpEeVZEYmV2MWhrSmhOK25OVjN5OC9oNUNLbE9sLzJX?=
 =?utf-8?B?VFM2d2RzOFhlWTdXUlBhc0FRR0kxWkEydW5peUdIVkxFbGNXQnM3KzdNQmp3?=
 =?utf-8?B?NThWRVNEZW14cnl2QmdCdmtoQzlJMUJoY1J3dHVheUZiREFnNGkxUFl5ZWZY?=
 =?utf-8?B?UlVTbjhqZ3lnZ0hqV3hwMkZOWXZrWHhMaEcxTU8zdmVERDV5RTFzMSsza3g4?=
 =?utf-8?B?VitWWG9yc3FRcXlVWW04SWJydkNWMnJ0a0JudGNBa1Z1eFJTbENTRDdYNmI5?=
 =?utf-8?B?U1FMZmdVMnlsRzVrOENnRkc3SjhWcmdxcmt5anorZmYyNVNHcTZBdnpKbERD?=
 =?utf-8?B?V3cyVW5CdVhiVzNwdWJQQ21EZWdPS3M1OFRvZ25BYm5sdHF6aC9zR2I3alZr?=
 =?utf-8?B?WTFMWFhOdVhGcjFZaGl0UElMT0R1aG5zbS9KYnlOK3o3VndoTDQrUUlrazhN?=
 =?utf-8?B?WjRpYUc5NnNxbXZvYXAwSjV2RytndFNvUFJ5Z3dBYUNIa2VzQW1CMEVYUVNK?=
 =?utf-8?B?Zkorc1RpK0xaMmxwUFBFSklFMDAwMitTR1VpRUErdGVWM05DVWpscU04MURO?=
 =?utf-8?B?eUdLQ2pTMnhUTmZ5TjVTMmNSL2pWY3hFaUhTcm5nWjFxQXVnRlEySTZWKytC?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93cb2870-3c7a-481e-52ec-08ddbe9543c0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 03:04:05.9179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6z15TlCsWoNltj5ujeY4HuA1JSd+sNEgpaczrPAdYf+/8t/GU/q8GFy/t7o7nBR+4kMVOkhYs1+lXiee06LscdJb/xLREenrNsm3/trSClE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7869
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


On 7/8/2025 10:03 AM, Suraj Kandpal wrote:
> We only support resolution up to 4k for single pipe when using
> YUV420 format so we prune these modes and restrict the plane size
> at src. This is because pipe scaling will not support YUV420 scaling
> for hwidth > 4096.
>
> --v2
> -Use output format to check [Ville]
> -Add Bspec references
> -Modify commit messge to point to why this is needed
>
> --v3
> -Use a function skl_scaler_mode_valid which is routed throug
> intel_pfit_mode_valid [Ville]
> -Combine the check conditons [Jonathan]
>
> --v4
> -mode_valid functions should return drm_mode_status [Jani]
>
> --v5
> -Use skl_scaler_max_src_size [Ankit]
>
> Bspec: 49247, 50441
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c   | 11 ++++++++---
>   drivers/gpu/drm/i915/display/intel_hdmi.c |  4 ++++
>   drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
>   drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
>   drivers/gpu/drm/i915/display/skl_scaler.c | 19 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
>   6 files changed, 65 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..62b812cc0b67 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1418,6 +1418,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	struct intel_display *display = to_intel_display(_connector->dev);
>   	struct intel_connector *connector = to_intel_connector(_connector);
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	enum intel_output_format sink_format, output_format;
>   	const struct drm_display_mode *fixed_mode;
>   	int target_clock = mode->clock;
>   	int max_rate, mode_rate, max_lanes, max_link_clock;
> @@ -1451,6 +1452,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   						     mode->hdisplay, target_clock);
>   	max_dotclk *= num_joined_pipes;
>   
> +	sink_format = intel_dp_sink_format(connector, mode);
> +	output_format = intel_dp_output_format(connector, sink_format);
> +
> +	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> +	if (status != MODE_OK)
> +		return status;
> +
>   	if (target_clock > max_dotclk)
>   		return MODE_CLOCK_HIGH;
>   
> @@ -1466,11 +1474,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   					   intel_dp_mode_min_output_bpp(connector, mode));
>   
>   	if (intel_dp_has_dsc(connector)) {
> -		enum intel_output_format sink_format, output_format;
>   		int pipe_bpp;
>   
> -		sink_format = intel_dp_sink_format(connector, mode);
> -		output_format = intel_dp_output_format(connector, sink_format);
>   		/*
>   		 * TBD pass the connector BPC,
>   		 * for now U8_MAX so that max BPC on that platform would be picked
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 9961ff259298..03045d188817 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2053,6 +2053,10 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
>   	else
>   		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>   
> +	status = intel_pfit_mode_valid(display, mode, sink_format, 0);
> +	if (status != MODE_OK)
> +		return status;
> +
>   	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
>   	if (status != MODE_OK) {
>   		if (ycbcr_420_only ||
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 13541be4d6df..68539e7c2a24 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -14,6 +14,7 @@
>   #include "intel_lvds_regs.h"
>   #include "intel_pfit.h"
>   #include "intel_pfit_regs.h"
> +#include "skl_scaler.h"
>   
>   static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
>   {
> @@ -546,6 +547,16 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	return intel_gmch_pfit_check_timings(crtc_state);
>   }
>   
> +enum drm_mode_status
> +intel_pfit_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes)
> +{
> +	return skl_scaler_mode_valid(display, mode, output_format,
> +				     num_joined_pipes);
> +}
> +
>   int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
>   			      const struct drm_connector_state *conn_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
> index ef34f9b49d09..2f075748a34e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> @@ -6,8 +6,14 @@
>   #ifndef __INTEL_PFIT_H__
>   #define __INTEL_PFIT_H__
>   
> +#include <linux/types.h>
> +
> +enum drm_mode_status;
> +struct drm_display_mode;
>   struct drm_connector_state;
>   struct intel_crtc_state;
> +struct intel_display;
> +enum intel_output_format;
>   
>   int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
>   			      const struct drm_connector_state *conn_state);
> @@ -17,5 +23,9 @@ void ilk_pfit_get_config(struct intel_crtc_state *crtc_state);
>   void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state);
>   void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state);
>   void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state);
> -
> +enum drm_mode_status
> +intel_pfit_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes);
>   #endif /* __INTEL_PFIT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index a6ba9da03542..ad18ea7af3d5 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -132,6 +132,25 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
>   	}
>   }
>   
> +enum drm_mode_status
> +skl_scaler_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes)
> +{
> +	int max_h, max_w;
> +
> +	if (num_joined_pipes < 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		skl_scaler_max_src_size(display, &max_w, &max_h);
> +		if (DISPLAY_VER(display) >= 14 &&

I think the platform check is not required. We already have the max_h 
for the given platform.

So reject the mode for which hdisplay is more than the scaler source 
horizontal limit (for the given platform).

Otherwise, the patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +		    mode->hdisplay > max_h) {
> +			return MODE_NO_420;
> +		}
> +	}
> +
> +	return MODE_OK;
> +}
> +
>   static int
>   skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   		  unsigned int scaler_user, int *scaler_id,
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 355ea15260ca..692716dd7616 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -5,10 +5,16 @@
>   #ifndef INTEL_SCALER_H
>   #define INTEL_SCALER_H
>   
> +#include <linux/types.h>
> +
> +enum drm_mode_status;
> +struct drm_display_mode;
>   struct intel_atomic_state;
>   struct intel_crtc;
>   struct intel_crtc_state;
> +struct intel_display;
>   struct intel_dsb;
> +enum intel_output_format;
>   struct intel_plane;
>   struct intel_plane_state;
>   
> @@ -32,4 +38,10 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>   
>   void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
>   
> +enum drm_mode_status
> +skl_scaler_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes);
> +
>   #endif
