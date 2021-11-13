Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CC344F0A4
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Nov 2021 02:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDB16E075;
	Sat, 13 Nov 2021 01:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FF96E075
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Nov 2021 01:42:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="220443195"
X-IronPort-AV: E=Sophos;i="5.87,231,1631602800"; d="scan'208";a="220443195"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 17:42:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,231,1631602800"; d="scan'208";a="453242367"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 12 Nov 2021 17:42:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 12 Nov 2021 17:42:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 12 Nov 2021 17:42:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 12 Nov 2021 17:42:34 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 12 Nov 2021 17:42:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/1zQkLJSPnX0viRmcgOkt4Y9QZTOBRUWK9hOyN1lWiQQ+GvQwcJ9PjgCOquaJuEOmL0611NKjKNxtd3GFNwFmpliro957Z62iJ9eWY4Ws9a0kaWPdBWqW5ZJkxrwmyU/ekh0a8oE13BPgPHI6opmF/tANT7KmTSFP9Mo7e/8KjY5YgHAbvtoFtFBq1mrK7SPwfHwsbcwRGO6hn99YRSrQ6AK5YfMKFkjW+f3ZOyuB3RXIVQQoqV/L9iingZvkCAeSMr9q3xJjp4qBWgUG5KvkHhr7q+zf4ljp5r4eXB/5saUcxJ5AU7vzDiTWKtLyMbgWZKuZ1g4Z/gH7P4RvxdSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a3o2Q7ogSy7TeyLR069GZdLXm7x8xeEzNn4M3665nFM=;
 b=EpQog30Ukgvo3vNXNUUthC41FyJugsRFZJH63qgv6WZ3xXWGZ0T+WNCmVxsxes0abrk7aSX7OLwXCkjgfn5jPFKSOmEDB9879cyCpZazE0LE3kvxqacchY5kD9rsRo+XpEk/PB3IHz+3GnxnPR363yb1AN3CL568n0IdKmcJPW1uy3s1p6oI/4iBCADNmGZsVnICilGH2M2Wn+qnIG7Pp8b25fxP7/99MYxoUgraTIzaX44ZgQe3RFhqdCEURNOavWNaVqiijpXA82lKfFVkxaJr3ytcbYkq504F6/JjDj03JgP7eEDYJOs1YySulZ6roIjUKdiDYEK1FjrgyTXtLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3o2Q7ogSy7TeyLR069GZdLXm7x8xeEzNn4M3665nFM=;
 b=iHEoaaiJCv5iCeb3InxS9AE/l7gOjZFq4479lh2JiQqgznzP52OhrG7KamWq644s5CyRPbVjU1E4cX5TkYWtRiEYFp7RtGDatBjwCuHAnuVTzlffc3CHjzTKaDMtMT9FWyS3zzQTAQMM3atGMZ4UepYvZ8qbD+Lr9+W7F+TnEPw=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from MW3PR11MB4761.namprd11.prod.outlook.com (2603:10b6:303:53::15)
 by MWHPR11MB1549.namprd11.prod.outlook.com (2603:10b6:301:c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Sat, 13 Nov
 2021 01:42:32 +0000
Received: from MW3PR11MB4761.namprd11.prod.outlook.com
 ([fe80::992a:6f3e:5b2f:36ec]) by MW3PR11MB4761.namprd11.prod.outlook.com
 ([fe80::992a:6f3e:5b2f:36ec%2]) with mapi id 15.20.4669.016; Sat, 13 Nov 2021
 01:42:32 +0000
To: Matt Roper <matthew.d.roper@intel.com>
References: <20211111004549.144706-1-michael.cheng@intel.com>
 <20211111004549.144706-2-michael.cheng@intel.com>
 <20211113012807.GD137318@mdroper-desk1.amr.corp.intel.com>
 <20211113013146.GE137318@mdroper-desk1.amr.corp.intel.com>
From: Michael Cheng <michael.cheng@intel.com>
Message-ID: <b02449e7-d921-72f9-efef-612eb45576da@intel.com>
Date: Fri, 12 Nov 2021 17:42:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <20211113013146.GE137318@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: MW3PR06CA0012.namprd06.prod.outlook.com
 (2603:10b6:303:2a::17) To MW3PR11MB4761.namprd11.prod.outlook.com
 (2603:10b6:303:53::15)
MIME-Version: 1.0
Received: from [IPv6:2601:1c0:6100:cc9a:cf83:2b61:24c2:169d]
 (2601:1c0:6100:cc9a:cf83:2b61:24c2:169d) by
 MW3PR06CA0012.namprd06.prod.outlook.com (2603:10b6:303:2a::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.13 via Frontend Transport; Sat, 13 Nov 2021 01:42:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 36f12c36-32e0-48f8-1512-08d9a646dbfb
X-MS-TrafficTypeDiagnostic: MWHPR11MB1549:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR11MB1549939984714A04A86D7A69E1969@MWHPR11MB1549.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FV7Nn60r8l3jdiFl7EK3xjSOKd8C9/uLOzXBbU/mu6CM2BUAoWzaYYThlYuubyFqlpM1UyayaDfTZLfDLwLV2my/FjLOMd6TgFrz1OqfenH2ATPJBYFv1JiRJ5ZyNgun9mMh9RB5/yHy8hcNPir7Af5P5gROLuKBgEpukojJra4L675vu+UCTISKtaw84YNuLaPfKVC0DW6fzyfUrv5s6pXgVC78kqkGDzTDFi5KaYLNKOJGB/VYwcnAYXDF5ij6OGRNhqpvfXyNrW+TYv7eJAPQpF5lwTPUAUMqw9n2mf5e5kT6RhYh2l8pdiADFl/s6ujzbdXh+06vPLjnngfqmNS78s5nd/8mAeP9DjrpbK/Fdx6MX8IdO7uRvyuRsbQkzyaWiACa6ehIHb+w3gdCPbRyHce9TqB1+O3laG2MuSQ+H7WDXxxPN3WgUAtQT614kKUk+mJJne2Cje8NxC1zX5OWkPr5EizhlblnKFXOuzH6fQGxRwuJKaBNoSrJ3UHJLvB97XGl27eDxF4xib/5E8igHfXbG2dwvoYDFTuX9vgJhVgKIMbNgrgfWupeRjY46sgZAtq29FNES2AVJKBM0FDXInLO7PzVacl2D2dSS4yQEr0xtl3CBuB1XibGrFHDo+MBFRGKDevtlBgiux6/+0lX9tW/Se1ZWcJ9ckoPtDUNPro+5LyrUqucBDt+aDEzR2gtQhZl7eVQ95qo37AdPZjByeijrCqLciiPbTeoslI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(44832011)(31686004)(31696002)(38100700002)(186003)(53546011)(8676002)(107886003)(6666004)(5660300002)(36756003)(6486002)(8936002)(86362001)(508600001)(66556008)(6636002)(83380400001)(4001150100001)(2616005)(2906002)(40140700001)(66946007)(66476007)(316002)(37006003)(6862004)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmNjMGMxQUU3RUM0THlpdHNaRjIvU1crNDFzL3Ztc1BBd3doanA1VDNPNVJQ?=
 =?utf-8?B?YVNMZ1QrTFkvNUNIT0IyODhCaHkvclFsNG1GRUtOZ3p0anhvdUZ1ZG03ak1M?=
 =?utf-8?B?aXZhWUpiYUpLeU1vWUtrNCt6MndEWXZaSytVbFJtMmhiVi82bHRiZUplWm1X?=
 =?utf-8?B?bW5YR1l3TTFwT2tIQ2daVTg4OU5oWitpa0hqTU11WEJqeUh5dzhKNThUaGRK?=
 =?utf-8?B?Sk9Kd3VTTGgwV3pFa3NubThsYXlvTGM3UHhJYnFkVUdGYmVQeFJpU2ZuVUZp?=
 =?utf-8?B?Nk55ZHB4UmhlU2hyYStUY1lBS1dBTWM2MWpWaFBSL254eThyMUY0c0tYa2RR?=
 =?utf-8?B?QjBIUlpBRlRtVkFzaFNZTVFHWFkwSmpmcE5lTWoyQldPVFU5WmhxazZhSmZL?=
 =?utf-8?B?WU00M0lLSkYrL0hXZ3BXWm5qQnlOZXYzOTdISDVXMEFJOEZyRlFJbVdRSWpz?=
 =?utf-8?B?VDFmd0h4eXlkVkJyTUEzRzZXK1NnSUlKVmZ1NVR2VVpld3pGLy9PNGFxb0ht?=
 =?utf-8?B?VDlCeE8zMkJYaVJIYmFKVmVEZE8vVFVDMFV3Uk10Ni9wc2p6NHY5Q2huQ1hQ?=
 =?utf-8?B?cFRoZURzVUlQM0xWUUFKVlFQTW5TTXJiNDFEeDZzWlM2a2EyZ2xGZHo3RC9r?=
 =?utf-8?B?RnFoVWdEQ3o3aXFKNi9pSnAvK2ZIVFdua1YrL2R2WkEzQko5U1IrdTZ3MjZt?=
 =?utf-8?B?eHpDVEQvdlRybjhyeWRyUnZBWVJpY1BXVXQ4S0QrV3EwNUdjQXhsS3k0eWVO?=
 =?utf-8?B?UTkvTitHSVNDc3UzcE8wUWo5SFNyQWFKWXBaUVlGRWpMUWNleFhVbStIbnpY?=
 =?utf-8?B?VDV6Y2V0aGxEQXl5Vzh3T1FMc3BoK0xvd0w4d3FuV3M2TGxFQXptOU41dGdl?=
 =?utf-8?B?MVN4Y09ZOTFCSVphMHMvNHhtZHBla1NUY1BHZGpITW1kdmJZaVBhNzNFM1BU?=
 =?utf-8?B?d0JtTjlGOWdyZW9iOE4xNnU1anlFNDdGODdnbW9BQTUzR3BBNnJrNnZJN1Mz?=
 =?utf-8?B?NE8xNmdjb0tYbEY3TG1Dd3FTR1Y4Q1RNeEozeW9JTk1lWTZNNnI4WjNJcWg5?=
 =?utf-8?B?bXRpNVRBYjRhQWhqWGdUaERQbWlpVXBxRDY5QW1tTGVNTFN3MCtSTzdNWnBl?=
 =?utf-8?B?VWRBeU80N3dCS3lDRmhzMk5aS2FWOEdxWk5oOWdVeExwZ0tnNi9lSGhXRE9k?=
 =?utf-8?B?dHhMeDV4eUtPSWJrMzZNOGlNdjBVK2U1d2dSM1hVblNUVzhSdWhOaW8vWGkx?=
 =?utf-8?B?OHhPbVdldFZkd2pOMDN2Y3ArUndRLzhacGJqVkI5L0k3OXpGakF5V2t3UDVX?=
 =?utf-8?B?NEgrdmQzaTFoV1A1RTBWTFVGdmZQcTErc09ONXUrOVdZMWMwYlhyU0o2YjUv?=
 =?utf-8?B?aUVBZjJzMGlTMlNMbDlFeUpMSzRPZWlyMm1OYjdZcEJCczRKUy80MkVhbm41?=
 =?utf-8?B?WGRRRTFlM0xvT0FtNUlhbXV0UmV3b1Bpb0hkMGpDS0piWTFhVnAvTTkwRXJI?=
 =?utf-8?B?Q2Q5cW03MGZtdXlRRlE4SkhJbjVmYnh3Z2p0SWYxZkZhd1ZGSTBXSmRpTmNW?=
 =?utf-8?B?Qy90NTJZdytnUExlTXlPU2RySDVBaGdGNWVSY3p6YTRKK2tOdXZxdXR1OUh4?=
 =?utf-8?B?dml1ZE5EUDNHaU95ZjBTNE80RUVYYVpscTV0VHBUZ3ZZNEN1NCtJRkU0bzhL?=
 =?utf-8?B?M0FtSXM4UXJNdlJCRUNjeWs5OFpUSmxNWkpsQTFoWUFvSGxvb0UwTmhranlj?=
 =?utf-8?B?MlJpSy96MGJWK0NkMzNuOThnSTR6enArZ2Zhc3JmZzJneFF1MDNuTU1TcWtp?=
 =?utf-8?B?aG5OVTdVbDRpUENVVEtualJuTnBFRHBQQU9abkp5Rk9WSXQ3aWhRQjVJejBx?=
 =?utf-8?B?VVFBUWYvL05pb1liY0F1d3FiUDd4VnptKytsY0RqNjFzWUZld0ZBL1hTeWNU?=
 =?utf-8?B?OEdoaXVIOEx5djd0UXF6Rm45WmJYZThyY0RpL3pKQVhyT1FSQ1BTV1FoRXFk?=
 =?utf-8?B?cVpBZmE2VzdTdUNkUlkvUHZubkQ0VFlQaGxGTDVuMkpwVzFRUERBbVRjZHRy?=
 =?utf-8?B?ZzNGS3lwdjVtMU9ISy9KZlV0ZnpwUUQ1S3didlBzcjBpWWQvU0dsbFZvZm84?=
 =?utf-8?B?bXZ5em1mOFBuWEpuNGl3NXJPanZuNEhjL1k4cmI3QjJFbFhUQmVoY0JIRW8z?=
 =?utf-8?B?a1lPaUZadm5lUWZYZkhacEhjVXFnSTViY1l1alBDdHhWTWRsRkw3TTJzSEsw?=
 =?utf-8?Q?2kKUemMroua0JvJiUUEzmnt1V1w+jS9p6OmCNduhOs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36f12c36-32e0-48f8-1512-08d9a646dbfb
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2021 01:42:31.9536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r2K+wyeHBMLhpaurWo21LqqzOkx/wVN+s1qAV969OFv/m9w5v+9QnSMvcCkKmR53d11FKxfixyI+n5/oQa1B4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1549
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/3] drm/i915: Introduce new macros for
 i915 PTE
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
Cc: wayne.boyer@intel.com, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks for the feed back! I feel like using something name GEN6 or BYT 
for a platform that's not GEN6 or BYT could be a bit confusing, that's 
why we decided to go with something more generic. I do agree I need to 
cite the bspec more. Ill wait for more feedback before I send a new 
revision out.

On 2021-11-12 5:31 p.m., Matt Roper wrote:
> On Fri, Nov 12, 2021 at 05:28:09PM -0800, Matt Roper wrote:
>> On Wed, Nov 10, 2021 at 04:45:47PM -0800, Michael Cheng wrote:
>>> Certain functions within i915 uses macros that are defined for
>>> specific architectures by the mmu, such as _PAGE_RW and _PAGE_PRESENT
>>> (Some architectures don't even have these macros defined, like ARM64).
>>>
>>> Instead of re-using bits defined for the CPU, we should use bits
>>> defined for i915. This patch introduces two new macros,
>>> I915_PAGE_PRESENT and I915_PAGE_RW, to check for bits 0 and 1 and, to
>>> replace all occurrences of _PAGE_RW and _PAGE_PRESENT within i915.
>> On older platforms we already had our own definition of GEN6_PTE_VALID
>> (the spec uses "present" and "valid" interchangeably) which we were
>> using to encode our ggtt ptes up through HSW; it might be better to go
>> back to using that rather than adding a new define.
>>
>> It looks like BYT is when the writable bit showed up, and we did add a
>> new define there (BYT_PTE_WRITEABLE), but on the next platform (BDW) we
>> switched over to using the CPU page table flags instead and never used
>> it again.  So we could probably replace _PAGE_RW with BYT_PTE_WRITEABLE
>> as well.
> Okay, I should have looked at the rest of the series before reviewing
> the first patch; it looks like your next two patches replace
> GEN6_PTE_VALID and BYT_PTE_WRITEABLE with the new definitions here.  I
> still think it might be preferable to reuse the existing macros (which
> also help clarify the platforms that those bits first showed up in the
> PTE on) rather than replacing them with new macros, but I don't feel
> super strongly about it if other reviewers feel differently.
>
>
> Matt
>
>>> Looking at the bspecs for pre gen 12 and gen 12, bit 0 and 1 are the
>>> same throughout the generations.
>> This last sentence seems a bit confusing --- it's true that bit 0 has
>> always been a present/valid flag, but bit 1 wasn't a writable bit until
>> BYT; there just wasn't a writable bit at all (e.g., bspec page 229).
>>
>> It might be worth tossing a few bspec references on the commit message
>> here, just for future reference.  E.g.,
>>
>> Bspec: 253, 45039
>>
>>
>> Matt
>>
>>> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
>>>   drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
>>>   drivers/gpu/drm/i915/gt/intel_gtt.h  |  3 +++
>>>   drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
>>>   4 files changed, 13 insertions(+), 10 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> index 9966e9dc5218..f89b50ffc286 100644
>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> @@ -18,7 +18,7 @@
>>>   static u64 gen8_pde_encode(const dma_addr_t addr,
>>>   			   const enum i915_cache_level level)
>>>   {
>>> -	u64 pde = addr | _PAGE_PRESENT | _PAGE_RW;
>>> +	u64 pde = addr | I915_PAGE_PRESENT | I915_PAGE_RW;
>>>   
>>>   	if (level != I915_CACHE_NONE)
>>>   		pde |= PPAT_CACHED_PDE;
>>> @@ -32,10 +32,10 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>>>   			   enum i915_cache_level level,
>>>   			   u32 flags)
>>>   {
>>> -	gen8_pte_t pte = addr | _PAGE_PRESENT | _PAGE_RW;
>>> +	gen8_pte_t pte = addr | I915_PAGE_PRESENT | I915_PAGE_RW;
>>>   
>>>   	if (unlikely(flags & PTE_READ_ONLY))
>>> -		pte &= ~_PAGE_RW;
>>> +		pte &= ~I915_PAGE_RW;
>>>   
>>>   	if (flags & PTE_LM)
>>>   		pte |= GEN12_PPGTT_PTE_LM;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> index 1fb4a03d7ac3..3f8e1ee0fbfa 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> @@ -207,7 +207,7 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>>   			 enum i915_cache_level level,
>>>   			 u32 flags)
>>>   {
>>> -	gen8_pte_t pte = addr | _PAGE_PRESENT;
>>> +	gen8_pte_t pte = addr | I915_PAGE_PRESENT;
>>>   
>>>   	if (flags & PTE_LM)
>>>   		pte |= GEN12_GGTT_PTE_LM;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> index dfeaef680aac..fba9c0c18f4a 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> @@ -39,6 +39,9 @@
>>>   
>>>   #define NALLOC 3 /* 1 normal, 1 for concurrent threads, 1 for preallocation */
>>>   
>>> +#define I915_PAGE_PRESENT BIT_ULL(0)
>>> +#define I915_PAGE_RW BIT_ULL(1)
>>> +
>>>   #define I915_GTT_PAGE_SIZE_4K	BIT_ULL(12)
>>>   #define I915_GTT_PAGE_SIZE_64K	BIT_ULL(16)
>>>   #define I915_GTT_PAGE_SIZE_2M	BIT_ULL(21)
>>> diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
>>> index 53d0cb327539..8f6a055854f7 100644
>>> --- a/drivers/gpu/drm/i915/gvt/gtt.c
>>> +++ b/drivers/gpu/drm/i915/gvt/gtt.c
>>> @@ -446,17 +446,17 @@ static bool gen8_gtt_test_present(struct intel_gvt_gtt_entry *e)
>>>   			|| e->type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY)
>>>   		return (e->val64 != 0);
>>>   	else
>>> -		return (e->val64 & _PAGE_PRESENT);
>>> +		return (e->val64 & I915_PAGE_PRESENT);
>>>   }
>>>   
>>>   static void gtt_entry_clear_present(struct intel_gvt_gtt_entry *e)
>>>   {
>>> -	e->val64 &= ~_PAGE_PRESENT;
>>> +	e->val64 &= ~I915_PAGE_PRESENT;
>>>   }
>>>   
>>>   static void gtt_entry_set_present(struct intel_gvt_gtt_entry *e)
>>>   {
>>> -	e->val64 |= _PAGE_PRESENT;
>>> +	e->val64 |= I915_PAGE_PRESENT;
>>>   }
>>>   
>>>   static bool gen8_gtt_test_64k_splited(struct intel_gvt_gtt_entry *e)
>>> @@ -2439,7 +2439,7 @@ static int alloc_scratch_pages(struct intel_vgpu *vgpu,
>>>   		/* The entry parameters like present/writeable/cache type
>>>   		 * set to the same as i915's scratch page tree.
>>>   		 */
>>> -		se.val64 |= _PAGE_PRESENT | _PAGE_RW;
>>> +		se.val64 |= I915_PAGE_PRESENT | I915_PAGE_RW;
>>>   		if (type == GTT_TYPE_PPGTT_PDE_PT)
>>>   			se.val64 |= PPAT_CACHED;
>>>   
>>> @@ -2896,7 +2896,7 @@ void intel_gvt_restore_ggtt(struct intel_gvt *gvt)
>>>   		offset = vgpu_aperture_gmadr_base(vgpu) >> PAGE_SHIFT;
>>>   		for (idx = 0; idx < num_low; idx++) {
>>>   			pte = mm->ggtt_mm.host_ggtt_aperture[idx];
>>> -			if (pte & _PAGE_PRESENT)
>>> +			if (pte & I915_PAGE_PRESENT)
>>>   				write_pte64(vgpu->gvt->gt->ggtt, offset + idx, pte);
>>>   		}
>>>   
>>> @@ -2904,7 +2904,7 @@ void intel_gvt_restore_ggtt(struct intel_gvt *gvt)
>>>   		offset = vgpu_hidden_gmadr_base(vgpu) >> PAGE_SHIFT;
>>>   		for (idx = 0; idx < num_hi; idx++) {
>>>   			pte = mm->ggtt_mm.host_ggtt_hidden[idx];
>>> -			if (pte & _PAGE_PRESENT)
>>> +			if (pte & I915_PAGE_PRESENT)
>>>   				write_pte64(vgpu->gvt->gt->ggtt, offset + idx, pte);
>>>   		}
>>>   	}
>>> -- 
>>> 2.25.1
>>>
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> VTT-OSGC Platform Enablement
>> Intel Corporation
>> (916) 356-2795
