Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 960D4604649
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 15:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246DD10EAD8;
	Wed, 19 Oct 2022 13:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3814610EAD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 13:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666184706; x=1697720706;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bncps9lQxcEQikF1d8miyjuwND8RPowijOK4Mx30zzE=;
 b=lf3jIcK4BezLTXyCzAUKPP1keMCCnAaw6Xfi0oKvjaQW+ANJ3vO5uUrW
 JI+uQ4EfaZeOWBOrlq4/Lm5lcd6zbN/smCHcwjLnI3osl5md5aHtbIa+2
 oUk+F/XP7Xx3X62+uXk0PD5/9iUBryy43vEXPB9DDD07svcvCAaxiN9fv
 GHbGm8msKYxPYZWKg/ce/Ng2ga1f9Plq6IES39gFAnxy3OFcBYtkliGXg
 qLChC/JU+KBakd9GIAoEj1o2CE8B+/R9snzd1I0jzSESAYBD5BYx0nrBl
 oUNwF2QRi4dpenSYHC64t16atcI36xjMx7tlPuJGStLcvCIAE1y/v4A38 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="370621072"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="370621072"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 06:05:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="660338965"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="660338965"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 19 Oct 2022 06:05:04 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 06:05:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 06:05:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 06:05:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRxuA4oXpDdUdz9jJyl3XPUXBA2lTjyGZyH8UxtBkMQKf1mowik51vnee2M8oTQxR8CUKcaC9sU8ENVl1stZBhwUJ22cvv8kbTRCUx16njfGl2ledWDu3L7oR0nbniI4bf5Q8gPrk2Ly2NRI9vDEb9SX/hurOZ9fRX90haEyuSl47qW6868iFdMHXsomO+2pZ7Yr4eNu3/5tQq70+1Y8AHzbjmdzRPl0bcs5WeEtUkV8oOWpriUZobctLQ0hp+EYv16C4WyN306KEsh6OqjEPULpTpbLWx7+78KUgHmzipK4YkJPZTOETffP5OmP92HDuvemM7XbknL3GPkOpPFnEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NFW1MYShi+U0j6USx53p03KUW7xMmAG+fIooB7sUj4s=;
 b=Soc27V2kzs8YWQp3npvKjQytMeiec5xxh7x4IE0F2TCEd2tQ9oltPhfPyE3N+o7+uVMEUZyfwzCdwA+ntRR3YOK6v0unAIQnkFkv8tuhy6k9FB5g5w6wS9aKVX8yX0IWEIyawpD6PI0oWKVDmgxQAbLOneZzmXw1zTvyZJgz07V5XDXuewdNNEfy4tdW+cGdXM9C0GkOZhpSmJjuiikCxrZkrCBUneppHtQ6yyDseWYNezYyerQhd1wSfTPp/hFI71lEj/axwKzKITSMTy4jHgvBj1wh1ZvtudkOUIvjx7tPAdeeRZzA7YXxjahPU547wM2m1lzE73WyBRuaDiXCAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Wed, 19 Oct
 2022 13:05:01 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02%9]) with mapi id 15.20.5723.034; Wed, 19 Oct 2022
 13:05:01 +0000
