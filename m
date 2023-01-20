Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1078675210
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506C310EA07;
	Fri, 20 Jan 2023 10:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F1110EA03
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674209386; x=1705745386;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oVLNRylvZAesdu8tgOYQEcuK0/FD18N6bAZBNxb2gFo=;
 b=UmhX0ek79ks3G1Gu0TzOQKR59B39bXzDOUvueA6TRSQljj2lcsKxMR07
 Hlo52l4xWSWAn3cJU+L8K/awpxmkoQHNtPtuSWahbey0pEn6zsb8ADe75
 ggFS6McBfgYtMDnbfptRL3mJ43n9lKvI9GXnBN7sHphxXd8cuOOd3JjYF
 4nqVQGVVOBnq9V13CUhsN4Azh6mNHYtak9xcDgW9dnyXvr8ljAWb6weH1
 kwpfJh0PQ7rEqriCzNcIGyyvZltERQ2f+pjxBfUlfuHlLPDTZORRGafIL
 5m5vRfKqJWYF6A0UCzMKzlulGVa6n2RAAMYHcndA8SRezxarQFUs17Snq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="325583302"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="325583302"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:09:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="691002293"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="691002293"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 20 Jan 2023 02:09:44 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:09:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:09:44 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:09:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IHtI522jSujyW7bKZtvfl9tYBfMdhQVEvhV1ODvCL2vu+5fc6mTcQBvIZiudvDrORnaCKUKwFmNGfSPM7jzHKvE8yrRmWPTMBiIDlGnMO3iRoBB9g0Ozk9mmCBdk182+jwPAemhrJu1XQDxLitmeqKUpQXmO0nyiFvMH9Q+ZFsFAKY5dNjc6j1B6bMAWTtOEHmb1mtCF8FYZXI6tu8wHo8L2wcexfuHVxPVUwSq0EVQyf1XH0mddtgwVcA1ouUJ5e031uUwnqz5UliDxqtz9fG9litxIwH0zrZ/AhK3R6UDyql4mxy/pO97kddn1Hql5D1/Vt3smx7VW/QcdOlknwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZlLNZJyyWFHepEHmxVahnTdmpUbuPcWleYBxCQkEYc=;
 b=GNSphd4iKzqjKL08qcYwyWFfrQ1nl572yXjfEOoR4ABYFVZrg8T8sR/erEnmF/XwmGODwpHWvE5ySw+X0C+UPvNHQ/YxdTcUoj+A19J0+TVUBCFOnDig4fo1mJbWDDW8tkowCpiquaEIq10NYo441miTvoQWfby7Q7UGs2xTMQzGRJSaApvszaAcTge9tQarQT8thGidfKheqvUR49p45KVKI/hCBf5XwYRO7/+jkxIiA1xJMAcix4VVQzD6z44jWtRvTEr6bTLG/4Fg3YK/BHhmOscltSbddFr4cXTzNk4MW8Vg1ceQnmwhspZV/ntvHIpQEmGrjPMhan2SGAfk/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN0PR11MB5693.namprd11.prod.outlook.com (2603:10b6:408:164::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 10:09:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786%9]) with mapi id 15.20.6002.027; Fri, 20 Jan 2023
 10:09:41 +0000
Message-ID: <47bbaafe-9d82-8c71-7038-3fae2dcef3ee@intel.com>
Date: Fri, 20 Jan 2023 15:39:30 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230110105732.1390596-1-suraj.kandpal@intel.com>
 <20230110105732.1390596-7-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230110105732.1390596-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN0PR11MB5693:EE_
