Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0457D513687
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 16:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689AE10E094;
	Thu, 28 Apr 2022 14:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394BB10E094
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 14:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651155218; x=1682691218;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3pH9b5lN/4PuPEOo+G6BLO823IiQTnUUyk5qu7xsAZ0=;
 b=m23zqAuLDN4GB/1KxThi0ZaRuFsOfgBvcZHTZ1S28ur1jCi2SAxB5h1l
 GblruF0O8napZb1oUnGuAsVfH1+CgfMF9DrglPnfDI1Bph3ww6MJjGZ9T
 4e6Y2m/g7EBz6FatWkGxRmn5WNQlmZU8T+JHSuL8yvzH8wYfoZVc0mGKa
 apmTaerkDaD93WmnUd57bFxYTenv52Fehn0sFSSB6JRuaJVH8+QzsJyei
 jwaooIHJt/R3AdkNwfUS8ObvDxkbUdZveamJggJWejkU+mQo9BBMDyG2n
 hjBcGbAw+sgijZow5w78aFUE0OoINK9PcU5ZIsZ9HgLKUC2N3AFhWuntK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="352734431"
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="352734431"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 07:13:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="661809722"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2022 07:13:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 07:13:16 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 07:13:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 28 Apr 2022 07:13:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 28 Apr 2022 07:13:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKEyYxgnIM7b6xaSbfZ/CzO9gtgpEPPak3o0XF64l6mf16citA0C6LQDZxlzkU5zvd+CzzRdkX//NxFxgVV/kBwS0jv8qWheYSj2F5OXjlZ4PlOWXbXTFwQBz3w49uPRWx/tBYaZ77qHKJTPWV3poYiXh0aK4s9GwylSPHtruO6Pg3cagWek0moQ8d6wtAXkzDlawiNi6gmiEQ+m0ZJiT52Mtwo7HhUMygUOl3+ycclS3iUnHmeGMr6ae4WBu4KlT7ckQ0Uc123EN6mRACLv+nXrwQbVqoiX/mEUnu0Sh5QH7io5A8DjK2Lf8qV1qbapkeCOq3gX4DOde9BVto0Qxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VeSrs0AkOCXfyuHKfxc8Y/n+AmQnYmcB/DTnCoWJmJg=;
 b=Q2AeejQ54HQ0RPQyR5JesokOoODnGMyF3lA97BP2Kb3Np/vGe8gEmB1b4kl6jpeivwOaITtTBXSfZ4dFO+jWPRAMDo1c8MdRrxQkTKGQrSzrIFvJCr57dlIJUb2flYYHNyxpcU47A+9v6b/EcMN6NwcjOZk0Znfvn1YVlk+Y05h7J7H+tcjPsbJo/RDBw1lPw0DOpGMSHolZL6vDoIyFUiNFJvkwPLnpzCmOBF9E9DhXFx1q849L+FM51duJvMfoDxd1cncMiOYBonfOf8ZNTZ5VFN0E53yT0d71lK+L2DyAS8w9tYD1dc8Fx/zJjIdp68xjYvYa8+1QguEQxm5wrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5231.namprd11.prod.outlook.com (2603:10b6:5:38a::19)
 by DM6PR11MB4596.namprd11.prod.outlook.com (2603:10b6:5:2a6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13; Thu, 28 Apr
 2022 14:13:14 +0000
Received: from DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::5027:4735:1a5b:a083]) by DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::5027:4735:1a5b:a083%4]) with mapi id 15.20.5206.013; Thu, 28 Apr 2022
 14:13:14 +0000
Message-ID: <b41d8f08-77d8-71a4-4a13-04f6d4f5ae98@intel.com>
Date: Thu, 28 Apr 2022 19:43:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220404093125.73327-1-siva.mullati@intel.com>
 <20220404093125.73327-2-siva.mullati@intel.com>
 <YlgPhO3vNE9BHRGD@bvivekan-mobl.gar.corp.intel.com>
