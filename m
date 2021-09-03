Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ADB3FFC37
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 10:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF606E855;
	Fri,  3 Sep 2021 08:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7BB6E855
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 08:42:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="206488579"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="206488579"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 01:42:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="602989402"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 03 Sep 2021 01:42:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 01:42:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 01:42:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 01:42:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+xyCkIVyD9ICfb+AeD7Ex1b9t1IHjJf48QNRGn2sJwbem5/s3kzfzoQVPByCi1ylVB0aS58eRBisLnG3yDg3CqGbxu7mjfZoKQHBvA3wjP+Ka3r4rra1pBbUd65rWHmitDkUKshGgYHKmPBChuLgkT3eELCo0yx6ZIBj7g0PmWQyzK1S2lI3RSlLY4Y6HkPmAD2pVtVCuGKhC5f5ajMBFM5x3BUK6J7vIlIXwysKIIomVuOUUyZl18c0scIuRKLAo8gfLzdAlfAe9dCP5ZRdOKwmKJYsaXggXhOMCPiD1vx9Mk5sVuB/RL9nQ05oP3bxBmDsTMDfFWUOd2KrJC5+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=0Qb5ytRavppKEWkpEaW3RsQAajHFk6Sdx+tlkwF5IWY=;
 b=msBzg1nbXXdBz0nbbIZtIBpm5JYERlwpQcJYJfSf/WAHrTwaBBN/Zp6Coe9cfzS7yug4d7L95PmUZmWEFQF5AbHikZZHp40GOl2EaMmOvGWdyRN5iCHz5VrKaQivBw1LmGqPPLLqoq6VuT4pkgLVLuBsHL/TPWIFueKwpo5fT9BP+WOWAWciivfiQq8lNnEF5ef76lM9WvSkanYRm+whAfdPs/4jDS4neRDWCaFcTHCdfZkvihSJ0YfSuDzQbqzNgTi6/IqRlWjVtmZ5A1/E4v3JviIUesdl6a+KVWFh9HqiozdvNiFZLNuBX3waJfMmoXbwIpzHfRvAUQxGA1CaqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Qb5ytRavppKEWkpEaW3RsQAajHFk6Sdx+tlkwF5IWY=;
 b=LROrHXBi2+HyqEMGpw1eDoW3zMM62QpzSIE65zTQCRTaDewl02CIIRqfvt61Cx3flmlkLOj7+moURG184duSjiyHlSJsublBtvSP60Fo9w5Rd35RwwU2Sv5l+Vaq7vrKc96zdmCrYVeACA17fPzl1q2EnJnve8MDPK746+5dM2E=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM4PR11MB5520.namprd11.prod.outlook.com (2603:10b6:5:39f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Fri, 3 Sep
 2021 08:42:00 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.024; Fri, 3 Sep 2021
 08:42:00 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jose.souza@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <5593ce81f6670dc33cf18fa284f8237c875ef404.1630512523.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <2051d2b8-d915-d213-91e0-98e244b84d60@intel.com>
Date: Fri, 3 Sep 2021 14:11:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <5593ce81f6670dc33cf18fa284f8237c875ef404.1630512523.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR0101CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::14) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BM1PR0101CA0028.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:1a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend
 Transport; Fri, 3 Sep 2021 08:41:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c79b4ce5-690c-4478-714e-08d96eb6b200