X-MS-Office365-Filtering-Correlation-Id: 2025ae8a-fe19-4736-fce1-08daface71de
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LiKVCY0lUxlJ+hwbV4oNZunI48yLpBk2jxs44dq09WNJ2HMTM3bBpqv9ARFJ8B2p6WQMCciyiGR6Gnzt9gII4JiWVhqFN6OokiUjJPjgEtn2wqu5/mpeUnYAHV3+UrDsNnU0wiD9EJ7XvH4HnG3T4ncXRH27jpY98AveHlGG86vzF5Wd1GMxbV6k1wdJ8l6V3qW7aVfmQI30oDw1IldcC95RX5wEcdydPLZLrDS77CIKuVeGXuDRkBBqJ/XxtT22naju5lcWIU1gMbW4cHYZr8YK7Q4Q6AhcQZo7jHs7ToAePFWWmBaOlIzkuBzztMIkXWmLyjfnRpXyiAZe+HnoeyS8LlfOEdyZ+wbr9kCs0y9iPnH1toq5ILzkGkuw4n0rdMBLxS5fRjW+GRFUcHyiRpm9g3jH8YC/BGhiDjXts8wBGS/g0S73jAW1sZOa/PJ2vZ6yRNISzwZ0onGTh4u+aXD6AU49o3TKdeRjNh7dWLHqEmuijtZ7xWC2OVgo6G1zs1tK/BG2I6IjlsM5+1upmMfaHiJ4Nw6KigCau1s4kfaeX5212HIEE4JeWIOsoy2S/v1aCvqHSuCiTIwofP7WteHhgG/9g3lMumzJ6LML8+OAeWAmPQuVaYJ+SYT1e2BZTAy3ZxCvDri9TysRGe8CDUDFycdkgJRc356bWsjbifVsJ06fuvuILFO0sY71IqMtphJGA6qHiVPCHHwAUSquvsWivd46gIEkig29zzjgiqzwu5KovHsP2yacvX9oxYI6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(136003)(346002)(376002)(451199015)(26005)(2906002)(186003)(6512007)(54906003)(6506007)(53546011)(2616005)(316002)(6486002)(36756003)(478600001)(6666004)(107886003)(31696002)(38100700002)(86362001)(82960400001)(83380400001)(41300700001)(4326008)(5660300002)(30864003)(31686004)(8936002)(8676002)(66946007)(66556008)(66476007)(45980500001)(43740500002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWVTTlpqOHE5VFlSRFlWRUEyaVh2S3FwdUZOc2VCYXVuTklZcElhN3dOanFH?=
 =?utf-8?B?UzQzLzk1dUU3RVJUUm1xRk5sQWpjczV3UW56RnZzdXhTZDdRVmlCek0vUFVW?=
 =?utf-8?B?K0xaN3NGaTFoV0ZPd1VidEJoTm5Fa0lBYTRJUEt0R0tvV2wxSFdqdmNXd3Z2?=
 =?utf-8?B?WnRHWHlOakR6WVRvQk85aDVmRWcyTHNvRFJNZU9NeThGNWRjRGZiRU5JbUxU?=
 =?utf-8?B?WXBSRC9MTzJSNXpNeE1uazFMcHJ3VEd4Y241TWU0L2laMFp2VkNhMUJtNzVO?=
 =?utf-8?B?UUgvcDk5MkxBUExIdkdrUkx6K1VqUWx0ejIvOHNQU01ITTNIeTVIdjZVOTVC?=
 =?utf-8?B?ZUdSWFZaQ2czcDEybWpJOW9pZ2h4aGFQV1ZzUWtTZ0dUekhwSmxDVy90Wlh1?=
 =?utf-8?B?aVVWaTQranNDQy94dXkxanhibWxSN2ZzVHIrWEJtV29pN0FMYWY5cjBEOE5K?=
 =?utf-8?B?ejBHc3FNLzlOVkFSYlArMThKakdUYytrK2dJcnFjclcybGRBeWl5cXduN2pN?=
 =?utf-8?B?YVJYak0xZWdyZ3hscXRLZ2NzaTBleG16Z3ZYYjV6aDdJNVVYK1ZBd1k3U1I5?=
 =?utf-8?B?NzRnclRhcHcyK1UwMitsVnFZNlpTMm1KdzZNSWdlUm54R0g1cm1BbnNvVDR2?=
 =?utf-8?B?T0dKb3lxbXF5dDZ5Z0x1Y1BhaEZKZUJZTWVZa1QzOHlpQng4NXkwQjFESzYv?=
 =?utf-8?B?WnRwSW1xTUdHUnZ0WmQrdk9MWVBqdll5aS9oUzQ5ZlJ6S1FHUjJXZXIvdjZH?=
 =?utf-8?B?bW54UFRER1lDN1dKL2lNOFpZTTdDbHdHYWJ5Vzd0KzlIVy9kVFlWRWF3clZu?=
 =?utf-8?B?NE9mN2FvMC96RUxrbTRZZklvaGRBWXh2dXVRYWxja1c0OWdBUVVWZ3hKK24r?=
 =?utf-8?B?WVdPQ0ZKV2RickhQcXR3aGsxQy8xM0FJQmZSVlFxZFY0ZEtDWG9iYUxEcXIy?=
 =?utf-8?B?eGpyQmtwYVl3bWVZUkVCVHMzbjg3dFVXMXVrTVJtS1Q4SS9reHhlamRsc211?=
 =?utf-8?B?WUk2U3JpTkMwZzVBampxVE5CaVpNSXNBZTMwanhmeWxYd1ZNYTFFREx1TE9L?=
 =?utf-8?B?eUtqSUxSdW14bytaTXViN0hxTUh5L0F2ZVVpVlNLL1B5Ymx5alRLVk85N3Zy?=
 =?utf-8?B?RG1MaWdmMU0rRlFoV053SGRWaUJmMnZJSThHS3Y3TEE4NUtOOEdDSmR5VzBG?=
 =?utf-8?B?NEppeDdqNFJCd2ZoN0pkL2g5UXJkbkRhaHF3Q1RPTHJiVE12RHdzYTQvMFNI?=
 =?utf-8?B?U2RiekJZRlhoVXFRc05jOVdBRlJXRUhZUDY4QkNMK3RUK2xHaVhsTjZ0dU5o?=
 =?utf-8?B?d2F1SVl0djAxK0c1OFZDSlJCTzFJdG1nZndoUmkrSDVhRHBxcDYyNEREZ0Yy?=
 =?utf-8?B?RytFQm5wOG85QlJSTEZWVmNPbjR0d3NTQ1o5RlQ4dUQzaWZSdFdJaFhUZERv?=
 =?utf-8?B?S01LUm52bTljZ2tRRHp1cTAyeDJwQTNOaEVHZzQ1R3JjK3R3Ri9TK1hKVTBC?=
 =?utf-8?B?TmlBbGk2VHZxeTg5Tkt6MHpsUlIwMHI1MjlmMG90MW9pZVJpVjdSNDdGUUpY?=
 =?utf-8?B?NFB2cUJxOStpamhGcTQ3djhURFRMWTgzTzNuYnJuRHhPcDBtRXI0aXhpUXEx?=
 =?utf-8?B?QmlrZFNIbUgxb0FNRVpyVVdHTkxsbEEweHY3M09mWm9oWS9BTWk4SjJsODdY?=
 =?utf-8?B?MU5aaGJqdjVxaGc0bm0yalc5Y1B4SkxmRC93WXU0T2dDRWNlMWRQZGQ1YWN0?=
 =?utf-8?B?QUd4VHBYK2R3TFpjNU52Zjl1elcxeks1UURySlhuNytYdkVvVGNCbEhNU1FG?=
 =?utf-8?B?eXhYUFFGQWk1YW9RYkNJS0pwSnBCVGh2WGw0eXZ4V0ZnZjdRcVlxL2l2T2xG?=
 =?utf-8?B?WC9iYkhORTBkVWsvemIwNkVKMWxwRi9DYjZQaHNPcWFtVC9uNUNzVDZRMFY4?=
 =?utf-8?B?K1BkSzNDQWFleHhZeExqb3VDWTg1V05wWGtQampENGJXcEoyS0c5UUd4TWdB?=
 =?utf-8?B?bEIydzJHdHBMU3V6UGNEcithU3plUW90b2UrQWFtQXVLVkJxTmloQkJnNEVB?=
 =?utf-8?B?bkRJdDU5YUs3cjF6U2ZKU1JydkFhc0RoQTRXY2xDWWlPanZpWElNbHRZTmhl?=
 =?utf-8?B?eStuSHcwOGY5S1Nienh6UktKZzlrSzZmMzhMaVJSNWlUMmZMUE13dmxHOUJN?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2025ae8a-fe19-4736-fce1-08daface71de
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:09:41.1535 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G2HY9d5Uy9aRkHU/38o+WOzwc0CLRX2Pq4UMo5E+Tsp81OEmzbyuTPqi/KXMhKheBhZNd7XKfP7KjPgQOh9M79hv5TMYELIOPQaI+0htd5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5693
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 6/6] drm/i915/mtl: Add HDCP GSC interface
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
Cc: jani.nikula@intel.com, Tomas Winkler <tomas.winkler@intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/10/2023 4:27 PM, Suraj Kandpal wrote:
> MTL uses GSC command streamer i.e gsc cs to send HDCP/PXP commands
> to GSC f/w. It requires to keep hdcp display driver
> agnostic to content protection f/w (ME/GSC fw) in the form of
> i915_hdcp_fw_ops generic ops.
>
> Adding HDCP GSC CS interface by leveraging the i915_hdcp_fw_ops generic
> ops instead of I915_HDCP_COMPONENT as integral part of i915.
>
> Adding checks to see if GSC is loaded and proxy is setup
>
> --v6
> -dont change the license date in same patch series [Jani]
> -fix the license year {Jani]
>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c     |  28 +-
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 631 +++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   3 +
>   3 files changed, 655 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 0d6aed1eb171..0824c186a31f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -25,6 +25,8 @@
>   #include "intel_hdcp.h"
>   #include "intel_hdcp_regs.h"
>   #include "intel_pcode.h"
> +#include "intel_connector.h"

