Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D573A406
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 16:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FA810E577;
	Thu, 22 Jun 2023 14:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2367810E577
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 14:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687445945; x=1718981945;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/6ikyQF1G4G+x5DpZcgzi7CHFxcfiYv2uDL1Y78epa0=;
 b=S90EzYYzyiL0OaUESzKNLZ7+/LVEMRU9HKTsnnYfq2Dj3Aw2p/ZIADn8
 aKE0Ni2+drEmV6eYtu7tXdX+L4uZohWEnWoy6CqxB/zXqMDUHKfLtc83e
 5pSnRtdb1ZIYJTyNFu4r+9j4RNg8SbBw/JGXFglFqLyp1ahY3gRu32fbZ
 6QORIs2wUvXyRumq7a7yfsyaVALBWWoedqxgrwhLzKkvKhu0Qgrwndzou
 jI/gNquDeZ+Sn5pXXhCnrUhMw8xLvfexnZzC/MvxHv7g8WFTDVwL/+z2k
 rPgp8xnlUO36dknxcPRpCCd/zjCOdcFDnQo2RHdOz1Lj643A6L05Glghl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="363060228"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="363060228"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 07:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="859473578"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="859473578"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jun 2023 07:59:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 07:59:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 07:59:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 07:59:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4pZKGo8b2gy5mIyXWAtvcwcuqyXGgLE1o8Nn06uYo2symHYgmOGZsPPEqHaUgfGwLFnqzKBcRP0g0QNHQpuIDr88SBrajfhoePRdd6Qv/T02pe6gDXiEBXYLpKriRPWH05yVpmNIfXxLilXfW93dHKpGibfzAzWeulyjS0hUN5EZJxveTlhMN+zXfJV9brX9LY0kKIl6QmRWVNXUtIlJwzF45XHfz8HmmogP6Z0uaWy2pcsha5Fidmemufa5pnMHOq+GI9dnaSQ7K4KPp0ZYVnO2PHt5He94nHGDFfyHK4zVwlc0IB/adQ35LXjmp34XG9G9/mmP9k8NaDo9gka6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NUkRhhb+mlQKEO3M64kMvgR1nAf8pjAzfgnlMPUxbA=;
 b=GRfmg1nwjgwdmZncfKd4fhM0UqrXskUv1omuZcGJtm/Amvq1+WwQC03Jtdahpe2SnDoeFyEwW8NrcrJLv3hl/3xN+TuXbr4hKK/GDJVeUMQBT+QAR6p1/mAkVQVOgluzh0KfBuPVTfar+fbFXFOrgvF9FVcW3PRvDaklSvanTRBiAzjqyRudZm6vhjyuHv/uqdoiQ5jfSpUiHSm0Wuvlle3Lh3nb2JVvtg0a87z/3O1tK9R9Ys30jDduLErHgLKWaNteGSBv0rKNhCKmSqyEatAiwa1Gniwr1fYqHCCRG/dOM+cbTQPExqEKJcrgAcyvoUaSY44F5rSfjAf6rFz1zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB6670.namprd11.prod.outlook.com (2603:10b6:a03:44a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 14:58:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2%6]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 14:58:58 +0000
