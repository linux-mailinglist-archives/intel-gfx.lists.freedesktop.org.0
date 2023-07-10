Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 712BA74CCA0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 08:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBED410E0EC;
	Mon, 10 Jul 2023 06:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8208310E0EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 06:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688969289; x=1720505289;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M+ZMXyZRr2BajmQv78nMsv8Fe8OcMJ0oOsMMP2gZqhE=;
 b=g+JICD6fIYUwxauX8sSC4M4hCBJMkCtQ64wSn0XqeLCYEs8iu7imXnly
 xLOeUU++uEN27Y35pO1Anx351aFvXHD2bRSHDGkGLLO4qH8L3p0lYSkPT
 3yK7JlBnT+0tQ4H+Ey6+cySIagYewmAXZwh2jRR51Gb4k96WiVROclqh7
 q0rrOtRXum4TwIeQI5Ouragl/6+S2jthouWIja5mgR/pdtfY4nWn+M7aw
 TVoYv/75rsfQXZP33hR5Nx4/SY8uZA9IBu29958GIBpx9kVtx1D0SIWnl
 lYIuuygymtCZBtdNlDtRfHHunqvnG2k0YRNA3Q4FvRr3iOHdykAI4uoWx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="344594204"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="344594204"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2023 23:08:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="834147726"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="834147726"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jul 2023 23:08:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 9 Jul 2023 23:08:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 9 Jul 2023 23:08:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 9 Jul 2023 23:08:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXspbwYZPYNPApG6PwIFXLZJgBcDQcW7im/uZpj62/8au34yuCXIhlEIiSQOXaxTrFfLiGxQWZkGIXQ9lIkjZ0xWDl3v3t/DIKoGJ7g5dJZ/OrO1TA15Z3jqBwmsXeqN1JyX8QOb1niMqt+4LMBkmv+y9RcT+rT7q2C+KnAlZ+rnFSTCAjmfrWm5bJUw+T922oqY+kYixq7aVEbsk7xm5YDjqjSygB33vH7g8PZtFdEz7SjNpnAdg+aq+LBxi24RWyuvkDnMDx/UTmripID/12l2cKDac2xTyS+ifUNK5vmZF0NqAi01vB/em1IAJiJ8hwVM1pDbgPIYkOgY6DpRNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QjPk8xj7O+V8u3N3myEcboVzdLJ1z/XblG6DdrVA+yc=;
 b=RCKq5k97E+KlhOPXtFFlmjnmDnli4ysWo4gqERkCEjuHpfKoKL5zqddiNNklw7C46XtykvaeyqYM7E9nD6MWIBHGIjcFbAJu00OpLpYA9BYmA9c81Hz29SShxO661AQ7gd26wmyhxLQQcdwqdSQ+OFypF/drsO0GcQYNT8KHLWuZS74yLkXS3xd32vUeGcbDfNL+SzpizE1HQIzSnvnQGMzaGwBPVmzyZripwkct9BscId0RYOGLb09IKnKsVItXpx+SCQ208wmnHvjg3Xm2kziBPS13zG0ie7I4sxzRpMaqybKJdEG29qNg+xQtG4hA8V5BhkrGijYdVUPYLhzVxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6480.namprd11.prod.outlook.com (2603:10b6:8:8d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 06:08:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::60a7:9e5c:928:90c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::60a7:9e5c:928:90c%3]) with mapi id 15.20.6565.026; Mon, 10 Jul 2023
 06:08:05 +0000
Message-ID: <4b91b2d0-22b4-9437-3b28-a778b34500bd@intel.com>
Date: Mon, 10 Jul 2023 11:37:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
 <20230704131758.14024-3-stanislav.lisovskiy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230704131758.14024-3-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0182.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6480:EE_
