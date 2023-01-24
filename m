Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E789E678F39
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 05:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAC110E228;
	Tue, 24 Jan 2023 04:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C721C10E228
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 04:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674533982; x=1706069982;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y6kWEOO6yD+pGmEwngD3G+WhfdCWE3ZXXci+UVg71Ek=;
 b=VRE3VS0+isi2bDTXzcCKaLkau48fcevUc+RgkqFnzp7FJH30SYWeVY56
 xmDb2rEZnQXO9GQ4Jf+YYJ9XIzYW8G3DIUQDSu8MA7jEJvQiSjCk5Xyjt
 zUdL0PPbMYyZ1pk//sbPG6vpDvCZNacf9qwAeGy/0NIBhF1SyWGgbaFNi
 SbKzKUyFCsPsh8zYd+WzLtDPCovyZOdNhmKsA4/UoiGzSioo/DdQeh615
 xZG3lDOhHOD5DlW2dyAe8OC6THhZPgEp1p3ZrBov9Or67brlBeeKIg7Fb
 SDLrp64EEmnGY2sgolAs3mcdxwzm8yIZjx/BilIHn6mU4Uof61JojGwKb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328312960"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="328312960"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 20:19:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="663933386"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="663933386"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jan 2023 20:19:41 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 20:19:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 20:19:41 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 20:19:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ef201S+JpOd1+coaVmeYN7xb/r+NNY2iX0lGXjpsJf+O55+Yt5rZ/kiWhmGr46SQwHHRBWv3oR3LteIW8KdPNkw8qhEZdU94ymqEoNgkU5dP17SyhoaUBR7MfN8NhU6XffNnhFu7Cns/5zZI8NVvIkIMXfAxdTtvxw+Swnw/M0DJMmV0POfr3G74oCeHLSxmpEXu407lhucZYIsCNN8A5HgqzQtIFAmVi00A+jikitT/gIYyn+pXjXVDl60fO3sfFCz7w70aX9Qz+v95sY08Xn1UG0n+pRUHrlZBTIT3cl09/bWutyebwj9NZpzsP3kd3mfrRmS4UZcLsoQc+II3tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNoUjB8m0p+fgH/WjTL9sntZlgIEBnJwmoNB28R0J5c=;
 b=KZwHkMS7qIDstsNkkwvHZnus8MEdLqhhqEAWTFU7fJrA4UatLCLhfiasDsTjmQfmno1EkKq5HHlYmqFqqEbgC4SH8HJi8Q7n11QbqsqokKKe9adCZrbS4IAuvrholhyGO1PrzxHGpRDbwAeu3oHLtHCRmakxYjoLXx9g+3qtR8KxVi6WBfR/NtMuew34qA+BxnC+ApbLWyYXrhXlEkw/T1BcBP+uOk90lMKES4s/bge8digfphi/rsWMyxCEeXlrRwJWnMNr4ya2AKCjl68qCkRLVks7BXwbgC9O+quwDpse0Db5wfUGw0Hbu76zCsTKnBBr7yNo7yBT7KoNiFGCGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7986.namprd11.prod.outlook.com (2603:10b6:510:241::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 04:19:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786%9]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 04:19:39 +0000
Message-ID: <f61b81c2-c8c9-7fa5-dfb7-c90cebb1bfa6@intel.com>
Date: Tue, 24 Jan 2023 09:49:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230110105732.1390596-1-suraj.kandpal@intel.com>
 <20230110105732.1390596-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230110105732.1390596-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7986:EE_