Message-ID: <8f583bf8-ee4e-7db7-f2d8-eea0bc36c8f1@intel.com>
Date: Thu, 22 Jun 2023 20:28:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230622083254.2057102-1-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230622083254.2057102-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0230.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB6670:EE_
X-MS-Office365-Filtering-Correlation-Id: b2b05375-8235-4da3-7725-08db73313501
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4blAo0Qi8cllzq20ABkwOpqCt8xCYKjJuV++eQIX63md0ngrbERaNJc2WNlYfSUTSMc7MH+lnRyIUyVo0ZwtZbVgFABEucnOF9P87F1F7pytLq4DXOA+tWpUhOnOj8UiYAQxgX2me/JJX46OUWvqyEHtZh9E98qx7t3In8WaJzzs0NcZG0by7/0nqBKFn5hac+8C66jswq5/GG+rW+4oDW0oCqau7i8/GuUpKICfNEdC4Oz8hevarc7fiVT63a4vc4+ACXGjDPm1wLbKGkD76E5RZeFN2bJosPiBI1VDQ2iQLQhLy2DXb1/UjjcpKkfU40AMswUma8H8iVHRAOlt7cNlI2un5B6nvbriTgRZ/lpwoEkRJekzcGaPnQrhmzlA26Ggr5LBKJAKGJeXHR0YIqCl4JBEq6hlvNXFbmaN9YU2awDPlsrv5ufTi+wua2Hx7bGL6R/Ta5Idm/r5/4ukEVuYBCt+C12A0Kb4DcAygsfjDtqIpR8J7x+oZLOACwbq23gLDwp7cjhIjozpSCz3jO21vao+hvP9A/GGQHe1wDjI2b+0ClLL2GzZU2tAKok196lxwIo/eCobnVJngqamy0kam6Xqmub1m9wPXPOi+vb5kmxnGqEBAkw5HrRgn5qikjOkPEApn6PeRK2RkGehpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199021)(31696002)(86362001)(38100700002)(41300700001)(8676002)(8936002)(66946007)(66476007)(66556008)(316002)(2616005)(83380400001)(5660300002)(53546011)(6486002)(6506007)(478600001)(55236004)(6666004)(6512007)(186003)(26005)(82960400001)(2906002)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2RuaHMxOTc3OHJBMlFLNitrN29rZE94M1JsZjRXbFdUUmR0dDA4YktraThM?=
 =?utf-8?B?d2VSOXBqOTFTWmkyWStsd3Q3VSthdVNtQzFTSk5zSTZaenNZSEI1cU53KzYy?=
 =?utf-8?B?ZVR0djRaTWswK3lZS0tVcmJZM1orR1BPY2lFTVVtODZacnFVRGc2TG1LK2gz?=
 =?utf-8?B?Mkt0cVFTN0ZqUytuSXhRNzE3Z29ka0RrVHpkOUFXWGw3bmZ5c1BOakVxSnlv?=
 =?utf-8?B?YVpLNnZmWEoveE14TDArTGhlVU5oNkQyYXZNN2dYK0pHUkRCMDFSbVdFTURV?=
 =?utf-8?B?WlZkc0xqOGREVkRqS3VReXFMMG5HSXYzS0RkeVRrZzVMeW1xUFVCV1NDZEJM?=
 =?utf-8?B?Tk1xVUR4ZDNIWHFpMDRlN05IRHhCWU5xTTlkejNiS2x5SFF0YWtlc3VWaUpp?=
 =?utf-8?B?NnVxRHQ1NTNnTXVFbkJMZG5IVlhaa2FtcUMyL1drNzg3ZmJ3K09jZkt1RmJ1?=
 =?utf-8?B?MzNYZHcrUG5IK2V5UDlYMkEwV0xrVW8vdm9HRkdQeU5tdzJraXhOdUFocVZG?=
 =?utf-8?B?eWFTdDBnc3F0bkRaN0RiV1VLV1lDSjh3Z2V2MUNldlFxT1RQcVd1Z2tnQ04z?=
 =?utf-8?B?Vkt3Slc0cDIwMHM5K2JuRUdSdEN3QWROdVJqWDBXWE5NMWZxK1czY1VDaU5G?=
 =?utf-8?B?dXhvaFhJYW8wY3dCT3RhakJrS0NzOGJCRmFwVDZFYkhZcFd0OTN2UzcxWXRJ?=
 =?utf-8?B?TVNLblc2OHdmOUlmWklSZWVqQmgwN1RFaTd6a25xNkhDSnBPS2t0b0k4NWxY?=
 =?utf-8?B?bEg1dEFZYkpxK2VvOHp3bDNxRi9CemxMT0htS09CMXgyL08yM1FmczkvQVVo?=
 =?utf-8?B?MTBwM3hnNDduOXRxY29KbzZKSEE0Q0U3emVuek9FNVRlOUdHa0czYkdaMWE1?=
 =?utf-8?B?WGJ6eVNiWk1rS2dXVWRHVWRoL0s1MFZnUkpsQUgybG9oQ3lpWWhBWEJCTXd4?=
 =?utf-8?B?WDNZaW4rbmN3K0NxdG5ITUlLYVEzMTAyQXRFMm1XcnJ3UEF0MW5vL0J2MVJk?=
 =?utf-8?B?dHVKWWthNlBMUDl1ZWY3NGRkTHhuWDNTTjBJbEljakx5U1k5YlZqckVHR1V1?=
 =?utf-8?B?VXI4N2Z1cEtOaHZMVnNlOHg1eTFaaGxKcVk0MW5zWGVnTEk0V1RLNzcwelc5?=
 =?utf-8?B?UzY5bkdNOXJibWo4SWZkY0lralc5WTRpQjNZU2poZzBXN0FObkY1WXQxRnZN?=
 =?utf-8?B?VFh2R1hua0NLRlZqU1BncDNWeS8xWW5IVzNOUDl4YWNwaUNORTQwMWdCME41?=
 =?utf-8?B?UTRDUHZWQTJKbCtLQWRXQXhEdVV0V1hqZjQwVUxSakN5d1Z1Y1BNalhqa3E5?=
 =?utf-8?B?NTYxejZCUVViQVRZL2k0cHhBa1JXVW5tNVB1cm5MN20vMEFqOGZsRDdscmNv?=
 =?utf-8?B?YTdTYUlQZnJaeG5OZUVuem44bzlWelhGMzUyT0JTVkcrYjRKWUM2QXl5dlIw?=
 =?utf-8?B?bi84Ym5tRmxOWWEvM1NaZ2QxQnV2N0ZYU3V2T1Y2dEt2YXhwVXc0NlFVdXlm?=
 =?utf-8?B?dHJ4QXJoeUpPVWdHNnFsWTRvSXMyOGxWd04zRHNJUGE0M3FBY29wUm5IeFRw?=
 =?utf-8?B?ejhVNmhQMUlqc283WTMvL0VMMkRuZEpBM3Y0TjdaOGxCSVJmUnBCZEQ2MnNW?=
 =?utf-8?B?elEvaGIybHBQOHpWMFh0VjZHNVFLN3pnQ2Niek9KYW8vYTZVMnY0cWY5QW9q?=
 =?utf-8?B?VWRselFNWlpiZ0o4RURHQ1RDYjhWVkdNUnF1Skh3MmVVcTVkZU1sTHNESkMw?=
 =?utf-8?B?SFlqU1pvQzJqVFpWU2NlZ2FBRmpNMnNZZXJqU0U5RHZKRWVOdVU5UmsvRVFh?=
 =?utf-8?B?aUVTY3QyQzNpRy9Gbk51THBwSkZ3NUtZejNEUGIwalBRcG4vV1dPWENzbFlW?=
 =?utf-8?B?UGRmY0hUMEMzNithUWRCSjhXbzhJeS92QVRjajF4cC9ZclRiak50dXR0Yy9w?=
 =?utf-8?B?VHBnQldXQlpwV0pWMy9tblV5UEdPVzVkM0FjQXl0ajByblpJZmUwWmI3RUpo?=
 =?utf-8?B?Q28wMjkyeGlUbmp2RlZpZ1R5UCtnRUFSUExoVjhQOHNCVEkwZElDb1A5MnBP?=
 =?utf-8?B?bEs1Rm52OW9iSjZZY0lPWHplYW84QVlKT2Y5eGpmTFh1czNaQ0Z5UVJFblQx?=
 =?utf-8?B?eEVCSmVSc043Y3h0VXkwMW9FMFRZMEpVMFN5UHVjc203d21ORzE0YXZObjZS?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2b05375-8235-4da3-7725-08db73313501
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2023 14:58:58.7049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JylbQ287yFs/8L8NSPSm1uF03u1YD4PGdcFIXcTKkg1nr8/kRJ4cUIQORsCFFc+OayJvOJOFdaNLE4GJ+ge8Af5fTyYaBx4uFAkHZDssP+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6670
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Assign correct hdcp content
 type
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

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Please add Fixes tag.

Regards,

Ankit

On 6/22/2023 2:02 PM, Suraj Kandpal wrote:
> Currently hdcp->content_type is being assigned the content_type field
> in drm_connector_state which is wrong and instead it needs to be
> assigned hdcp_content_type field from drm_connector_state
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 5ed450111f77..34fabadefaf6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2358,7 +2358,7 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
>   	mutex_lock(&dig_port->hdcp_mutex);
>   	drm_WARN_ON(&i915->drm,
>   		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
> -	hdcp->content_type = (u8)conn_state->content_type;
> +	hdcp->content_type = (u8)conn_state->hdcp_content_type;
>   
>   	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
>   		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
