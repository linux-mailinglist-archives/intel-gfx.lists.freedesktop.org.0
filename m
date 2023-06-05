Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B39721D3D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 06:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2647710E11B;
	Mon,  5 Jun 2023 04:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B31310E11B
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 04:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685940567; x=1717476567;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c7zcmaSwgSVptIns4fnUyUUqNQL8GpmFTWPdB6wJ7T4=;
 b=R/WfVWF+7nX8rS+hMPeGuEGaaddBEK0LF+PR/clipB0wz8qf2EYNwqWe
 nbzGX05yT/wODEggToscnQKMueLnRa+D8vH+4NXgt51zexL74T3nlGAwy
 rDNWoWzpjC27jXfsEBmXfDY2LE8aXP/F78QlQz11b3QoJSSDvUTis4kVO
 03aiiKAFwVlgyyfREz8PZqTFyQs+hKtd/AMegH8xgWHa8iEMUQTdfvJWz
 vM8AAJ/Fv7uo3RD7/Kn1Ltc0+xxHHyoh3wzKwzUVx6anufoCYvepqduYU
 gjqeoDkzWSt66hEt3qbAYM6MdTXqns6jekvHj0laFteKmk+gWXz+hNf9m g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358728431"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358728431"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 21:49:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="821031671"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="821031671"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2023 21:49:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 4 Jun 2023 21:49:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 4 Jun 2023 21:49:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 4 Jun 2023 21:49:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DKHtcyufzOzKwTlrGc12h6lXgKe0ZAlcJxm8y9QKl9dGpmKcrdYNlmNajPK6CD2HIYgqDgYWecbf9TXZzemiRhtQY/ISSzLCv+dpAv3Ce9NwRtOrt5llFTs3jgw7oKUwUhDFtEJsrzRcw9sZPmKxSu8cYMWakaWEj0UhqA3hQ3iikDcfb8iWikz574W05CB1vroThPUmzc7bj3am84ju4i3Yv8TLX3v41R/5ijF2lW7SKXdueEo9NDeCXfVyaiOFaKsDTcnpm03pms1ugAyy27QEVEHMAL97kba/QbnNGtXXrngt1qHsF70EiNRcnK4Zp52dvtnNdW/xceVahzCpBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=scG38A3MvEqLOI8DD66aLCwVte2u7TyeYtXpqYiE4jM=;
 b=TzC2q17svCn1f7PqE3X84tidVcl3C+v1Koju7Rq4Dqjj1uSIhqltFTVHqqjwEPfeS9rKB2GxLI5IJ63qyzzkN1Y8meLqrxuUTMbMyQAhKB6+ZL65/XEo8Z9mtpv8XpyxMKsCuPnYiNswECtON3OUY8wB5cM7drn0J2aM3EbERVNKvNkpWwT2PPvKIDL8k8uVR1pIAH8mM0FH7LL+niN4LQphoqqIHxPQIKy5LNyIk+J5naKvmBDKAgk00WfkpR2yMRlwt4mpSOtvZKetPlXRw5XOfsBa7heR6fNFw62qX8xIjazyowp/1mjn17UYvvseqq110/EeBpHPD8vWn6tMgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5005.namprd11.prod.outlook.com (2603:10b6:a03:2d3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 04:49:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3ef:531a:63c6:77bd]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3ef:531a:63c6:77bd%6]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 04:49:20 +0000
