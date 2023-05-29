Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1E871439A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 07:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0481710E205;
	Mon, 29 May 2023 05:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765AA10E205
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 05:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685337027; x=1716873027;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=j4XzjzhP/Oy7m7GpHY5eeHuMn/zMtmJ6Y0Nmq1iQaEU=;
 b=YjL29MTBiaU6KpJ18a8EN7clhUKTPwANJqMOHmjKTq3G/5/hNyJkzsDb
 XtyvZQ9+YiGti6HVLOP1f6hrlq+hN5c1uIZ0XuAIc6RmkyPqOzyzKW7L7
 Fb+ekWXMW2AU2yNiCAo/6sfxepQgUkXvo1m9aynJOrQogXVsdVFvKLJJl
 Bl1zxa1Cl35y5C+GlujZp564zkWy3jCPBlcj8Hm8+QXwXAWKng4ChG+zz
 W53O45fExXfKouJln5gzAPLNVsyt9KUw+IlmqPIzMQ5uBlCwEYzgzCTIn
 Q+orX6DXRDaPbnnaGR6z4Bo7u6TQ1RbW9nJ4/eGdDXO1nPFNz9e41tmhw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="357870681"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="357870681"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 22:10:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="739019331"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="739019331"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2023 22:10:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:10:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:10:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 22:10:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 22:10:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQd4bumnXhn+RyCEU0vKyPfPPhz6rTkcyQEEScJPoSMwLVGDDgA4DGpC/HpP3SUf+9xbVy5iBWMMUKikMcqwDS+8n4fGWZfpgenU7VhKrJTppSLnI+n/r6HVJXzTOEt1c2edNt5CGmit04LeKWenWbdXAhs9dNepoTkFdyhTPx5rY+RhaRCmN2nNDWZBY0ZpknxhJkHdI60qEICbfKdebF20f0jWUIJGaJhP/Ajys3qw2TdU2u0JUoBqeuP9TKvgxVcAnDp1fABkedFSjZHchW3zhl0opkn3bIUhZsVNSEThUgVLWnf6squZcOnpb9PGVXBeIFlLo6v9xYmxzCxlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwmvheua2K0g4PonaE4QIPZfc3VpnVCjYTv2YF87q1k=;
 b=H5RJmp0+R1SBhBVQK+Zmj25RzXOpqjw8oY45bnyA3kV8yzBSfF901aVqS6i8Y0+As7t7dThDPJ5VsEOyOt3+gBkCutVPb5liG6Hg8XBxcuqW6QKFWm46N58pY7+f6cw983APReL4juXFWDygt6CE5DLTZ1d35d4xPUrpYgA8e/rHJqKq8f1rvM89oaOd3VOiCcRh5PgEk67GiSeF2SqUFwVg+ktDBuWIrMYwxoA1BxdZ3xWQvNGwpEsxfHj3dGUlO7VXVnrrH1AfJburlNtHeUhJQ6BvYMczXnbxC633ukK3TW2Ziydnrdbdg+RUnuE06Ay8WpSB+zP8gVGv/ZyQEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7352.namprd11.prod.outlook.com (2603:10b6:8:103::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 05:10:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 05:10:23 +0000
Message-ID: <375326f4-88c6-09a1-3b47-c468bb76a6d5@intel.com>
Date: Mon, 29 May 2023 10:40:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <3d7838d0be7c4639037cecd532b577bbfd262cf9.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <3d7838d0be7c4639037cecd532b577bbfd262cf9.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c38a550-cd31-4fd6-453b-08db60030138
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JRUZn1p/51OKQYpjdgMEytaGRFvIwEA/4b1lylsxzve9s/em26qLwmJ//t3F9RePe4mRWfvNZt0rC+nrLZFIABFSuu2HJcEdCDVKVFa2rqGD2uc02WD2erlXWJYPg0abySuj3/oa7qXFHscrO7OWn7KES0cnLglrg641XAQql7Lkyv3YX28ikvPU6QhZs/2oeBbw5ZM2J/CFQiaOplDRc/30Fyh/ylBqIe4+QBk9Aa8OahmhqojdfHgPzdCFhmfBFmb20PqNmIM43i/ihSNaXy/mERHqrHYwJC7IArDGCpbwcSqf56rBgQ72cGK2zPGemxbiaGdB61/mlFNyF9iwn/mytKf/uh8cGfxjYh5eiAM8PUV/8lpEvcfs1p6UTTxLl2rdhLkK/n0mysnNuuFnYhyu5UaP4n5zEvkBg0QjaZHbYBSXUILW4rGCzvE1aUF5V21qdbJklwJUSAw+nnkNEDbIdrx8umJ6jahu6PB8hzMKLK16QvlGHoZ3BLIpuK9ss2YV2q63LZRGs46Mp9lTdJBNwEZjOFFq6SrUZFkxPmzpZb0bYFSJIbps/kFAtzsG6gMJWD7CuvcRnKY0loIkC4ZsMHJWiVpH5SoW5m+iMNLXGd3TczyjX3hyinw42UKIt6U6Xe22yqABNazYnLA+lg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(396003)(346002)(366004)(451199021)(186003)(26005)(55236004)(53546011)(6506007)(6512007)(6486002)(316002)(6666004)(2906002)(5660300002)(41300700001)(36756003)(8676002)(8936002)(478600001)(82960400001)(38100700002)(31686004)(31696002)(86362001)(2616005)(66946007)(83380400001)(66556008)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q21DNVB2eDJ6SlRlRlRKUEwwYk5jUW5memJJM3lnTWMvRW9JKzNxVzR2K0sx?=
 =?utf-8?B?ZmRtdGhCOFFZRmdHM3RjZkxxWjZpNm5lbUlISmVndFFQUnJJd3VEU2ZlS2tw?=
 =?utf-8?B?M01ZOUhuR3ZCWFlKWTJKV1VsOVFGNXNCY0JIcWkwVXA2UitDQldsMDRmZEdw?=
 =?utf-8?B?L3BHZkZjeWlwMXVpKzZaTzhhZ1hRUFBBZ09VaVFkMDJadW9yRWk4eEtETW9M?=
 =?utf-8?B?aWx1Yk14ODNqcWJkMmd2aklwS1MzSHM1TWxRcEh4bldnMGVhZGtjVXcyZ3lS?=
 =?utf-8?B?S04zaStjaHlZeStOVVdpZDN3MGg5eEJYQkNUSENVSy9DM1pMS2VXQjZYT0NE?=
 =?utf-8?B?aDNVVnBWeGRVSmlEbjQ1STNIQ3NoVG5vU2FpMXRGU1F0MTBxVlhOeUVsTHdt?=
 =?utf-8?B?czVBaFBnWS81ajRYdGoxeDMvS3Q4cW5PVFloaHV2VDZMRDZpcmFncXhOS2lC?=
 =?utf-8?B?Z3FPQm1Zd0t1bTZpSXAzeldnWmhzNCtVbEdjVGp4cE93c3Z2UHpmckluMnFK?=
 =?utf-8?B?TkxaQ3VKbnJjQ3BTWU5CR2pNajNKUGZIMCtYVWpYV1hlWVBuZWxSeDZwREt1?=
 =?utf-8?B?VGMyZXdBU2ZnZUx5SkhLQjJYV01yS0Flblk5UGdMRXV2T0UwY2EyZVczdDkr?=
 =?utf-8?B?QkpZUXMyWnRVZHpZYXk2TTBhTi9YNmVHbkdyUnNCT1d6MEFYMmV0L1BZUHoy?=
 =?utf-8?B?SmM2aU5WVnNCWWRuQ3ZZbGkybmI4VTdQQUxJVFZ6N0RsYmhXelVWdGpyU0tW?=
 =?utf-8?B?b0ErR0tTZlZzNUtUQ1NRditmbHkzWjEwekVpUjIwT0szeXpIRVNDSmNrRG5O?=
 =?utf-8?B?NFMwV0d1Y294WTVyMmNhRE5jbkloSW5pZWhXb2xIWHlQSXRoMXVSaWZza3pv?=
 =?utf-8?B?bTR4MkhXQ3hRY0UvRk5VbE1uM3JVTVN3SHhaTDh2M0hxQlM2dFRzaHQwN2V3?=
 =?utf-8?B?S2YyU3RSVmg3SGdGUGxUY1ROZ2hYYTVOSG1hUVRQK2FjT3lFYzN6Y01hZlE5?=
 =?utf-8?B?R2JpdGY3WElCMXV2TC83aDN5Q2ExM3VqWkxwekJsdTlYdEhab0lXMzhOZEw3?=
 =?utf-8?B?T3VJTFJoMWpmTS9xZGhab2NBQVFDcUhNd29wdHhqVHpQZGZsdk1mVk5Ocmx3?=
 =?utf-8?B?d3pCZnR1R0JxY2tVcGlhSGlQV01pVkhNakV3QWRQTm96Qjg5eEwxdlFaU2Fa?=
 =?utf-8?B?aHlVWEwrL2ZiU3JoNW5abDdhTXVTa3dhZGcySXM4c0lLd2tKRWZrcWZqWDI2?=
 =?utf-8?B?MHBra1U2OTE0ZCtHR3E3RmNvb0FNYjlIVU9TMHBwRnNXb2tQZmlpRFRTTVR6?=
 =?utf-8?B?TWR1aWlKQm5EMmFDQ0tFZHZ0cFZYZnA0eDdtbEFzYk1pS2NURVlZeXJqY1Ft?=
 =?utf-8?B?WDdWQVA1RjFCaGxuNUNPQ3F1dnh6MXNWaXdQN3d1alBPUlJYVHBQN1JrSzZL?=
 =?utf-8?B?NlVZUkZuaXpyclFYbmcrLzBGcVd2dUtHMEErS0ZGRkZCWmJpSGZ4bTBkWjJi?=
 =?utf-8?B?VEpMcDVtQUlUUXE1eWk5SEpneFJvMGVkb2p5Z0R1QjFrSkQ0SFhzV2lpd2RV?=
 =?utf-8?B?d21rSFN5WWZhRjZiNGhsdlk3ZENiUGRqTHhZcjV6aHBCL0w5R2Rta2VPWDBl?=
 =?utf-8?B?ZkpZdk9Ka2k0S29nWi9aZzVVZ0ZmcXN3d2hPRDE2TjFCaEl5QzRPekNyaEtp?=
 =?utf-8?B?TENxcHA5REpmbUF1eUd1NmJPbWZmL2ZCVVFYSHU0c1V5UjFtQkIrQ2E4ODE5?=
 =?utf-8?B?WDlIbi9vbkIrQmQzMWljY2hkb1R0YkN6Y0h2RnhuSGZoQnRjSTJ2UTZpMCs5?=
 =?utf-8?B?QlpJeHRiWGlBN2FhYkRnRnJONjJnUEVDTmpOYWlVSTlnWGtFb25hU0hUQVJi?=
 =?utf-8?B?MW0xWDJMZTAvNm91disrRzVrNXA2NFdjcWFrMEk3MzdHQjRGZ2d3UEZFUlFJ?=
 =?utf-8?B?RWkyamZ1elpWK0hTVHhVYjcybi9JaU9IVWdJN3VOZ0k5enFZTk5pc0lIVjNL?=
 =?utf-8?B?Q28wdG9mVG5aQldiSlVZZVIxNlBLYTQ0T1htU01sQTFQYUJHdXVvQTcyR2Zp?=
 =?utf-8?B?ZTd6WnVvWjZJdUhITGZIbTJZOFc2SXZsV1djUThZU2RBaXExRGliOFV0WStt?=
 =?utf-8?B?ZW5tTTNXelhqcFo3aGV0NEpMUFg3b3NxLzFRM0pWK3hQSmx5WTF1cUU4Z3Ri?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c38a550-cd31-4fd6-453b-08db60030138
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 05:10:22.8762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bOby+ilWFu5owdC1CMI8XMwNtAt94zXqmL0NqQTx4nG9OIYs3cm0lA+rZvegLOFLuyf3X0LSTMqtiVSHlXZXWEWH/2MblJ4RcgEY5NOPoCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/display/dp_mst: drop has_audio
 from struct drm_dp_mst_port
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

LGTM.

Only minor difference I can see, is an extra message log for CEA audio 
formats, while using drm_detect_monitor_audio.

I am wondering, whether drm_detect_monitor_audio can be removed.

Anyways the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 4/21/2023 5:17 PM, Jani Nikula wrote:
> Caching the has_audio in struct drm_dp_mst_port seems odd, and oddly
> placed. Defer audio handling to drivers, and use the info from the
> connector display info. i915 was the only one using it anyway.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/display/drm_dp_mst_topology.c        | 2 +-
>   drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++--
>   drivers/gpu/drm/i915/display/intel_dp_mst.c          | 2 +-
>   include/drm/display/drm_dp_mst_helper.h              | 5 -----
>   4 files changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 38dab76ae69e..a2b8732db0c8 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -4170,7 +4170,7 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_
>   	else {
>   		edid = drm_get_edid(connector, &port->aux.ddc);
>   	}
> -	port->has_audio = drm_detect_monitor_audio(edid);
> +
>   	drm_dp_mst_topology_put_port(port);
>   	return edid;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index e72288662f02..77caed2552d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -244,9 +244,9 @@ static void intel_dp_info(struct seq_file *m,
>   }
>   
>   static void intel_dp_mst_info(struct seq_file *m,
> -			      struct intel_connector *intel_connector)
> +			      struct intel_connector *connector)
>   {
> -	bool has_audio = intel_connector->port->has_audio;
> +	bool has_audio = connector->base.display_info.has_audio;
>   
>   	seq_printf(m, "\taudio support: %s\n", str_yes_no(has_audio));
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2c49d9ab86a2..506118a13866 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -298,7 +298,7 @@ static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
>   		to_intel_connector(conn_state->connector);
>   
>   	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> -		return connector->port->has_audio;
> +		return connector->base.display_info.has_audio;
>   	else
>   		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>   }
> diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
> index 32c764fb9cb5..5be96a158ab2 100644
> --- a/include/drm/display/drm_dp_mst_helper.h
> +++ b/include/drm/display/drm_dp_mst_helper.h
> @@ -139,11 +139,6 @@ struct drm_dp_mst_port {
>   	 * that the EDID for all connectors is read immediately.
>   	 */
>   	struct edid *cached_edid;
> -	/**
> -	 * @has_audio: Tracks whether the sink connector to this port is
> -	 * audio-capable.
> -	 */
> -	bool has_audio;
>   
>   	/**
>   	 * @fec_capable: bool indicating if FEC can be supported up to that
