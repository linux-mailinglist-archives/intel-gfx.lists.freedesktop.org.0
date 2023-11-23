Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC517F6298
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 16:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01B110E098;
	Thu, 23 Nov 2023 15:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC67010E098
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 15:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700752983; x=1732288983;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0MHRcXVBbpf25BwQbkeBvZiSqEPcq7aLx/WO8RDviFk=;
 b=ZpBmBQRPgr1beBeGs5ofDe5PRUwtjRAgjeTvS2QOzFOJbivRjFj/DuEX
 XWtadXVc2tv93QDf9OSrgvyOBCTwwzfkmI4Z8EyjgSYmXQS6naRvQZIBh
 J4EwpvCyK1iszNRhBCrVX+a0m5KezFgCHsa7dbOUOFf8Kh/qxFu3YU+l2
 28A2/SbnlICqzz7E0kaWuT9QumrWV2V8CBLcDOf/gJUpaSyIj/9KU/zUL
 z3RlZdqFJ1D1slKs9vaF8L4xiPMev0qXX9WyUsFob4JaLpjWzV7hMEIg6
 gITyxM2JJY3e5F01PRp5AnLiME31Me1t/pfJmKDbOh8HsURXiGmOzO/Ig w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="13836691"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="13836691"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 07:23:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="833448032"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="833448032"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Nov 2023 07:23:02 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 23 Nov 2023 07:23:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 23 Nov 2023 07:23:01 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 23 Nov 2023 07:23:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 23 Nov 2023 07:23:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7WApV1lrqpvSJfTQUmb8ExRmBxWbi6JFD+ueomCtfgVdUsQGCHk6+PD2ESuFIpdQyMijbYUq0UciMagpM8G0VmMKJewCQ4LyAyR3l7FXhGgmz1VwVrCMyjKdR0XwaQwcFKHOP5lCaHMheW7Js6ParpyYoIODrNpWvcl7xoMOtExCXPLBNqcgrhtZAicFuJ286pvOc9dokfNgeDCS5f6xRJHNdMv2oJZ5RYRKPImIENkEMRKL3NVhVLIamoTsnVrpyQvGWukbeSWd1WZ0lbTssmfIT/1QoV79PjxBvyfuHgh221WN9YeHtLO6wrdeTrRfrz7taeYZ+nPujQ5n0ATyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LzKKU5bCPJxJu089tmOT86w8Orn7BltXo/UYkcZQ5hA=;
 b=dqUg07dGqt53NTd+GtFN/mgcQ98pOtXLndL2/rgxWeGkZVIMYeS5T3i+RGdPlUonbG6yLwcwMxF0rO1/C9LMZypp2Ct968maHA5fWb8q3BeZ5YKBxSwH1LnQlOe7A+ZzQA1gxehKOxSuWmthWJZSEM5sujTCsbUIPlNvbOscEhKIXdYQIhFdd8CRPOvdiNJ5F+ywyi6y14ZwSpai3dlWLDyHUwlhbySxTKe6nWbDSzj7EFzZgmqJxSUSPDT92srBa/yABb3XfDkDFOy8uf9dHb5+OUxhinpw/1D5GwUgOXT+qdPva5Q365Nl3CDfvyNC+IHI43ZSSatbYOVl6gWNcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Thu, 23 Nov
 2023 15:22:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9%4]) with mapi id 15.20.7025.020; Thu, 23 Nov 2023
 15:22:59 +0000
