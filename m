Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FA0583679
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A1A12BCC9;
	Thu, 28 Jul 2022 01:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B02310F9A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972528; x=1690508528;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4dbrm1hj8EglKCmvGg9NAFqaYXZaWXFAYFlDNuUHrvQ=;
 b=YadXDDGZ6mx5a+l9soOPQFS/bdD67WCK0QJKnfj8azJhBC5oQ1LExtWX
 NjMFFGuB+MphAkhDav8L53mqMfPvhb0WGNQypC/pRtu45FqoKM3oLuCyw
 Z2x4iinJ28dnYJ3ryfBuqml8LYJoMq0T0rWHnF1Q2RWjm6R72ZLXYc3NJ
 hIqxCmgsDwF8ESqEiLycoVEf6sJedPO82DsVOwmwU4HWyywkRnSUmFPDW
 Fzz3lRENFME5cAht6Ta5DZQT64xZVApShAKhOgU+IwWxLby/TN5f4rHPQ
 QLZGU+kunxMiGa/ofxsheiMpplruZazapcafEGx6fR1Z2hi5bKmzBog9w Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="352388864"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="352388864"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659461492"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2022 18:42:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 18:42:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 18:42:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 18:42:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJj06JC6Mj1f/QEpFsP2p4GICukmCy9Qfh0e2S3n12y9gzP6/pAjoq1VYey+ojk5LeFUSHRwgRt4HXDsr5MiD/46J4xxDcV9jUValcx9VIMJUx/J9P0kPbtqcxnZNZ4dyTXRoYBmjzx+/FHcz8U7wyZ09py4vEa3IAgMwmOj1S+QwzNFAw67TH499q8Z1dKbbptJBg7L62EwBgL0xsjf+HfYFxV/WBb6oOhlArYgSYTb1Qb0QuS7DQzYuG3UgY3n5t/71iAIPjXDb9s99gnVnpA9AiyZd79bFOkrzbCBz0mEoL1DrMEBa+by49Z/gHcOlC0wineeeUTpDr6rUXOrAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZoRWnMFYWnZtMMR3QTLcYPGzB2J58i3NKMZKQ56lvVE=;
 b=h7MBrH2B60RGMvUbS3EmDHHueD7SoCXY3jsu2j/wmd51Yul3W+3fCVeFW0QUskrRmNeAmhzsBoc83y3MPdc1SXieLLUOeMltuja6hrkKQBy0GM7kN1soFdfDeIMzv7u0i0FDRtm+NOC4UhJRRcBx+jrDLT9Gn5JtRh0hnrW2oe0t+m+gH5FSD8FxoljKGTHCJFy8GvA7P8F39hKvA43fQAtZyIgFZSY4KnBt2Yw8t7wvvEzlxI4DDYG1gwyeioOIxpgEmYaRQABW5FNifVKmZik/PabTtkLB4mW8XemXzvamaDsYIp6YDELpFyi1389GBEs02R1shPNL823SCbLBVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 28 Jul
 2022 01:42:02 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12%6]) with mapi id 15.20.5458.024; Thu, 28 Jul 2022
 01:42:02 +0000
