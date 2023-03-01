Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6B56A6C0D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 13:04:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B4410E0BB;
	Wed,  1 Mar 2023 12:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3220D10E0BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 12:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677672260; x=1709208260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zMw6a7c5qyAejMHu9y+f/OS4Bbs0BZtgwEBanhbYJ5M=;
 b=Txm8CVk8WflAfUwXiOESUeVNfPRd7e4moc2SPUx9wFRF2vNCkQmGgejf
 sSg/dv8SGR4DNgsW4HFd46hitsSfUZzbOglf3tBodhODU7pZSPeyUhbOB
 RM7/Jc/k5G+MljoJHMOkNRbT7W4t8zY8Lt6THehwhb+/3prp//i6ZYG2i
 pwfQp0Z/0/mn/ONlPhJt1ThdEQXJkvHjcT2Jyt+YDfzNW9mMi4ucdF/3c
 HOFrrrU/XW79nqbBL5S1dzTE5R+YanHiyrWFUsOWmzdjDRLwKKwcZKrs5
 Iq8aqTNRWXZ/bt7RpjuK3C/AQomgfx4l7ggIlW0axII1nk+MSYY8fllvY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="399171975"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="399171975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:04:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="667835574"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="667835574"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 01 Mar 2023 04:04:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 04:04:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 04:04:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 1 Mar 2023 04:04:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Mar 2023 04:04:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R/cfC2YO3MdOiPN7ReZLfohk+jDlbqGbA+NwZpW960HWOyaBPRdiCD72n9rL36q9NHJIVVoTne2QNZueyFPuDg6f+ylK4I+SCv81r11040ylfxf6MlvywS46mIzUfv+u3E0051WjOupujuPCRsDLgtoL3Nxui8+8/VpHoxPryQ6PIWOCjEy2vvirr6Cb5eNbDDYDFS/gsPUlzpPQzHdzpWzaN0wYYSrWlN7Hj5MS1E/bDCwMsUvRBukW5blEAyG0T9LSyTs8tXnCLBYtyNqxsKEpsKC5sZvgpIedM8ojcIb4UWMMonOAIin9tx5ATdurP1wavTpMH24CdAm3UGkekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e8cpv32c+yBqN3hlJJwSFk0hsD81+q8TY8FFQ6f8ZKY=;
 b=O5GgGOwM82rkfUXflmFMgLKfKD7DGDuOMJohRrTMm8If5q6/bxJZkiTiQy1F9FbGmhQ/BGFoX4pRBlIEQQZqi59TlAboXurAifR8XRIO7cQb7E1eFU5PWOV18R2K4tSQWaRBBbKimWPVC/vX68la++oe37mCrW4twHt/b6ildiK1bR7ddvq7UB6Fk479wFjfUF5RfUGuPaXJLZRaZ66uqO2JG6q8PWMGR8uXpe3brPkzKXp7NwU4j8aTu/vkSPqI9DoTU37w1L6O7KF/veO0mNQSR6Ulpcj9dHlbfAaz03aYcOaiGNL4eWoI225wRHFN4nnHF9JX72aEqrtGS5tLsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SN7PR11MB7115.namprd11.prod.outlook.com (2603:10b6:806:29a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.25; Wed, 1 Mar
 2023 12:04:17 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68%9]) with mapi id 15.20.6156.018; Wed, 1 Mar 2023
 12:04:16 +0000
Message-ID: <431c924a-0584-6871-c57d-c6a43ed2b206@intel.com>
Date: Wed, 1 Mar 2023 17:34:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230223100503.3323627-1-anshuman.gupta@intel.com>
 <20230223100503.3323627-2-anshuman.gupta@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20230223100503.3323627-2-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::18) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SN7PR11MB7115:EE_
