Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B8A5061AF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 03:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413A910E144;
	Tue, 19 Apr 2022 01:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A1E10E144
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 01:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650331601; x=1681867601;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ViARgOrgJ9zKo/lm3asl6RA8r9qknGA7li+dGV5JfpE=;
 b=VQxWSKdTPdd+Jxexbi4JviQE5D0d6puiOEpypXslsXVPsdOLg9F/0cOR
 ox6onPyPxBg91zbwbYgd/XBKUdRex5jGuuFXKWy2oR/yW7zaHOCZGY74w
 iOndXmYPhElbjhcmKLz2tW7QsGRcUeMbbuMXtwBllOvPc4+Qm6ysRmlIN
 40qCTqnnyeFztjSbH6AfoGmmN8607Eme4igG2JiRWjW3l8b8NgsCZr1B+
 9AsZPyeajEyG/zSEo9E+7embepJMq0hJkRXDLASw2AuBzI0SIG7MSwHvj
 rpipf93GJdH6Dw9fk0y8GGLp359kBOYmniH27sC6EwFBcVQncBacXMjUQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="263822675"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="263822675"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 18:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="726862025"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 18 Apr 2022 18:26:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 18:26:40 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 18:26:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Apr 2022 18:26:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Apr 2022 18:26:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XDxUt/fBHudNDY8mBK4SIjY8CFrp6yqLFzPDGYOIAtURIvCIu5ZJplKUIEiogqCmvMCcFGc9mkTXmLcrdei2s0UkUk3oj16yC877ByD5Mc7+7vZbNSPXYOkmdP9th6F/BfBRRGSaqhNN8XIniM+rWfkPtALD3emNevl6pmzi42Ftvea4hLbQKdFUrsz077GR/EJ8pD2dkhywma5TzGMRueB2EaZEILJ96HQIY2V+lA+yrW7U8ymamv6lzsfSpTjAb4IeSERqlYhaagBzWCab0YPyrNszmyJyl4aBZNZOwXK9oisl8qh9TWlKnqy7ovFI+jXeIAXZTkVer51mRXvLCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fj4KdRUPCkpATDyLFvrUvHx+Yujw+ep+fFj9K1MNI/0=;
 b=VBq+fyr7keOz0Bq3idEmrMZ1/lx3N26GDFW0IWHTn2kiYi0C/YAjq9y4D/kPAhgqDd8RfWliwUoqm01MlgznEUjkDhFV+T2wOY6jRRMUqUpRCxa61aS9zB5XoywfrNnPykOP8Ct+RBaTikxMvNQiw2AFdpNYieJY7pnuzFqHVRVc3uyP7e8+qtAzJ3oke0StGvYS7A0Xq1JunMoGR5RJwJrqWj66LKSxi5r00Y5qRGi7mkIJppaJ2bHAWDrTn+s61cwBlOk1yy3pxgQfS3hGPYX/U/Gy757HthJY8QYSwEKPFNSVhTHgUoWyEvgizFv/nEZfQ/tTXmSQSO1uhgHt1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BY5PR11MB4133.namprd11.prod.outlook.com (2603:10b6:a03:18f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Tue, 19 Apr
 2022 01:26:37 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f%9]) with mapi id 15.20.5164.025; Tue, 19 Apr 2022
 01:26:37 +0000
Message-ID: <c940388d-59ac-08d9-80c5-26c38e1c98c8@intel.com>
Date: Mon, 18 Apr 2022 18:26:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220419000737.420867-1-daniele.ceraolospurio@intel.com>
 <20220419000737.420867-3-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220419000737.420867-3-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0083.namprd03.prod.outlook.com
 (2603:10b6:a03:331::28) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28225951-e3cc-49ab-83af-08da21a3a5f8
