Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E055A60D89
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 10:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1159E10E237;
	Fri, 14 Mar 2025 09:39:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PDAEgmXe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E190A10E237;
 Fri, 14 Mar 2025 09:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741945178; x=1773481178;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qih8Rrr3fOwyz6P0p5C7ANaj2aSjmLXyTG+xMrAhsH0=;
 b=PDAEgmXeVVNXkT3+2Na7zm6Y7EvDtUG40IK5vZcg2i67ASB+8LVM4PZB
 8ptHh68zurCgFowQjOWKzVnWIS7JgPpx0QEa+oiBPOqrLsFK4g3onfu/8
 9pqxejU56ZY+CcT+4OS4yQD0aCzzxP/dzKbRUNtyvLpSQge8RqVMsUBCL
 zZSYnto4+N6uUhWZzxZ5SpCLF6MOmDovMYr58vLURsk01RrWtbVjChZ8B
 O1IgPhG353h8Vll9GIbRGX6MwKQOLXzUMcQmpi2csGM+ntcsrbHWCGndX
 pvd7ZlgMwPx8Y7hQGJmd0Xr6DddKO4pGpgyaIHqMCISsHZ/Ocgv4ZGcYF w==;
X-CSE-ConnectionGUID: RVQ4BoOJT46mvFjfqDP24g==
X-CSE-MsgGUID: /upVPn6sRw6+9uNq6FE2Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="65548994"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="65548994"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 02:39:38 -0700
X-CSE-ConnectionGUID: 62LVq3vQSDCYJAwqVbVvqw==
X-CSE-MsgGUID: ooObVG17QCiJMcPoQLaqvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152077674"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2025 02:39:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Mar 2025 02:39:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 14 Mar 2025 02:39:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 02:39:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tNtRkJL52/aYzjY70/FxZXK+VPmYsX7nJ+5xy8Br2ghxuq/wlHycLHxnXBfP5IC8h9FrUiJ9LVHuXld2eho+IW/1IsRhV9b8JeUbUQOsWZtEdpUSWg5z4bNwD5s12mBOcVBYXTSIMrGmsahKdl9CBYIvB+OqAVIEKMCMyssizEUT/SN4xPraqqLHu6aI8pXYcgUMJo6yWuYG4Mqyd322kz+znOR4dKLVd/PbAWTuAOXG/0vx+xsvc8+LH4giHLcPu4LNEqRCLcNto4ujKjIHpywHTgnBTyJ/fT1mR8t3Xqdoe7oYQibv+eNgCYwMOZKU4QBQDIHlecEDTeR7D4e94g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ytRisfTNqEbNOpw8tmsLYeyVBybZHbTqDNZXyopOxjE=;
 b=ZBpPCGDRIiP3ENvg22Z1VzcOCoaWSrV/Nrl7donrSoYmE7OUI2jSsgms2uaVwUrAnxDPhH2rRmMEN3fHFxmuVig0Kd5vjsmijFQ5xQ9mMMiFekA/rLZzNi0ixucS86B6yn5P9v+WZMB5b+vku8etLeRbBFs51dv3kYZnBOW/sdNaCf1idLLakTze0PbB/dY+VYrh+NgwqeSQpiGAZ19hw0tG+KkoGAAJjWvbhzXGEE4Oo/exURz6fyeqUCn+Mz4IKi8jia3m3PARDV5pUVtkFEULccvAW5Z7IhW/Jb4r860SIwVwL+vROx1Xq4DYTU8OaCa9rKvNBPOkfQJStIWtvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7793.namprd11.prod.outlook.com (2603:10b6:610:129::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.29; Fri, 14 Mar
 2025 09:38:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 09:38:47 +0000
Message-ID: <11466abd-6cd6-45ed-871a-45a88cc450d2@intel.com>
Date: Fri, 14 Mar 2025 15:08:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Maintain asciibetical order for HAS_*
 macros
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250312054424.1628358-1-ankit.k.nautiyal@intel.com>
 <87h63yfq2m.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87h63yfq2m.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7793:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a73f239-7f56-4f60-673a-08dd62dc0512
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eFJQa2FpVmhWN1dSNDc0MldqYXVkQ3RoM01rOWNLMFVYOG1mR2s1UlgyYW0y?=
 =?utf-8?B?Tllva2hYM3VOVThVWDZZa1Q3THRmb3h2T2xqbFRGa2tYZnZCak1aWm0wdUZH?=
 =?utf-8?B?SzJaZmxHbCtqNk0veHdhTFlwTHZlTTQ4d3R4VXd0S0E0TWdNbVZKeVF5aFRR?=
 =?utf-8?B?RElrQS9zRUhXSU56b25QNUxtM0ZFeDgyMHAxVkRGMEtLWTNMTUJqMFhyS29o?=
 =?utf-8?B?N0F1Vk4veU5WcXVneUVXWW0wRmR6emdtcU5OOGpXZ2FFb0lMbmVyNC9vNEpC?=
 =?utf-8?B?UTNnWlBwUTBVU1ZrcC9WUGtHR1A0ekJQK0lGMDlhSy9tMWc3YWJ5Q1YxU3hM?=
 =?utf-8?B?UmhvU3BqeW8zanVJbzlaYmEraGcyVXpEWG5kS29ZeXBPY0l6SG1qZEpBMFpU?=
 =?utf-8?B?T1ZMK0htVmxGdStNb05QVnpudUZWbElkdkNqMGtVMnFpdjExdGpXM09qdUF5?=
 =?utf-8?B?RXhHMHNVa0Z4bnhzdnBBWEFBTWdjanBvTnFVaFEyR0VSQnYydnUvaEJGcmda?=
 =?utf-8?B?M0QxblIraTcxdUdXRUZJQ3JVcVFlWm05Zkk4Vk92SUU4OFVnYnRNUlhnYkpU?=
 =?utf-8?B?RWQ5ZmtZL3FMbkVtY01iSkFjQ3hJR2dDVklieU51Zit5aU50K0o4NzhFNEN4?=
 =?utf-8?B?ZnZrUjM2R3NXbDA4Z3V6aEpZUFUvc1JzRzdpNENWMFE1SWl3bGdCaDhTMk40?=
 =?utf-8?B?VFkxRURVeVFHZUU1a05DQ1ltYnhCODZDV0dPc3plTnVaVk9Hb0tYaUNxbXNX?=
 =?utf-8?B?WXRwYkF5cXVOTE5nU0krVFdnM2tpVXdjRnhxSFMrNnh4TFJncnhuZVRxNUx0?=
 =?utf-8?B?dmRDZm9yZlRJQXpVVjNRSWMvQW1oaGs0Qkt4ODMvMVExMzczTEYwaEpBYVJu?=
 =?utf-8?B?dUJ6R3h1WXVxVmlUUzhWWlVuamRQWGoxRzlsdlZkcHpWWklkMjhuRFo4WHRk?=
 =?utf-8?B?V2ZVTFY3N2w0aGk4bzRSUlA5UzJ0WDRhTmxBdndaWlBhNFJDRXlodTJJcmt2?=
 =?utf-8?B?VWNqTERwcyszSFFKbjhtUkZDSUZOVUtvZkxYUVdDR05TYlh0bjlQQnBtTkxX?=
 =?utf-8?B?TXNpM21qa1FlZlpwaERzY2d2eHZycS9lZnZzaHM4SlhLaDFtOVM3WllVR3E3?=
 =?utf-8?B?aDUxallOdjUwK0E2bFRVY256T3UxLzlhSElVOUpOSkdya0I1QnlqeXcwbTFN?=
 =?utf-8?B?eHRsSHhMUlFqOFBVdUdtYUg4TklZeUtIZTZ1eFdOWW5vNkN6a0tXWmlxc3Yw?=
 =?utf-8?B?MG5BWVhGOTdJSlFQWkkrcW5zOG5nMVBpSUc2djl4cnB2L0tnc1hYYnpWaGtJ?=
 =?utf-8?B?Z0NVZmI4bTlISTF4enJhZGJHYzN5WGpSQWIzLy9SeTVEMU9kekZKTG1RckRW?=
 =?utf-8?B?NzRFSk51OVErL0ZtYlBFUFhEc1NPUldCYkhZb21GaHkxb0F1dVRyVGduSW44?=
 =?utf-8?B?eWR2b1EvTkFGK1RvSTRvamFLS1NoaEhaWjg4b3JzQlEvRVRlR1l4bnlQUHlO?=
 =?utf-8?B?VFFYaEFCdzNsclc0TVVYZkNYZDhLbXFFZTJnU1doNUl3NFVyaG5HNTVEWDhu?=
 =?utf-8?B?TGhLd1lNM0JTTyt0Q2FZR1UzTjNKa0ZhUlBOdEd3NFhjT1FJZ3dTVkNnc1l1?=
 =?utf-8?B?VUVwOGhTRUw2SzVSMkJkb05neW1hNmVqREc0ZXRVV3VackUrYUZ3QTZWMXlW?=
 =?utf-8?B?UWltRmxPODV5NUJkZzUvR2xRbk9SbzFldnFZdXZzSmRkZW85cFFNYzdmN2FO?=
 =?utf-8?B?c2xwVjNGQ2hYT3dKY0VqNVI5ak9oenBRYmxOdkJOemZxNVR2NG0wTklUNXRI?=
 =?utf-8?B?RThiN21yOHlZeUlZYjlZejRjVXR0KzBzdW9LK0QwRHpkVk85c21tZXdyYjIz?=
 =?utf-8?Q?0AW+lP8IWv8yW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVJlMS9PUHV3OTdnSVBhc0NXK01PcG53RGlwZXloTGhVOVdZZkROaEVpL2hI?=
 =?utf-8?B?Y1pSMEhnM2JNcEo0bWxxZEZRc05ublVBUUtTQ3N1SEhGcUt1dmRSMXVFU21H?=
 =?utf-8?B?NE8ydWhPNVczMXNTMk9oYzBHVjFoQ1U1dFdPQ1VnR2NKemF3T0pUaURpbUpR?=
 =?utf-8?B?QS9Vcjc0SWxWdjNNVTJ4Z2psZGxOZlBDRGNMdVNwTGcvUXptS2EyZllLUzFl?=
 =?utf-8?B?Q3M5UHRmTHBnNEpBelBubUJrVmpScnkrUUQrNE9hREF4UitmV3ZsUzhIUHlk?=
 =?utf-8?B?dmhNWGR0OFJCcmFkMnorYWVLUFF0S3AyK1d3VDVySG8wa3V1VnM1ZWEyRldB?=
 =?utf-8?B?WnpEREdQZEhVa3VqUFYvNWVKSWltcmJzZGRtWHFlMGQ2cTQ3RmxsbWpUL3Qr?=
 =?utf-8?B?dUsrL3N0Rk4xUitDV2RHblRPaEl0VHlFbm9ZWWo4S0hNNVk0V3pKdnBlRFBD?=
 =?utf-8?B?NGVlT2ZOSW9Rd0VoNm5iSGVvSThSNVIxVmZXQk1ZdXNXSXpLWjNlT3hzN3pJ?=
 =?utf-8?B?R2kvOGFqa0pERENyVVJoWUVJZ05yWGFHQnNLYi9ieVFkWnozMFV1MGJIMGVi?=
 =?utf-8?B?Um83VmY4QTVRWDVWWFI3bVgxUW5Ca1MycXhBeWpIN3hLUnlBd2plK0xGY05M?=
 =?utf-8?B?WGN4UUQ2Mlg4MkdJSmZ0Qkx1Ty82aHdoREU1ZUY5cGxSb0VCdkswa3V6VXBo?=
 =?utf-8?B?QjRmb3ZyaUZLbmVWWFRpS1Vzd3pXZVlqQmkwdEVjVWU0TnhZb2swVy9OVVZY?=
 =?utf-8?B?czBIbGtZdXRIZndoOVZOSldKTXFSMXN3UTdDdHU4bURxbS8vWWUvYUx2NTlP?=
 =?utf-8?B?ZHlSVFozcTFTNmdUYVFYYWZ1U051V1ZGZ3lZTGprM3I5VkZ2UEIwWEUvYzVE?=
 =?utf-8?B?MXByODkrUkFKSmNBTktuVEtkc3FhTkVoa1RMMnN4SkppZWdHYW1FdHM4dU5a?=
 =?utf-8?B?TWQxanYzckxYSTRCRTI1UzBBRVdXNXJmcndmNk80aTBGeE5DYnVXRTJoakRL?=
 =?utf-8?B?Z1VFZkc0a0hwcHViL2Y3TllLTjVnbE05aXF4N3l3WlFIczE0VDFoMkQ2YzNM?=
 =?utf-8?B?TVZINlhTWm42YldDdmluYit1aGlVbHFSV1NoYmtxTkdMQWt6WWxtV1lFbGpL?=
 =?utf-8?B?UWdwcndjZG03S1pkaFZ3U1E2cXlpV3luY2U1U0F4VWhZZ2NjOW1wam1oakU4?=
 =?utf-8?B?dnVCc01VcUxHSUl5alZNQmlBN3BHWDREUEhzSk4yTno1b0tKRkxSdlVkM2FF?=
 =?utf-8?B?aU9ueXhEUjdHS1FQbjNOZDB6MmlFRlJORFJpeDlRTE9OWVV2YlhWN3VMRnkx?=
 =?utf-8?B?bUdUOHdVZXFlMFEvenRPbEZKaEw2SmVoYWpJRzkyMWd3NDdhVk9JTXgyK1NC?=
 =?utf-8?B?ZlNFeWsyUnNkeWRRU2ZZQmxKbnZxNWRJbWluN3dwSi9FZXluUHNkcElMdEtQ?=
 =?utf-8?B?ZmxHN2k5dWw4WkRtZUhaYzJ0NVhtVEdzVFRaOGpoMS84UitjdERyZ20ydWN1?=
 =?utf-8?B?SkJ2VmNzWGdTZk9xYjZmUWdPNG8xOVA3Q2EwVjFyWlRyYkM1UkhNNUNQVTZ3?=
 =?utf-8?B?VjVrRWdkR3BMdWgxQ1RsbzFvR01EenhrRlpCNHJWaytINHVjR3QzU0JHQkpT?=
 =?utf-8?B?eFk3S3FNZW9yK1BQVXZST1hoTGsyZmlJb3lkM2dRL2VHbjNDaXNuYXM2cXAv?=
 =?utf-8?B?Y3gzTE1ZMXo4MzdWdzBTWXJXcUI4MWJkdUtFQkdCd2NQSWlrZ0NaMTczVGJ0?=
 =?utf-8?B?ZTZReG1mbitWZFpyQStIcm9xUGdlbnRENDJSUElVZ1hsOStxUndvZ2t1L1dz?=
 =?utf-8?B?VUFtbjJXRzdEdnQvck95djRnWFJqS0FCcVZrK09CWGQ0ZTJ3ekF4UXpjT1Ni?=
 =?utf-8?B?T0wxU1M3QmwvSUp6QjN2SjVRNzJ0TVd3M2RJUlBmS3R4cGNjYmp2WjRDZW52?=
 =?utf-8?B?RmdjT2RCa1hMRi93L3dJdWdLSmVZM1M1Rm1sUXpzRnpQL042ZTFWTkN5cjVZ?=
 =?utf-8?B?Nk9VcEFkSjlxNFljandYdjhLM1d5dVh0VzFWYkV1ZGNzUmJzN25tRmtJc0JI?=
 =?utf-8?B?dGw1QW5ZMnUrT3ZyMmZRVy9kRS90ZGFNUDdxZ1RNUnBreUJJNVc3eTZkdXhw?=
 =?utf-8?B?S2wzWG0wNE1VSHgrcjlzRkdVNjh4TTlZQUtXemxKZjF5TXFCSkxHWk82RCtp?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a73f239-7f56-4f60-673a-08dd62dc0512
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 09:38:47.7394 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lLjRmOB3yYzVlFWhX/2LXQY7bmhYmZXFEyXFJ8QqAl3EJwhiHWzCORoEwRUa2WJq6BJVaXwBaILhDmOCknDlhvY6CO4HJYxrt/KspQ0UxfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7793
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


On 3/12/2025 4:55 PM, Jani Nikula wrote:
> On Wed, 12 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Move HAS_* macros to maintain asciibetical order.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Thanks, Jani, for the review and for explaining the details. I've pushed 
the change to drm-intel-next.

Regards,
Ankit
>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 717286981687..4e9630f65af6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -143,9 +143,11 @@ struct intel_display_platforms {
>>   
>>   #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>>   #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
>> +#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>>   #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>>   #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>>   #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
>> +#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>>   #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>>   #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>>   #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>> @@ -156,9 +158,9 @@ struct intel_display_platforms {
>>   #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
>>   #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
>>   #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
>> -#define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
>>   #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>>   #define HAS_DPT(__display)		(DISPLAY_VER(__display) >= 13)
>> +#define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
>>   #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
>>   #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
>>   #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
>> @@ -166,8 +168,8 @@ struct intel_display_platforms {
>>   #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
>>   #define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
>>   #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
>> -#define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
>>   #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
>> +#define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
>>   #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
>>   #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
>>   #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
>> @@ -189,8 +191,6 @@ struct intel_display_platforms {
>>   					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
>>   					 HAS_DSC(__display))
>>   #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
>> -#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>> -#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>>   #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>>   #define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
>>   #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