From: Siva Mullati <siva.mullati@intel.com>
In-Reply-To: <YlgPhO3vNE9BHRGD@bvivekan-mobl.gar.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0047.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::11) To DM4PR11MB5231.namprd11.prod.outlook.com
 (2603:10b6:5:38a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be0e2844-a1a8-4c8d-6256-08da29213b84
X-MS-TrafficTypeDiagnostic: DM6PR11MB4596:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB4596F101A7CCCF5A1E4D5F7088FD9@DM6PR11MB4596.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D7e/CDvcHpwz9AyNBXvw3Vg/wWrm6w76kOgYS9zovCRTVXrX0K8bM3334O/3v05HKq6r+6LFhdaubdMs/A6OY4de/fsfWjdAX/Yv9/hlm5Th5QNYtpQ5LS7uKa/fksmWEtnovb8DMD4KvU9AITrwVY//O3SX5JunTCMS0yoJN0551jLXJIEzDZZW0PuBHw5aUq29VrXCs4FmUbghX9ZTh22H6eBfS2OJbBeEXFedPxCNjt/eEnXNetdR1OiWDrYzoV3evwD2ViSo0UWjuhCbtaJCLHrkiyJduHv2GX3qyw5i1sOqMKf+60paC2YO5pVcoQ1r3BbcSX76gi0uMOm3gfDeSt/wBUGEKaQW11iXP7nqLfCElge/N4TFfLbOXa2CTkzgdVgM2ofv4rMRwHhd+k2WST7M42iBgT35kQVJotof7/p8+XQQ+7KXxVSltmNSGA0C/cr5rdvQrnI9SGUlcFd1B4KbiMewDniV6ZA7fzYYTSK2LPxceexpxG12VQikcuZdgnTTmjAMH6PRhPVvXro4+Rnui0TRGGoIuSHYD8IslqrE6qGH1q0MSF9XxaOUsXkpDr9zF/P+7OQzGTmy8IxmNkU8ivjzZs0Qw6I96/MMQB/H52l9OkUZRv+RwTxljbQlOzoitEanodVVg7Bp4u0J+QRwcI13v7o+Q+4LYVVPtaeqTbptVZ6GtaFJzFGCZuKk3iT85+FL5farGqpHyg23MZ4oeCH1OKgbxMyqKs0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5231.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(30864003)(66556008)(186003)(2906002)(31686004)(316002)(66476007)(4326008)(53546011)(6512007)(86362001)(66946007)(6666004)(38100700002)(31696002)(6506007)(8676002)(83380400001)(508600001)(82960400001)(8936002)(6486002)(5660300002)(107886003)(44832011)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1dOQkJmZHpaZTRCK250RWxxU0U5NWFtZjhBaHB4ZkMxams0bjR1Z25HVUhq?=
 =?utf-8?B?UTFCUVNLckMvejFIQTZQUCtTSXM5N3FZOXRZMlo2N2JxKzRoS2JSTWJJaHll?=
 =?utf-8?B?TExoOTdHdmpQN01JaGFGaUI1WTgxZWJpQ1hKSG0zdUZMQUE0eVV6OWpZOUIr?=
 =?utf-8?B?NzFtY2t0K1dpejFjV1pJWUcwMUdDbXFtVlRnS2hVUXR0SzFzQ1BnK3BLZ1pD?=
 =?utf-8?B?L1J1WXR3Z3prYWtWaTFmcy9OM0JaZWZqYUxyRUYxcTVlVVFOSURBN0xQL01W?=
 =?utf-8?B?UEJwd1ppRDBHN21KZmRFb1djN0lZM2R4Zzh5amlzbWZHbC80cVl0QmJINTBG?=
 =?utf-8?B?ZWhDS05Hck1tZk10QmFjR0s2Wk4xQXRMZG9CY0ZKSVRIbkE0aXhSWnZUUG50?=
 =?utf-8?B?b2pSRzl6UGl3ZzRIbWI4dzU0SFB1Rmx2VENKL2VCVW4ybENuQk41UTd0ZUMz?=
 =?utf-8?B?RGdCV092VUxyVm44OExpMllVMVp6aGdhTTN0d3YvU1RQNEYxQkg0R1g0dW1R?=
 =?utf-8?B?bVViMnJMQ3pnUWZ2M3R2d3V2RzMvMWZ3cWV4ZEZWNWN3UHhUTEsybTNaQTFu?=
 =?utf-8?B?emNBZ3MwdHR2UkVpeXNjREtEOXlSbXFwSUZpWWlueVpXUTU5WitpbDJlNmJv?=
 =?utf-8?B?MEJkaHNKSUdWL0VKMStub1VCWHN4Q25RSWc1Unl0K1AyQW5VU3BUVHk4Vkla?=
 =?utf-8?B?UWlMRDF2MXU5VEE3VEx2WWFpOTF3cWFkN1hCeHEwbjRYQUF5VEJrOFZnUmgy?=
 =?utf-8?B?UFNlRmhadE5vVVlpelZKT0lpYms1QlIwVEtSNlRkWTJIVHlXZ2F3aUNzRklx?=
 =?utf-8?B?dTBENUs4S3FrbHlodlBQT2poc3d5TUQ1THEwdHR3RkIvbThZYnVLVENJdkt1?=
 =?utf-8?B?ZGtIZ0dBblNJY3RibENaOTIvSFAybTBxM1E2Wll5S1k3ZHBCUTBaR1kvQnQw?=
 =?utf-8?B?ck9lcERDeC9BWXRnazcxZ2FpcFNGMDE1NHhvODA5eExPTGpEUFBpUEZ2VVl1?=
 =?utf-8?B?MlNndVRlZGgvMHZBbDRTWmpHMTc4dWVzQnZSWjVrSEoyVVU0c0V2VDNvYUh5?=
 =?utf-8?B?WUNKTlgybXRIQVNDR0pZSHFCbjZFMHRoVXRNU1BxZ1BjQTNZdmRxWVpJT0FR?=
 =?utf-8?B?clRwNUVicVJtZHlPcTFQYWVCWkZQL1p4ZHdjYVBKaXVURitsdXZyUWFINzBO?=
 =?utf-8?B?RUVXOEFKaWRDcEdZcGhGdlMvaVBjV1ZTMysrZXNtQUtqY3VxNTZPRWQwb1ZI?=
 =?utf-8?B?QlNTbHI3NG8ycW1MOStnWVRFZnNIK0JEQ0JnSUh1ZmU4cjVzbEZvc2NSdWR4?=
 =?utf-8?B?OVFlYzZ6MUtZWERLVzZMbkQzL2xZc2Q0V3V4bzZMUXVTZmhBZmxRV1JWazhi?=
 =?utf-8?B?UmgwMmVXeitPZVA1U05EZWF4NUgyK2xTM3N6L3AvRlM2NnlRVjZ5clFteUhz?=
 =?utf-8?B?dUdqU1l5dk9zZk9yYnBJRXFyTG1KWjNNR2ZiZHp5cmlXY3RmdVlmeEl3NnBJ?=
 =?utf-8?B?UEdhTjFLQ0JwcXk0R1dMRDdLb2MvMmZ1Vk14cmtVdzJGUVlDZ0htZFV1VS9S?=
 =?utf-8?B?WlVFWWlwWmpQdUFqcmJFaVpxZmVDZmlOM3RxUEFCUitoZ0phN0hyZVZTMXJq?=
 =?utf-8?B?TUwzZWdCalBISkxzRC9mWjAxcmt6MkVKdG9ReWJ5VXpPLzA4c1ZxUnNJWGVa?=
 =?utf-8?B?ckFLL3dvNGw0OXhZY0tiTTVVb0VyNlkyZ0dJTFJuRisyemt6d2R2Y1VZTTFr?=
 =?utf-8?B?Nk8yMjZtZk50TGNhWW1zUTduYVdIS2VSdU5PMHpUS2dFOWxBTTBBVFhBWjk1?=
 =?utf-8?B?UkZ6RmJMM2YvOVVDZ3VicGl3L3RTeVZpcXRNZndzN3drTzJsdXZ4QS80b2Jn?=
 =?utf-8?B?cjFlK3J2L2gvaTBkNDMydzBpWmh5LzZ5M1dFM2ZOMk9pWkJObkx1dFZqWmIv?=
 =?utf-8?B?eXIrcldvTFJ5ZlNMdWM4WE4yVlozMnhjZURKbUV0aVQvazhzaEZKRTdUSzI3?=
 =?utf-8?B?ckZ2ZnMybVZDTzNDYm85WjRYVXVIYjhTMU1wV0RUQ29FYjFBZklnVkRpRVZw?=
 =?utf-8?B?Mmc5eTF5SFpkS1VGcFUycFBLYjBIak9LVXN5amZoV0tzSzJMMDBsdEZBMXAr?=
 =?utf-8?B?TFI3blJHWERpSHhkQmVEQ1hxTzhjNW5YSG9sckdDSGgwV0tPQWt0NmI0N1Rn?=
 =?utf-8?B?cU5Sc2MzNll1dmNCVmVQdTJIUlBzRmRiYUp1SkNmYytNVXR5UUFPYSs4MjRt?=
 =?utf-8?B?TW5INmZaTWoyc0locFo2OCtjT2JzdStZUktyMDZzNmtuUjlpNDUwYTlmclA0?=
 =?utf-8?B?RG5abFZOOU94RUNvZlpXVWRrMU8ybGszSEtsVjZRd1N0dmtNWEhzTGprQVBP?=
 =?utf-8?Q?5TYPBffXTjZpOe4eD7IGTXe9oczLTdY28DQ9E74SfhDjJ?=
X-MS-Exchange-AntiSpam-MessageData-1: Ujj5FKBoq7eCpvAEuZIopjJCJy+PCscM0ZQ=
X-MS-Exchange-CrossTenant-Network-Message-Id: be0e2844-a1a8-4c8d-6256-08da29213b84
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5231.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2022 14:13:13.9456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wjeli/CYHykaTlfQoDz2a+lnxlg64JH8NpWAPxM4GOMjBjzYwTIN69HAAzELqwdqaHEyHCSPJ51FShpGGmtgCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert ct buffer to
 iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/04/22 17:41, Balasubramani Vivekanandan wrote:
> On 04.04.2022 15:01, Mullati Siva wrote:
>> From: Siva Mullati <siva.mullati@intel.com>
>>
>> Convert CT commands and descriptors to use iosys_map rather
>> than plain pointer and save it in the intel_guc_ct_buffer struct.
>> This will help with ct_write and ct_read for cmd send and receive
>> after the initialization by abstracting the IO vs system memory.
>>
>> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 200 +++++++++++++---------
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
>>  2 files changed, 127 insertions(+), 82 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index f01325cd1b62..64568dc90b05 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -44,6 +44,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>>  #define CT_PROBE_ERROR(_ct, _fmt, ...) \
>>  	i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__)
>>  
>> +#define ct_desc_read(desc_map_, field_) \
>> +	iosys_map_rd_field(desc_map_, 0, struct guc_ct_buffer_desc, field_)
>> +#define ct_desc_write(desc_map_, field_, val_) \
>> +	iosys_map_wr_field(desc_map_, 0, struct guc_ct_buffer_desc, field_, val_)
>> +
> Did you try to make the change Lucas mentioned in his comment on rev0,
> to pass `struct guc_ct_buffer_desc *` as first argument to the above
> macros? Was it not feasible?
It is not feasible.
>>  /**
>>   * DOC: CTB Blob
>>   *
>> @@ -76,6 +81,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>>  #define CTB_G2H_BUFFER_SIZE	(4 * CTB_H2G_BUFFER_SIZE)
>>  #define G2H_ROOM_BUFFER_SIZE	(CTB_G2H_BUFFER_SIZE / 4)
>>  
>> +#define CTB_SEND_DESC_OFFSET	0u
>> +#define CTB_RECV_DESC_OFFSET	(CTB_DESC_SIZE)
>> +#define CTB_SEND_CMDS_OFFSET	(2 * CTB_DESC_SIZE)
>> +#define CTB_RECV_CMDS_OFFSET	(2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE)
>> +
>>  struct ct_request {
>>  	struct list_head link;
>>  	u32 fence;
>> @@ -113,9 +123,9 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>>  	init_waitqueue_head(&ct->wq);
>>  }
>>  
>> -static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
>> +static void guc_ct_buffer_desc_init(struct iosys_map *desc)
>>  {
>> -	memset(desc, 0, sizeof(*desc));
>> +	iosys_map_memset(desc, 0, 0, sizeof(struct guc_ct_buffer_desc));
>>  }
>>  
>>  static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
>> @@ -128,17 +138,18 @@ static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
>>  	space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size) - ctb->resv_space;
>>  	atomic_set(&ctb->space, space);
>>  
>> -	guc_ct_buffer_desc_init(ctb->desc);
>> +	guc_ct_buffer_desc_init(&ctb->desc_map);
>>  }
>>  
>>  static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
>> -			       struct guc_ct_buffer_desc *desc,
>> -			       u32 *cmds, u32 size_in_bytes, u32 resv_space)
>> +			       struct iosys_map *desc,
>> +			       struct iosys_map *cmds,
>> +			       u32 size_in_bytes, u32 resv_space)
>>  {
>>  	GEM_BUG_ON(size_in_bytes % 4);
>>  
>> -	ctb->desc = desc;
>> -	ctb->cmds = cmds;
>> +	ctb->desc_map = *desc;
>> +	ctb->cmds_map = *cmds;
>>  	ctb->size = size_in_bytes / 4;
>>  	ctb->resv_space = resv_space / 4;
>>  
>> @@ -218,12 +229,13 @@ static int ct_register_buffer(struct intel_guc_ct *ct, bool send,
>>  int intel_guc_ct_init(struct intel_guc_ct *ct)
>>  {
>>  	struct intel_guc *guc = ct_to_guc(ct);
>> -	struct guc_ct_buffer_desc *desc;
>> +	struct iosys_map blob_map;
>> +	struct iosys_map desc_map;
>> +	struct iosys_map cmds_map;
>>  	u32 blob_size;
>>  	u32 cmds_size;
>>  	u32 resv_space;
>>  	void *blob;
>> -	u32 *cmds;
>>  	int err;
>>  
>>  	err = i915_inject_probe_error(guc_to_gt(guc)->i915, -ENXIO);
>> @@ -242,27 +254,35 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>>  
>>  	CT_DEBUG(ct, "base=%#x size=%u\n", intel_guc_ggtt_offset(guc, ct->vma), blob_size);
>>  
>> -	/* store pointers to desc and cmds for send ctb */
>> -	desc = blob;
>> -	cmds = blob + 2 * CTB_DESC_SIZE;
>> +	if (i915_gem_object_is_lmem(ct->vma->obj))
>> +		iosys_map_set_vaddr_iomem(&blob_map,
>> +					  (void __iomem *)blob);
>> +	else
>> +		iosys_map_set_vaddr(&blob_map, blob);
>> +
>> +	/* store sysmap to desc_map and cmds_map for send ctb */
>> +	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_DESC_OFFSET);
>> +	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_CMDS_OFFSET);
>>  	cmds_size = CTB_H2G_BUFFER_SIZE;
>>  	resv_space = 0;
>> -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "send",
>> -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
>> -		 resv_space);
>> +	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "send",
>> +		 CTB_SEND_DESC_OFFSET, (u32)CTB_SEND_CMDS_OFFSET,
>> +		 cmds_size, resv_space);
>>  
>> -	guc_ct_buffer_init(&ct->ctbs.send, desc, cmds, cmds_size, resv_space);
>> +	guc_ct_buffer_init(&ct->ctbs.send,
>> +			   &desc_map, &cmds_map, cmds_size, resv_space);
>>  
>> -	/* store pointers to desc and cmds for recv ctb */
>> -	desc = blob + CTB_DESC_SIZE;
>> -	cmds = blob + 2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE;
>> +	/* store sysmap to desc_map and cmds_map for recv ctb */
>> +	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_DESC_OFFSET);
>> +	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_CMDS_OFFSET);
>>  	cmds_size = CTB_G2H_BUFFER_SIZE;
>>  	resv_space = G2H_ROOM_BUFFER_SIZE;
>> -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "recv",
>> -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
>> -		 resv_space);
>> +	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "recv",
>> +		 (u32)CTB_RECV_DESC_OFFSET, (u32)CTB_RECV_CMDS_OFFSET,
>> +		 cmds_size, resv_space);
>>  
>> -	guc_ct_buffer_init(&ct->ctbs.recv, desc, cmds, cmds_size, resv_space);
>> +	guc_ct_buffer_init(&ct->ctbs.recv,
>> +			   &desc_map, &cmds_map, cmds_size, resv_space);
>>  
>>  	return 0;
>>  }
>> @@ -279,6 +299,10 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>>  
>>  	tasklet_kill(&ct->receive_tasklet);
>>  	i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
>> +	iosys_map_clear(&ct->ctbs.send.desc_map);
>> +	iosys_map_clear(&ct->ctbs.send.cmds_map);
>> +	iosys_map_clear(&ct->ctbs.recv.desc_map);
>> +	iosys_map_clear(&ct->ctbs.recv.cmds_map);
> I think there is no need of clearing the iosys_map when were are zeroing
> the complete structure area below.
Yes, I have updated this in latest revision.
>>  	memset(ct, 0, sizeof(*ct));
>>  }
>>  
>> @@ -291,8 +315,8 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>>  int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>  {
>>  	struct intel_guc *guc = ct_to_guc(ct);
>> +	struct iosys_map blob_map;
>>  	u32 base, desc, cmds, size;
>> -	void *blob;
>>  	int err;
>>  
>>  	GEM_BUG_ON(ct->enabled);
>> @@ -302,9 +326,14 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>  	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(ct->vma->obj));
>>  	base = intel_guc_ggtt_offset(guc, ct->vma);
>>  
>> +	if (i915_gem_object_is_lmem(ct->vma->obj))
>> +		iosys_map_set_vaddr_iomem(&blob_map, (void __iomem *)
>> +					  __px_vaddr(ct->vma->obj));
>> +	else
>> +		iosys_map_set_vaddr(&blob_map, __px_vaddr(ct->vma->obj));
>> +
>>  	/* blob should start with send descriptor */
>> -	blob = __px_vaddr(ct->vma->obj);
>> -	GEM_BUG_ON(blob != ct->ctbs.send.desc);
>> +	GEM_BUG_ON(!iosys_map_is_equal(&blob_map, &ct->ctbs.send.desc_map));
>>  
>>  	/* (re)initialize descriptors */
>>  	guc_ct_buffer_reset(&ct->ctbs.send);
>> @@ -314,15 +343,15 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>  	 * Register both CT buffers starting with RECV buffer.
>>  	 * Descriptors are in first half of the blob.
>>  	 */
>> -	desc = base + ptrdiff(ct->ctbs.recv.desc, blob);
>> -	cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
>> +	desc = base + CTB_RECV_DESC_OFFSET;
>> +	cmds = base + CTB_RECV_CMDS_OFFSET;
>>  	size = ct->ctbs.recv.size * 4;
>>  	err = ct_register_buffer(ct, false, desc, cmds, size);
>>  	if (unlikely(err))
>>  		goto err_out;
>>  
>> -	desc = base + ptrdiff(ct->ctbs.send.desc, blob);
>> -	cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
>> +	desc = base + CTB_SEND_DESC_OFFSET;
>> +	cmds = base + CTB_SEND_CMDS_OFFSET;
>>  	size = ct->ctbs.send.size * 4;
>>  	err = ct_register_buffer(ct, true, desc, cmds, size);
>>  	if (unlikely(err))
>> @@ -371,31 +400,33 @@ static int ct_write(struct intel_guc_ct *ct,
>>  		    u32 fence, u32 flags)
>>  {
>>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>> -	struct guc_ct_buffer_desc *desc = ctb->desc;
>>  	u32 tail = ctb->tail;
>>  	u32 size = ctb->size;
>>  	u32 header;
>>  	u32 hxg;
>>  	u32 type;
>> -	u32 *cmds = ctb->cmds;
>> +	u32 status = ct_desc_read(&ctb->desc_map, status);
>>  	unsigned int i;
>>  
>> -	if (unlikely(desc->status))
>> +	if (unlikely(status))
>>  		goto corrupted;
>>  
>>  	GEM_BUG_ON(tail > size);
>>  
>>  #ifdef CONFIG_DRM_I915_DEBUG_GUC
>> -	if (unlikely(tail != READ_ONCE(desc->tail))) {
>> +	if (unlikely(tail != ct_desc_read(&ctb->desc_map, tail))) {
>>  		CT_ERROR(ct, "Tail was modified %u != %u\n",
>> -			 desc->tail, tail);
>> -		desc->status |= GUC_CTB_STATUS_MISMATCH;
>> +			 ct_desc_read(&ctb->desc_map, tail), tail);
>> +		status |= GUC_CTB_STATUS_MISMATCH;
>> +		ct_desc_write(&ctb->desc_map, status, status);
>>  		goto corrupted;
>>  	}
>> -	if (unlikely(READ_ONCE(desc->head) >= size)) {
>> +	if (unlikely(ct_desc_read(&ctb->desc_map, head) >= size)) {
>>  		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
>> -			 desc->head, size);
>> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
>> +			 ct_desc_read(&ctb->desc_map, head), size);
> Can we avoid reading the head from ctb->desc_map twice? Since each
> iosys_map read translates to memcpy, it is better to avoid repeating if
> we can cache from the earlier read.
Do you see real need of having a variable to cache value locally, considering the path is very unlikely to hit.
>> +		status = ct_desc_read(&ctb->desc_map, status) |
>> +			GUC_CTB_STATUS_OVERFLOW;
> Same here, can we avoid reading status since we already have it read. We
> can do the same like how it is done for the GUC_CTB_STATUS_MISMATCH case.
Addressed in latest patch
>> +		ct_desc_write(&ctb->desc_map, status, status);
>>  		goto corrupted;
>>  	}
>>  #endif
>> @@ -418,14 +449,14 @@ static int ct_write(struct intel_guc_ct *ct,
>>  	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
>>  		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
>>  
>> -	cmds[tail] = header;
>> +	iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, header);
> I prefer not to use the MAGIC number. My suggestion is to use
> sizeof(tail) since we need the offset in bytes.
I tried avoiding it, can't use sizeof(tail). Here tail is just an index which might be a misleading if we use it in this case, cmds would have been the right one but this has been changed to iosys map. Currently updated with sizeof(u32).
>>  	tail = (tail + 1) % size;
>>  
>> -	cmds[tail] = hxg;
>> +	iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, hxg);
> MAGIC number again. There are numerous places in the patch, where
> numbers are used. I prefer to remove it.
>>  	tail = (tail + 1) % size;
>>  
>>  	for (i = 1; i < len; i++) {
>> -		cmds[tail] = action[i];
>> +		iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, action[i]);
>>  		tail = (tail + 1) % size;
>>  	}
>>  	GEM_BUG_ON(tail > size);
>> @@ -442,13 +473,14 @@ static int ct_write(struct intel_guc_ct *ct,
>>  	atomic_sub(len + GUC_CTB_HDR_LEN, &ctb->space);
>>  
>>  	/* now update descriptor */
>> -	WRITE_ONCE(desc->tail, tail);
>> +	ct_desc_write(&ctb->desc_map, tail, tail);
>>  
>>  	return 0;
>>  
>>  corrupted:
>>  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
>> -		 desc->head, desc->tail, desc->status);
>> +		 ct_desc_read(&ctb->desc_map, head), ct_desc_read(&ctb->desc_map, tail),
>> +		 ct_desc_read(&ctb->desc_map, status));
>>  	ctb->broken = true;
>>  	return -EPIPE;
>>  }
>> @@ -499,20 +531,22 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
>>  	bool ret = ktime_ms_delta(ktime_get(), ct->stall_time) > timeout;
>>  
>>  	if (unlikely(ret)) {
>> -		struct guc_ct_buffer_desc *send = ct->ctbs.send.desc;
>> -		struct guc_ct_buffer_desc *recv = ct->ctbs.send.desc;
>> -
>>  		CT_ERROR(ct, "Communication stalled for %lld ms, desc status=%#x,%#x\n",
>>  			 ktime_ms_delta(ktime_get(), ct->stall_time),
>> -			 send->status, recv->status);
>> +			 ct_desc_read(&ct->ctbs.send.desc_map, status),
>> +			 ct_desc_read(&ct->ctbs.recv.desc_map, status));
>>  		CT_ERROR(ct, "H2G Space: %u (Bytes)\n",
>>  			 atomic_read(&ct->ctbs.send.space) * 4);
>> -		CT_ERROR(ct, "Head: %u (Dwords)\n", ct->ctbs.send.desc->head);
>> -		CT_ERROR(ct, "Tail: %u (Dwords)\n", ct->ctbs.send.desc->tail);
>> +		CT_ERROR(ct, "Head: %u (Dwords)\n",
>> +			 ct_desc_read(&ct->ctbs.send.desc_map, head));
>> +		CT_ERROR(ct, "Tail: %u (Dwords)\n",
>> +			 ct_desc_read(&ct->ctbs.send.desc_map, tail));
>>  		CT_ERROR(ct, "G2H Space: %u (Bytes)\n",
>>  			 atomic_read(&ct->ctbs.recv.space) * 4);
>> -		CT_ERROR(ct, "Head: %u\n (Dwords)", ct->ctbs.recv.desc->head);
>> -		CT_ERROR(ct, "Tail: %u\n (Dwords)", ct->ctbs.recv.desc->tail);
>> +		CT_ERROR(ct, "Head: %u\n (Dwords)",
>> +			 ct_desc_read(&ct->ctbs.recv.desc_map, head));
>> +		CT_ERROR(ct, "Tail: %u\n (Dwords)",
>> +			 ct_desc_read(&ct->ctbs.recv.desc_map, tail));
>>  
>>  		ct->ctbs.send.broken = true;
>>  	}
>> @@ -549,18 +583,19 @@ static inline void g2h_release_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
>>  static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
>>  {
>>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>> -	struct guc_ct_buffer_desc *desc = ctb->desc;
>>  	u32 head;
>>  	u32 space;
>> +	u32 status = ct_desc_read(&ctb->desc_map, status);
>>  
>>  	if (atomic_read(&ctb->space) >= len_dw)
>>  		return true;
>>  
>> -	head = READ_ONCE(desc->head);
>> +	head = ct_desc_read(&ctb->desc_map, head);
>>  	if (unlikely(head > ctb->size)) {
>>  		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
>>  			 head, ctb->size);
>> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
>> +		status |= GUC_CTB_STATUS_OVERFLOW;
>> +		ct_desc_write(&ctb->desc_map, status, status);
>>  		ctb->broken = true;
>>  		return false;
>>  	}
>> @@ -803,11 +838,10 @@ static void ct_free_msg(struct ct_incoming_msg *msg)
>>  static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>  {
>>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.recv;
>> -	struct guc_ct_buffer_desc *desc = ctb->desc;
>>  	u32 head = ctb->head;
>> -	u32 tail = READ_ONCE(desc->tail);
>> +	u32 tail = ct_desc_read(&ctb->desc_map, tail);
>>  	u32 size = ctb->size;
>> -	u32 *cmds = ctb->cmds;
>> +	u32 status = ct_desc_read(&ctb->desc_map, status);
>>  	s32 available;
>>  	unsigned int len;
>>  	unsigned int i;
>> @@ -816,23 +850,26 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>  	if (unlikely(ctb->broken))
>>  		return -EPIPE;
>>  
>> -	if (unlikely(desc->status))
>> +	if (unlikely(status))
>>  		goto corrupted;
>>  
>>  	GEM_BUG_ON(head > size);
>>  
>>  #ifdef CONFIG_DRM_I915_DEBUG_GUC
>> -	if (unlikely(head != READ_ONCE(desc->head))) {
>> +	if (unlikely(head != ct_desc_read(&ctb->desc_map, head))) {
>>  		CT_ERROR(ct, "Head was modified %u != %u\n",
>> -			 desc->head, head);
>> -		desc->status |= GUC_CTB_STATUS_MISMATCH;
>> +			 ct_desc_read(&ctb->desc_map, head), head);
> head read twice here as well.
Same answer.
>> +		status |= GUC_CTB_STATUS_MISMATCH;
>> +		ct_desc_write(&ctb->desc_map, status, status);
>>  		goto corrupted;
>>  	}
>>  #endif
>>  	if (unlikely(tail >= size)) {
>>  		CT_ERROR(ct, "Invalid tail offset %u >= %u)\n",
>>  			 tail, size);
>> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
>> +		status = ct_desc_read(&ctb->desc_map, status) |
>> +			GUC_CTB_STATUS_OVERFLOW;
> No need to read the status again as we already have it cached.
addressed.
>> +		ct_desc_write(&ctb->desc_map, status, status);
>>  		goto corrupted;
>>  	}
>>  
>> @@ -849,7 +886,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>  	CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
>>  	GEM_BUG_ON(available < 0);
>>  
>> -	header = cmds[head];
>> +	header = iosys_map_rd(&ctb->cmds_map, (4 * head), u32);
> MAGIC numbers
>>  	head = (head + 1) % size;
>>  
>>  	/* message len with header */
>> @@ -857,11 +894,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>  	if (unlikely(len > (u32)available)) {
>>  		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
>>  			 4, &header,
>> +			 4 * (head + available - 1 > size ? size - head :
>> +			      available - 1), ((__px_vaddr(ct->vma->obj) +
>> +			      CTB_RECV_CMDS_OFFSET) + (4 * head)),
>>  			 4 * (head + available - 1 > size ?
>> -			      size - head : available - 1), &cmds[head],
>> -			 4 * (head + available - 1 > size ?
>> -			      available - 1 - size + head : 0), &cmds[0]);
>> -		desc->status |= GUC_CTB_STATUS_UNDERFLOW;
>> +			      available - 1 - size + head : 0),
>> +			      (__px_vaddr(ct->vma->obj) + CTB_RECV_CMDS_OFFSET));
>> +		status = ct_desc_read(&ctb->desc_map, status) |
>> +			GUC_CTB_STATUS_UNDERFLOW;
> No need to read status again
>
> Regards,
> Bala
>> +		ct_desc_write(&ctb->desc_map, status, status);
>>  		goto corrupted;
>>  	}
>>  
>> @@ -869,17 +910,18 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>  	if (!*msg) {
>>  		CT_ERROR(ct, "No memory for message %*ph %*ph %*ph\n",
>>  			 4, &header,
>> +			 4 * (head + available - 1 > size ? size - head :
>> +			      available - 1), (ctb->cmds_map.vaddr + (4 * head)),
>>  			 4 * (head + available - 1 > size ?
>> -			      size - head : available - 1), &cmds[head],
>> -			 4 * (head + available - 1 > size ?
>> -			      available - 1 - size + head : 0), &cmds[0]);
>> +			      available - 1 - size + head : 0), ctb->cmds_map.vaddr);
>>  		return available;
>>  	}
>>  
>>  	(*msg)->msg[0] = header;
>>  
>>  	for (i = 1; i < len; i++) {
>> -		(*msg)->msg[i] = cmds[head];
>> +		(*msg)->msg[i] = iosys_map_rd(&ctb->cmds_map,
>> +					      (4 * head), u32);
>>  		head = (head + 1) % size;
>>  	}
>>  	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
>> @@ -888,13 +930,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>  	ctb->head = head;
>>  
>>  	/* now update descriptor */
>> -	WRITE_ONCE(desc->head, head);
>> +	ct_desc_write(&ctb->desc_map, head, head);
>>  
>>  	return available - len;
>>  
>>  corrupted:
>>  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
>> -		 desc->head, desc->tail, desc->status);
>> +		 ct_desc_read(&ctb->desc_map, head),
>> +		 ct_desc_read(&ctb->desc_map, tail),
>> +		 ct_desc_read(&ctb->desc_map, status));
>>  	ctb->broken = true;
>>  	return -EPIPE;
>>  }
>> @@ -1211,13 +1255,13 @@ void intel_guc_ct_print_info(struct intel_guc_ct *ct,
>>  	drm_printf(p, "H2G Space: %u\n",
>>  		   atomic_read(&ct->ctbs.send.space) * 4);
>>  	drm_printf(p, "Head: %u\n",
>> -		   ct->ctbs.send.desc->head);
>> +		   ct_desc_read(&ct->ctbs.send.desc_map, head));
>>  	drm_printf(p, "Tail: %u\n",
>> -		   ct->ctbs.send.desc->tail);
>> +		   ct_desc_read(&ct->ctbs.send.desc_map, tail));
>>  	drm_printf(p, "G2H Space: %u\n",
>>  		   atomic_read(&ct->ctbs.recv.space) * 4);
>>  	drm_printf(p, "Head: %u\n",
>> -		   ct->ctbs.recv.desc->head);
>> +		   ct_desc_read(&ct->ctbs.recv.desc_map, head));
>>  	drm_printf(p, "Tail: %u\n",
>> -		   ct->ctbs.recv.desc->tail);
>> +		   ct_desc_read(&ct->ctbs.recv.desc_map, tail));
>>  }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index f709a19c7e21..867fe13fb47d 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -7,6 +7,7 @@
>>  #define _INTEL_GUC_CT_H_
>>  
>>  #include <linux/interrupt.h>
>> +#include <linux/iosys-map.h>
>>  #include <linux/spinlock.h>
>>  #include <linux/workqueue.h>
>>  #include <linux/ktime.h>
>> @@ -32,8 +33,8 @@ struct drm_printer;
>>   * holds the commands.
>>   *
>>   * @lock: protects access to the commands buffer and buffer descriptor
>> - * @desc: pointer to the buffer descriptor
>> - * @cmds: pointer to the commands buffer
>> + * @desc: iosys map to the buffer descriptor
>> + * @cmds: iosys map to the commands buffer
>>   * @size: size of the commands buffer in dwords
>>   * @resv_space: reserved space in buffer in dwords
>>   * @head: local shadow copy of head in dwords
>> @@ -43,8 +44,8 @@ struct drm_printer;
>>   */
>>  struct intel_guc_ct_buffer {
>>  	spinlock_t lock;
>> -	struct guc_ct_buffer_desc *desc;
>> -	u32 *cmds;
>> +	struct iosys_map desc_map;
>> +	struct iosys_map cmds_map;
>>  	u32 size;
>>  	u32 resv_space;
>>  	u32 tail;
>> -- 
>> 2.33.0
>>