Message-ID: <5161752c-382e-6324-b530-beb0426763f6@intel.com>
Date: Mon, 5 Jun 2023 10:19:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230529110740.1522985-1-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230529110740.1522985-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0179.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5005:EE_
X-MS-Office365-Filtering-Correlation-Id: ba2632f4-b458-46e6-ca80-08db65803928
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UgjhoLJo0DEBVuq7qXS7scJkwiNS2nT8Zz649LXzYuAs8R/fcn7VY49dhf3KvUdOAj+iz5KgTMQOyrRhWMjxq4mcKI3UJUJmpjttDstCRCAssIh7mYO57LK797sKUv/OHU5kEv8uSqz71wCV0zvUfiBtP/8jX4uCsBlteQJqLLhNwBV6jVHfhuEDe9/RtkOndUZUaNeT9Lr4elWScA1MJcMad2ZW4SZ+lv7Lz4eD+DxQ43B+p6LNvdUYpxU33CNY/8D77XvuJve9uViY73fvvo5zNaYM3Mf4zN3f+9Lu8QU+AWc9/mxpgYec3VFA3LvLADIKHIO1QvL2Vn4gxTJQ7ThWDob1cCKU0WSUGmYqpDu4NgifYrMZCjMBKLPROkQDt33NaQ9nttxdADRdim+slA78pzPooOZ6GtFZLTNPDM7Rx5WVQr97G5J9UcNdtl45pPA37iHTa0cNE8mVBR+JHbWZ7tc0SWiLyiHLKu8PVGWwu3vP4iib+FZ56G/HXZi4JEqWIEMOnEG6G35/zMbyN+5hU+PzIDy9595ADN1zikCV1hapMBfrND8lU7FKdqjoR8MOV+CMsGRXPBIvxfKK67g45sIIRLkEWMMOAyIVM+lvDf2EfOzV0HlbQ9amcacus7Gk945g9Shv9634pnYMRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(39860400002)(346002)(376002)(451199021)(478600001)(4744005)(2906002)(36756003)(6486002)(6666004)(2616005)(83380400001)(6512007)(6506007)(26005)(55236004)(53546011)(31696002)(86362001)(82960400001)(186003)(38100700002)(316002)(31686004)(8676002)(8936002)(66946007)(66556008)(66476007)(5660300002)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?em5Vdm0za3ZoYUFYS2hMcVMrQzRRMjBxYmFjaTl2aEdlNmNCQVJKbXRhTHVC?=
 =?utf-8?B?a1JPZ3V2SldxQW5hQVVKd2hYeDYzQ0FWdDRQS0I3YkFpVG9ZU0FZSkdBdW5B?=
 =?utf-8?B?UEpYdWhoNDJMVEFiR2E3RUkrMTlHNzhUZnZnN1BXNFdwUnBuWXVqRU8xaXF3?=
 =?utf-8?B?S1VhRlB3M2RvbzBQYWNramRDdk5vWmxOSVZ4US9MRUdTY1JnL2Y4eUpMSmEx?=
 =?utf-8?B?elRhbFUvS3FNZlBJbTUzalY4WVVXMm1wRVZ5a1UrMjRUNHFQaEJZVEk0eFRC?=
 =?utf-8?B?U1g5ZUVqMHNvYm4wL29SUzdicWpHQ0VTVGNJdDNEdGtwVEZYWUVGVVRPS0lt?=
 =?utf-8?B?V1NoOVNOaThWUk1rbFZYRU1EOW9OeENDUDRTTGJpdFNJY05RVFJ0Q0xvd0NH?=
 =?utf-8?B?dERISnFmWjZ4dlI5dWNBZ2M3L245bVYrMmk2SG12Z3pKVHpXc3doR2RGSGVJ?=
 =?utf-8?B?YU8vOXBtQTlzM3hZT3I4U3hGOE9VR3dMSXFwcnhJblgvUVE0T041anEyTUIv?=
 =?utf-8?B?WktIZ0JONjd0Ry9sOEZydUVTbkxNc1QwYzZiYnBwenVLcFQxcXRGQjFqMFI2?=
 =?utf-8?B?ZGJuS1VYYWxibXd0ZVdjK09yMER4UENZNEJIUm8xOExKYk4zYzV3WUtlN0FZ?=
 =?utf-8?B?Uk5RUkNFT1dqTklwUUdOZVVIditOa0QwSk0rM3BLN0VrQXJVUit3d09CUHlM?=
 =?utf-8?B?dzNjKzlSUkZGa3VtLzhZcTV3UDJLUW9hZVdHWVp0Q1Q4bndxVlVRdHdOVVh5?=
 =?utf-8?B?NDE2R2ZPeVNHdXdlMklzLzRrZTVHUlByZmVEUElmWDFZVkFETXd3MHhGNFF1?=
 =?utf-8?B?TW02NTJZeGVLQWllR0JqOEltWjNtSkNmUmZlcS8wRzNhKzNXVSs5aTRwMGdI?=
 =?utf-8?B?TXdrNjhDblNjUlFzNDdJYzQ5OThiYnFZcVNqV3NaeGtyb3VLdmtmVmU0ejl0?=
 =?utf-8?B?cUdhWXYrV2RDZHJyK01aR2NSNjRXbDJWeXlNYkFKR05WKzNlR1prbjlJc3Fj?=
 =?utf-8?B?Y1R0TkNpbC91UUdzemN3QWxEdy9nWlM5ZjFOQytBNVVBQ0ZRa0hrR0s2NGw2?=
 =?utf-8?B?VWZiZTZmMjNpYnBTMFM1NjM4dFhpS3YrR0cxbjV3bHMrWGRxY1pQb0JTUWdr?=
 =?utf-8?B?R1J3U05xcGxYdDlpRUpDd0JpeHlPY2xTVC90aE9aajBDa0hpbGhHMmxxbG9l?=
 =?utf-8?B?OGFSOGlyOTRIQXVTbi9tT3N1aVFDR1hzejBsYUkydDNLU2dkQjdXdWgzUldX?=
 =?utf-8?B?L1NMdVZhQmtGRXM1bUF2RytxRU9QYkpqYi9DeHZXUFVCb3hHWHFkbFFMK1Ux?=
 =?utf-8?B?M3FTcjhtOHY4LzBZZlFhbWxoUkJTT1djVFcvVEEyT1VlbDJLT2s4ZEpkNmZz?=
 =?utf-8?B?d2lrcnIyWnU1Uk8rS0JaaVQvSmpwUXVwbDdkb1h6cHJCdUg3cWNid0JObnNN?=
 =?utf-8?B?MnFBdWE1d0NxK3RmMFFuSTlnN3oxcEI3TjM3a0NHanZ3VkdRLy9sSkMxSmhX?=
 =?utf-8?B?N2ErVEcrY0hPWmZVZENIc3dTVW5TYXQzazdDNk4vekVIb05EbGY4VmM3ajVm?=
 =?utf-8?B?V2RTMlNMRWVLSG9QbnRQQWxxM2xEeEJOcXNDbm9tVmZkMUd6YVN4VE9tMFNJ?=
 =?utf-8?B?UzZ0VG51QmF4c3d3L211dnlEVkNidjl2dEdLR28vOW5GWkp0SXJtYmVZNjZr?=
 =?utf-8?B?YUtHbzVnVzJsZWZXZjRTT2FqNldkbFIxY1N2aG1uZ1BFS2tqMmFCaFFGYU42?=
 =?utf-8?B?SGVrSnFyOWk5dmIyY2djTkVSOHBlaTZTZi82MmY0R3pmNFpaVWVsNEJmOXd3?=
 =?utf-8?B?R0gwL29CMUlaaWpwWFRCeklGOU1kTml0NjJNb1RRWDFMTjJONG8yd1FXbmtM?=
 =?utf-8?B?eEx5R0RneDRBbWdTa01FdGY1S1FKMlRQK0hjUXNBcFpraDhiVDI4b3YvemJD?=
 =?utf-8?B?YlNVbnRpM1REUWxFdkVleGIrdG1ZejdWWHRrb05ZTERJK3FOUEFXVnNvNkVT?=
 =?utf-8?B?VzYxaTZjYVNBZ0d3ODU1a1pabkVMK2R2aHpEUXBKdlVqSnJTaWlucERyemh3?=
 =?utf-8?B?aFJRWDRlQ0taaWEwM01KWDlpYlRkNmhMOVZNYzJJQnUrYUd2aWtmNnp2U0Zz?=
 =?utf-8?B?QXp0Mk1KM0EyYU4xUjIyMnA1R053QXNJangyRVJ3ZTFwSytHSzhFQklGUyty?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba2632f4-b458-46e6-ca80-08db65803928
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 04:49:19.7734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XjUDiO3RHIyO/I7tbc2J7Hx/hw+KNzhezkUMVxOLTXy64cWQ9vwvq836ebAg9bgkE7lDXr+kr0vJtwaaellzrRP3MYogSL60Q/Ybr9cNkFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5005
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/3] HDCP Cleanup
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


On 5/29/2023 4:37 PM, Suraj Kandpal wrote:
> Some basic cleanup of hdcp code.
> Consists of
> -rename dev_priv to i915.
> -move away from master naming rename it to arbiter.
> -rename comp_mutex to hdcp_mutex.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Suraj Kandpal (3):
>    drm/i915/hdcp: Rename dev_priv to i915
>    drm/i915/hdcp: Move away from master naming to arbiter
>    drm/i915/hdcp: Rename comp_mutex to hdcp_mutex
>
>   .../gpu/drm/i915/display/intel_display_core.h |   8 +-
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 652 +++++++++---------
>   drivers/gpu/drm/i915/display/intel_hdcp.h     |   6 +-
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  16 +-
>   drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>   drivers/misc/mei/hdcp/mei_hdcp.c              |  26 +-
>   include/drm/i915_hdcp_interface.h             |   4 +-
>   7 files changed, 357 insertions(+), 357 deletions(-)

Series was pushed to drm-intel-next. Thanks.

Regards,

Ankit