This is already included.


> +#include "intel_hdcp_gsc.h"
>   

This should be included in alphabetic order, after intel_hdcp.h


>   #define KEY_LOAD_TRIES	5
>   #define HDCP2_LC_RETRY_CNT			3
> @@ -203,13 +205,20 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct intel_gt *gt = dev_priv->media_gt;
> +	struct intel_gsc_uc *gsc = &gt->uc.gsc;
>   	bool capable = false;
>   
>   	/* I915 support for HDCP2.2 */
>   	if (!hdcp->hdcp2_supported)
>   		return false;
>   
> -	/* MEI interface is solid */
> +	/* If MTL+ make sure gsc is loaded and proxy is setup */
> +	if (DISPLAY_VER(dev_priv) >= 14)

Can use intel_hdcp_gsc_cs_required() here.


> +		if (!intel_uc_fw_is_running(&gsc->fw))
> +			return false;
> +
> +	/* MEI/GSC interface is solid depending on which is used */
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>   	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.master) {
>   		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -2235,7 +2244,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>   
>   static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
>   {
> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
> +	if (intel_hdcp_gsc_cs_required(dev_priv) && !IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
>   		return false;

This seems odd. What we might want is something like:

if (intel_hdcp_gsc_cs_required(dev_priv))
     return true;

if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
     return false;

return (DISPLAY_VER(dev_priv) >= 10 ||
        IS_KABYLAKE(dev_priv) ||
        IS_COFFEELAKE(dev_priv) ||
        IS_COMETLAKE(dev_priv));



>   
>   	return (DISPLAY_VER(dev_priv) >= 10 ||
> @@ -2256,10 +2265,14 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
>   
>   	dev_priv->display.hdcp.comp_added = true;
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> -				  I915_COMPONENT_HDCP);
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		ret = intel_hdcp_gsc_init(dev_priv);
> +	else
> +		ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> +					  I915_COMPONENT_HDCP);
> +
>   	if (ret < 0) {
> -		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> +		drm_dbg_kms(&dev_priv->drm, "Failed at fw component add(%d)\n",
>   			    ret);
>   		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>   		dev_priv->display.hdcp.comp_added = false;
> @@ -2486,7 +2499,10 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
>   	dev_priv->display.hdcp.comp_added = false;
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>   
> -	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		intel_hdcp_gsc_fini(dev_priv);
> +	else
> +		component_del(dev_priv->drm.dev, &i915_hdcp_ops);
>   }
>   
>   void intel_hdcp_cleanup(struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index ca7bfeeb1768..838417e08610 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -3,6 +3,8 @@
>    * Copyright 2023, Intel Corporation.
>    */
>   
> +#include <drm/i915_hdcp_interface.h>
> +
>   #include "display/intel_hdcp_gsc.h"
>   #include "gem/i915_gem_region.h"
>   #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
> @@ -15,6 +17,632 @@ struct intel_hdcp_gsc_message {
>   	void *hdcp_cmd;
>   };
>   
> +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) >= 14)
> +		return true;
> +	return false;
> +}
> +

