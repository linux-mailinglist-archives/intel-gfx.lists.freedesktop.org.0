Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 315BF3FFC38
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 10:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677C76E855;
	Fri,  3 Sep 2021 08:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B056E855
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 08:42:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="198912815"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="198912815"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 01:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="602989482"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 03 Sep 2021 01:42:47 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 01:42:46 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 01:42:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 01:42:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 01:42:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=coSRbqsGzggqk6W5mhHTWf1TEXWqnaBYh4OtbH/E3sEOACTmsSS1oFtzgKAikKJQbShwAqj5FnZKG9zWnP8jmNgKzS3daFunJawbJlkHJ82wrnADvdNPpS8U0euqRSZVC3V3fZ4dukYqZk/WJRRf6SCob/T7mtl/esAe6r6Pk2gHJydp7GVOHXhVdrAqdapmcUjbI8w/HlXCXQA+6maPm+IM28uD3mnPinbFJr18y7dohhgrw8p3G3ymw1zD4fUdCgmHa9LHh62LvmrHY3r0O09DhPaZU1yTy7v+b+qKaJ+JY5NGqq448XCjrldhMYZcuDw72NoaG0W+gj3WeCVZow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=NM5rmZHyWD3u1cRMBTkUweKVUyVztvFqwaKqRvQz2RU=;
 b=fUIgRfqNuuaHLMSfiJEYOHVx4t8rCiXSyi1Fj+5kPPY/Trv8VLm37VG4eGPzuhMlrsMAHrIwQt9wEVueB2K04MM/QLEzJPgdKX5iXNznT2o6g1dgtJQJtCXcJmGBzRPaDV3GyySHGeaZup34Qw4eULqcwiKSbHMh6zhP+uOWDiFqje/Q38uwSMJ2p4Ibo79BrhK1X3i/a0C7NNzmgJgRwxW523aj9ST8VciIrX0fSQNtFjpXv23ZL4wsZNyTWf0m0VKwMrNcxTJojIE2HwoHeYx6Y5+Ex3QjKzpd9dH37Ck6RBQsB/GOcfhdiEh1KWs41j7PeoScsCGAvVjex5pY8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NM5rmZHyWD3u1cRMBTkUweKVUyVztvFqwaKqRvQz2RU=;
 b=Yf1om1ZhH/taFj7UCJ1ArzV3XgIxHhME6AqVZyn9wh+j/yIw6sActve/A1W9octEQ3iZpkvSQm0V+0qUH91VZqR3jf2r2dAnBB6ZAFzWGr4tntuKmvO3hUtHeVDGlrguDe8gs3u/0na1+//B/Poyx0r1goFB63u5GkHh38bdZwk=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB0043.namprd11.prod.outlook.com (2603:10b6:4:69::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Fri, 3 Sep
 2021 08:42:45 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.024; Fri, 3 Sep 2021
 08:42:44 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jose.souza@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <b1b9f0032b353c3279b4546d6acdb696fe0b6136.1630512523.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <dc6d10e6-0795-1001-50cd-81074f32af1c@intel.com>
Date: Fri, 3 Sep 2021 14:12:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <b1b9f0032b353c3279b4546d6acdb696fe0b6136.1630512523.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR0101CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::12) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BM1PR0101CA0026.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:1a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend
 Transport; Fri, 3 Sep 2021 08:42:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1dcf22ae-edee-4edf-c189-08d96eb6cc3d
