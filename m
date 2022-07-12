Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA1D5711DD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 07:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACF0113B1C;
	Tue, 12 Jul 2022 05:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00CC113B1C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 05:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657604130; x=1689140130;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BIVT2J7mKXKaLldyo2Bn4tGdu90Cnitop/BYgQlCEyc=;
 b=C9rGPv5J8NqU1xqNu4tl/ZCQyyvDGhh3b+tKja+lH0TddHs6fyEOKAgw
 PHQJqE1jJHlvyiwLWQnffvB6QfUJYOPNU+2dCSZwIfJeGgtDa5lkhM5A/
 jCBhKSE2VX0Iw5OtuqAa24I8YVa18ljhfFnL/HguAX8hJ3JR2daCq7492
 94bp8SqYQj5yJlUfKclsybqVNL4L8ln7k94cR8rm4NU0RSp+PQ8Dl/tCV
 QKwnjMzrrDYhHiZDRo4r1Ag0wIOiKTILN1zbV/zefBumsy1/PZUnl0eoU
 mXHszSM0kK1k8O7JhpNJDn8F7/Nghy5wmkIc7xepJ4ajoitMpOU0JBbN8 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="265255166"
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="265255166"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 22:35:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="684645862"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2022 22:35:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 22:35:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 22:35:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 22:35:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 22:35:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jtGERcGUe/dfDJOZzMYRz//sSspAisvfIs1NGi3mtzrhlqfwQjmJS1hHGzqoV4gPYcydVu0ne7CQZNb1/zS9F+yc+Zb1OYq58zKLuKtR7Fx/lmepZxWFrFK/TCKqcKhZ9h+26n9THbw4OZtKCIXHF9VUfElk3MVUXnne2w5Fnq6qvV7gb56WuAOd3oWz92JgRQ2zXNDAt52Yy/D1aQgpJ3J9ycJOYuEIhOeoZuU80dNVDpT02nev818ed76UYb2paV5EPPTz/XHr2eMi9IjDWofFuzWjzwMvzCTnEOprarVRd4QpfaN23mFfZztzdnZJVgaBaD75DwYZZeGS3sk6Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l4ru6S7lJ/LN8yiKwYElbD+bUsttBvFFgIMjCD9laJY=;
 b=RVq1HWQKE8d++WbKBhDVwTEzyx2xDWOxgNNzhYZo1jhA38ORPTVx/jLN1SiyY2Zy3QDEzDuCbdG9thNUz52ktx97JlLm787ybWiPowPCUGmY/EH6CCXWMZPZ44kbiDGC5i7omvWT0G0rKRGdKiiqcK3VNQJDCqlknQ7R8kCZABGzfK32f6Vfwt+bXogX8jh7YB3lfcf4o7pHTbdz8ZekvNSs3WcIDH9OXno8hHqmPpbKQUSDjO5viHRHNJPljqEwxdLMLtvf5I1KhNxewt+J1YjGhbqwdO3lC8nFzm30BmiDiz5/b/uJ8+fLv6SAlJj4kpSDHLZJvrbGYWDjGresgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN6PR11MB3231.namprd11.prod.outlook.com (2603:10b6:805:b9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Tue, 12 Jul
 2022 05:35:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::f56c:97ff:6b9a:7dcd]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::f56c:97ff:6b9a:7dcd%3]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 05:35:22 +0000