X-MS-Office365-Filtering-Correlation-Id: 5859ccd6-f933-48a4-e8e1-08db810c0691
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MLBxfHGfHEpDuG981V/z0RzWHwpV3mJa7xM9w4vFcGrnqeEO9xHhOuODe9xbyjt5LJEf3u5rRPA/rV98jBxnj8DvAAgDeQG4pgZj2q4xcA334Fz8TQHqoqwsPcvdYDxsSnEYLZQ9dq1lRTlCsXtb4MspGf5jP2L3+ioSJwyFiv+bpD9NwLTJb6AjhcJUimh/Pd31txya9ZMSD5I8W3FR5eCdDwSjAdhz+Dm/qBW+zNb9lvNzVO8+sH8d7pg1GF9kVCU1mZQeemjYiSWn2n9vd2D55HEjkm4qSK0CeIMa+4P+uULvurCaWeLXajl/xBJk4KHhw9tZw3U/NzJnA7z2oL5XauMGGKVWFyMW4mnMfTB+EGZAFwqr1Z9SEr/9q/KidmuxsI/kUrztg8odC5osH9Cy9Am2EyLnrMPrnku6+iXoKZAwRnhpjjWE0LISiSQ3a/J7ZeK49ipv8yZznAmbZKJUZflHor9ROsbLhsSLwLjpkKXIu4G/UbAI2hyqi+TmoC97+zxsegPQyqxhlX6V06rocv4zFZUGPo1NOg7i3oqYHnwYWZT1Ifso1l98Y2ZlAPM2vc+s0jZrHyK8hs00ZnJDszBkrg0C8yqt1my3B2tZFwRMQ1d9SDuEFUaGYyTm+d/v+l6Ug+R/vQZ9gRwZKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(376002)(346002)(396003)(451199021)(31686004)(6486002)(478600001)(6666004)(83380400001)(36756003)(31696002)(86362001)(2616005)(2906002)(66946007)(186003)(55236004)(6506007)(26005)(53546011)(107886003)(6512007)(38100700002)(82960400001)(8676002)(4326008)(316002)(66556008)(66476007)(41300700001)(5660300002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TG1DZFA0bUVQUkJ4T01tcXI1ei8rM3lub0N5V2x2cnFvNVpnMkhvQVczYWRu?=
 =?utf-8?B?Wkg5aUgvQUNGTnBoMjhIZUlhL3ZlMFZMWm1vTkhaZ3hCU2V2Mm53WXFWbkJZ?=
 =?utf-8?B?amVxYTdMdVdUdHFkWFhRRXJrQm5Wdy9uVmMxeHZSQ05ta3hFMFczOUNoOTQv?=
 =?utf-8?B?NlozKzIxZDh4VW9URXkxTXREcjhhTkJ0TWFXcHVhZnlVdklDa1NuNytUTjJT?=
 =?utf-8?B?WmN3Z09ScjhGbjhVT3ZhcTcxc04zeWRST2NNNmRRVVdzZFBzVVdqWGloSDNv?=
 =?utf-8?B?aHBjTWxVcmNMeTJ5OHI2MXZCd0k3NEZQRmFKMTBMZ0hOcVIvRUZpTHE0YnJj?=
 =?utf-8?B?QmdyVHFQcWJFb09PNk4rM08rNU9QSytXVG42K1VvTDR5UDBMdmdIeEVNVElo?=
 =?utf-8?B?dXJxNnVpcjkybGRRc1BvdHVvSExEUVZFVTRETXdkNWYraERvNkl4S1Z1aGF6?=
 =?utf-8?B?bnkrSXpmWFc2RVZBMEVwa29PdHFKTGRLRUZ0UVdTTGdRVThvY1cyUXA3US9D?=
 =?utf-8?B?L1NYelBXanM4QXhONWRWZEpkTk1rTDM2Z2ZFeDBjUy9nUVBwd1o2aXhiMHcx?=
 =?utf-8?B?V2pINjNjb2xvSzV3bHR5MFMxaUl1Z0JqUkJMMHErd25ZckNvSzhEWkpGV0hw?=
 =?utf-8?B?RXdGelBSd1VzcnVCcjc0Q3YwemVXUmVPdmlMdFpqYVROOEo0MDk5SU1VNlRL?=
 =?utf-8?B?dWh6RVUyUjh3U1kwUTRkTFNoR3YzRU91cGNUVlVkR29iVTRzMVozNzhkRmtZ?=
 =?utf-8?B?djlzL29SSEJWYnNzSUpQL1Z5VW1HUERBbG9BTXVKSUJzSzdrQ2hHdFFCSnhu?=
 =?utf-8?B?UDhpUzhyWU41cEkvcHJUL2NFb3RpNTIrZTBUZ2gxY2g4U2I4eUhVaXZBY0Qw?=
 =?utf-8?B?cDRqUTlVZFFBQzY5STE2aXNTTDhNeU9yNmVGaEpkeWx0WWhvQWV0ZnBGRlk1?=
 =?utf-8?B?Z084QnltTmtPV3N6NWY0blVwSFo1Q3JmNkp1S2M0TE5QS0tGekhvZDNveDhM?=
 =?utf-8?B?UW85b2hTTFpnNXFVbDdQbk1LSkMwRnc0cnhSWnUrS1daOHgyQlhmR0MxaUVv?=
 =?utf-8?B?eHUzL3dLV0RrT1VkNHlGK2M5c3R4MFFteS9VblgwQ0pNc2pkKys4Yk1WTDVs?=
 =?utf-8?B?TG95OG5SNUR4ZVdhVzNxTlg0bHRoNGI1MDl0bng2UUtIV3laUXB5WTF0cXRx?=
 =?utf-8?B?Q0JwZFVhMVdIc1d6NmFGVTBHNmI5NU5WVFFuT09DQ3krZ2FaeERUV1pTL2o5?=
 =?utf-8?B?dGVaUEU0Y3BsY1FmUWR3Y0VZTTdyMDc4NnNFdy9OVmV0cnREQzB5KytCdEpF?=
 =?utf-8?B?SjJGb2lVZDVNOFNOdDd1WXQyUVRFTTRsUjBHTis1MVB3ampOaExKQkV2OGdI?=
 =?utf-8?B?citReHY5WTUzVEtNQWtjUFhhZzNUMWd3bDN3YnNWVnQzVFE5MGpibWs3dUls?=
 =?utf-8?B?b0YzVC9ZcmR6aHRMSDdKQWFieXF6RWNzR3pkZFQ0U01PTzRvS1pSWlZVK1hy?=
 =?utf-8?B?RmRjSDB0MHVaRmNrUVRVOFVhMnR6czlESzRxRi9QMk5hTFdFV242TkVSWXFW?=
 =?utf-8?B?QXBWZ08rS2xKUU5UdGtadGd1MkVBL0FCdFdZcDZpVEJNMEdmUlZzR012RE95?=
 =?utf-8?B?U2FuSGxsQ3ZXZUMzcmlwalFMdXFkT3kzTmRidjdQQ2w5a0NMTWZIV2NXaEVU?=
 =?utf-8?B?ZGhsV1B3a3dsZHptQjBsREpNOEtkQk5JODFwcEZ0Vjl1a3A0T2hFY0dxMnVE?=
 =?utf-8?B?STdHK0xqdGsrd1FQbzVPemVvN3BUOG1VcVlHNlZ1TmUraERsb2hjMFFBellh?=
 =?utf-8?B?RHpINFBFU0I5YWszVHdFOTZCV3JUcTVSY1NxVURiS0dOeTlZaC8yM05HcTJx?=
 =?utf-8?B?ZnQ5Wjh6NGZneVBCNGsveE5SVlY0d1FHVldteGErWFlqSGN5Z1VDQWNrUTlo?=
 =?utf-8?B?T2pkZWNJNkdaclF4TkE5QUNHYTd1NlJJcGtGRFZEd3l1L1JMUmIya0FmN1Js?=
 =?utf-8?B?RlhWdkNFdUZTU01kWlgxbUEvMHpGSmRZamI0ZWVNeGJJU3AvbnEwY2ZOSENh?=
 =?utf-8?B?Y1FZVEpIdjNvaDc1MzhTSGFuWWpGMzh4TjJqK21xV2hldWN2VXBmSzFXN04r?=
 =?utf-8?B?SXN6SVlVMWxhUnNVbmcvcVBEVXF6MjR1ZUdDL01uOU1oSGwzcU1Nd2JHUkxy?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5859ccd6-f933-48a4-e8e1-08db810c0691
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 06:08:05.7238 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PIi9NSrkUA2pKlIsIvPV5qO/8XUczXpYzn3NzPfR6vtgkjXGKCfNSJ9UywjYA19VHUX9Dt7yiaT394RyNC1xJv9A5IMHVdei7D7OkHRXmKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6480
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Don't rely that 2 VDSC
 engines are always enough for pixel rate
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


On 7/4/2023 6:47 PM, Stanislav Lisovskiy wrote:
> We are currently having FIFO underruns happening for kms_dsc test case,
> problem is that, we check if curreny cdclk is >= pixel rate only if
> there is a single VDSC engine enabled(i.e dsc_split=false) however if
> we happen to have 2 VDSC engines enabled, we just kinda rely that this
> would be automatically enough.
> However pixel rate can be even >= than VDSC clock(cdclk) * 2, so in that
> case even with 2 VDSC engines enabled, we still need to tweak it up.
> So lets compare pixel rate with cdclk * slice count(VDSC engine count) and

Since we are not using slice count, we can just mention VDSC engine count.


> check if it still requires bumping up.
> Previously we had to bump up CDCLK many times for similar reasons.
>
> v2: - Use new intel_dsc_get_num_vdsc_instances to determine number of VDSC
>        engines, instead of slice count(Ankit Nautiyal)
> v3: - s/u8/int/ (Jani Nikula)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++--
>   1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 4207863b7b2a..bfa1c5d589ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -37,6 +37,7 @@
>   #include "intel_pci_config.h"
>   #include "intel_pcode.h"
>   #include "intel_psr.h"
> +#include "intel_vdsc.h"
>   #include "vlv_sideband.h"
>   
>   /**
> @@ -2607,9 +2608,17 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>   	 * When we decide to use only one VDSC engine, since
>   	 * each VDSC operates with 1 ppc throughput, pixel clock
>   	 * cannot be higher than the VDSC clock (cdclk)
> +	 * If there 2 VDSC engines, then pixel clock can't be higher than
> +	 * VDSC clock(cdclk) * 2. However even that can still be not enough.
> +	 * Slice count reflects amount of VDSC engines,
As mentioned above, we can remove slice_count, as we are using VDSC 
engine count.
> +	 * so lets use that to determine, if need still need to tweak CDCLK higher.


>   	 */
> -	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
> -		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> +	if (crtc_state->dsc.compression_enable) {
> +		int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> +
> +		min_cdclk = max_t(int, min_cdclk,
> +			          crtc_state->pixel_rate / num_vdsc_instances);

I was wondering if we should use DIV_ROUND_UP(crtc_state->pixel_rate / 
num_vdsc_instances), since min_cdclk should be more than this value.

Though practically Pixel rate in Khz / num of vdsc instances, wont need 
to roundup, so perhaps we might not require this. I leave it up to you.


With the above changes in documentation, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +	}
>   
>   	/*
>   	 * HACK. Currently for TGL/DG2 platforms we calculate