X-MS-Office365-Filtering-Correlation-Id: 233cb74f-ee9f-4631-65f3-08db1a4d14ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NONijRQsHSgrhdh1yGJBytS5OP5sxUetTGe9XEKemUswJqV4TItF9de/uEiBR88EOiVMBn3BqS4GUjJG7RysRPIglv4+9ZbNHC5lU3FKZUVfurwkYRVEjA4/eMDBCT3uU+b2qepFKNfggRL/x4m8A2YA4IpNTdRe0v2hrQyeosRMhZILLzJmuJ1OPsX/cBZXul2jOslZ3T7fFY6azR8B9uu6hjGH0TGXPz8ZPVsg1xcXj07o7BIX9UXRfTuNTsqt5D0azclaF+Za4648nXO0GM3X1Msz/CgeIn2S36M4hVcR3RVanEuF6t0atT1DTYeKTqip591ApNS8IvuaoeMCwmkLJ3rA/EK15JbmUJ0J9MZASMwGqqrrkJ5G5H+wTRzq4SzcSsgBcCkIj95ZUMzoQCXaRqEGJWZDN5/8sxiVd6uBS7S11TaS4vInVFjl8brSLT6v+TOrHT1vH6YasXdg2w/541qM8cTqE5UFdp7hZUoD56HjQ/7kFCQkP649QLbk7NHu2J2TngQZjLulE/7/S2NZ2kkzrQJDFyQtNejJuw35MYphEcjS2axU8qez2G986l3HS+oj34RZdOFNC2ChxnR6hp8BH0x+E6X7x9vViKi5El1KT2UAi7acipZ087Ixq27dWMMwaXa3yKPcvUzXIo4OB9Lx0HCAgFxu5fXb25U8d2WgrRlUjRdo/SYMwj146vj1B+FSxp/NezxSckyfXKvPuOTwD2aQ16hWavV5l9k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(376002)(39860400002)(396003)(136003)(451199018)(31686004)(31696002)(316002)(83380400001)(86362001)(36756003)(6486002)(478600001)(8676002)(26005)(5660300002)(6506007)(2906002)(4326008)(66556008)(41300700001)(6512007)(8936002)(66946007)(2616005)(186003)(6666004)(107886003)(66476007)(53546011)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzFtR0xvSEJCWFl6ZWVGMFprV0pWVDJxNHZSVWo1TDFVVWJtVmJ2UEF6OUdu?=
 =?utf-8?B?NEVOM0NoNGdBcHJOODVMc2U0MUlyeHhCYlBrNlJLaEpiS0E5NUR4T0o1aTYx?=
 =?utf-8?B?MjZmRDd3eEtac3BhbGpXYnE4VlBSeXhGeG43MXZYbXhhckUybVZOYml1ZitP?=
 =?utf-8?B?QlBPZ0Z4VC9sNjRCamJzNVNjS3NndU9oYXZVWTZLdCttL2xCUm16T2pJd3dZ?=
 =?utf-8?B?VEZtNjlKVFNoNjNocTlaZkFmVFd0Nkl0SXV0TU9lVitYSVYyMG9EVXBNR0d0?=
 =?utf-8?B?OWo0VlhSYWYxcXp6ZG1XMEpqNlJOTUkzaDRzcFRLQjJaOWFYMkl6Q0M5b2RU?=
 =?utf-8?B?YTBlNDlJT2xORnFCSG1ISDBtQ2syVG43b2hRZE4ycVJtSk5qSlBMQXhLMUVs?=
 =?utf-8?B?MVBXZUdHQlE2UG0xNUVjTVVRcFdXalNTQSs0dXhKaSt4MEJRRjZTeWl2VTB0?=
 =?utf-8?B?ODlvcnVnTXB4bWp2bEZrZzBIcGlUSS8reHZKVzNkZ2taK1ZxMGxDTDBNQWQv?=
 =?utf-8?B?akZ0WDFIQnFyMmxBNHFieDUxaHRDL2VRY0ZDMUYzc0xNNU9XUGxXVElacGdl?=
 =?utf-8?B?ZTFyODJPTndTUUNpSkczQ254amUrWElWQkhHbEdCdUFyVzRXNDNDMFpZeGho?=
 =?utf-8?B?bVpFQU8ydkJNREVkM0xuL3Y3MUNuMjUxTE5VMTFvZUF3b0NsaG1YU2ZjR3VH?=
 =?utf-8?B?WVJpczUwa05tTWlXcWcxM2pjWTFHeHZvQ29GNkNWMGpSUzNqbDEvcVdBRUtN?=
 =?utf-8?B?OVN5cTZFQ042elNvdk9BcFdIK2VuZFRZMTY3eVV0bitJMncvOFlyOS9yV2Y4?=
 =?utf-8?B?dTF3RU1KL3p5aE1KWkFSSllDRzRjV0tQYS9oanI3aDBiMkxQcGx5UlBBMWsx?=
 =?utf-8?B?emtJRkk1Ly9oSVNsNUtUc0NjWDlIQU1iMVNTeFF3ck9PbWhBbXIyT2RXS0Fx?=
 =?utf-8?B?SVhoMDI0TkdRTHducnM1a05Va090RGRSZktzWGlYV0MzU1dSd1ZwRXFLMmRj?=
 =?utf-8?B?eFVLb0ZZN3pVTXpiazIxdlJybmxNanZoQnlMOHJRVVJ4cVdaUTVwMWc1aHZ5?=
 =?utf-8?B?YXZJb05VL25iOUVGODRLRHpyUFNkeUR0b3A2eG9rQ1QzWUwyandDNHlIK2x2?=
 =?utf-8?B?RzZXelpBcmFPVkpocUhKQUFKdUpYUXpRTGlad0VCZVljSVdWSVF1MHZKdmlP?=
 =?utf-8?B?aFZaQ3pGb05lRERMZm80TDd3NXdVNHlRd0dKNTI5Q29GZ00zRnMrNWxqaW5D?=
 =?utf-8?B?SFZuQnBtZWZSN1lVOE51U1drUTlUUkU3UnJHM1drSHFzNmhpVXBnK2Z6M3I0?=
 =?utf-8?B?cUIyb3ZRelJSazh6bkxSN2hxMUE3VE82amRFL3Nhb21yRWlJNHRUTUVUOUF5?=
 =?utf-8?B?RGNWVkdiUnNtS2lwYnQ3aXhFanpCSG1LYytEeXFRVTZLYXpmRFU0UUFheGZj?=
 =?utf-8?B?dzYwelNyRE5DOUVlSGloQkI1TEhCUmJoK2MrMXNrb0lEU0k3S1RSWWxKVU12?=
 =?utf-8?B?S1VmTnpYbDJtZkVQN2htRGtsV1l6Rmk0RDFvdlFTSHViRnhHbHFrbk9HaWpa?=
 =?utf-8?B?dTIrTDNnem9KN0VtOE1YSmhwVmdwV1hEczlwM0VGbWt2enRRSUZONlZWeWww?=
 =?utf-8?B?bTZaaUVnMW5rQjRDVCtacGp5RDhlVkpLK1VSUzBBM2ROSmpEMUFWUjRNMkRn?=
 =?utf-8?B?TU5yY25QUkxJZjVyZEVhTW41WTdOZEl1dTVLa0F3MjJmU3g3ZXFYbjRDalND?=
 =?utf-8?B?UlBjQU1SR0JSYkhaRjVnSGVKVVFIeTYweGFLLzdBTWQxSlh6Q1Q0Mm1BdjBq?=
 =?utf-8?B?K0UzdXdUV3hIZFc1a0lzQUhLOENQUm9LMzI4M3I1bVpWNzZEbVlhV29qYk15?=
 =?utf-8?B?bzY4dTV6UHdsWjRDa0hYb2l2NW45L2VlaHBPY0ZxMHNacjZtYlpZeHNVT3dY?=
 =?utf-8?B?eVNxeE00c05EeUxla1VzQzhadEI5MU9GbmlzbjAwMG0rM1RNOGg1akU1V1F1?=
 =?utf-8?B?WGQ0R0wwRUo3MFYyN0hWN0l0dkVqK09wTXQ0K0pMbkYwWWtJSWcwbUppTGZC?=
 =?utf-8?B?Q283YmpzL2hxRnhrYnhjNHdKOWh3SFAybTcvVldvSVloTUFxS2lSZG5rK0Ux?=
 =?utf-8?B?RndwUkZQSlk0RzhpR0ZDK28yVjczRWJDYkFuZGU2MmgvZ0o1T01tanhiTUlD?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 233cb74f-ee9f-4631-65f3-08db1a4d14ce
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 12:04:16.8494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3JQedlwoc/w6RHek1v8LibstecdHxUYp8uLIGaeMtddGejWkRIrCGApvVoILWzod3c0tCcGQmd/mFEG+WtrojA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7115
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: Fix engine timestamp
 and ktime disparity
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM

Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