Message-ID: <460b3975-ba14-5322-c808-5a4e7f20f53c@intel.com>
Date: Wed, 19 Oct 2022 18:34:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221019060402.2807360-1-riana.tauro@intel.com>
 <20221019060402.2807360-2-riana.tauro@intel.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <20221019060402.2807360-2-riana.tauro@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::7) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|IA1PR11MB6492:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c602fc2-9fb7-488b-7b74-08dab1d287e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SGiCnOzKI3yRJZXmfziaYe/lNRGZNA1lB6KCgrMr9Np6n/FkCGAfj2O8FLPHTlo90vyNlNam0ysOTNeP3246eIo8DAyRRytzmQtiAX2XSyBQgJb0egGdqZaWes4izur+5SQRPsagUwBJquk+KLuov6o7uznPe4zCsxrWw3mXrqTtCwS4urgTXkFrwQFWvEaVErkPl4yyUWGZFIrJOK0GthahUp/+BZT7YzBmb05ga/Cmq8XO1ahphxnYxYFezXR+zlAjKrTnO/RO6OhP/wOpdjN8/iGn2fYVqCkchqKH38rhS+wcQcHK3m+9MB5QWmjJYq0RzEPHjGB1PdHN0FmVEWOyzZTtfJZY+QiHb4vtL7tMLVXhxQv02PeVaKH/Oio1Tlx7mYKEclPGbVm4DgVG2ACPTc9HqeLYZATTkad63KMLGyMhnoga2YKQcx0vlfaUiCeSMZ64riE7Pg3HNMoS2M8ldeLjOUrVlQ9k0JobGZX6qq/ePE1tN1JdyzCLBceMEwKPckORLHyBYm2T1ZGGBBR2O6NmczzOfW4artVSBb65E/4Pxpe619bVFC+nVbHXgm0KShbILKLPs5p5GQr+LnPZUlrfQw7BN24K5LcPB0ND2HnRokqyuoUaHUW/hgdJX87POr8UxXK6xNJiNmAKXGmEWF9tWjmngY4uonSmHYwwN4zrDTkmc7U4s7nlm5J6fLcS1dK4DzfKkQuJc25C0J+bDWMunoMh4ctYs1Nx696O71JoCf7Rz+dk7OrHwNuEUxqIK5MupVTWVn8Xvtadx2Df0phx+fPBfhvqNUK0Xzk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(396003)(136003)(346002)(451199015)(316002)(2906002)(186003)(2616005)(26005)(6512007)(41300700001)(5660300002)(38100700002)(8936002)(66556008)(4326008)(8676002)(82960400001)(66946007)(107886003)(6666004)(55236004)(53546011)(66476007)(31696002)(86362001)(36756003)(83380400001)(6506007)(6486002)(31686004)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2Zib3p4VHZ0NGFlVVlpZ0JEcldYS24zQU00TzFIT0t5aXlTSDd3b1RyZ2g2?=
 =?utf-8?B?aTFmYmJQMi9GZHRWWE9GbFJacTRKanVsbUNldWNnVGtieExGcU5TYk5kRzBs?=
 =?utf-8?B?ZVVoZ0piY2d6eUwxQlBCMk9WS2VCVEVqei9XZFRkbFF1bU5pSmlVRzBhR3RB?=
 =?utf-8?B?bGg5N3EyRnVEeWxYU0RMUWtMVkJHV1MvQW1UN2RtN1JrYUYvQndHWjdqTzlO?=
 =?utf-8?B?NC80aGJ6ZW1MNXFWUFZQL01WTTJBWlJzazd0clArZXFhSEFZdWlLb2FKZ3NE?=
 =?utf-8?B?K1liQWx4NHF4ZXExQS9Vdk1veEN0ZFpWZVlHSE9wdU85MG5DN1F2c3ZmWHlr?=
 =?utf-8?B?QmhqUHJlSkEybWV6RmJvY3J4Z1ZUQ2RlL0tvQWtEOUpWb2tsNnMzVWRxSzVo?=
 =?utf-8?B?cjhJclFETk9iZzBpVUR3bkZvRDd3aXBlWUxjUUxZR04wd3UzejE2ekNwR1hR?=
 =?utf-8?B?dXNYcnNndmVtaEI0dE9wdWowWFpjRWwxT1Ivc0FqWEU4SytYNzlkb1Z5N1Mr?=
 =?utf-8?B?UWVkL096czhJRjFlQi9kZmFVZjFsYUtwa2dSYWFrOEduMFhVTS94MWc5YTNV?=
 =?utf-8?B?RlpPM21xNzBCdTY0engrM01lTXFBaXFsUDJ6c0txbHFPbDNmTSs5NGJENWxn?=
 =?utf-8?B?bDFLaklLR2JSUDRQUE9vWGpJYVVKSmM5ZURUdzZNaUZ2QWtzaUd3MFpQYk9y?=
 =?utf-8?B?YlNuc3lPVHJTQWZlR0FxZGphRGVTdDcvbnJ1MVNuRGU4ZHFqSkVmeFFWbnoz?=
 =?utf-8?B?Y1hHdXVNUVk0OGFrcjc4NTdBMlViRTZ5L0x3ZVpEMTlYdFJteEQrT2V3UG1P?=
 =?utf-8?B?d2RCYjlhOHVqWjdtS2RqZ2lHdnZzZ0hBdklaNFl4TGZJNHJLVE9uL25QZzNY?=
 =?utf-8?B?VjRYaUFoVjNJSXVlZHNXdlplazFZV3l1U3JsYWFIVGJJaVFOcGQrMEcxM21T?=
 =?utf-8?B?WWhSVTluV3pHTnZlUTlXd0ZkQkxIcE1kSXo5UEZBZzBZeVNaV0swL2ZkblRk?=
 =?utf-8?B?ZnBka09najRwYnVEdlB1YS80b0JUNmt5VTFpS2tZU1lWeWpkVnJxRXIyMExU?=
 =?utf-8?B?VVR5RU1Gend0QW9sc2dsMjVXM3lCaThiS3NjUEdJKzk0ZjZiNzRXQTUyREIz?=
 =?utf-8?B?b0xCeFdJUnRXYUdlRWFwdGlaOXlJa3gwak1EWGRGVWlDYnhEajhrczdTcVVL?=
 =?utf-8?B?bTJxZktDRFhyM3FEYWxQZFRnWU1TZlVMbDFkMGI1TGMzdlFIRVhrUHNMQXg4?=
 =?utf-8?B?eWp5V1EyYkNjanJZcGxiOW5UdmZndEI3cnNabGh2Z3R5VWlNVzFPVngzYWkx?=
 =?utf-8?B?NVhJN3pIOVJGNDkxL21jNmozdWRxS3NKRTVDK3dxY2lwdDUrdXV2ZnJzMFZs?=
 =?utf-8?B?Y0lnWis3U0NtOURwazUzdG1ld0VFSUs5YiswRlpQcm1ybFRNVHhGTG1Zd2sx?=
 =?utf-8?B?ODNleHZVTzAwaEVZWTExaEFaWnhxbGNGdXYvUzIyQ2R4YVpudTVXT1lLU0VE?=
 =?utf-8?B?ZnRVVCtSVGxTZ0tPRmQ1cXdEQVlOSk91QmxvTFp0cGh5dDM2aXhpZkNUbWVL?=
 =?utf-8?B?cHZiZkVFOGk2ekRlOVBhQ01iaWJSSHVXZDg3U0hXK09uU0lXbUw5Zm96Nnph?=
 =?utf-8?B?OHU3OHJjM1dQR1I4SUh3a2hCN3FhZ2EzVG1zNE1YOXFuN3ZLVnBUTDZaRHlz?=
 =?utf-8?B?dUxQaEhUSzgzK0tYYmwxNXplYW5QUUxMS3I5b0wycWVzWGtsOVpJbDE3OXBv?=
 =?utf-8?B?SUlJdFdTZTY1ZHRnbTNnQWg5Z053YUYvdi9oUjJNaWZXMGh1eGpYd3BpZXFZ?=
 =?utf-8?B?dzQ5MGo5bjFKWXVIYzc0cVJvbGVOZk1xZDExamZjZXRrQ0ZuWVo5a2djaDgz?=
 =?utf-8?B?QnVLaGtEMVhkY3FVTzhBODk0akZsT2x2V1orRW0rT3hTTnZxcXlmNXJ1dk5k?=
 =?utf-8?B?Mi9zaTNMRUJZVWV6d2hxNjlRTHpzR0ZuYllpKy9PUVZYcThsdHNZMkhHcnR5?=
 =?utf-8?B?Q2d4R2FoYmgwVUhaaE1IWVVmendBcEJpcFJiSjBjSzlwQ1lHZklFaDIvRGFH?=
 =?utf-8?B?MFphcjRKaHdXY01DMXB1VTNuZEUweVJ5RHFVc2twT1hubGpVMjRzYVZSQ1Bn?=
 =?utf-8?B?aXp2aG9vVkxoajY4ZVhhV3FzVXE2UEpXWS90a0RobVJ0VUFVMVA2cFRWK3hq?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c602fc2-9fb7-488b-7b74-08dab1d287e2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 13:05:01.0812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +fo7K5np4Fc8WRTqlhX3vg3naLLuRFrtKTe5GibpKlEVzIV7BHRkKxsHlmJ2KU4wtmZ31BexRFufz4P25HAOMOkZdMGPeQ4OQ0k0tUqKsJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/selftests: Rename librapl
 library to libpower
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