Message-ID: <299d40e5-7866-92ed-9f57-ea1ac96de526@intel.com>
Date: Thu, 23 Nov 2023 20:52:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231123140244.4183869-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231123140244.4183869-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0097.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5144:EE_
X-MS-Office365-Filtering-Correlation-Id: 4523be08-c62b-499d-92aa-08dbec381343
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5VWsuiAsiYYVG+GO7UhxkXMxKbyUFKgCacTluL0ne72wmet7Ps05bZ7PMswwYxOj3U2hIEcE9Y9baidML4AxYZL3nj2yfq5VZEvlQWJtILrwfQtevX/FjKwBOlzkyUnUoJ+LPbEV2/l04Fcw3IEyk5h8Bs/M7DxR+CimjS1sifJEFx9+/IkWaXC2Efyf1f5jFqxDo5s9qDIvUGlui3oQX/NPPKG4VYXAT+crmrNWwlKZ0mvPkE/Sm70hUsJ6vtVIDFr3hkvOVkFESYVEDbiGjdtVV9tNC5ukUZxIOorpSNMm+dSjg79lmBITNx/S3pGan8B3mUvQHGr8pXvC9rEJv2yFjX6S9cyVvSibnwX2N5Q+cQNt01rvnnBYrlnnrEDlbH3WKafIUePYfehMyt6kJ0tKRvnfpPdHC5rWqLWFlwkUfzEI2zFV4pvd9lk97SmZnwTUXnCcKxWhaTANM7vfiSxj5FidL6awd5d1IluBGlCOJGr9fnaPty/nLDfk+NcbzVNmxOMojOvllzmJtDsyl4odivsp3Q/VKC/+xNT0C4xY/T86Y+OrrKFxKhmb2u1fPJqptNSWYCPjE5IHaTRFS8ueiy0mgk/dmIrFtKohjbCjALFjYrGxH2Fcy+awGoQ0KZDQV0y5tAiMXObS56G7HsFwOzRxsg2XZA2vSlyldJ9oBW7rBhkkDHK7rnv347mvNjbMBd2OpapUSPvnvONCbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(376002)(396003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(4326008)(55236004)(6666004)(82960400001)(6512007)(53546011)(6506007)(26005)(36756003)(316002)(107886003)(6486002)(478600001)(66476007)(66556008)(86362001)(31696002)(66946007)(38100700002)(8936002)(8676002)(2616005)(41300700001)(2906002)(31686004)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmNsQnJBeCs0UmdtcGw4dFlXUWpHVGdOY01RUXR0WnhqWHR2MkNrdTJkZitR?=
 =?utf-8?B?VzdxTUVENTVFcDhVaXBNL2lsdnhCbC9TZHUyRFlxWFhsSWw3V3RMUUJPZWVO?=
 =?utf-8?B?dUNEYm1mbGVBbzFpejN1NWJsMEk3cFFudWpsL1pkY3NCMVFwd0FJUnhoRXBn?=
 =?utf-8?B?QngzSjdYSTZUYkU4NmlYRjQ3YVk5WFhCSEFQaEJRRGJ3WlIzdXhtTUVTVFoz?=
 =?utf-8?B?UWZ1UnVrM3g5M0paQmloaUt4Z1FUU0F5Umw5VlJmclQyOWpndzFKd3NBOFg0?=
 =?utf-8?B?WHZuektjWkpBZit5ZldyV2lIYW1XdHc2NVF2MkN6M3E5TkVxK1pyYzVZaEFl?=
 =?utf-8?B?RGI3bmcvdVM3SFlRVG96cEFZeURWWU9WaTMrRzZiUlNLK3l0ajFxS1RCRVFQ?=
 =?utf-8?B?Y3BLbGNUY1pabnFiRGltSGlXcFFMZWcrbENidHd1TlBCcEtvbDlWZ1BPRDVm?=
 =?utf-8?B?N1ByMENIV2FYS0dyZjdnSTZBSFNObWluWkxKZkxuRy9YZzJBMjhTeEx5SVZn?=
 =?utf-8?B?OC9nZTdKTGE4OHU2bGh1bEorb2pRc0VMRENRdDlMOHBXVnZYYk9QSXpjUkVG?=
 =?utf-8?B?czlqc01rYVdTMVBHSUtWbXNPb2ZvV0pFVkVXK0JzaGlPV29YWnBGcmdQVHZ4?=
 =?utf-8?B?ZHhoMHZ5d3Jsc3Z5bG44SkhEVjhzemhmNzdBa3VXRWtLZzh4THd1VTA1b0VI?=
 =?utf-8?B?dVVZd2JtejJxb3JVWXRtdTh3WVhic2JTZ25XZTY5MVJ3RllGSnZCbmprbjl6?=
 =?utf-8?B?Ky8wQk8vcHFMOEpNaXF3R1NnZ3hydlNqMjZCL3ltbmtpZWJxYTFtRjVhejA4?=
 =?utf-8?B?c2txbmFKVzdoV3BsQTc4VnV6dHNPL21CM0twVVZvdkVjSEdpU2I0SGlMWUhW?=
 =?utf-8?B?MFZtd0FEb2FmMVFLWFlSWjhjM3NCcFE2NWxwbmQxOTA4Rk9NVkd0WmZKZTZP?=
 =?utf-8?B?S0J1MkZUM3Z5aTVaMC9VZ3gwY0cyYk1GWE1Jb3dpbDJiWlJWV0JwRUlWWVZC?=
 =?utf-8?B?UTFqT0tMRElLODcyUjBRNE5Kc24yWFdwK1V5aUNWZFE1dG9sUFd5U2lmRjA2?=
 =?utf-8?B?MUpXZERIM1NGLzdrSWlXejlTbXA3UUR0d0lsQ3pPQ3R6V0FiREp4M2hzRUdK?=
 =?utf-8?B?WWpmazFqckI2SFFJb2pDUnd6c2VUUHZFdHNDM3B3Q0h3SmhXOFNTSlVZb2FN?=
 =?utf-8?B?UnVuT0xrc0pBLy80eGo2aStYN0VEeHdtSmtWSS9iWVRlWWNhVFJHRWFodDNZ?=
 =?utf-8?B?bWJOaHJuSkp1aU5XZjRxeFRyVWJiYkJjU3VWT0ZpRUFFQ2xTYk40WldMR0hC?=
 =?utf-8?B?N1V2c3ZzcmNKQXV0eHlnUm1mWlVFNUJLWEU2THpZdFJvVmFmNFJzb1ViL3dr?=
 =?utf-8?B?M1ErWS9USVBLZGNrWXZRUjRXSFZ5aU5NeFhmTUh5WXJyQTUwVFJDdlV2U0Vj?=
 =?utf-8?B?UnE1enJZRndBdDBFcjhBTk51aTZ5WVIzRUZHejQyTlFaYkdVVXRrOGE4b1dj?=
 =?utf-8?B?NUdNSGRiblR3UFlob1JBWnQ0ejd6NnlXUGExWXZOaWdyZXFIWEVVb0lTZ2Y0?=
 =?utf-8?B?bm5EQ2pvTUlnU1Q3RUViVEV6RUc1Qk9NaTI3NnVmUlNoNzRKZmNYRlJpMEJP?=
 =?utf-8?B?WDVoZVord1hMSGVkM0c2SThYbThoWGNtOGdEdGV2VXcxKzlsNnFoVFNseUxQ?=
 =?utf-8?B?cXE3SDBKb0JCZXlSTDhYVlNEVmd2K1dtSmFYVVZLZG1td0lUSTlpVWVjQVRT?=
 =?utf-8?B?M1VRK2JaVEVtYXByQUdvaXprWlRMVTFXdGY0NEVlSjNSY3kwU3VjQ2VQMVRN?=
 =?utf-8?B?bVpzc1Nuc0tlTWdHZkRwanQ3NklPZ2tBN3dxYWNLS0hkYnlRS09Mdm9NeWFW?=
 =?utf-8?B?Q1hxb01NUEZyZUxOaitFY0tpM1kwaXlyc2orL05seXA2UnBDUUpkMVg2YlBX?=
 =?utf-8?B?YXcwTlo4ZUxBdzJNTldHTHl1K2hnUlFtajRsM04zT3RodFpBYnBxc1h1MXFH?=
 =?utf-8?B?bStSVUlYR2ROVzRDdW54c3NmQllhUjNac0RtSmt1dEdCMitEVVdPTzBnekF3?=
 =?utf-8?B?UkFXUTRROHZoemlzaXlOVmRkN1B5dHd2c3FVOTNWclU5cFc0SkFoTEY3SVJo?=
 =?utf-8?B?Y1ptZTBZTGZ5TkdiSGl6U0ZpaVRHVENJUTU1S2ZzRzN1ajE3VFh6dTY4Qkdi?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4523be08-c62b-499d-92aa-08dbec381343
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2023 15:22:59.2511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rEnjOP+dZ/tUIFQsu/g9vRfwbEd10Ld3Eng4bZUgC06LQm+rXO/hWxkw+zPSlg051Ba6FRLtCqZSELlhTjhxj6UOECsJgCui/GgNLqrWdow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5144
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Add Adaptive Sync SDP logging
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


On 11/23/2023 7:32 PM, Mitul Golani wrote:
> Add structure representing Adaptive Sync Secondary Data
> Packet (AS SDP). Also, add Adaptive Sync SDP logging in
> drm_dp_helper.c to facilitate debugging.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/display/drm_dp_helper.c | 15 +++++++++++++
>   include/drm/display/drm_dp.h            |  1 +
>   include/drm/display/drm_dp_helper.h     | 30 +++++++++++++++++++++++++
>   3 files changed, 46 insertions(+)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index d72b6f9a352c..a205e14a6681 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2917,6 +2917,21 @@ void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
>   }
>   EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
>   
> +void drm_dp_as_sdp_log(const char *level, struct device *dev,
> +		       const struct drm_dp_as_sdp *async)