Message-ID: <ed0fcb48-c23e-4faa-fbf7-7cdcea4ae968@intel.com>
Date: Tue, 12 Jul 2022 11:05:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220617112807.1586621-1-imre.deak@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220617112807.1586621-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35ff0db4-4cf6-4546-cb7e-08da63c85069
X-MS-TrafficTypeDiagnostic: SN6PR11MB3231:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RslhQFUBq3gRgP6EUTcJ+fGW3VZCF1EZ3j2t7ZEe/Z85oBIB/ZJ2aEC0BFC+C1qhLqoJPfXe4P3CYalCL26YzSIVVMipt72LKWmXXok10+In8E64+9fJI87ByJj2Qb0Jag9xsUpigHhQ3Dqo8u81tNCmYPCF48ynvV2e2AgPBrcZH3kv9FL+pXDpXnVm9AAmrycFtkOHxnxyMJbe7QJ+7DZx7xu7zV6gEhgpUJsxafRReeMP7ixK6LzHJ4up0PRAmLsxw7cAN4MdX9S1ro3OA0l/4lRpOhgh0uy+3iTv7i1WsIHdQ56lHeR1ZpV4/kC63z8O7WHdYrLwoewRmCw+zolL/qcrYA2vy5R2gBh5fYAbSnWuBxXa1mmIiB0/e7nG/oTbIXUVtVkG9Fo7kIGUf6yJmW2IWu9CCx7tsUM2dLfp/asjvKhib8DYbh+Kir82cQEn2uH0J/QRQhPAIHLVhDT9Kq6NHnVaAgDfW453ipAwjV5ObfpsiiEy3093bEsjiRTRoMqwhoNal9J66n5wCDE2d4eRybKOqLCJexqiasDEulslsCjO5riw56Kavq1cYRwdjpP19HQOau3OaPeJzS4tuo1aiW+EdtBquCHafMLg0PQqfJhxUgPNZ6F9F0CnAyYWMPJxAZeYn7MRa9eDajzohFp8l3rbS6GxUM7vzx3z+RXYrw+P+QcIQNyRgqZDJdAM4k8KypqKve7vaA2EzSTZi0tnkK2cFJseuVQaAdsi1K1MJdjBg11XGhqHPbkkHrIxHrND0pU2KxZIl+KzBy8nn4ZrUEPXnhB/aolGZv+650MwCbOkWu5tgRo9JWGK+m1Y3zYumqCCemBCnbCKUQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(396003)(39860400002)(366004)(136003)(316002)(8936002)(31686004)(38100700002)(5660300002)(83380400001)(478600001)(36756003)(82960400001)(2906002)(6512007)(6666004)(41300700001)(53546011)(55236004)(66556008)(6506007)(66476007)(66946007)(31696002)(107886003)(86362001)(186003)(8676002)(2616005)(6486002)(4326008)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUVOY1gxZXBwd1Z4U0pXTmphdUlxcllUNitHeEYzT1ZKSm1neWI0MnU5akNT?=
 =?utf-8?B?WW9iRDFvcVNaa2xhSzR6LzZmdG1oVlBtdC9VR0loNlQvR01ROVpNWHJVVXJi?=
 =?utf-8?B?aVpGVlpOMkdpQ09OR3NsMFkyUVN5YTJ4b0FaR1RpR1JOc2ZyMjliaDQwRFJv?=
 =?utf-8?B?a3JzSWlDYlVBNGtSdkVZMWUvU0ZMQnVNYUcvQ0t1L0VYMEZWclRMY0tEOTBw?=
 =?utf-8?B?NG91TGUxTldkUEdCdmVGY2VmWm84c2xrclJwc3N6SHVBaG9HV3kxYm1ETjFw?=
 =?utf-8?B?eUEybUZxUERVV0tId3hoT0ZsTDBkYUJubk9ndmIvZ1NEdE9vZ2NyeGdrRHVq?=
 =?utf-8?B?WThPUFhQZWdiVTJUcnQ3Kzl5dVpOK0pwMy9CZE1kVkxwRTRGcVFxcGtzeUFF?=
 =?utf-8?B?bUZ3Z2k1SjdMZm9nY1pILy9FekRFVGYxaWhtTC9iMlRWRXE5bTcreVY3SHRS?=
 =?utf-8?B?ZHZWMXVrc1huWDJORGJlWGlReU1ibTdHL0dTZEhGTm9yZ0R1Vk4yRENLRERT?=
 =?utf-8?B?YzRiWFNXeFNwbEZnaG5jRkpzaStLdndKejhKdU42VStjOEx6akliZUlSV3R3?=
 =?utf-8?B?VFpjUy9XK0luSzkvVzkvWit2bDVqT1FiYjVrQ09PL0Q4V1VYTStEYWJTWTls?=
 =?utf-8?B?NkZla1F5eE1KOWZDa2FjeURtZDFNS0xkZkhZN0lVOG5FTE94TnRZS0lxcFl5?=
 =?utf-8?B?VEFCNTQzRE84d1JoR21YOHQranFBWk0raGVLMkZTMy9XSHJueWhzOExSUEVl?=
 =?utf-8?B?YlZrVW1pWFhLWnB3clV0VmlWNnRKZmR4MWJwSkZLajVrUzNYQ1hwdU5SeGZU?=
 =?utf-8?B?dEx1S0ZlTnFkQ0h6TGhjblVIWmF0YjU0SFR6M2Jma1EyVTB4UHlEdWhzejlE?=
 =?utf-8?B?amxSTk1aTVlDNWxOOWorSG1lbGxUNEN3ck5DekdmVGJvOUprMHRzbWVyVi9O?=
 =?utf-8?B?UUVGalpTUWJGSkhCRjlVM1FOeExyZFlxK3lLdHF2QmxpZTZyYjAzUG9HS3Fm?=
 =?utf-8?B?eTB6WDkxUUhCWURBZUJrSmNrYmRBQjljVE80SFp6MGhCdFVobkJ3ZGZucUFu?=
 =?utf-8?B?eEhrZkV5djhEdlExd1gvdHdZUWUxbTRuNHBraTVCK2ZpUm1vMmFLUm9HczlP?=
 =?utf-8?B?UVlIV0tDRkZ4aXgwdnFKNFA4QndjU2JINmczRUlhRE9mT3REV0xqWklpTW1T?=
 =?utf-8?B?WlV4d1ZybzZVNWlzcUxIZUhFYlZ4T25FSVdkaEovbXRFY0xEcms5RVZqT256?=
 =?utf-8?B?TE5LUS9aWnRaaHNuTmdJV1ZYc3dGZU5mNW9XaWUwa1pzSHlvcU5LVXpnNGlt?=
 =?utf-8?B?UExybEdxWTZKMkY5Z2ZDRFVZd2xNQ2UxRFllMGtQQWEyVllUOUZMamQrU0Nn?=
 =?utf-8?B?dHB3ZUFCTDAwZXRaMzdYRXprY3hRb2N6WlA0Ukt1dmFzTHVRek1hUGo4dWVu?=
 =?utf-8?B?d1loZFRyN21RL0Rmd1RhU3c2VlRWTFVickFRZ1ZWdCtVUUdBZHgyR2tJS3la?=
 =?utf-8?B?QWNwN1h6YnBHamZxSjNId1N2MlRCMWFreVM3dmpTbnZ1eXIzeDhwL2F1TElP?=
 =?utf-8?B?TlpId2NWYkxtU0RjR2xBd3ZQMWV3RFA0dXk1RTBtc25WZm8rNTNUUllzbXJl?=
 =?utf-8?B?MWZQbjNEVXBhMDV6NU53TGxYZ1MxM0tUL0VkQjQvQWtxc0E0ZlZkcVY3UjlX?=
 =?utf-8?B?alNoWlhEWER3czc2d0xqeWFHMVBVaFJHR1NjbzBzOUljbEt6YTZJaTRSeTQ1?=
 =?utf-8?B?WGdrM0NMUDhPUHgxNDdycFQ1aVRveDdmVG41VkhCTHBxTzRkVzZLTGhLQzZ1?=
 =?utf-8?B?eFB0OUhGWjA2S28zZ09ZSmlWVTVSRWRscVM4WXplMU1PeUV1U1RNMi9tWklR?=
 =?utf-8?B?TityVEIwN21zNk1SKzRVT29pZHNGNTVTcHF2RzJQcDMrcndwM2NjZXBwMDJu?=
 =?utf-8?B?YzFTVDVYc0NEOWR1NTVERXNBU3V6L1VleFhCS29FMEl4OFFENmZvSVI5akVj?=
 =?utf-8?B?VWllcWsxMlZsdGZRS1VpdXJwdGhjSnZOOTZ1T2JDaVIxQXhOQ2xaa05aaUtl?=
 =?utf-8?B?N3hyM29UUDdSMFkxSHZMYXVtelZ1a1ZjQUpRVmhNbU91V2RXeVRTZTNSeGlt?=
 =?utf-8?B?NEg3cWplY0RkS0RkeVpJOWNUMGpRbVNZNWhoK01SZHJlRFgrWkJ4bjhsOXFG?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35ff0db4-4cf6-4546-cb7e-08da63c85069
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 05:35:22.3815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vb8qnyHvB7CRwEMbIXO5bQSD/dKIoC9KJEg7YIXEM0oI83jhRtjAzsPdWdixIHLhRvr7f4F24kBrD3urA+ivE0+/kMXw2/d/zCnCKlXB0Nc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3231
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl+: Fix HDMI transcoder clock
 vs. DDI BUF disabling order
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
Cc: Sandeep K Lakkakula <sandeep.k.lakkakula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change is according to the specs. I see similar thing for DP as well, 
and its already taken care in disable DP path,

seems like it was missing only for HDMI.

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 6/17/2022 4:58 PM, Imre Deak wrote:
> Starting with TGL the disabling order of HDMI transcoder clock vs. DDI
> BUF has swapped, fix this. There hasn't been any issues seen related to
> this, but let's follow the spec.
>
> Reported-by: Sandeep K Lakkakula <sandeep.k.lakkakula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 272e1bf6006be..4b874c31398a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2691,10 +2691,14 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
>   	dig_port->set_infoframes(encoder, false,
>   				 old_crtc_state, old_conn_state);
>   
> -	intel_ddi_disable_pipe_clock(old_crtc_state);
> +	if (DISPLAY_VER(dev_priv) < 12)
> +		intel_ddi_disable_pipe_clock(old_crtc_state);
>   
>   	intel_disable_ddi_buf(encoder, old_crtc_state);
>   
> +	if (DISPLAY_VER(dev_priv) >= 12)
> +		intel_ddi_disable_pipe_clock(old_crtc_state);
> +
>   	intel_display_power_put(dev_priv,
>   				dig_port->ddi_io_power_domain,
>   				fetch_and_zero(&dig_port->ddi_io_wakeref));