X-MS-Office365-Filtering-Correlation-Id: a3878744-c67c-4aab-59b0-08dafdc2355a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dUJSE+U00hOO9xZAcBngKmVN6cmB05g6ttrh1beNsEZ5XtIB+wI9f0nMUjDWz3D9UMdzc19wCue0M6ck8z+a7cbwCEFgcPDEp7xtfgnNGNghPsqRt8C9QX5LAob8iFJMmHF3PT8NBcL40fZlnFxkgFU2FnX4FFNHGYbygrTZ3uEtX9aTWKUOJDeXH2q1UIAyMP9yS0AQVXIT6ziovujUKyrObWoxxpXvUsm8RBn/L+SkluDDdDSE/j2SDS3DI30r5WKfuFm0Cs10udpRXp3jkVW6EO6f+isPUy19ixnCa73WboMeU2Fynk2BZYdg24Mdo9MqYg3iHdlWUL/l0uDFKQwYhDgufmbiGCsPCqlUx39GRAXFHqCxMQ0LXt1d10uTy6VFS0bHdX21nSU03rp7ydU0MszlhxVvMfvNdWEel9IUH8RTOyqwFyW/IHpf7O/i7gTEwmb5E6rEZvhGq/n06y79g9ykWhWDAfq965UcmLAYUvXcUoh/vwxaG77tpICcrbQX1Bx2G59hxB4dJbTlqN2ujLCayjdZCelr4f/f4u1qW5WzQGRutE4m3zgsCUOUbWHYJ5DG4fRC9DQIUl48jKJwqHtRJ2L/HW2mNDJ5vgyQeWup6wPvqNeRjomOpkyUTq0b0Bxq2oCog14/8W0XhMQrq8yHfhQTer6tPezfvLLafZ+IQGTZAlTD3MZFum/mPjTygJUezHHjC9esAouD7vjZlJhloF+dqC4sTANjUfc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(396003)(376002)(136003)(451199015)(36756003)(86362001)(2906002)(82960400001)(5660300002)(8936002)(41300700001)(4326008)(83380400001)(31696002)(38100700002)(478600001)(6486002)(31686004)(8676002)(26005)(6506007)(6512007)(186003)(55236004)(53546011)(66556008)(54906003)(66946007)(2616005)(66476007)(316002)(6666004)(107886003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUVxVlVGSS9HNm13Z1VwaGpCM1kzd1NjbUFhS1Nlb2xlWGpnNXpGVzFmRVB3?=
 =?utf-8?B?UzY0enZ4MUE2eU0wZ1ovRkQ4S0hIdVgyZ245ZC9hVnEza1Q0ZHNXL1V4eGVR?=
 =?utf-8?B?Y2V4anZJQ3lPWmN1R3h4Y2U1MlFSNS9Hamp2ZDRqNHZGb3hrZEgyQXZUK2l3?=
 =?utf-8?B?NG9zblBMaVpPTFZka01jdlRMeFBvcGVTRnJsYjE4TGltaHpDSXc1NUs4R251?=
 =?utf-8?B?MTlLVDdpbDcwdTRnOUZud2diNzdkUGZIMXV4NURHR3d1b2wwZStPMjVOUXAz?=
 =?utf-8?B?TTEwRG10K3lWSUdPUWNjSERqVmJIQmd3YnI5ejVDdC9OT0M1WmlKTHZpTWQ2?=
 =?utf-8?B?c2hOUUlONExlS1N6YlQ2TGZOUWM4NWdBdGxXdHMwQWtqQWN3Y1pKZ25pVlN1?=
 =?utf-8?B?SzdPNmNKR0plb21Ra3lJZno3WndnVTFHR0k2ekp6aU9HeTVRK2dBbEtkY0hR?=
 =?utf-8?B?MnRZcndTeGV2WUQrSUpDOWg2RWtZcUpBZElXUisxZWNwRDFJdUdWRk1NY3Ex?=
 =?utf-8?B?UDZBQ1lPWEJ4dEF3OEVUdUpOZUZxSGxadWt5c3k1bG1LOWVmdWJEZXZyQnBz?=
 =?utf-8?B?MGJYV09XRWJ3RjV0UWowdW1WR1VmOTdrdmhrT3d3dWtRY1JLcTNwZXZsVDdN?=
 =?utf-8?B?VWZzbkp3L3JWR0txTG93elludUV0dm5yOFFqK1g1bWUrMUhUVktOYTl3Q21o?=
 =?utf-8?B?SUJ3UHlWdnJRVnJpY2loMWc4MXdsc0dKT0lmb0QvcmNlS053TzNXaHFmenlt?=
 =?utf-8?B?Q1hpWEZSbGxSQkxnakUwRDlRWTFFU3VXbHcrdVd0dUQyNkljR2NNYnE1TWUv?=
 =?utf-8?B?U2twcDU5UXo0N1RmSi9XcWd3S252R0Q5VkM1M1lSNTNtbi92K2ZqU1lkYXRH?=
 =?utf-8?B?Z1k1UzNzU3lZYitibkdIVnE0K3RaODZJZG0zeGFpblRxM0FDRDNmcUx2UFg5?=
 =?utf-8?B?WC9XdHZGVXdYWEhZTHo3U2VUQXRIWUV0N01URzA2cW4yQXY1QjY1MXRkRW1X?=
 =?utf-8?B?Z1pCcGdPZ2RxZTlrdXhtNDB3SjJQWUNmWUNkT2FlNmk0R09hSXJLT2s3OEhO?=
 =?utf-8?B?SzR5OUt1ejR1aFovK2ZNR1VyRk9qR2ZsU1NoVHFOa09hbFNnSW55VDFabTRz?=
 =?utf-8?B?QWRtaHAwOXRtUCtPaXMzNTlCK2VwVXMrQW1QZXdnaFFVQ1ZrOUttVGlWYVZM?=
 =?utf-8?B?LzdoRlc1UFJJRHFtNVZ1bENZYmF2QnFjMCs4WnBvTkdvdlpIYlFYUnBGcU9u?=
 =?utf-8?B?UWliM2U3eThYTEF6VFpRRWxNcVpiQ3Z3eDNqKys1NnVtMjdZRHNRWG1Ua01S?=
 =?utf-8?B?Z3QyMTNUUXo5OTVJTjEvRlNHMERzWENxM3Z2QVl0WjJxdzlVUkxUcHc3NW5D?=
 =?utf-8?B?UzhjYlNvY2lKditlRFZDbXJ5azZaZEZXeFBTb0wra1c5Mlg5V1Q0MmQwS0tF?=
 =?utf-8?B?NS9kUFp3a1VicnZFRGZpVXBpR004UUo1RDNPL1R3S3dTWkJENkVzVk1BOTE3?=
 =?utf-8?B?NldwazlyUG5SMVRmZS9iVHo0bWdMa1kyaEpONVlKSVkvc0k0WWE4U1VBNlBh?=
 =?utf-8?B?L3RBMFFIQlBMVmRrLzFrSjB2UTMrQS9KVUJicWlsZWcyWmtXNVZ1OVNsZWtX?=
 =?utf-8?B?ZGJKZjVCZ1BCTVVMUk9qekNDT2p4N05sc2pGcUx5ZFlVUGZaSHNiaG5XQ1RY?=
 =?utf-8?B?Ym85bnlCRHZrbmRoNkg4cWpZeVFJVm5GS1N0cmYxbWJveUlUazhva0RFdjlP?=
 =?utf-8?B?aC8rMzRJci9WeStVOVZZODNBdGQ0cUtFaEhqMlFUejNJaFRsd1l1VkpiRWcv?=
 =?utf-8?B?Q2tKY3h0L2tJQ3lYWVB4RG9INytPOGR4cHBvK1pqeDFQRHAwZHpSU3ZLYXRH?=
 =?utf-8?B?TWhmM1U5ajQ4ZXQyUE10K01LdmR4a3BERjBKRHNwL0pUZUh3c2ZZQy9Vamlh?=
 =?utf-8?B?QTRlVVZ2RFZhOVE0b0RwRTJubGN2cXJvOGVjOVZXb2hLQWVseDNvVnVhTDJ6?=
 =?utf-8?B?SG1Lc2RWdXpsMzVXVENRYWdjZUdvOEV1ZjBRUWNwWFhoSXRkaWlodHpzRU1Y?=
 =?utf-8?B?elNjZk1WVUN6TzVXQ0RqbWh1eHkxSHNVaXkwUGJGV1VUVTd6dUE1OVA4Z2Z1?=
 =?utf-8?B?VnFuVmVkcGtSa2JpczBQMGVaYUo5U0ZhNnFJOTlDQjBreUNTSzU1cERRdFZB?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3878744-c67c-4aab-59b0-08dafdc2355a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 04:19:39.1941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cwzkYuAPTOrVjVs3tA5iL+fJOl4HKTkvT31OwU6lkSeDQ6BDZX24RcEXWT8D0e4vnIyHBOdjtk08H4ylP/+UEqZyTtNMjiQkZI24L5FZBtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7986
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 3/6] i915/hdcp: HDCP2.x Refactoring to
 agnostic hdcp
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