X-MS-TrafficTypeDiagnostic: DM5PR11MB0043:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB00430C7BD85C3B457D38B25ECECF9@DM5PR11MB0043.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eoGuBxP5BgTZ2LzjboLsqWGStX76q/4p5y07ZZzW4ERoyD1U+7n9N4JXwErHq7xOHcg7ioHGOEDZepymE0pNgYY0OZgpJI1pmHN2zp9rjdmrKHHzKR8vqPR7LXygKrdSXibyJGU47V21rnEAl4r3Ekxdye2ix4S68v2jhQk2DHYzSvOdscj3OHeI0wxZ7NS0lX0eWLASY5EecIOPIe+m++mAW2f4C1prN/u29skXf6aDkMn01rM3+auvsTtgpkh7ITHJ5eGT8iX9orLTS8dGXEmw0W95l44m45jmr9P9kGwON/FZ/u4/pTXbUvHt8zC5MAuY+2FNPTgripSWaO+ZOB42QqDJSa31bJ81MYwoWLh/sMKWPPrFnuXqbl+oIeb5MqKvMrgAfE9a8NdJtunWtyxFdvrCNKhaX1OmVoRj5vYL8UGGC2+3wSouz6wnbmtdkWsb186LDDW+NKrsYlwP8g7InnfZ4Er7L7+G8sDb98Sfp7sSOnnMNJqSIIpqogxsTUynUNKrJTojHKGdv+Fwd6rCFGg2hx30hZUZfX5uAkWwZMJ+xRv2DL11mQC6CYIqjjeCG4eRmp4CjmJzfwi5ATtg1ceIrNJJqDW5cmQmplpzMLVfORcWqHQvZelQxMAmfz0Xm1XUlkaW6ztO8An8aJcRnlWBSG5Yy+cdxUBBlij3qL+P9Y3gSHBIm5kSwQVP3YE4lAvcz4A9QNy1U3GVcC4YZGJTPqODhTCo7IW7oeM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(5660300002)(478600001)(55236004)(66946007)(31686004)(86362001)(53546011)(8936002)(38100700002)(83380400001)(66476007)(66556008)(956004)(186003)(8676002)(316002)(2616005)(1006002)(31696002)(6666004)(36756003)(4326008)(6486002)(2906002)(107886003)(16576012)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zis0VnRCTkJFNVhtdFBZUExndjlkenIyRGpicVpqb0t2aTVxeVZGRFpkNEd6?=
 =?utf-8?B?dGNjaVBzTWJ1NVBoY01sYWdVU043ak1Ub1JxYUJ4NHdiN3pkTW5JdWpCSlF6?=
 =?utf-8?B?YVA1RTlpNnNnNkJkd3JDSm1CRjZzL0RmUkhPMGw1K3RsL1pONXQyZ1BaR1A4?=
 =?utf-8?B?YWhCUzFlV0M5d1RoamNLQ0FmVytnY1laNHk1UzJ3VjJJRytPUDNFa0R4L1F0?=
 =?utf-8?B?VG5qM2VCQWw0Q2VqTkQwcmh0M0xJRXRtYW5iSXNKb1pKeUkyVlQxOWU2KzJG?=
 =?utf-8?B?azAvQ1R6TVNTZkdFSUt5ZGMwN0hSWkxRYVNBaFFQWUEwNkU4a2Q1NUFoM2JR?=
 =?utf-8?B?bElWU01aSTRMWE5OUXlDbGJ5SjNqNVQzS0x3VllZNlVPZ1lCR2pkRmVibHhB?=
 =?utf-8?B?QTg5N0NqZS9aYzZaWmdETkJZOVh5SUtPTFE0ZGFMQ3Zkbk90eFIxOW0yTkND?=
 =?utf-8?B?Q3hNSmhpbURTNFcxWHJCSjVoZmtHL0JXRXhGVklhSmxjMUU3UlBhM01nT1Ir?=
 =?utf-8?B?QmwyWG50L3FSMjZlNkZVUUFqKzVLZXlRUTVBcU5qOGRVRUVXWHNqa2dPNjV3?=
 =?utf-8?B?N0dVWkZ0d0JFbFBCNnVRYjdVNWtSS0lTU2RKZlZMcVJTQzZwZUdlZEExQzV4?=
 =?utf-8?B?Y201SkJlVjlMSm1VOVFPNjZIVWdrTHVQZ1pPSm5SaXhYOUpaT1FmWDFPdjlX?=
 =?utf-8?B?ZVVCQ3lqZjhNbkRYaEI1TGw1d2lPb0NSbDBlQlB1aWpDSllKTzVJaVBXZnFt?=
 =?utf-8?B?WnRxbks0ckxIcTdSbm40ZUZqNklIR2dhbkUza1Z0bXl5NTUzVHhnSGN1aG1J?=
 =?utf-8?B?dm1iTXVzUHhSMGlvWEhRaHlJL01wL2NCKzJPVUNqN3R1UzFOSldQdHJFSEc3?=
 =?utf-8?B?ODJnd2JJNjFsOW9LQ2JaNC93TW5EYWk1NldNQ3VXN1JFMWdDVHdaVDVYQzFO?=
 =?utf-8?B?YTg1c0VDMlN3bEgzRG0yYlhsSmI4SGpzWnJDNkVjV1Q1ZTYxdUtUUzV4ckN2?=
 =?utf-8?B?MnhrS2RUb3dWUFVaVzUxOHN1am9MdVowN1FUYkZDMFRVTDM0NmE5Nk5ZOTFQ?=
 =?utf-8?B?Z0xaWEdOcnB1VXlYbFU5TWdKL2hUN0lxM3VWV3lndFd2NXlYazFJMm9uSGFN?=
 =?utf-8?B?V1RvOUV1SXFRb3ZwWW9rNkMxNm9wVjRsZXFKWWY1QkJIejlURFhGOExob0Nr?=
 =?utf-8?B?L2NZSGl0elgzTmxoMlRRdVlXeUQ4MmlhVHZiTG5WUnJDMTJkZ2F5UHVhNGVW?=
 =?utf-8?B?ZXpBOW5nbVdXMStUL0FDeE5xUktaSVRqZHdqbGtaQ0tIZUtrLzllRVhIMUN4?=
 =?utf-8?B?NDE1ZkROZUJRTDJxY0Vnc0tTWkhYMVA0cjVSZ0Rxb0grNjd3K1hxRlQ3V0F5?=
 =?utf-8?B?cTBrMTlsY3FHb3RnK0d5MjNvVVdDM0k4Rkh3UGRKSzBBTnpzUmJrRTFxaHUr?=
 =?utf-8?B?Nm16aTZneVlHNmsxVURFTVU2cUFxYzlWM0FsWGQvRVBPTyt3TWlUc2JyNVcr?=
 =?utf-8?B?WnM3L25XOHBaOTVWWk5JWlFjYkFDdnoyMTRLRkhVWDJDcGdhNXNxayt5aGpM?=
 =?utf-8?B?QnBJSExhSzQzT0FvaDV0OGk2MUt4TG44cGxMQndHeFZwNkVmc3llRjRIZWNJ?=
 =?utf-8?B?KzhYdmZBbXQzbVJNU01UblhqWjNEc250Tk9pWE93Ti9rTEJVRGUxU3ozSUlP?=
 =?utf-8?B?YTdhTEtidGsxZFhPSE5weGl3OVZndWxILzZxWWZLNFM4c2FpbnJhWWU1YnZV?=
 =?utf-8?Q?cmiIn0qah4cHuHylgM8dxrvhZmSgS+/NHrbANth?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dcf22ae-edee-4edf-c189-08d96eb6cc3d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 08:42:44.0184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PT3STeZXPa39ea1pItsY7T95yijVl7aXvejjQPJyvYjNziI5TOKw5+SfhLYwY3yuB3pnQnw26N5i+zU3qGZKVL4WWklYyoBRc+7Vp8tpt+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/7] drm/i915/bios: use alternate aux
 channel directly from child data
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