On 23-02-2023 15:35, Anshuman Gupta wrote:
> While reading the engine timestamps there can be uncontrollable
> concurrent mmio access via other i915 child drivers and by GuC,
> which is not truly atomic context as expected by this selftest,
> which may cause mmio latency to read the engine timestamps,
> Account such latency to calculate time to read engine timestamp
> such that selftest can validate the timestamp and ktime pair.
> 
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 2 +-
>   drivers/gpu/drm/i915/gt/selftest_rps.c   | 4 ++--
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> index b46425aeb2f0..0971241707ce 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> @@ -63,8 +63,8 @@ static void measure_clocks(struct intel_engine_cs *engine,
>   
>   		udelay(1000);
>   
> -		dt[i] = ktime_sub(ktime_get(), dt[i]);
>   		cycles[i] += read_timestamp(engine);
> +		dt[i] = ktime_sub(ktime_get(), dt[i]);
>   		local_irq_enable();
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 6755bbc4ebda..c0cc0dd78c7c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -299,13 +299,13 @@ int live_rps_clock_interval(void *arg)
>   			for (i = 0; i < 5; i++) {
>   				preempt_disable();
>   
> -				dt_[i] = ktime_get();
>   				cycles_[i] = -intel_uncore_read_fw(gt->uncore, GEN6_RP_CUR_UP_EI);
> +				dt_[i] = ktime_get();
>   
>   				udelay(1000);
>   
> -				dt_[i] = ktime_sub(ktime_get(), dt_[i]);
>   				cycles_[i] += intel_uncore_read_fw(gt->uncore, GEN6_RP_CUR_UP_EI);
> +				dt_[i] = ktime_sub(ktime_get(), dt_[i]);
>   
>   				preempt_enable();
>   			}