return DISPLAY_VER(i915) >= 14


> +static int
> +gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
> +			  struct hdcp2_ake_init *ake_data)
> +{
> +	struct wired_cmd_initiate_hdcp2_session_in session_init_in = { { 0 } };
> +	struct wired_cmd_initiate_hdcp2_session_out
> +						session_init_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ake_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	session_init_in.header.api_version = HDCP_API_VERSION;
> +	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
> +	session_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	session_init_in.header.buffer_len =
> +				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> +
> +	session_init_in.port.integrated_port_type = data->port_type;
> +	session_init_in.port.physical_port = (u8)data->hdcp_ddi;
> +	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +	session_init_in.protocol = data->protocol;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
> +				       sizeof(session_init_in),
> +				       (u8 *)&session_init_out,
> +				       sizeof(session_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_INITIATE_HDCP2_SESSION,
> +			    session_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ake_data->msg_id = HDCP_2_2_AKE_INIT;
> +	ake_data->tx_caps = session_init_out.tx_caps;
> +	memcpy(ake_data->r_tx, session_init_out.r_tx, HDCP_2_2_RTX_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
> +					 struct hdcp_port_data *data,
> +					 struct hdcp2_ake_send_cert *rx_cert,
> +					 bool *km_stored,
> +					 struct hdcp2_ake_no_stored_km
> +								*ek_pub_km,
> +					 size_t *msg_sz)
> +{
> +	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = { { 0 } };
> +	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
> +	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
> +	verify_rxcert_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_rxcert_in.header.buffer_len =
> +				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> +
> +	verify_rxcert_in.port.integrated_port_type = data->port_type;
> +	verify_rxcert_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_rxcert_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	verify_rxcert_in.cert_rx = rx_cert->cert_rx;
> +	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> +	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
> +				       sizeof(verify_rxcert_in),
> +				       (u8 *)&verify_rxcert_out,
> +				       sizeof(verify_rxcert_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_rxcert_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_VERIFY_RECEIVER_CERT,
> +			    verify_rxcert_out.header.status);
> +		return -EIO;
> +	}
> +
> +	*km_stored = !!verify_rxcert_out.km_stored;
> +	if (verify_rxcert_out.km_stored) {
> +		ek_pub_km->msg_id = HDCP_2_2_AKE_STORED_KM;
> +		*msg_sz = sizeof(struct hdcp2_ake_stored_km);
> +	} else {
> +		ek_pub_km->msg_id = HDCP_2_2_AKE_NO_STORED_KM;
> +		*msg_sz = sizeof(struct hdcp2_ake_no_stored_km);
> +	}
> +
> +	memcpy(ek_pub_km->e_kpub_km, &verify_rxcert_out.ekm_buff,
> +	       sizeof(verify_rxcert_out.ekm_buff));
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
> +		       struct hdcp2_ake_send_hprime *rx_hprime)
> +{
> +	struct wired_cmd_ake_send_hprime_in send_hprime_in = { { 0 } };
> +	struct wired_cmd_ake_send_hprime_out send_hprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_hprime)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	send_hprime_in.header.api_version = HDCP_API_VERSION;
> +	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
> +	send_hprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> +
> +	send_hprime_in.port.integrated_port_type = data->port_type;
> +	send_hprime_in.port.physical_port = (u8)data->hdcp_ddi;
> +	send_hprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
> +				       sizeof(send_hprime_in),
> +				       (u8 *)&send_hprime_out,
> +				       sizeof(send_hprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (send_hprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
> +			    struct hdcp2_ake_send_pairing_info *pairing_info)
> +{
> +	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = { { 0 } };
> +	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !pairing_info)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	pairing_info_in.header.api_version = HDCP_API_VERSION;
> +	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
> +	pairing_info_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	pairing_info_in.header.buffer_len =
> +					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> +
> +	pairing_info_in.port.integrated_port_type = data->port_type;
> +	pairing_info_in.port.physical_port = (u8)data->hdcp_ddi;
> +	pairing_info_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> +	       HDCP_2_2_E_KH_KM_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
> +				       sizeof(pairing_info_in),
> +				       (u8 *)&pairing_info_out,
> +				       sizeof(pairing_info_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (pairing_info_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status: 0x%X\n",
> +			    WIRED_AKE_SEND_PAIRING_INFO,
> +			    pairing_info_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_initiate_locality_check(struct device *dev,
> +				 struct hdcp_port_data *data,
> +				 struct hdcp2_lc_init *lc_init_data)
> +{
> +	struct wired_cmd_init_locality_check_in lc_init_in = { { 0 } };
> +	struct wired_cmd_init_locality_check_out lc_init_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !lc_init_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	lc_init_in.header.api_version = HDCP_API_VERSION;
> +	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
> +	lc_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> +
> +	lc_init_in.port.integrated_port_type = data->port_type;
> +	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
> +	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_init_in),
> +				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (lc_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status: 0x%X\n",
> +			    WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	lc_init_data->msg_id = HDCP_2_2_LC_INIT;
> +	memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
> +		       struct hdcp2_lc_send_lprime *rx_lprime)
> +{
> +	struct wired_cmd_validate_locality_in verify_lprime_in = { { 0 } };
> +	struct wired_cmd_validate_locality_out verify_lprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_lprime)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	verify_lprime_in.header.api_version = HDCP_API_VERSION;
> +	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
> +	verify_lprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_lprime_in.header.buffer_len =
> +					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> +
> +	verify_lprime_in.port.integrated_port_type = data->port_type;
> +	verify_lprime_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_lprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> +	       HDCP_2_2_L_PRIME_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
> +				       sizeof(verify_lprime_in),
> +				       (u8 *)&verify_lprime_out,
> +				       sizeof(verify_lprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_lprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_VALIDATE_LOCALITY,
> +			    verify_lprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_get_session_key(struct device *dev,
> +				    struct hdcp_port_data *data,
> +				    struct hdcp2_ske_send_eks *ske_data)
> +{
> +	struct wired_cmd_get_session_key_in get_skey_in = { { 0 } };
> +	struct wired_cmd_get_session_key_out get_skey_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ske_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	get_skey_in.header.api_version = HDCP_API_VERSION;
> +	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
> +	get_skey_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> +
> +	get_skey_in.port.integrated_port_type = data->port_type;
> +	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
> +	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in, sizeof(get_skey_in),
> +				       (u8 *)&get_skey_out, sizeof(get_skey_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (get_skey_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_GET_SESSION_KEY, get_skey_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ske_data->msg_id = HDCP_2_2_SKE_SEND_EKS;
> +	memcpy(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
> +	       HDCP_2_2_E_DKEY_KS_LEN);
> +	memcpy(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> +					 struct hdcp_port_data *data,
> +					 struct hdcp2_rep_send_receiverid_list
> +							*rep_topology,
> +					 struct hdcp2_rep_send_ack
> +							*rep_send_ack)
> +{
> +	struct wired_cmd_verify_repeater_in verify_repeater_in = { { 0 } };
> +	struct wired_cmd_verify_repeater_out verify_repeater_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !rep_topology || !rep_send_ack || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	verify_repeater_in.header.api_version = HDCP_API_VERSION;
> +	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
> +	verify_repeater_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_repeater_in.header.buffer_len =
> +					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> +
> +	verify_repeater_in.port.integrated_port_type = data->port_type;
> +	verify_repeater_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_repeater_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> +	       HDCP_2_2_RXINFO_LEN);
> +	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
> +	       HDCP_2_2_SEQ_NUM_LEN);
> +	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> +	       HDCP_2_2_V_PRIME_HALF_LEN);
> +	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
> +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
> +				       sizeof(verify_repeater_in),
> +				       (u8 *)&verify_repeater_out,
> +				       sizeof(verify_repeater_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_repeater_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_VERIFY_REPEATER,
> +			    verify_repeater_out.header.status);
> +		return -EIO;
> +	}
> +
> +	memcpy(rep_send_ack->v, verify_repeater_out.v,
> +	       HDCP_2_2_V_PRIME_HALF_LEN);
> +	rep_send_ack->msg_id = HDCP_2_2_REP_SEND_ACK;
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_verify_mprime(struct device *dev,
> +				  struct hdcp_port_data *data,
> +				  struct hdcp2_rep_stream_ready *stream_ready)
> +{
> +	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
> +	struct wired_cmd_repeater_auth_stream_req_out
> +					verify_mprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +	size_t cmd_size;
> +
> +	if (!dev || !stream_ready || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	cmd_size = struct_size(verify_mprime_in, streams, data->k);
> +	if (cmd_size == SIZE_MAX)
> +		return -EINVAL;
> +
> +	verify_mprime_in = kzalloc(cmd_size, GFP_KERNEL);
> +	if (!verify_mprime_in)
> +		return -ENOMEM;
> +
> +	verify_mprime_in->header.api_version = HDCP_API_VERSION;
> +	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
> +	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
> +
> +	verify_mprime_in->port.integrated_port_type = data->port_type;
> +	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
> +	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
> +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
> +
> +	memcpy(verify_mprime_in->streams, data->streams,
> +	       array_size(data->k, sizeof(*data->streams)));
> +
> +	verify_mprime_in->k = cpu_to_be16(data->k);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in, cmd_size,
> +				       (u8 *)&verify_mprime_out,
> +				       sizeof(verify_mprime_out));
> +	kfree(verify_mprime_in);
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_mprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_REPEATER_AUTH_STREAM_REQ,
> +			    verify_mprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_enable_authentication(struct device *dev,
> +					  struct hdcp_port_data *data)
> +{
> +	struct wired_cmd_enable_auth_in enable_auth_in = { { 0 } };
> +	struct wired_cmd_enable_auth_out enable_auth_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	enable_auth_in.header.api_version = HDCP_API_VERSION;
> +	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
> +	enable_auth_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> +
> +	enable_auth_in.port.integrated_port_type = data->port_type;
> +	enable_auth_in.port.physical_port = (u8)data->hdcp_ddi;
> +	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +	enable_auth_in.stream_type = data->streams[0].stream_type;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
> +				       sizeof(enable_auth_in),
> +				       (u8 *)&enable_auth_out,
> +				       sizeof(enable_auth_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (enable_auth_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_ENABLE_AUTH, enable_auth_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
> +{
> +	struct wired_cmd_close_session_in session_close_in = { { 0 } };
> +	struct wired_cmd_close_session_out session_close_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	session_close_in.header.api_version = HDCP_API_VERSION;
> +	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
> +	session_close_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	session_close_in.header.buffer_len =
> +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> +
> +	session_close_in.port.integrated_port_type = data->port_type;
> +	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
> +	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
> +				       sizeof(session_close_in),
> +				       (u8 *)&session_close_out,
> +				       sizeof(session_close_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_close_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "Session Close Failed. status: 0x%X\n",
> +			    session_close_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct i915_hdcp_ops gsc_hdcp_ops = {
> +	.initiate_hdcp2_session = gsc_hdcp_initiate_session,
> +	.verify_receiver_cert_prepare_km =
> +				gsc_hdcp_verify_receiver_cert_prepare_km,
> +	.verify_hprime = gsc_hdcp_verify_hprime,
> +	.store_pairing_info = gsc_hdcp_store_pairing_info,
> +	.initiate_locality_check = gsc_hdcp_initiate_locality_check,
> +	.verify_lprime = gsc_hdcp_verify_lprime,
> +	.get_session_key = gsc_hdcp_get_session_key,
> +	.repeater_check_flow_prepare_ack =
> +				gsc_hdcp_repeater_check_flow_prepare_ack,
> +	.verify_mprime = gsc_hdcp_verify_mprime,
> +	.enable_hdcp_authentication = gsc_hdcp_enable_authentication,
> +	.close_hdcp_session = gsc_hdcp_close_session,
> +};
> +
> +int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> +{
> +	struct i915_hdcp_master *data;
> +
> +	data = kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	i915->display.hdcp.master = data;
> +	i915->display.hdcp.master->hdcp_dev = i915->drm.dev;
> +	i915->display.hdcp.master->ops = &gsc_hdcp_ops;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +
> +	return 0;
> +}
> +
> +int intel_hdcp_gsc_fini(struct drm_i915_private *i915)
> +{
> +	/* TODO: decrease GSC f/w reference count. */

Do we need this?


Regards,

Ankit

> +	kfree(i915->display.hdcp.master);
> +	return 0;
> +}
> +
>   /*This function helps allocate memory for the command that we will send to gsc cs */
>   static int intel_initialize_hdcp_gsc_message(struct drm_i915_private *i915,
>   					     struct intel_hdcp_gsc_message *hdcp_message)
> @@ -124,7 +752,8 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
>    * will follow
>    */
>   ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> -				size_t msg_in_len, u8 *msg_out, size_t msg_out_len)
> +				size_t msg_in_len, u8 *msg_out,
> +				size_t msg_out_len)
>   {
>   	struct intel_gt *gt = i915->media_gt;
>   	struct intel_gsc_mtl_header *header;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 582f4992be76..069a3b227a83 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -11,8 +11,11 @@
>   
>   struct drm_i915_private;
>   
> +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
>   ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   				size_t msg_in_len, u8 *msg_out,
>   				size_t msg_out_len);
> +int intel_hdcp_gsc_init(struct drm_i915_private *i915);
> +int intel_hdcp_gsc_fini(struct drm_i915_private *i915);
>   
>   #endif /* __INTEL_HDCP_GCS_H__ */