On 1/10/2023 4:27 PM, Suraj Kandpal wrote:
> As now we have more then one type of content protection
> secrity firmware. Let change the i915_cp_fw_hdcp_interface.h
> header naming convention to suit generic f/w type.
> %s/MEI_/HDCP_
> %s/mei_dev/hdcp_dev
>
> As interface to CP FW can be either a non i915 component or
> i915 intergral component, change structure name Accordingly.
> %s/i915_hdcp_comp_master/i915_hdcp_master
> %s/i915_hdcp_component_ops/i915_hdcp_ops
>
> --v3
> -Changing names to drop cp_fw to make naming more agnostic[Jani]
>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_core.h | 1 +
>   drivers/gpu/drm/i915/display/intel_hdcp.c         | 4 ++--
>   2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index de71ff6ad80a..132e9134ba05 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -15,6 +15,7 @@
>   
>   #include <drm/drm_connector.h>
>   #include <drm/drm_modeset_lock.h>
> +#include <drm/i915_hdcp_interface.h>
>   
>   #include "intel_cdclk.h"
>   #include "intel_display.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 262c76f21801..0d6aed1eb171 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1409,7 +1409,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
>   	return ret;
>   }
>   
> -static int hdcp2_close_mei_session(struct intel_connector *connector)
> +static int hdcp2_close_session(struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> @@ -1433,7 +1433,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
>   
>   static int hdcp2_deauthenticate_port(struct intel_connector *connector)
>   {
> -	return hdcp2_close_mei_session(connector);
> +	return hdcp2_close_session(connector);
>   }
>   
>   /* Authentication flow starts from here */