Message-ID: <cdc96e29-d40b-090d-6ed0-1f08ff43ca17@intel.com>
Date: Wed, 27 Jul 2022 18:41:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20220726205116.3148847-1-umesh.nerlige.ramappa@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220726205116.3148847-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0116.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b50836b5-8301-4f4b-0591-08da703a5dfd
X-MS-TrafficTypeDiagnostic: SA2PR11MB5114:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HcU+j3OOKfO39eOlaIYnvDr3hOOKDDbL1Ucb0siAxQSW0IVjAomFj+aV2fpUlTVC9PdDRajK/djHJiVnSAudcxj9e14/i/AVRFjHKRO/n49PurBZfR8yM4wEtmXl3BmLKvXDcm9Nhs5s+Kf3kPrqe/5cJbkq+tpI/MyziDiKtuY7bg234L9zVP6DYuKEBHUYCoxIJu5LUl83TY4l4DQNi4pxiqYMo+oGGqsdRnFlpySlHuSbqvaS2/FbBNwRdbhShBAdN9lem8f7IIByzDMvGbIvhdRQ0qBcb03L31l7BC7Rx4GdNMgtKeudpGBRauB1bjaFAAO64HtCgil1ezQ4CniaVgq+KkTVE9WtJ8gK6/Gh1e6WO2NuZYLmS6UzgwC2cGzpq+nkd6t0rsYnu/uFedIlgP/3jx8H0tw0pyxnIsA8deCWVGcVTe4/gZidNrvFU5qnf5iQNRCEiHTP3DyMvJqf8OO9uFd2lAyoaZmmCqcpbMIHBbN6rjrwwVI7Yz/J/dHTjnijYU0j//tyZ2si63y3QGQo4P3U0oF3Jjh89zFg/uNLqHqvaLO06PbJYdcgJOryFk1muFlBFzMVTEkSJX5I86b9wqfCyQUzuWpgNoYgHvFxM1wm0AbhST0ohHYyYcjC23PfJzVzNUwtz63nSPjYoMLn7Ke3X7kjISt80FRsc8TXZPGtl6TqgWQqQprvc40prDkXOnlNfX+HIGlApzF2JYrpzwlMlkBbAXtiTlA9nX5A0yPSgpSe511ZlV2Z87JYe3L0/WjeOISrqDm97X8EKvWovAnw5VzcgXCL8xJGKrOHr4kEOA+gN5v9GOJ6V0Or5MR8VXkyvMTuNTzTAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(346002)(366004)(39860400002)(376002)(6666004)(41300700001)(186003)(26005)(53546011)(6512007)(6506007)(2616005)(83380400001)(2906002)(82960400001)(316002)(38100700002)(31696002)(66946007)(5660300002)(31686004)(86362001)(66476007)(8676002)(8936002)(36756003)(66556008)(478600001)(6486002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2lESEZhR0VENU5veW5LUmg5Rld3TExGcE1ROGtabERZNC9pc1JwcVQvK242?=
 =?utf-8?B?dk1GSWUxbWJPR1dQbXZ5bWJSYkpMUW55c3ZOTk16Wi9Jdk9NOW5yNm5sbWoy?=
 =?utf-8?B?aGxDNDA0N3dmT2dVNktpTHZNRlQydWJRSXQvTmJ5SDVmRUh1cGw0N0ZkY3ZJ?=
 =?utf-8?B?VGl2YW1sbnJ6TWI4S0pmSmFabFJESkU0L3N5K3lkTW1VZVdUZFJWczR5R2k0?=
 =?utf-8?B?NFRMejI2cUdtcm1UWng3emFFRDN5TU9FSzBBKyt3a0taVmtxL3ZTYXlCVVJo?=
 =?utf-8?B?VUJkVWE4V1E3OGNPcnp6c2ZybGRLUUsyWnhDR1AySFBHMEtKbCtPSUNFZU1o?=
 =?utf-8?B?RUVPZ3Y1U29CQklLM2VmZTJFUWl1QXhTRjUrQUVsR1ozc08xWHo5R0MxLzF2?=
 =?utf-8?B?RjNmVmo5OGNiTjBwczhraXFZYTJKeHB6NThlZEdoeGVJbE9pL3RwK2JWOVlt?=
 =?utf-8?B?WEN2WDFGRTZRSlU2cW11Vitha3ZkeGZUaUFvdW40UGxGRkdxZGJ2bVlCOVNm?=
 =?utf-8?B?TlVEdnVwQUErNVI3TktTQ05BbWFxZ05lSzFiUWFaVElVMFhVMkxrZE9iNGJQ?=
 =?utf-8?B?aGlzSUNGM0NQZWxRQ1B1SUZzZVlBSG93ZTdDaUh1dE5uTHppTWgydW5FWCsz?=
 =?utf-8?B?OTliNEQwUkZrQnZPT2o0Y2dnczRxbmdVSkV2QmlhMllrYnRLNGREZ0g5YUdT?=
 =?utf-8?B?Q2pPZnk2WldSR0pCNzVRSFh4a05mUWZycHg4elRZVzJZelhTV1BEbDVSRkNX?=
 =?utf-8?B?Tm83VEpNa2h3THY5UG5mM2d1ck92bktVQ0h3SUc4aURGaENxZTZwcU9lSXkx?=
 =?utf-8?B?VXpmMlhDOFpwZVEyQWdzY0d5Um1MY0JSSTh3RENRZjZjR2ltMWdzTXB3SUdZ?=
 =?utf-8?B?dGNFd1VxL0VSNWJOYldhTnU0Nzh1VUdrU2VMdWhZWUhWNW5oOUJsMlVkZ1lv?=
 =?utf-8?B?Qzk2Ny8xQ2NyMHNCUjEzQ3loandrbERhbkNGbmZ5ZHBtM3VPbndpdXFnSklv?=
 =?utf-8?B?dDYvM3ZHeG1DTVJJU2NISGR2MEUwUlYyMTFqZU90blJLNEwzaGtVdkp1Z1ZI?=
 =?utf-8?B?UlJhS1UzWHVpMk9WU1ZwUVhZbTFLdzc1elNZYk5kMEtOdXNFWlhrUFc3eVlY?=
 =?utf-8?B?QnE3WHhpZFo2TDFOQ0VjVmFWblFXaFo4eTR3QS9zb0E4WDBXdkw2aVB3VHRm?=
 =?utf-8?B?YjYzbGROcEx5aDhZWWNmS2NwUUwzeTRJS1hIK3RrQmlhdUtaMUJBQllNVlh6?=
 =?utf-8?B?cWJ1WUVwOUh3UzhQbk8yNnVLWnlrN3BZWlVoWVVVNTE2RGJIaWN0ZHhJdGNo?=
 =?utf-8?B?S3I5bWNTdmMvSlU2Z3lYOTVMb2gxRi8ycmxtRVVHeDRSaUx1SkYzc28rTStv?=
 =?utf-8?B?c0d2dHFsYUZIKy8zUHpWRzlMdkVyOWRvZXR6WWJEUnVSUlA0SWlPaGh6YXo5?=
 =?utf-8?B?V0tkbE5ENFZMTE1GMkVLTjk0bXZBRGhVL2g5VHJ1MjUzOW1iMzB2Z1J2R3J1?=
 =?utf-8?B?STZ1MUhKSk9ISGx4bDdIUXZUa1NqY1VIaks0NmpleXBEREZwY3QyazFRbWRV?=
 =?utf-8?B?VGIzZStQamMvWW9ldy9VZDFrZE5DaHh3ampVZEdhQ0FUck9EU3lKSzJNc0VK?=
 =?utf-8?B?aFo5YnRudW03M0V0Z09pajMzSENJaUpwOFRMTU1FekYwTVl1ZjRIZENNeDFm?=
 =?utf-8?B?aTRNM09TTlR0bWlVUFJkaklMNE12OS9FZkxyVDNSZWJCQWF0ME1hN2FhTTV2?=
 =?utf-8?B?TGFiNHR0OFNOWDhlY1JieTU4VGRuWGtDVHR4TnNGQXZHZUlacmxYNnpFMEwv?=
 =?utf-8?B?cWk5aFNhQUl1dWVBdjR2ZW9JQVJoMkxWZkpjR1locHRJM0k0dE5yanMxdjgz?=
 =?utf-8?B?T0cyMC9RY1NmQzFsUWtkQmZKaENHVlNUeGJCT2trZ0tScUh0MHhKZjJBbitB?=
 =?utf-8?B?clJ5eHZQUXMwZkxTcEd3T3hlbFk2SEYrZ09qRlJNSWRQRmREOEU0WnhjdFVN?=
 =?utf-8?B?YThDSkNYQVBsUjlVSEVKdXB6aGNpaU9taWJDZmZmVVUzb3p0NmUrU2ZtWG1H?=
 =?utf-8?B?R25xbzJ0b3FDamhjLzdpbVcxT1JNVXFDRDlYd2JnZ0FuVE80aDFUcjhuMjdD?=
 =?utf-8?B?RnFBSzBxc3Mwajh4RmQxYldJa0xIanMxL1g5RFFubGE1cnFtSEFhUk56TjJG?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b50836b5-8301-4f4b-0591-08da703a5dfd
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2022 01:42:02.7685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9nIz0DlfFVsXVI5Wx9QboNGKJ7FKCDWDPpvBHOlt2fNuma/3mk7cPmgr1ElAzdNWUg54Dxojo0lEHWDe/nba5WeRvr8Qg7iQf4J/cg7Ys+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Cancel GuC engine busyness
 worker synchronously
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

On 7/26/2022 13:51, Nerlige Ramappa, Umesh wrote:
> The worker is canceled in gt_park path, but earlier it was assumed that
> gt_park path cannot sleep and the cancel is asynchronous. This caused a
> race with suspend flow where the worker runs after suspend and causes an
> unclaimed register access warning. Cancel the worker synchronously since
> the gt_park is indeed allowed to sleep.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 76916aed897a..0b7a5ecb640a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1438,7 +1438,12 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>   	if (!guc_submission_initialized(guc))
>   		return;
>   
> -	cancel_delayed_work(&guc->timestamp.work);
> +	/*
> +	 * There is a race with suspend flow where the worker runs after suspend
> +	 * and causes an unclaimed register access warning. Cancel the worker
> +	 * synchronously here.
> +	 */
> +	cancel_delayed_work_sync(&guc->timestamp.work);
>   
>   	/*
>   	 * Before parking, we should sample engine busyness stats if we need to.

