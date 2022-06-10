Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CADC54636C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 12:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C4410E00B;
	Fri, 10 Jun 2022 10:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D2810E00B;
 Fri, 10 Jun 2022 10:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654856413; x=1686392413;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d0tvILF+XMojFq9rOREz4i4UJWNj8XZAMRzxjaZ1QyQ=;
 b=daryCX1SqbGanJjwwZLlnK9TsGg62+o3XXbvr5ootYcEMFNsTBtMRteo
 gO3rZG2u6CYrGDY2LHnI1XJCnAF3lkmsmsQnidmRnP77PD7Tim0CoQHbE
 8nG4LxBXo68v0C36P2BAoWKvzzRmkg9kQDhHMTPMpJBS+vFdEmcMDzd4z
 RDG7WBculKH9oBBnOS5S8aTNQcrCTC37DqxLrlbKTHaVGGaXuQnHn0mqp
 CgwHvsG7TzIQ6GGfo//XCqyrGJ7BjxW5YlWcWaaXMkymj6rvi55mcMjR4
 Y5KYQrUEfEqeivezlZjCcx3rtZlauQUorQijdfh+m7ThWwKEZJ6HvJu4v w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="341647962"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="341647962"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 03:20:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="671780153"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jun 2022 03:20:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 03:20:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 10 Jun 2022 03:20:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 10 Jun 2022 03:20:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eID19HoX9h6Q8meVqng65rjj26//kjMW6S3LwxLNyKILsPdmEzNeRFgMnYSc9LQuYkxxCuHj+KyLsWx23xvCdaNpZu4y33KpgWS8d/lxnzm1zELoNcSAGFZV5h4oAHY5faPWToeCFeXVPQjpSGBAsqPLnHNKkyY2YOt7S9aWqESHKaYJk2P90gwBdaPTZIRzkjQpQMis0JPF7BACcHkoruZiPiFMEjhaJ6hHnSyDgXnb4CH3JmLLFNkMSWBhMWfPodTyTd5g7G/OgT7owV5ToMoM+rdR+BbH5gPtm+hEK3AULFq4SpRYyqErmWRq5vXj+9XDSfnM6b8/5Aw7KU9z1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gaPa9goaAPBuad+Dz9j7f4Ig3oGIn5GQnHte2Wpulzs=;
 b=eEQ1hLT0TF/OYL6q27ZAviPfRsv0qvmOkxK4vPtk209ii7zi0skdFXxCY5A4q27odUM0VE1Xo4ef5ctb40R01HdyPabS0Tb0swOtYUFQ4F3NOgG/p963wRFdPFnMdf/q2C+J2oiwe0v23W+CU0s0QNCFS68WL7HPaIPODOPOD2fZUu/DGSuKP1b53mkTK70k0oyOKP9kGBVd2XGcovKKNf3iDaIsV7mqPy4JTWBpMeaBIQXAOpMcmijARHjDw6ljDYdzE+hHmKDyBggkggpE5qS2yuruqyeIK+c4c/2BobgdXdXNtJkVLclHxRzbphIf/cVND++2lRHnfvo4IUJgvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by DM5PR11MB1594.namprd11.prod.outlook.com (2603:10b6:4:5::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.13; Fri, 10 Jun 2022 10:20:10 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::d596:c1e4:ee6f:1bcb]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::d596:c1e4:ee6f:1bcb%5]) with mapi id 15.20.5332.014; Fri, 10 Jun 2022
 10:20:09 +0000
Message-ID: <f2be75d2-dc19-f5f5-49c8-00a2d2271805@intel.com>
Date: Fri, 10 Jun 2022 15:49:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: Arun R Murthy <arun.r.murthy@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20220608060737.3839351-1-arun.r.murthy@intel.com>
 <20220610074853.3937294-1-arun.r.murthy@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