X-MS-TrafficTypeDiagnostic: DM4PR11MB5520:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR11MB55205F0DB40FC48E8AD03DABCECF9@DM4PR11MB5520.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mdvL9RX8wgScHyoURzWwBMidjKLoUGhsL1Ba073yjdm2VHpQaXWqfX7WP5FTuw9+MJZQoUHtpenKhbiNVXXp1mu0hIzvVjQKdvo+ZmVjVQb3YZhDvFez4UTk57T/Bdv8v3V66gufmTDd3GfCTlbUB12fIueW2m/Ec7Y2wBCNoCJyVhqjWMrmj9CmmbMkv/zxcK902zwBygjLWEDhJf+El259JCQtc4Nq0my8oLDsFMmCe59sEbkHZg6wmtFc06bRu/PqAIqkTGJbVtx/NQG9ieIPCtkBmVsLxPyt5A5bx9/jrZzdLDhfiBhmZjE2iOrG8LJ1wW1ZY9TbAR7H7s+Q9KQZHuZmuhWsFF+2FVUogKqeFfYII6JCP2qkGzh9mYuwaljyUywRUMQVDPN9VU2hqN+kB1s96H4A+W0IcO65nYo5AnjwqROdCD+xe+bzK9At7xlDO7Ni5Ry7O9npy8RQoz1O+hWKmmUSPcWvZWfXPrB+3TKEEMCytx3aq3RsdfZTrWBOJLTraiwPbB7F6Vm4ienE9NFFsMI8Zwo8sgzLu7aB+CGwHYu0kWJVg6Fofv023rDZM9iwtulnte2RWMrh5QD0ctBAEO45qXvkdj46frDULBIM/n5FDjiCBqYeugP5H/XYqL7hY56rd+mdTLAO3lbPa3z91/isQu7Tu7IBYTw7TqtYcKpybM4K7szj+dmXpWdYOeQYFwsAP6NnjN2WwgaECBPomJYRT9bqyjIdxAuAzc10Na7EjKUCgKzucMYB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(376002)(39860400002)(366004)(396003)(2906002)(6486002)(478600001)(36756003)(6666004)(8676002)(186003)(1006002)(107886003)(26005)(4326008)(53546011)(55236004)(83380400001)(38100700002)(16576012)(66476007)(316002)(2616005)(31696002)(956004)(8936002)(31686004)(5660300002)(66946007)(86362001)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckltZWYzQ1N3TG84OTVGYlBadm9PdVpqWGlzV1FDc3kwbHdDMWFRMTBXelZu?=
 =?utf-8?B?cWFEeEEyUmJnajFGT0pyR21kZDZGYXE2RVdzWFJXZHNzWkdrbWtzVUpGM1l6?=
 =?utf-8?B?OXMrTDF3RVRjTVRYT1ozQWY0bWdmUitQREVhajlzbnJDZ2pWYUYrSjRZSUhv?=
 =?utf-8?B?NXRJZkRBUTZxczJvRmJmanhEQjVDUEVxQzN0RlpiTm1zSGFyNWlSOXlhUHFX?=
 =?utf-8?B?a053TVN2VUdNYmVmclRyRGtmMWQzem85UDMveDA0SUpXeXp3V2ZzSUdFQ2tj?=
 =?utf-8?B?WTNXM1U4VmlTQnZiMjNHRHQxSStVTnZmNXJsLzV5MmhEd0FUR3RmTDd2WEUr?=
 =?utf-8?B?RW1jQzJrNW1va1cvemNpZWtPRFdMVjRyVUg3aFJtWXFZRVltbjdha3c0L0pB?=
 =?utf-8?B?Y0xvNi8xM25JWnloaUF2a2VhbmlvbEwySUlSZG5NNzRhWU9HT0VncU5Rd2FT?=
 =?utf-8?B?VVZ1VkpjZGRjem9rWkNxN2tYNTNqcWppVllLTjBLWmtSZFFaOVVVRDRFSk9l?=
 =?utf-8?B?VGFSM2FIMnQvZFBPeGxvQWQyK2c2L3JjR2R2Q3Y4VndtNU9WZGx5N2xSV3BQ?=
 =?utf-8?B?d1JPcm5TMVZNVG9pZjhFN3IrUnRFUFlGVjBMS0lUY0RaZkxlRyt1SU85ZmFW?=
 =?utf-8?B?OS9rU2Y4VHdWZFdaY3VnZlRpSk9CR0Q2amtNVkRJQ3JEQWZtTHRYYThiQmVO?=
 =?utf-8?B?REoyUU5qMHAxM1lPRTJ1QXJwYndTTGJCemhrRzBlYUUwNi9oeUZkdS9yTUdk?=
 =?utf-8?B?Y3J6NmtUK1k2WkdFWGFsTVllMWlhV2FDZXlRdlZURkMyVUFyK2t3UmorYXVk?=
 =?utf-8?B?UG5nYS9PM25hemo1WEcxNEZ3Um54WWZhUTRjOWhxK2VweXRGR2hCUnJMTFNK?=
 =?utf-8?B?VkYxOWswWEh0OWg5eml3Tis5UVNHejZhOWl4ZlBrWW1HODVTamQ3dlBGR3Rx?=
 =?utf-8?B?TlEzSWNSOVFWNldEWlM4NGxIT0gyM3dOSjhBNVJiTW9BYUlqWEhEWkFZRDY3?=
 =?utf-8?B?aE9IUFRLM210RHcvSTBjSk9pcEVQVXZCVHBKeEZDZElnbk9CbHB4TDM4S25t?=
 =?utf-8?B?ZTZXOWlFZmRWU0lDNEI2OHlpcVZLUk1kZ1dlcHZiS05FT3psTnBlVXViK1Fu?=
 =?utf-8?B?TDdVcnY5WW4wSGQwZlRjdjltTVVtZzhyZ3N4Qkt2VmYwTHRvWlJ1UTZIMHly?=
 =?utf-8?B?L0h1bHdISHUxYng2L3Vlc3pOZitFUDQxTHZ6cXJ0Wk1zQWhYeDdweU0ySnVw?=
 =?utf-8?B?RURuMEErc3dQYVRza3VRSm1iZzQ5eFZRSk1kb05iNVRjbVZpMStsd241UHVZ?=
 =?utf-8?B?MWxYdmg0VTRiUldrSnAwcDdoVzJpeUZtcXAzTkNDRHlmSUxobXAvQmQzT1gx?=
 =?utf-8?B?OXo3WThjbWtYMEtvT0IrazIwbys4NkVxYWVlbmFveGIrampGNEpnK0tZOEdJ?=
 =?utf-8?B?RWx5Q1ArZEt4UW4wVzZ1WjZYUzRGbVpFNXFmTkt6YnZXSzZMNllxaVVPRVMv?=
 =?utf-8?B?dTJhNGY5T2F6Sk1vSjFyQStxcDFsQzRabWY0NjBKNWtLcDJ0azZ3RzFTSXpB?=
 =?utf-8?B?bWsyOTNKQk02VEhBb2ErY05oNGErTEFBZXNFSlJta3lzbmRham1PYWsyaWp6?=
 =?utf-8?B?b3dhSVpuckRleXNLNDBNT0NDRWdwV0hkRkNnZ2M5R0RVTy9NR1pneitCcVJ2?=
 =?utf-8?B?UURYVWVHYzZMTXpXYWR1QUVWTnpOLy9YczlWVHpub2FjaFlZTEFyL2RaeFFS?=
 =?utf-8?Q?LKl/04DvDZkSl9Av8KIUpZi0WI3OGNKEursmx4N?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c79b4ce5-690c-4478-714e-08d96eb6b200
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 08:41:59.9998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tPEeCa+vc0YeQQ6mYNyiygNflYr+7uys4qoTb6bMsABP+eIEiZQ5RmmB9sSdkvr94uEkFzvC+BAsTVADDrjMbTgNvfEzglikGvl1NqZkbOE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5520
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915/bios: use dp max link rate
 directly from child data
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

