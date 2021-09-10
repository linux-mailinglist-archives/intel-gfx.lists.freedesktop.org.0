Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C13406CE1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 15:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C4E6E9FA;
	Fri, 10 Sep 2021 13:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E596E9FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 13:26:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="221129804"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="221129804"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 06:26:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="526077934"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 10 Sep 2021 06:26:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 06:26:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 10 Sep 2021 06:26:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 10 Sep 2021 06:26:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fHXvi5zHM5avEX66LuWkUEQNx+b+p7uUOGF2vasUqmb5PSw2/aVLQcQjTz82cpW/MIOFiFjPSo2jMW4N58ZqLE67DMkiazAQQ1WO7NUzSe50eSJAKSNvbDcPO5IDMy/y+5h2e3rYIXGFkQBGYisJ1XHhD48M47bWiFdsAcpI0975Brom6vYzGIr7sJrv7No0K41ysN0M0sGhWBgQ2hTKCX1umy5lV4SIlgHZlvVbQurWqvHHu8MNWHzg6YYk7k1KCOntNBqTVmOqaX6VX+jkai+BrRj72pui+7BeEbGU4M7KNpZ3+0Mlgvzu9W8552P+W3w8l0m/kz8IthnvTSMOaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=KAdrmORHl0ZrfJZ0SS3CDkuDtn9iQS3pQPbB8DnBE2A=;
 b=A55pLEe63k8OIkyj8+iD33RHpBpIejA9tanrSadLP7eFcpQ0DMKPFXNDHmBuxdBixLrp329nORpfO01hwycNTpMpXu0n3wph8gL8lQMCweCKbeO7E20godBJjFNRiJV4+MCvj98G9dhwko5iWEnrKcRMEW4r3GsJZOAK34HFPBxE9wlPXd3vC0WeQZJxeoiqhBUWQnzLAgSQiQ5KkmAKk3K8ojmwxT21ZlIUzB35eNtiX6bFirxyKyvSm7GgElaq4bu2MUViDbViX8HUlsInF75lVJXZAAxXk5k8SYd72GZrZySHHvuS5019UQIab/8CqaCSaTMBU5BzO+d+UyXFCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAdrmORHl0ZrfJZ0SS3CDkuDtn9iQS3pQPbB8DnBE2A=;
 b=aZplIXOaX8JIamRildARf5+9t7QlbOXWSr28mKGD5qohOtkSGl4Ex1wOdFfjTTi287tnUImXyuB03x5lb3yi12EeOe3UXn+jyAMPf/N0y2MWRiz9cNs3T4lj7SLM80eMt6ZEFTA1yRQYeBYG2AHaoV0YDhKphJWSgYZLokmEcyk=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5443.namprd11.prod.outlook.com (2603:10b6:610:d2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Fri, 10 Sep
 2021 13:26:48 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4500.018; Fri, 10 Sep 2021
 13:26:48 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210909230725.33735-1-jose.souza@intel.com>
 <20210909230725.33735-3-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <a7947ec6-839c-cb6d-4fb6-74cc81c8102c@intel.com>
Date: Fri, 10 Sep 2021 16:26:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210909230725.33735-3-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0402CA0016.eurprd04.prod.outlook.com
 (2603:10a6:4:91::26) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.137.85) by
 DB6PR0402CA0016.eurprd04.prod.outlook.com (2603:10a6:4:91::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:26:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f7fb9666-785e-4904-63fb-08d9745ea47f
X-MS-TrafficTypeDiagnostic: CH0PR11MB5443:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB54439A03180EAFA71BED4A8FB8D69@CH0PR11MB5443.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:403;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Pc9bD7v1TTJYXZlZHY7Z1w/Bc9E+yoAZsJhXsGBfgTTf0qvNXS5TIqcpL64ezzLMsFJYLxrsXdTxJgCMztxmvnSnzC8PVRcposMtJyRzTRzLvaVuc1JbEuRba9gcTndTsPPrBmLT6dp2F6c7eJ7plBahg9UA03+9bej97T+PDlehM6y1KwihuesmLp1+Dapo84aOLyAXTBpHsojEJQqam8Qlj+ZGKXPnqUEHlXiANvJDKDh4Q03BCw0tCra0O6cpis4MWTOd5NLN4ur1xC7/pjlYtCK1umyPanxHl7TGlxeDld9btByEMDIZpn9D3TwEsh90QF1Yy7hca+yRPsELHVfIdeXUt77PWsDNZo1f+g988xjqX/wy9/p1pgZgT61Smm+Cj0rrAfTULsG4xV6w1F7TtlCXiffdwB3dXWc/PYalarYX2JYSdQ0ei4Cxm/MeN83jiAIxcyJYH8IsaTcf/MLsOLM/TzFM8bYmVUCsxUcqi3XcEVbL+v60U4HrIbCsrp0yL/hq1P6An07FOXXVxQUF5onjWHn4Q6mAhRZhxS07EMitmlI4e9Wmcdc67WZl0ELbw3830mOys9WvhomTnzlBZ+jjOHZtL7mm6UsjYA4te2pvpxfLCNf2EsBqxi3VFqbZm9YwAkMqCsME/PvqN3n36pbET5Z5IPu/jeYSiV3dcocUNWYvVfMUMSacE2n9uH8aiyp0WGTHlOErD4XAdM++Nv+3v4Ok3mihBNV5Pbk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(8676002)(83380400001)(53546011)(6486002)(186003)(8936002)(66556008)(66476007)(26005)(15650500001)(66946007)(478600001)(316002)(31686004)(16576012)(31696002)(6666004)(956004)(2616005)(36756003)(86362001)(5660300002)(38100700002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0NDcnNieElkNTU4NDVQY3pKU05HTUFSNlEvYW1DbzhKWmhNWUlMN0EzeFFR?=
 =?utf-8?B?cmhHN0NFdHhlbGd1L1MzaUgyY1ZuMTEvbVZxMkU2aHZ2WDRJZ1N3bjcvUkhG?=
 =?utf-8?B?N0FOZmJ4eXpBYytqUEFoQWtJVmVZMDdnY1FZcnpNRmhEd1BqbFVwemc2eW1Q?=
 =?utf-8?B?dzFkZlMrcGEzcDVkYXRoV1p6UjM2UEZGVko1aUZINzY5L0w2UVY0WUJBNlE2?=
 =?utf-8?B?L0cxREIwT0tvNTRoUTlDZWZlbFA4U3BJeFVLa094NnlGUE9iRUt2dEpBak1t?=
 =?utf-8?B?bUErYkFhWmVQTVh3Q2pmL1U1SWl3MzFrUXp2bzRDZkprQjFBd2o0R2lOUG9P?=
 =?utf-8?B?V1krazlUdjVWcmdocHpucTlVbi8zQWVVeFQyZ2tCUml4UGFPSVZuajR3Z0pI?=
 =?utf-8?B?L1BjS0xSclNlbmhNb2x3dEZqNkplM1pMM0NTb1pXWmE1cXg5NmJBWmYxNndm?=
 =?utf-8?B?a0c5OVBSb1Fnc1prYUdmVEdPdjI4Q29zYkRLellKTVRLKythbmZnYkppaXBG?=
 =?utf-8?B?L0hSaWU5VC9nN1lpdDhqeUx4d3c5QVZiN3BpWjFmaE0xZWZ5UkwzQ0c5NXM4?=
 =?utf-8?B?ZlBWcEhXeDdtZjdXUkxod1IzT0IxTTVnRFhvaFNLeUZjQlB4K1YrMWtWSVps?=
 =?utf-8?B?N2RicnVRL0lBQlNnYW80KytmYTZncm1QZWFmYXRMSm9ERUt4U0pKY2pMQmRU?=
 =?utf-8?B?TWtreWhjQkd3Yjh4VU5WR1BTMUNLTm1HdUkrVXd5a0dYWGdCL01tVDluOXkw?=
 =?utf-8?B?YldvWXBGUjFaNUlMZi9pMEZoNXgxN0ZmUkxlUzNvMUY0NHQ5L0ZZcWdMOWhP?=
 =?utf-8?B?MmR3SVByQWVxdmhsL2hsS3VyOXgwMmdOTit2ZjBNZEovR2hyaEU3MGozZmd5?=
 =?utf-8?B?VkJOV2MzSm03cVcwTU1mR0w0RXowdTUvRkIzMWxjalphUlMvZzlXdzhUMkRp?=
 =?utf-8?B?MEUxUjZVb2VrbnFaMDg1NkFCS3dIV1ZvL01LMlpkTlVEZmVjYnoxRWllQ1lq?=
 =?utf-8?B?b0swWEFzWWhFMXExUzFPRzZWTDBNNmtxL293Mk1xTjJxUjdlUFJUL21FZkZF?=
 =?utf-8?B?ZGFGSjNTQTJ0dTJJRGIzT1hUV1BheHc3cXNrUVRlYmVIZ2NaaDEyVFZnclJL?=
 =?utf-8?B?M0pHVGVVTnBRVjZzejRCRWJCSVcrY0J6WjZVWjBLZUdWektsOHduSm42SmVM?=
 =?utf-8?B?MkhlajJIVmdiNWVxamhXUTNCQnVKbW9CRjMzVnhtTE1OeTlnNU9uMTA5dzdq?=
 =?utf-8?B?OE80SGpWQk04ZWYzV0FqN0wxU1E5bDNFN2dxRTNwMjR4RnFzT1RYbHo0Nm9h?=
 =?utf-8?B?OTBqcE5MTW5yNEpUWjFCcDhKSWhBNGltc1c1OXlvQ1RkZ2hDeGFjNUtaU0x2?=
 =?utf-8?B?U3lYc1FuTmNoQnZ0VWxtdklVY1BVeVhZY3lxWG5DRDFZak1WNkJHUE1qR1pR?=
 =?utf-8?B?NTNSdWt6TmdYYXkyUkVzSFZiRXVINlhhaTZ2UVhsaEJkTHBrSEsxaEVtc2tx?=
 =?utf-8?B?ZzBqdk5vL2wrejRNVzhNQnpnTW1TUGh3VElGWGJqQTg3RWdwcGpaVGY0b0g3?=
 =?utf-8?B?VU5DS3BnN1NVNUNFaFVFa3VVNnlqNldOWTliSkE0RmNrNTZkSGNlUm5LM2VH?=
 =?utf-8?B?bmhkUm05cEZac3o1T1pNTDVESjh3bUtmd1FOZ0lKa1FicVU5Z1JRZEE2NUhZ?=
 =?utf-8?B?VktzTEhKVlV4MlY0SXpkeWFZSnczQy94bWVDa0xhQUpUT3NVZkZrWFVIWmY3?=
 =?utf-8?Q?GAphMfhiyKFK8jSqk3Zr5UChjM5ZxHBQLrRMgFd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7fb9666-785e-4904-63fb-08d9745ea47f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:26:48.7316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g3SabfxSoUWFan0I0tsdAL+zpOTlaoZAwFw6QlzqL0HH8LA9mT3Tc1VSjjaDqzvr4ka1CN3AXMp5gHuT+P2PNKmXjhvnt6xu9UJ6fap8nV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5443
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/display: Wait at least 2
 frames before selective update
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

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/10/21 2:07 AM, José Roberto de Souza wrote:
> BSpec states that the minimum number of frames before selective update
> is 2, so making sure this minimum limit is fulfilled.
> 
> BSpec: 50422
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 92c0b2159559f..1a3effa3ce709 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -510,7 +510,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>   	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <= 12)
>   		val |= EDP_Y_COORDINATE_ENABLE;
>   
> -	val |= EDP_PSR2_FRAME_BEFORE_SU(intel_dp->psr.sink_sync_latency + 1);
> +	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
>   	val |= intel_psr2_get_tp_time(intel_dp);
>   
>   	/* Wa_22012278275:adl-p */
> 