On 9/1/2021 9:40 PM, Jani Nikula wrote:
> Avoid extra caching of the data.
>
> v2: Check for !info->devdata in intel_bios_port_aux_ch() (Ankit)
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++------------
>   drivers/gpu/drm/i915/i915_drv.h           |  1 -
>   2 files changed, 12 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 10b2beddc121..69d7da66f168 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1565,28 +1565,29 @@ static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
>   	for_each_port(port) {
>   		info = &i915->vbt.ddi_port_info[port];
>   
> -		if (info->devdata && aux_ch == info->alternate_aux_channel)
> +		if (info->devdata && aux_ch == info->devdata->child.aux_channel)
>   			return port;
>   	}
>   
>   	return PORT_NONE;
>   }
>   
> -static void sanitize_aux_ch(struct drm_i915_private *i915,
> +static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
>   			    enum port port)
>   {
> -	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
> +	struct drm_i915_private *i915 = devdata->i915;
> +	struct ddi_vbt_port_info *info;
>   	struct child_device_config *child;
>   	enum port p;
>   
> -	p = get_port_by_aux_ch(i915, info->alternate_aux_channel);
> +	p = get_port_by_aux_ch(i915, devdata->child.aux_channel);
>   	if (p == PORT_NONE)
>   		return;
>   
>   	drm_dbg_kms(&i915->drm,
>   		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
>   		    "disabling port %c DP support\n",
> -		    port_name(port), info->alternate_aux_channel,
> +		    port_name(port), devdata->child.aux_channel,
>   		    port_name(p), port_name(p));
>   
>   	/*
> @@ -1602,7 +1603,7 @@ static void sanitize_aux_ch(struct drm_i915_private *i915,
>   	child = &info->devdata->child;
>   
>   	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
> -	info->alternate_aux_channel = 0;
> +	child->aux_channel = 0;
>   }
>   
>   static const u8 cnp_ddc_pin_map[] = {
> @@ -1980,11 +1981,8 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   		}
>   	}
>   
> -	if (is_dp) {
> -		info->alternate_aux_channel = child->aux_channel;
> -
> -		sanitize_aux_ch(i915, port);
> -	}
> +	if (is_dp)
> +		sanitize_aux_ch(devdata, port);
>   
>   	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
>   	if (hdmi_level_shift >= 0) {
> @@ -2863,7 +2861,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   		&i915->vbt.ddi_port_info[port];
>   	enum aux_ch aux_ch;
>   
> -	if (!info->alternate_aux_channel) {
> +	if (!info->devdata || !info->devdata->child.aux_channel) {
>   		aux_ch = (enum aux_ch)port;
>   
>   		drm_dbg_kms(&i915->drm,
> @@ -2879,7 +2877,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>   	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>   	 */
> -	switch (info->alternate_aux_channel) {
> +	switch (info->devdata->child.aux_channel) {
>   	case DP_AUX_A:
>   		aux_ch = AUX_CH_A;
>   		break;
> @@ -2940,7 +2938,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   			aux_ch = AUX_CH_I;
>   		break;
>   	default:
> -		MISSING_CASE(info->alternate_aux_channel);
> +		MISSING_CASE(info->devdata->child.aux_channel);
>   		aux_ch = AUX_CH_A;
>   		break;
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 586b5368d4fc..032d59119407 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -639,7 +639,6 @@ struct ddi_vbt_port_info {
>   	/* Non-NULL if port present. */
>   	struct intel_bios_encoder_data *devdata;
>   
> -	u8 alternate_aux_channel;
>   	u8 alternate_ddc_pin;
>   };
>   