Perhaps as_sdp, instead of async to avoid confusion?


> +{
> +#define DP_SDP_LOG(fmt, ...) dev_printk(level, dev, fmt, ##__VA_ARGS__)
> +	DP_SDP_LOG("DP SDP: %s, revision %u, length %u\n", "VSC",

I think you mean AS_SDP here.

Also, you need to send this to dri-devel as well.

Regards,

Ankit


> +		   async->revision, async->length);
> +	DP_SDP_LOG("	vmin: %d vmax: %d\n", async->vmin, async->vmax);
> +	DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
> +	DP_SDP_LOG("    duration_incr_ms: %u\n", async->duration_incr_ms);
> +	DP_SDP_LOG("    duration_decr_ms: %u\n", async->duration_decr_ms);
> +	DP_SDP_LOG("    operation_mode: %u\n", async->operation_mode);
> +#undef DP_SDP_LOG
> +}
> +EXPORT_SYMBOL(drm_dp_as_sdp_log);
> +
>   /**
>    * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
>    * @dpcd: DisplayPort configuration data
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 83d2039c018b..0575ab8ea088 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -1578,6 +1578,7 @@ enum drm_dp_phy {
>   #define DP_SDP_PPS			0x10 /* DP 1.4 */
>   #define DP_SDP_VSC_EXT_VESA		0x20 /* DP 1.4 */
>   #define DP_SDP_VSC_EXT_CEA		0x21 /* DP 1.4 */
> +#define DP_SDP_ADAPTIVE_SYNC	0x22 /* DP 1.4 */
>   /* 0x80+ CEA-861 infoframe types */
>   
>   #define DP_SDP_AUDIO_INFOFRAME_HB2	0x1b
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index 863b2e7add29..63b6bef3f21d 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -98,6 +98,36 @@ struct drm_dp_vsc_sdp {
>   	enum dp_content_type content_type;
>   };
>   
> +/**
> + * struct drm_dp_as_sdp - drm DP Adaptive Sync SDP
> + *
> + * This structure represents a DP AS SDP of drm
> + * It is based on DP 2.1 spec [Table 2-126:  Adaptive-Sync SDP Header Bytes] and
> + * [Table 2-127: Adaptive-Sync SDP Payload for DB0 through DB8]
> + *
> + * @sdp_type: secondary-data packet type
> + * @length: number of valid data bytes
> + * @vmin: minimum vtotal
> + * @vmax: maximum vtotal
> + * @duration_incr_ms: Successive frame duration increase
> + * @duration_decr_ms: Successive frame duration decrease
> + * @operation_mode: Adaptive Sync Operation Mode
> + */
> +
> +struct drm_dp_as_sdp {
> +	unsigned char sdp_type;
> +	unsigned char revision;
> +	unsigned char length;
> +	u16 vmin, vmax;
> +	u16 target_rr;
> +	u8 duration_incr_ms;
> +	u8 duration_decr_ms;
> +	u8 operation_mode;
> +};
> +
> +void drm_dp_as_sdp_log(const char *level, struct device *dev,
> +		       const struct drm_dp_as_sdp *async);
> +
>   void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
>   			const struct drm_dp_vsc_sdp *vsc);
>   