X-MS-TrafficTypeDiagnostic: BY5PR11MB4133:EE_
X-Microsoft-Antispam-PRVS: <BY5PR11MB4133778E206C64F14887FD87F4F29@BY5PR11MB4133.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 15zNtJ7v1qEBsYyapZcNwInJFdOLGyoKZZcdkBs798WlA63aU5nkh5Sx9s34BAXMy+mWMDegFXxnWSlwzfORlTr3I6aBjIpDSIT91y/pKcE7yAIRBECOS2VZpFY2y2haP5BcmmcbjKOdfr7BhxzaHUJtIr/FPxSeVshzeNjlTPW/s1CMMSCK5XKg+St4YM0t261S4IQRdrOa19Cfy7ccn3LFwenLpdD6CCCCsMd0QzT1h9xnGNf6+vMojRq56VUICeV6I/IEFdW7Q9LCxbRv4Rhy/9QnrVqvUEO8BnavaPzPRHrgZ1rB85tZ8ew1YLY438jY+7LBYmuIPdep3vuz9uiMmiRYCzUhD5FQldoNY0JXVjskG/4NMjgkfLg1vfv79hygAHxpwWMPJOuUH/QbX9CrxN3tkMjAMguR4uRohcXHpDYp2OpOSPMnWQIz016pjp9iG2ZxA4Pl00Ghy+8yGMNda4JmQuae/XPTIrBKVVyqnKxjan64m7iCqgKwi2l4QkKQWUj9+4zDatZrR/eJTZ6aP8p0/gFmU6SBYxUIZiuxe/CZspOlpDhFiVeBf+Ct4qc/xDLAdjcq6E4HUM1aO7XCt0FjnONeXNHUOJn1SjlYqB70bRlXYCMfv1sxFdIdqUe8zm5wSObbgzB4EvmwU91Z0GTMHvvfnsPdyuf9/Ofwt0R07aFNNdhgmbtx6F0rTlJErTjlJfB1MPY72XN0uhDx7kzQEc4NyhKCfqv/p79TMT0anP2jDOU/TH+yG0Oh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(316002)(26005)(66476007)(66556008)(186003)(83380400001)(5660300002)(8936002)(6916009)(36756003)(6486002)(82960400001)(2616005)(86362001)(8676002)(4326008)(31696002)(107886003)(2906002)(6512007)(31686004)(508600001)(6506007)(66946007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a09xM0swTldSL1kxa1FuajJlOTNnZjdEQTVablM3TFp3cHVoK3NESGZGWWJD?=
 =?utf-8?B?MFgvVXh4L0RiYndmZTZvS2djVU1oejd1alpEWms3RVNQb3RWTHQ0NEFTa0Nv?=
 =?utf-8?B?V2c2eFAxd0J3a0NxTU5QZER3dFUycStoSm81RHIvcngveFJFb3dxMWhVbzlH?=
 =?utf-8?B?ZlRhNXJQWDBYbWdodVFodGNjVW9oeEhDSjRUNmUwOXIySlhJN29jUk95Z2tZ?=
 =?utf-8?B?amZncDNLVzVtTm9sQ1Mzc0dKQ0JXVFZaNC9UQUtvN2hMdjk5T21YOEdHdWNC?=
 =?utf-8?B?VGliamJYSjNicmtRaVZia3NTdHRrR2hCSjBGdmR2RkdNc24rL1JjYXRrejJU?=
 =?utf-8?B?RjZ4UmtJeGJXM3BiNWhVZnJrb3laNkw2bUNUK2Z3MThHL1ZPbTZzdDU0VG94?=
 =?utf-8?B?dDhwd0RvZFMvUDJsQUJOMEYvWUdjNWJTVTNqRXh0dktTZUZSdEQ0TGJSQnZN?=
 =?utf-8?B?eFVNeVNCZDhrcmg0bjhtNGFvM2t5RXl1UWQvYzlTVzhBQytJSnN1OTAvRUZm?=
 =?utf-8?B?aEZweTRjZUVtbUk3a3FRRTRuU2lSSS80SnFTODRRenlxOGhEaGQ1OHBVNWdR?=
 =?utf-8?B?NEtDaWQ4U0ErWGVoSnhFM1JRazBJYWR6VSsyNHQ5V2tBZnhxZHN1bWdURlVj?=
 =?utf-8?B?Zjc0UXJOelFWdytYa3FJdFk1ay9sakpQdm9sTExwQkpldmluVHh6UUVHay9F?=
 =?utf-8?B?cFFCSllsQlZhZWo1K3pMcDEwcC9IMCszenZQRHhQQWkwUWUxT3FGYkJ1OEg4?=
 =?utf-8?B?cDdzWUhkcDgwMTdTRjNOWFJvL0xmU2U2TXZCaEFNR1lLaVQwQW9oaTd4S21T?=
 =?utf-8?B?WnhXVmNveTRhYm55U2pTUVZFSlRTcWlCcWFsNzlxVjFNRzYzQUcyLzdyQmdt?=
 =?utf-8?B?b2pTTCtsNlo3UzVSQUpCNXhqL3JGUHAxSUtxQU8vUCs1ai9EdTRDSFhhT3lZ?=
 =?utf-8?B?QVl0bXJoVVZjYUFNWi80V3hoeWdDbm01OUhlelBTeHBOSkxtTmJMcUZSMldD?=
 =?utf-8?B?VXNWbVFHSTJoamtNbE45NEpqbWtqSVJyOVZQU3FnMCtmVzZzNEtCZEtlTmh5?=
 =?utf-8?B?SDJNMkVVUU5MNng2bHBkTDlJTHpxUGxMRHhtdStLQzZXV3NjOFNVR08zNjlh?=
 =?utf-8?B?dE9UYmg3RHVxeTNGc2dQemY5a2RjS29lVXFGUDN0MjNRbUVZM1NRVDBOallv?=
 =?utf-8?B?RXFLUTZQNTRGTHBTcVZvZFYxOEN4a0EzTnpGZlNnejVOQmNwdE1PWktkNEdD?=
 =?utf-8?B?bjkxZnE5L3hMZkhxcTdmRnJJWFZWWGJuYkVaVXM2OU96RTBKSW5QNnpRakg1?=
 =?utf-8?B?bkg1MzRITkpPam9oVHdrdmJQc04vQXN5c2I3MFFBalgvVWtHOWZtMUFhOGlE?=
 =?utf-8?B?Z1Vka0tNSlF1cTVyNjYvaEZ0K004RzRHTjhLZUZPcE9OS2g1TmhtVU5rMFNj?=
 =?utf-8?B?WUpkQW8zMWRwZVpjemM0bzVFb0tPdDRyeU1FYWZ0cy92Njg2QzJ1dXk1SnFD?=
 =?utf-8?B?aUxBazNPdmNMa1I2cWRXMmNIL1lDakJWMUpMTmx5aFppNVJibzhid1Y5eis1?=
 =?utf-8?B?WVpuYWVPRUtQWTlzeEJDUmovWmI1YzhhSjBkL2JKRk1oR3NheUJkNUl2dUNz?=
 =?utf-8?B?aWtsQkUxdm9kdHlUdHQvRGYybXoyZUM4eUFldWZYTEZlTlp4R3FDTXlybjAy?=
 =?utf-8?B?NVY0aUNnOGlCc0duNTZWaWJkbld6YVJKeWJuRGY4V0VZMnFOVDkwTmFWY1k4?=
 =?utf-8?B?K0craERQMXdvZ1lxMTRjWnVkQVFxb2JmcEh6Q3ovWThCZ3Y1MFJlNTNzR1VM?=
 =?utf-8?B?bUhJcW4zbDVKVWpKcEMzc3JyNDk0aERONVZIM2pxaVA3MmVWWXZmZFg0ekM2?=
 =?utf-8?B?TG9jeGtnRWZReTBhOEJWa1l6S0d4T2tEb1A5UUIzNFFENXlaM29ZZTFPWTFl?=
 =?utf-8?B?T0x1TndlQ3Y4WEJJbmhDREFpSnZ3TXIrN3N2WUtOSWxYQmhPR0tQTHVDODBt?=
 =?utf-8?B?dHVELzNteVdJaFJRYlh2Y1MrTXNKRC9GTFdYZ1Z5T0pmblJEMHZreGlMSG1X?=
 =?utf-8?B?TmpHc0ZQTkRFSFhBakFXNTU0dVVhcXRRTmxueEprVjlqOVo3ZHhlUTFYaXVK?=
 =?utf-8?B?dlNuRDRCYi9aOVhxcEJ1SnBtYWxIakx0T2F4QmxDaWw3S20ybGNDcG5TRFY5?=
 =?utf-8?B?UVFIZVFBcHpZRm93MlZxY0k3OUdJb2tYYm5mTVA1R0oxK2Zmc3RkeFdheWN5?=
 =?utf-8?B?Sm1ncEhLQ2UrNlhaWVd5OHN4eEt2WHhFNVR6ZmhhRlVIYXRoWGthRlhsN0t0?=
 =?utf-8?B?UFdlbU9lRi9BNitTODBpSHBYN2JNNjZNTkZ5dGIxUGlZd3JYdDVkNnZZNXk4?=
 =?utf-8?Q?6+cfyUKVMkgmgl/U9+xO+5xThMk+ZM9rYKbU1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28225951-e3cc-49ab-83af-08da21a3a5f8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2022 01:26:37.5509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HJAnRF/yPvob1A51PQuk4DDNy3bmkrOOK4BHUoPuGKXDh/wTypf8J97skB5ZpNDcdlj6JQigITIR4P5400+HcC+b+jujVZkmhJDE2Ru0ooM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/7] mei: add support for graphics system
 controller (gsc) devices
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 4/18/2022 5:07 PM, Daniele Ceraolo Spurio wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
>
> GSC is a graphics system controller, based on CSE, it provides
> a chassis controller for graphics discrete cards, as well as it
> supports media protection on selected devices.
>
> mei_gsc binds to a auxiliary devices exposed by Intel discrete
> driver i915.
>
> v2: fix error check in mei_gsc_probe
>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Note that I've purposely kept the r-b here even if there was an update 
because I've reviewed the (very minor) v2 changes and the r-b stands.