On 10/19/2022 11:34 AM, Riana Tauro wrote:
> Rename functions in librapl library to libpower.
> No functional changes.
It renames the files as well, it will be good to add that info as well.
> 
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                   |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_rc6.c          | 12 ++++++------
>   drivers/gpu/drm/i915/gt/selftest_rps.c          |  8 ++++----
>   drivers/gpu/drm/i915/gt/selftest_slpc.c         |  2 +-
>   .../i915/selftests/{librapl.c => libpower.c}    | 10 +++++-----
>   drivers/gpu/drm/i915/selftests/libpower.h       | 17 +++++++++++++++++
>   drivers/gpu/drm/i915/selftests/librapl.h        | 17 -----------------
>   7 files changed, 34 insertions(+), 34 deletions(-)
>   rename drivers/gpu/drm/i915/selftests/{librapl.c => libpower.c} (69%)
>   create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
>   delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 2535593ab379..6bb291312c84 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -339,7 +339,7 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
>   	selftests/igt_mmap.o \
>   	selftests/igt_reset.o \
>   	selftests/igt_spinner.o \
> -	selftests/librapl.o
> +	selftests/libpower.o
>   
>   # virtual gpu code
>   i915-y += i915_vgpu.o
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 8c70b7e12074..aacff50dfa89 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -11,7 +11,7 @@
>   #include "selftest_rc6.h"
>   
>   #include "selftests/i915_random.h"
> -#include "selftests/librapl.h"
> +#include "selftests/libpower.h"
>   
>   static u64 rc6_residency(struct intel_rc6 *rc6)
>   {
> @@ -51,7 +51,7 @@ int live_rc6_manual(void *arg)
>   	if (IS_VALLEYVIEW(gt->i915) || IS_CHERRYVIEW(gt->i915))
>   		return 0;
>   
> -	has_power = librapl_supported(gt->i915);
> +	has_power = libpower_supported(gt->i915);
>   	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
>   
>   	/* Force RC6 off for starters */
> @@ -61,9 +61,9 @@ int live_rc6_manual(void *arg)
>   	res[0] = rc6_residency(rc6);
>   
>   	dt = ktime_get();
> -	rc0_power = librapl_energy_uJ();
> +	rc0_power = libpower_get_energy_uJ();
>   	msleep(250);
> -	rc0_power = librapl_energy_uJ() - rc0_power;
> +	rc0_power = libpower_get_energy_uJ() - rc0_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
>   	if ((res[1] - res[0]) >> 10) {
> @@ -89,9 +89,9 @@ int live_rc6_manual(void *arg)
>   	res[0] = rc6_residency(rc6);
>   	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>   	dt = ktime_get();
> -	rc6_power = librapl_energy_uJ();
> +	rc6_power = libpower_get_energy_uJ();
>   	msleep(100);
> -	rc6_power = librapl_energy_uJ() - rc6_power;
> +	rc6_power = libpower_get_energy_uJ() - rc6_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
>   	if (res[1] == res[0]) {
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 99a372486fb7..3287698c655b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -19,7 +19,7 @@
>   #include "selftest_rps.h"
>   #include "selftests/igt_flush_test.h"
>   #include "selftests/igt_spinner.h"
> -#include "selftests/librapl.h"
> +#include "selftests/libpower.h"
>   
>   /* Try to isolate the impact of cstates from determing frequency response */
>   #define CPU_LATENCY 0 /* -1 to disable pm_qos, 0 to disable cstates */
> @@ -1099,9 +1099,9 @@ static u64 __measure_power(int duration_ms)
>   	u64 dE, dt;
>   
>   	dt = ktime_get();
> -	dE = librapl_energy_uJ();
> +	dE = libpower_get_energy_uJ();
>   	usleep_range(1000 * duration_ms, 2000 * duration_ms);
> -	dE = librapl_energy_uJ() - dE;
> +	dE = libpower_get_energy_uJ() - dE;
>   	dt = ktime_get() - dt;
>   
>   	return div64_u64(1000 * 1000 * dE, dt);
> @@ -1147,7 +1147,7 @@ int live_rps_power(void *arg)
>   	if (!intel_rps_is_enabled(rps) || GRAPHICS_VER(gt->i915) < 6)
>   		return 0;
>   
> -	if (!librapl_supported(gt->i915))
> +	if (!libpower_supported(gt->i915))
>   		return 0;
>   
>   	if (igt_spinner_init(&spin, gt))
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index 4c6e9257e593..494e7a486b07 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -161,7 +161,7 @@ static int slpc_power(struct intel_gt *gt, struct intel_engine_cs *engine)
>   	 * actually saves power. Let's see if our RAPL measurement supports
>   	 * that theory.
>   	 */
> -	if (!librapl_supported(gt->i915))
> +	if (!libpower_supported(gt->i915))
>   		return 0;
>   
>   	min.freq = slpc->min_freq;
> diff --git a/drivers/gpu/drm/i915/selftests/librapl.c b/drivers/gpu/drm/i915/selftests/libpower.c
> similarity index 69%
> rename from drivers/gpu/drm/i915/selftests/librapl.c
> rename to drivers/gpu/drm/i915/selftests/libpower.c
> index eb03b5b28bad..c66e993c5f85 100644
> --- a/drivers/gpu/drm/i915/selftests/librapl.c
> +++ b/drivers/gpu/drm/i915/selftests/libpower.c
> @@ -1,23 +1,23 @@
>   // SPDX-License-Identifier: MIT
>   /*
> - * Copyright © 2020 Intel Corporation
> + * Copyright © 2022 Intel Corporation
>    */
>   
>   #include <asm/msr.h>
>   
>   #include "i915_drv.h"
> -#include "librapl.h"
> +#include "libpower.h"
>   
> -bool librapl_supported(const struct drm_i915_private *i915)
> +bool libpower_supported(const struct drm_i915_private *i915)
>   {
>   	/* Discrete cards require hwmon integration */
>   	if (IS_DGFX(i915))
>   		return false;
>   
> -	return librapl_energy_uJ();
> +	return libpower_get_energy_uJ();
>   }
>   
> -u64 librapl_energy_uJ(void)
> +u64 libpower_get_energy_uJ(void)
>   {
>   	unsigned long long power;
>   	u32 units;
> diff --git a/drivers/gpu/drm/i915/selftests/libpower.h b/drivers/gpu/drm/i915/selftests/libpower.h
> new file mode 100644
> index 000000000000..5352981eb946
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/selftests/libpower.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef SELFTEST_LIBPOWER_H
> +#define SELFTEST_LIBPOWER_H
> +
> +#include <linux/types.h>
> +
> +struct drm_i915_private;
> +
> +bool libpower_supported(const struct drm_i915_private *i915);
> +
> +u64 libpower_get_energy_uJ(void);
> +
> +#endif /* SELFTEST_LIBPOWER_H */
> diff --git a/drivers/gpu/drm/i915/selftests/librapl.h b/drivers/gpu/drm/i915/selftests/librapl.h
> deleted file mode 100644
> index e3b24fad0a7a..000000000000
> --- a/drivers/gpu/drm/i915/selftests/librapl.h
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2020 Intel Corporation
> - */
> -
> -#ifndef SELFTEST_LIBRAPL_H
> -#define SELFTEST_LIBRAPL_H
> -
> -#include <linux/types.h>
> -
> -struct drm_i915_private;
> -
> -bool librapl_supported(const struct drm_i915_private *i915);
> -
> -u64 librapl_energy_uJ(void);
> -
> -#endif /* SELFTEST_LIBRAPL_H */