In-Reply-To: <20220610074853.3937294-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::9) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1053ba74-e58f-43a9-fea8-08da4acacc13
X-MS-TrafficTypeDiagnostic: DM5PR11MB1594:EE_
X-Microsoft-Antispam-PRVS: <DM5PR11MB15944FDA69827033307CC30BB8A69@DM5PR11MB1594.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zXd2U0lwQIm3v3WdePFvpOQvtcc13pGOeIK80Lf01JWrqpOg+5X9KWfmx0mcydf8NgO5O1nwEhUueeOu5FImzhCm7of1nzlBem0sOHyubyPahC/j02ZAIdFNGdNARo1iWqCvNMe3bNMCpWHJuG5ey8mJiTHmpevnERfyituCrZaTetnr+1JhfUWHqwhgfU/O2ORsSMfXrbHl6lx5hhu4AHnH5p80FMg46I/QkAEeCs0ylDZ/IDtFiVTqVPrqcU2c52RiFaW9Wa3CKTGMzZZUJDrHLxQYVblhO482V/LXwfB+eUM2009OAChxEn2TuyyO53q+aL9QZ98lPfh8zg8Yb0AH2bSED07VrH3z/xzhzmJwClxySH62lr5mlJtAaN4cNxI6i/XkHyvlCJg1Dg+SNvSuEuD7xyXoAlOLTzg/LoGFbRkDuHpOJ5lWOcVGTi82VfXFMf7U5DR9B16xEpQcvPOLfvDNDjsq4dNPb1PN8UDPTuyZwKWy+jaYUcjfBMuFWO3pZbHQAqH45ZqXyZX1ERxTO7Gm0uLWLR3438JUvQBZLa1v/SSm5CMEWah4US9R9OVeLA678KkX7+4NWO6RHllFS6gO4iuSnEuP0efsUYsYnoxDA72/nTVOSaQrm9VBaMoZZKRIH/A45fB2oJBzp3o3iejvwx8dnuF+Du398v7yGxWnsiLvXzz5ykU4UZCPNc9ZU5i/kVlpglb002mPMrgTFkzaWtCD+gHP38ImsFY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(6506007)(316002)(8676002)(4326008)(66476007)(31686004)(6666004)(2906002)(36756003)(66556008)(66946007)(83380400001)(8936002)(31696002)(86362001)(82960400001)(5660300002)(2616005)(508600001)(186003)(38100700002)(26005)(53546011)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGJPd2FPUGVleGExWDBZVm4xZmw1UmNzelM2RVg5Ui9iQjdYRjY2Y21kV1ow?=
 =?utf-8?B?V3E4bWRZV3FkeW1Ob3hKT1Q3K28xSXNxMlNsZG4zMElmTm42TmRoM0ZZcVh6?=
 =?utf-8?B?Um1QZE0rZEw5SCs5cEpEMXozTUhOSjc4ZVBlNEdSZWR5U0lBTHk1OWxPOFJx?=
 =?utf-8?B?VmVCbG8rK2pGY0FSS2x5RXVlaXZOUjNBL2htNEg2Qlg5aEMvcGRjVkowWmQ2?=
 =?utf-8?B?NDVJeENTd0JwRUhBWE9rNzdpQVZtN3BaaVY0blpYcURjQXhJMjRuOWxlK1Ay?=
 =?utf-8?B?R0dod2FLWnpXeVYzblc2a0ZReWh2ZHRSZmdDYlhCSkxsVXBaOTNnUWo4L3I5?=
 =?utf-8?B?TS80MzVMQm4zcjM0anhQMU1nY0xEeTd3VnRyVW9tSFk5aHF2UTY1NVRMSGJk?=
 =?utf-8?B?ajZiTktzeGpqL3FxYk5hWGpMNlVzZ0FEUGRvUTlYSXV5NGlIeHdZalM0bXZU?=
 =?utf-8?B?R1VGWkxHNVVvTTF4WkFsNlloWS9kZFlwem55UWtSbGJMRHpyS0wyeThPY2Jn?=
 =?utf-8?B?TDA5UjZXenpKbmVlZG8yR3VrYk9wSG8wM1ZLT2VHTE1hWncvalArQzJlUkw4?=
 =?utf-8?B?YS8vdXJERWVwS0k2dCtqZmFKdDhzNUxtc2xRTkJsL0FkWklPQlk4eE0xQUN0?=
 =?utf-8?B?U25xdS90dU5aUFNnZnloQStZWW5xWmdPVVJIdklDMGxISHFhMzcxdE8yT1R5?=
 =?utf-8?B?YngwQVNRNlZsSUlQNDBhbEtvV0ZDR084WG4yZ1hHcmo4bEw2VFNrZmphU0dG?=
 =?utf-8?B?dDR6RWNHckNsYU9vY1RYZXg2QTdkV3JybzJPOU84Sy94Y3VXeDRNdnEyYW8v?=
 =?utf-8?B?eXkwb3QzVHZKbWU3bjhlL1BBOVJDZ25mS2RGU0FQbUw4QUVZK05WTlUyTXFi?=
 =?utf-8?B?NEo2RE0xRlNLLy9QRmplTTNYaG9ZamhTTUJGdjJuMk81cVlySk5hVENhV2dy?=
 =?utf-8?B?YkFhdFkwajhiOS9UMHpMRzFER3FQdzRORlJDaVJjZWJPM0xIKzZ4bjRtdllE?=
 =?utf-8?B?WHkrb1NQeXluc3p0T0NUZExvK1BwR1AwOUQ4RVJGWCtqVStJK3BIdm50WVkv?=
 =?utf-8?B?a09hc2JPV2hITHdtRW9BRnBpUm4vTWJRazQ3WDllaDRiRFZEYmRiZGJkNWFF?=
 =?utf-8?B?YXBiWUFUL2phSTlpWVpQNGpqUjVrY0RVQ3liQ3NvdlZYUEd4SmxIS1JLRThL?=
 =?utf-8?B?NGJyMS8wVjczM1lNeXFRZ0JwUXNZU0dlN29wc3VOR3o4aCtPMXp5c0xvRGow?=
 =?utf-8?B?RTE2RzY0UStrbW9DdGxLZ0JXNEJDZWFlRUNka2wvNm1TenQzcEVIbURHL1NI?=
 =?utf-8?B?cHU0TTBYQWZWMC9MUlQrWmhBZ2NjTFNZdDR4dXdCMlpVa1ZucVZNNWljeng4?=
 =?utf-8?B?V1MvekxzMjMrWWdhU1BrTG4vaGtCMnRYZEVPeUtzeFFTNUU0ZmtFN0oxQ1Fx?=
 =?utf-8?B?L0NMdHlSY05wMlpSODVuMDFmNk9BTUxrdXVRYXVqTFVyUjVVMThkRGNMbERI?=
 =?utf-8?B?NTcxaERkOXlsdGZPM1hzSjNGOXIwY1h4SDRMa1pDMi8yUjRYc21mQ2dUd09H?=
 =?utf-8?B?aENtSEFucDd2M0hzeTczbXhmZm5DbU9uL1F1Yi9WRXNwOVV5OTluZ2hhUjB2?=
 =?utf-8?B?dTdHUVd4bEVnUVd4cmVlZnc3RUZtK2VMUnJlYU8yVTBQbFNxb3ZNL24xb1kx?=
 =?utf-8?B?SlRhUHhFT1JwTjdlWGFTa2RHK1d0cjJUb2d1RXRRNVJhNmpKbUh3SUZVZlRV?=
 =?utf-8?B?eFZuNkxrSXRweWU3aVBFci8zK05FMXZmZTd4UGhGZVVJMW8wWHBBQnVla3Jp?=
 =?utf-8?B?YzkxY294THFXRUIwbWZVdWwyYXV4RU9NbjhuOWppNlM0cS9mUzZLQ2ZZM2Fz?=
 =?utf-8?B?WThqRmJPZDBlUWRjTlE4WGd2TWZMM2x0alM5NHZtQzhPSHVPZ1VZRGcyenhU?=
 =?utf-8?B?c21jdHVQbHZGbUd1dUsxSjlIWGgyWEdKQmJQc0JrMzdJT1hBLytGYWtXSmJa?=
 =?utf-8?B?TWhJT0tMdGhRaTJCQlpXOXpCNEZvK3FvU1BjSmpwLzlXUzFScDFFTVdGSi9K?=
 =?utf-8?B?b2FsY21KcDB0bUIyTllDeGltbENpcWR5Y3hqbHJBWU1IWHhhY0c4NjJCUXVn?=
 =?utf-8?B?eDh5dEYrc0xTUTdnTkU1WDlVZm9jaGZZYmhyU0F2R09aeHZLa1RWMjdtK1BX?=
 =?utf-8?B?czVua3JiKzdZaGx4SDJDaXM2UXBXaFpmSTBuR1BJOWJtcXk4UkE2YmtqUnFt?=
 =?utf-8?B?d05uODFwclJWRlgxdk1VOENEU0x1ZGNMcjNLdGc3aDU2d0VKNENzeUVUeUpX?=
 =?utf-8?B?NGVWL2xpK0ljQUExZVFjS2huVVIxOHl4VnhBZ1ozTkRWOE56MGlYQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1053ba74-e58f-43a9-fea8-08da4acacc13
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2022 10:20:09.7494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kxgznlUduycORCa06vieYdfnRi2DGbzxNBLDtoHs6jZdMie9lIvmY1GugDQD4ZUfplE9adv2moLlCX90Jep1Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_async_flips: first async
 flip discarded on i915
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 6/10/2022 1:18 PM, Arun R Murthy wrote:
> The i915 KMD will use the first async flip to update the watermarks as
> per the watermark optimization in DISPLAY13. Hence the actual async flip
> will happen from the subsequent flips.
> For alternate sync async test, a dummy async flip has to be done to
> allow the KMD to perform the watermark related updates before writing to
> the surface base address.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Karthik B S <karthik.b.s@intel.com>
> ---
>   tests/kms_async_flips.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/tests/kms_async_flips.c b/tests/kms_async_flips.c
> index 4a0527dc..695aea74 100644
> --- a/tests/kms_async_flips.c
> +++ b/tests/kms_async_flips.c
> @@ -211,11 +211,14 @@ static void test_async_flip(data_t *data)
>   			 * In older platforms (<= Gen10), async address update bit is double buffered.
>   			 * So flip timestamp can be verified only from the second flip.
>   			 * The first async flip just enables the async address update.
> +			 * In platforms greater than DISPLAY13 the first async flip will be discarded
> +			 * in order to change the watermark levels as per the optimization. Hence the
> +			 * subsequent async flips will actually do the asynchronous flips.
>   			 */
>   			if (is_i915_device(data->drm_fd)) {
>   				uint32_t devid = intel_get_drm_devid(data->drm_fd);
>   
> -				if (IS_GEN9(devid) || IS_GEN10(devid)) {
> +				if (IS_GEN9(devid) || IS_GEN10(devid) || AT_LEAST_GEN(devid, 12)) {
>   					ret = drmModePageFlip(data->drm_fd, data->crtc_id,
>   							      data->bufs[frame % 4].fb_id,
>   							      flags, data);