Daniele

> ---
>   drivers/misc/mei/Kconfig  |  14 +++
>   drivers/misc/mei/Makefile |   3 +
>   drivers/misc/mei/gsc-me.c | 194 ++++++++++++++++++++++++++++++++++++++
>   drivers/misc/mei/hw-me.c  |  27 +++++-
>   drivers/misc/mei/hw-me.h  |   2 +
>   5 files changed, 238 insertions(+), 2 deletions(-)
>   create mode 100644 drivers/misc/mei/gsc-me.c
>
> diff --git a/drivers/misc/mei/Kconfig b/drivers/misc/mei/Kconfig
> index 0e0bcd0da8522..d21486d69df27 100644
> --- a/drivers/misc/mei/Kconfig
> +++ b/drivers/misc/mei/Kconfig
> @@ -46,6 +46,20 @@ config INTEL_MEI_TXE
>   	  Supported SoCs:
>   	  Intel Bay Trail
>   
> +config INTEL_MEI_GSC
> +	tristate "Intel MEI GSC embedded device"
> +	depends on INTEL_MEI
> +	depends on INTEL_MEI_ME
> +	depends on X86 && PCI
> +	depends on DRM_I915
> +	help
> +	  Intel auxiliary driver for GSC devices embedded in Intel graphics devices.
> +
> +	  An MEI device here called GSC can be embedded in an
> +	  Intel graphics devices, to support a range of chassis
> +	  tasks such as graphics card firmware update and security
> +	  tasks.
> +
>   source "drivers/misc/mei/hdcp/Kconfig"
>   source "drivers/misc/mei/pxp/Kconfig"
>   
> diff --git a/drivers/misc/mei/Makefile b/drivers/misc/mei/Makefile
> index d8e5165917f20..fb740d7549008 100644
> --- a/drivers/misc/mei/Makefile
> +++ b/drivers/misc/mei/Makefile
> @@ -18,6 +18,9 @@ obj-$(CONFIG_INTEL_MEI_ME) += mei-me.o
>   mei-me-objs := pci-me.o
>   mei-me-objs += hw-me.o
>   
> +obj-$(CONFIG_INTEL_MEI_GSC) += mei-gsc.o
> +mei-gsc-objs := gsc-me.o
> +
>   obj-$(CONFIG_INTEL_MEI_TXE) += mei-txe.o
>   mei-txe-objs := pci-txe.o
>   mei-txe-objs += hw-txe.o
> diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
> new file mode 100644
> index 0000000000000..166c1591ba9b5
> --- /dev/null
> +++ b/drivers/misc/mei/gsc-me.c
> @@ -0,0 +1,194 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright(c) 2019-2022, Intel Corporation. All rights reserved.
> + *
> + * Intel Management Engine Interface (Intel MEI) Linux driver
> + */
> +
> +#include <linux/module.h>
> +#include <linux/mei_aux.h>
> +#include <linux/device.h>
> +#include <linux/irqreturn.h>
> +#include <linux/jiffies.h>
> +#include <linux/ktime.h>
> +#include <linux/delay.h>
> +#include <linux/pm_runtime.h>
> +
> +#include "mei_dev.h"
> +#include "hw-me.h"
> +#include "hw-me-regs.h"
> +
> +#include "mei-trace.h"
> +
> +#define MEI_GSC_RPM_TIMEOUT 500
> +
> +static int mei_gsc_read_hfs(const struct mei_device *dev, int where, u32 *val)
> +{
> +	struct mei_me_hw *hw = to_me_hw(dev);
> +
> +	*val = ioread32(hw->mem_addr + where + 0xC00);
> +
> +	return 0;
> +}
> +
> +static int mei_gsc_probe(struct auxiliary_device *aux_dev,
> +			 const struct auxiliary_device_id *aux_dev_id)
> +{
> +	struct mei_aux_device *adev = auxiliary_dev_to_mei_aux_dev(aux_dev);
> +	struct mei_device *dev;
> +	struct mei_me_hw *hw;
> +	struct device *device;
> +	const struct mei_cfg *cfg;
> +	int ret;
> +
> +	cfg = mei_me_get_cfg(aux_dev_id->driver_data);
> +	if (!cfg)
> +		return -ENODEV;
> +
> +	device = &aux_dev->dev;
> +
> +	dev = mei_me_dev_init(device, cfg);
> +	if (!dev) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	hw = to_me_hw(dev);
> +	hw->mem_addr = devm_ioremap_resource(device, &adev->bar);
> +	if (IS_ERR(hw->mem_addr)) {
> +		dev_err(device, "mmio not mapped\n");
> +		ret = PTR_ERR(hw->mem_addr);
> +		goto err;
> +	}
> +
> +	hw->irq = adev->irq;
> +	hw->read_fws = mei_gsc_read_hfs;
> +
> +	dev_set_drvdata(device, dev);
> +
> +	ret = devm_request_threaded_irq(device, hw->irq,
> +					mei_me_irq_quick_handler,
> +					mei_me_irq_thread_handler,
> +					IRQF_ONESHOT, KBUILD_MODNAME, dev);
> +	if (ret) {
> +		dev_err(device, "irq register failed %d\n", ret);
> +		goto err;
> +	}
> +
> +	pm_runtime_get_noresume(device);
> +	pm_runtime_set_active(device);
> +	pm_runtime_enable(device);
> +
> +	if (mei_start(dev)) {
> +		dev_err(device, "init hw failure.\n");
> +		ret = -ENODEV;
> +		goto irq_err;
> +	}
> +
> +	pm_runtime_set_autosuspend_delay(device, MEI_GSC_RPM_TIMEOUT);
> +	pm_runtime_use_autosuspend(device);
> +
> +	ret = mei_register(dev, device);
> +	if (ret)
> +		goto register_err;
> +
> +	pm_runtime_put_noidle(device);
> +	return 0;
> +
> +register_err:
> +	mei_stop(dev);
> +irq_err:
> +	devm_free_irq(device, hw->irq, dev);
> +
> +err:
> +	dev_err(device, "probe failed: %d\n", ret);
> +	dev_set_drvdata(device, NULL);
> +	return ret;
> +}
> +
> +static void mei_gsc_remove(struct auxiliary_device *aux_dev)
> +{
> +	struct mei_device *dev;
> +	struct mei_me_hw *hw;
> +
> +	dev = dev_get_drvdata(&aux_dev->dev);
> +	if (!dev)
> +		return;
> +
> +	hw = to_me_hw(dev);
> +
> +	mei_stop(dev);
> +
> +	mei_deregister(dev);
> +
> +	pm_runtime_disable(&aux_dev->dev);
> +
> +	mei_disable_interrupts(dev);
> +	devm_free_irq(&aux_dev->dev, hw->irq, dev);
> +}
> +
> +static int __maybe_unused mei_gsc_pm_suspend(struct device *device)
> +{
> +	struct mei_device *dev = dev_get_drvdata(device);
> +
> +	if (!dev)
> +		return -ENODEV;
> +
> +	mei_stop(dev);
> +
> +	mei_disable_interrupts(dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused mei_gsc_pm_resume(struct device *device)
> +{
> +	struct mei_device *dev = dev_get_drvdata(device);
> +	int err;
> +
> +	if (!dev)
> +		return -ENODEV;
> +
> +	err = mei_restart(dev);
> +	if (err)
> +		return err;
> +
> +	/* Start timer if stopped in suspend */
> +	schedule_delayed_work(&dev->timer_work, HZ);
> +
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(mei_gsc_pm_ops, mei_gsc_pm_suspend, mei_gsc_pm_resume);
> +
> +static const struct auxiliary_device_id mei_gsc_id_table[] = {
> +	{
> +		.name = "i915.mei-gsc",
> +		.driver_data = MEI_ME_GSC_CFG,
> +
> +	},
> +	{
> +		.name = "i915.mei-gscfi",
> +		.driver_data = MEI_ME_GSCFI_CFG,
> +	},
> +	{
> +		/* sentinel */
> +	}
> +};
> +MODULE_DEVICE_TABLE(auxiliary, mei_gsc_id_table);
> +
> +static struct auxiliary_driver mei_gsc_driver = {
> +	.probe	= mei_gsc_probe,
> +	.remove = mei_gsc_remove,
> +	.driver = {
> +		/* auxiliary_driver_register() sets .name to be the modname */
> +		.pm = &mei_gsc_pm_ops,
> +	},
> +	.id_table = mei_gsc_id_table
> +};
> +module_auxiliary_driver(mei_gsc_driver);
> +
> +MODULE_AUTHOR("Intel Corporation");
> +MODULE_ALIAS("auxiliary:i915.mei-gsc");
> +MODULE_ALIAS("auxiliary:i915.mei-gscfi");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/misc/mei/hw-me.c b/drivers/misc/mei/hw-me.c
> index 719fee9af1564..03945d3b34da3 100644
> --- a/drivers/misc/mei/hw-me.c
> +++ b/drivers/misc/mei/hw-me.c
> @@ -1226,6 +1226,7 @@ irqreturn_t mei_me_irq_quick_handler(int irq, void *dev_id)
>   	me_intr_disable(dev, hcsr);
>   	return IRQ_WAKE_THREAD;
>   }
> +EXPORT_SYMBOL_GPL(mei_me_irq_quick_handler);
>   
>   /**
>    * mei_me_irq_thread_handler - function called after ISR to handle the interrupt
> @@ -1326,6 +1327,7 @@ irqreturn_t mei_me_irq_thread_handler(int irq, void *dev_id)
>   	mutex_unlock(&dev->device_lock);
>   	return IRQ_HANDLED;
>   }
> +EXPORT_SYMBOL_GPL(mei_me_irq_thread_handler);
>   
>   static const struct mei_hw_ops mei_me_hw_ops = {
>   
> @@ -1440,6 +1442,12 @@ static bool mei_me_fw_type_sps_ign(const struct pci_dev *pdev)
>   #define MEI_CFG_KIND_ITOUCH                     \
>   	.kind = "itouch"
>   
> +#define MEI_CFG_TYPE_GSC                        \
> +	.kind = "gsc"
> +
> +#define MEI_CFG_TYPE_GSCFI                      \
> +	.kind = "gscfi"
> +
>   #define MEI_CFG_FW_SPS_IGN                      \
>   	.quirk_probe = mei_me_fw_type_sps_ign
>   
> @@ -1572,6 +1580,18 @@ static const struct mei_cfg mei_me_pch15_sps_cfg = {
>   	MEI_CFG_FW_SPS_IGN,
>   };
>   
> +/* Graphics System Controller */
> +static const struct mei_cfg mei_me_gsc_cfg = {
> +	MEI_CFG_TYPE_GSC,
> +	MEI_CFG_PCH8_HFS,
> +};
> +
> +/* Graphics System Controller Firmware Interface */
> +static const struct mei_cfg mei_me_gscfi_cfg = {
> +	MEI_CFG_TYPE_GSCFI,
> +	MEI_CFG_PCH8_HFS,
> +};
> +
>   /*
>    * mei_cfg_list - A list of platform platform specific configurations.
>    * Note: has to be synchronized with  enum mei_cfg_idx.
> @@ -1592,6 +1612,8 @@ static const struct mei_cfg *const mei_cfg_list[] = {
>   	[MEI_ME_PCH12_SPS_ITOUCH_CFG] = &mei_me_pch12_itouch_sps_cfg,
>   	[MEI_ME_PCH15_CFG] = &mei_me_pch15_cfg,
>   	[MEI_ME_PCH15_SPS_CFG] = &mei_me_pch15_sps_cfg,
> +	[MEI_ME_GSC_CFG] = &mei_me_gsc_cfg,
> +	[MEI_ME_GSCFI_CFG] = &mei_me_gscfi_cfg,
>   };
>   
>   const struct mei_cfg *mei_me_get_cfg(kernel_ulong_t idx)
> @@ -1602,7 +1624,8 @@ const struct mei_cfg *mei_me_get_cfg(kernel_ulong_t idx)
>   		return NULL;
>   
>   	return mei_cfg_list[idx];
> -};
> +}
> +EXPORT_SYMBOL_GPL(mei_me_get_cfg);
>   
>   /**
>    * mei_me_dev_init - allocates and initializes the mei device structure
> @@ -1637,4 +1660,4 @@ struct mei_device *mei_me_dev_init(struct device *parent,
>   
>   	return dev;
>   }
> -
> +EXPORT_SYMBOL_GPL(mei_me_dev_init);
> diff --git a/drivers/misc/mei/hw-me.h b/drivers/misc/mei/hw-me.h
> index 00a7132ac7a2e..a071c645e9054 100644
> --- a/drivers/misc/mei/hw-me.h
> +++ b/drivers/misc/mei/hw-me.h
> @@ -112,6 +112,8 @@ enum mei_cfg_idx {
>   	MEI_ME_PCH12_SPS_ITOUCH_CFG,
>   	MEI_ME_PCH15_CFG,
>   	MEI_ME_PCH15_SPS_CFG,
> +	MEI_ME_GSC_CFG,
> +	MEI_ME_GSCFI_CFG,
>   	MEI_ME_NUM_CFG,
>   };
>   