A small nitpick below:

Otherwise the patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 9/1/2021 9:40 PM, Jani Nikula wrote:
> Avoid extra caching of the data.
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 28 ++++++++++++++---------
>   drivers/gpu/drm/i915/i915_drv.h           |  2 --
>   2 files changed, 17 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 253a528ba61a..10b2beddc121 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1815,6 +1815,17 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
>   	}
>   }
>   
> +static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
> +{
> +	if (!devdata || devdata->i915->vbt.version < 216)
> +		return 0;
> +
> +	if (devdata->i915->vbt.version >= 230)
> +		return parse_bdb_230_dp_max_link_rate(devdata->child.dp_max_link_rate);
> +	else
> +		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);

Can do away with else.

Regards,

Ankit

> +}
> +
>   static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>   				 enum port port)
>   {
> @@ -1913,7 +1924,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   	const struct child_device_config *child = &devdata->child;
>   	struct ddi_vbt_port_info *info;
>   	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
> -	int dp_boost_level, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
> +	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
>   	enum port port;
>   
>   	port = dvo_port_to_port(i915, child->dvo_port);
> @@ -2001,17 +2012,11 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   			    "Port %c VBT HDMI boost level: %d\n",
>   			    port_name(port), hdmi_boost_level);
>   
> -	/* DP max link rate for GLK+ */
> -	if (i915->vbt.version >= 216) {
> -		if (i915->vbt.version >= 230)
> -			info->dp_max_link_rate = parse_bdb_230_dp_max_link_rate(child->dp_max_link_rate);
> -		else
> -			info->dp_max_link_rate = parse_bdb_216_dp_max_link_rate(child->dp_max_link_rate);
> -
> +	dp_max_link_rate = _intel_bios_dp_max_link_rate(devdata);
> +	if (dp_max_link_rate)
>   		drm_dbg_kms(&i915->drm,
>   			    "Port %c VBT DP max link rate: %d\n",
> -			    port_name(port), info->dp_max_link_rate);
> -	}
> +			    port_name(port), dp_max_link_rate);
>   
>   	info->devdata = devdata;
>   }
> @@ -2982,8 +2987,9 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
>   int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
>   
> -	return i915->vbt.ddi_port_info[encoder->port].dp_max_link_rate;
> +	return _intel_bios_dp_max_link_rate(devdata);
>   }
>   
>   int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8b4a31265978..586b5368d4fc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -641,8 +641,6 @@ struct ddi_vbt_port_info {
>   
>   	u8 alternate_aux_channel;
>   	u8 alternate_ddc_pin;
> -
> -	int dp_max_link_rate;		/* 0 for not limited by VBT */
>   };
>   
>   enum psr_lines_to_wait {
