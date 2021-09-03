Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0633FFDD3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 12:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5D16E869;
	Fri,  3 Sep 2021 10:05:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19BC6E869
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 10:05:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="280397656"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="280397656"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 03:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="533954616"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Sep 2021 03:05:17 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 03:05:17 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 03:05:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 03:05:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 03:05:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IFWWpMg53LAfy8VLe+5bPVdvwPDqZIS4GglJyl+tgtrFr2jSCNbygJyx5gzlMGI2UUpwOQbKubClACKsoTKjBK6WS8N4596DhlJl+gOlWmNe/Gdh92gEkc/72wKjxXiYHjORolzlt6TdgyEjsTFuvqxTAMjwWdpk+XwqA+JxDEIphKdVt+Lb58duRskCRmB6uzrSAb2iHLA+uERYv/iWIRKOhWVHalyvvXoflqXpkJSa9a4iy5dLzi0auGBRILySSTIGBvqJbC08c6z7cvd/DEo6VCJgCSQUwjvatviXTfH0MWreDpUD+60RwzTe3T0XT/bvgcm7M1kc8gJZrEM7WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=jMRl6SAk/EGRUIXrpbs2kTR3I+rnEWIRAoKnN5JWNTg=;
 b=UPu/NnUbdFKOZOwJEVTmegCdLKW5RAv3KCmLGhC/D55+VjqbkWBcb8vUdI4CxCzqvD32hTPKryaQSFIz1CzQFZ1Zy3Y/owfH5rUT7yLBrbQyRqBlnDz01s/sU06tozZOYciMSYTOxWhBr3tH2DsUV0XT1GMVr2RT5o6MX/mQM7uJ8Jb/H6PJIHsTl/34PNLZnifX8Iv0p047nm7jaIOgJttnl+hpj+wj2cOZGwH1J+9MizPCn+zwWmzHU+pQhhodGzxeSE7icgzzU+Bi6uFLC/GcHdViOLVI3gDCbmJ1okeLDtm6gealnk9vMPmnixd3mL46trfiP+bxayZ7Kl3LPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jMRl6SAk/EGRUIXrpbs2kTR3I+rnEWIRAoKnN5JWNTg=;
 b=M41IOYhH/u8VmLhPgI1zUYYv7jHeHbEw3O1zgy4SbJCd1O3dTw8Rwmd3OXdrB0Im4/QmImLXB/4H/wEGBvVzClqU8Tfvz79pc+jreKFQp0gHiMTsc1z9CIZPPH6VvHX7qyCt2+BPaApe5i+2InQ/IQAIS2tAbyPwZo6h48pCAm4=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB1884.namprd11.prod.outlook.com (2603:10b6:3:112::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Fri, 3 Sep
 2021 10:05:15 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.024; Fri, 3 Sep 2021
 10:05:15 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jose.souza@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <e1dbf7cbdd2191439e760ab9098242dcec5fbb2e.1630512523.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <5966b5be-dfd6-64d9-7f42-c4c437cd9e6c@intel.com>
Date: Fri, 3 Sep 2021 15:35:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <e1dbf7cbdd2191439e760ab9098242dcec5fbb2e.1630512523.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR01CA0134.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:40::28) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BM1PR01CA0134.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:40::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.19 via Frontend Transport; Fri, 3 Sep 2021 10:05:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 240970f2-d6d7-4c32-aee9-08d96ec25345
X-MS-TrafficTypeDiagnostic: DM5PR11MB1884:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB1884DE4BB08BB8CD1CEC3FAACECF9@DM5PR11MB1884.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cCuTQGqOXvV0+tfXZpDO/Pd4zmk719wDj6Q1Nj/NctrPl5R04JJhG+fvEmoNcyH9PqGvtGZBTx0kKLL5WjbNchnhZdiWD9XNPAWa633YIAW8DVutAM6yFpWhnVnYjuSU3v4zyKkUSAsxQ6VK5YWixmuEyqH7vZ/IjGq9pq39XIhkkAzjmz0RYaEbfGtCLO0A4WZV9iVZzKIzhi/i9ILo1L1t2NDQPeXLTCTEEkDCmgzbvesOfyKK9tBWrpWI4d0+vm9K9s+POYseAe/EZPE85iIBxQ4UEAQmVYAVyiqdE62ZYgHe38wQE5z4bEl2aQkMTRKlMm5120VYH3uhp6+iSGI4blqV8IxiEhOnTKLBueMUBFJqlPLAD93Cwx6y3EB5BwSOLG0nA5/iSVTGhcWzt01huYndGfgWA00DPcVtDBXLhB5JNSgvDFG85+zqPzuwg5JCZ7aVvN1tB/NnDsc9v8Z1Q/etJ/kgkaN0/pxCRBxEHGE9ac4t5GxfyQX+fb82/GweGQiYajD7R/hzQaj8AExOGYKVxQi5Awdxnx4gijBsx0YUujbpY7VoyRWM1pc8YqoPL9Ii9r6RHpqdYG8rDByecvpEdBaj8SQSNvplESlk+DziNH6xeC76HAz6QEPYUbZbbEZMV/Em32Rv0amhfmsUgAC0QPQ46ZlTFVNPc9yMyQgXwfWnD574Y2KvQkAoFjQYeebXqC1/0f3osmW5uE9Fu16QZvxtEmp8ysqFiKo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(31696002)(55236004)(186003)(53546011)(6666004)(66556008)(26005)(31686004)(66476007)(36756003)(16576012)(8676002)(107886003)(66946007)(38100700002)(8936002)(83380400001)(4326008)(2906002)(6486002)(2616005)(86362001)(956004)(5660300002)(1006002)(316002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUJGWGxHckxmQ094WWdZWkJUaGRuTDNsc1JkTVJXei94SDdjYXh1T2dtK2Za?=
 =?utf-8?B?SlZjNGlhMmpSRVFURTY2Qk9Vc3FHQTYweDdNMDhDL3ZaaTFaS2d0L3hUc08x?=
 =?utf-8?B?TkJGaGRVZFdFL1RWTGIwN1Awb2dKd0FnV3VjMXRhNjBHaXU4ZXpHaDVQQ2kr?=
 =?utf-8?B?UUg5VzNWdzRjUmdGWFB4SWJPOWtoYndMZzJvMkhRaklySUZVTTc3V1NpbXh4?=
 =?utf-8?B?Z2NvcnFySFlMeWRDcTlObnRRNkpBbDEzeWNsdEttVFBNb0MyZncxdzZMSGRW?=
 =?utf-8?B?ejNQcE1PM1N3aWFkUG96YmRBa0RQeWdic0w5Z0xteXlNb3RvMXgwdW1EcS95?=
 =?utf-8?B?NHBYQk9JSFJmSm5NdzhKazl2cTBaYVYrL2JYdlh0R3BWZlk3SFRpdHVWQWc3?=
 =?utf-8?B?UU9hVktEUHU3NGNQVmQyOGNmdXViK3gxZGN0cWt5VGJiaitKMjBWdCtJczUy?=
 =?utf-8?B?aW1QQnpJa0VlUC95S3BpUS9yZ3lEYmIyQitMbHpWZDk2ZmhNSEpicXluQmF2?=
 =?utf-8?B?TUpnNHd1WlJMZ2ZOTUpmaEdPNFZON2U4Y3plMURORkVza3pnci9QcFdTUXRE?=
 =?utf-8?B?ZDBjTnp2dmxGcVYxenBnejcwREpJVHo3YU00SHNwcGkwUmZRSkdJY2RrT2dh?=
 =?utf-8?B?NjY5MENHTisrUk5TVm5QYWQ1cWdLMVhReVFQT2JqN0Z2d1hUbmdtakxnZ0cy?=
 =?utf-8?B?cG1VZFZ1VlA4OXJ0ck1SeFhZUDlhNWdXRHBhWEhWb2hOZklIU1lMN2FUSWl4?=
 =?utf-8?B?L1RBVGFYcFArUW4xajdpbW1qaldzdU9FeThZaVo3bEZaTUYrZGJkbnVCSWJV?=
 =?utf-8?B?NnFjUnhsclVOZzZWYjZKcEMvbU1kYVNWbE5Xa2pBa01td0hpWFJrMkoxQmUv?=
 =?utf-8?B?YUdSUmgvdzh2YjNHUDliYVRjZW1Ec3JjbVB6MGVENUVNaG11YnkxUHVGTlF6?=
 =?utf-8?B?UmdNRnIxUFByQnBlRGtNeE9lQ2pJei9XM2VUSUxuN2h6SEhLQVkza3lRTHQ0?=
 =?utf-8?B?bG5uck8wK1NBQWVsdElON3hZZUNUd2piT09mRUhIVlgyWE8wNnZpczViaDRV?=
 =?utf-8?B?RStVb2cxbmlnYVFEQThPR0dVUzlPaWdsR2FYR2pja1d5VjBOV2xyNW5jcjFr?=
 =?utf-8?B?Skw2N0JQODVsc0JOUVZVaVpUWnAzcDFoWWlwYU92L09xQmxqSmh5eHpKelJ3?=
 =?utf-8?B?a1lVZUowRElOUXFJL0RnOWxEaGRrN0EyZzFSNTBnbkpqKzRYcDYwTUFVS2t1?=
 =?utf-8?B?QmVlQUQ4U05FUzRsSUFZREFCNVNZd1p6Y0RkeFpYay9scS81WUszTlpRaitO?=
 =?utf-8?B?QnYxY2VNVmdOVkZ4YWNOSzRPMHVMS3N3TVpwaktocklidlZBbVd2ZnFrM281?=
 =?utf-8?B?T1lKa3ZQb1U0UWJpbkJuV2I0VTcwaUhpNWdDSXh6NFVzbjZLM1FKL08zOGNC?=
 =?utf-8?B?Z0daQ3dIdHczdDhQYTlrOFJ4NVBQdmw4Vm9pbWFuV09qY0thNWpqTit4S2tR?=
 =?utf-8?B?M1JlV0ZGdlVWUktGbWdieWl6UUtHQmNORVE2NHY2Yk9jQkVZbDhPOVZuR3NF?=
 =?utf-8?B?VU9ITXZBby9FSnRGMVZpWTc5UkphL1ZtQW9seEFPQ2wrSURRak9TRTNZa1E0?=
 =?utf-8?B?WmZPTERxNlFnNWtvanJkUmc1ZUUvSURHY0RieWFFbkV0UzNrWVNWcHF6a2E4?=
 =?utf-8?B?aDF6QnJBcWg4TXBrTDExa1puWG54TW1DNkRHQnFFdzEraHJxY1pLWjIwa2lr?=
 =?utf-8?Q?vTaFcste5fr30aZzWElHPFH3zelqD0/UinT50yk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 240970f2-d6d7-4c32-aee9-08d96ec25345
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 10:05:15.0318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ur5nC1PZBVN1MbGMRHPuNb9XTV5NZQfr7caMuOmkXEePfwM/xfrM8UcW+ywYm63fTVpRLUVtHxmcvDhHDxsj5KRc71e4lNwuT5PJYkhQVj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1884
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915/bios: use ddc pin directly
 from child data
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
> Avoid extra caching of the data. This is slightly more subtle than one
> would think. For one thing, we explicitly ignore 0 value in child device
> ddc pin; this is specified as N/A and does not warrant a warning. For
> another, we start looking for ddc pin collisions in sanitize using
> unmapped pin numbering.
>
> v2: Check !devdata in intel_bios_alternate_ddc_pin()
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 49 +++++++++++++----------
>   drivers/gpu/drm/i915/i915_drv.h           |  2 -
>   2 files changed, 28 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index b4113506b3b8..0c16a848a6e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1589,28 +1589,43 @@ static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
>   	for_each_port(port) {
>   		info = &i915->vbt.ddi_port_info[port];
>   
> -		if (info->devdata && ddc_pin == info->alternate_ddc_pin)
> +		if (info->devdata && ddc_pin == info->devdata->child.ddc_pin)
>   			return port;
>   	}
>   
>   	return PORT_NONE;
>   }
>   
> -static void sanitize_ddc_pin(struct drm_i915_private *i915,
> +static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
>   			     enum port port)
>   {
> -	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
> +	struct drm_i915_private *i915 = devdata->i915;
> +	struct ddi_vbt_port_info *info;
>   	struct child_device_config *child;
> +	u8 mapped_ddc_pin;
>   	enum port p;
>   
> -	p = get_port_by_ddc_pin(i915, info->alternate_ddc_pin);
> +	if (!devdata->child.ddc_pin)
> +		return;
> +
> +	mapped_ddc_pin = map_ddc_pin(i915, devdata->child.ddc_pin);
> +	if (!intel_gmbus_is_valid_pin(i915, mapped_ddc_pin)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Port %c has invalid DDC pin %d, "
> +			    "sticking to defaults\n",
> +			    port_name(port), mapped_ddc_pin);
> +		devdata->child.ddc_pin = 0;
> +		return;
> +	}
> +
> +	p = get_port_by_ddc_pin(i915, devdata->child.ddc_pin);
>   	if (p == PORT_NONE)
>   		return;
>   
>   	drm_dbg_kms(&i915->drm,
>   		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
>   		    "disabling port %c DVI/HDMI support\n",
> -		    port_name(port), info->alternate_ddc_pin,
> +		    port_name(port), mapped_ddc_pin,
>   		    port_name(p), port_name(p));
>   
>   	/*
> @@ -1628,7 +1643,7 @@ static void sanitize_ddc_pin(struct drm_i915_private *i915,
>   	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
>   	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
>   
> -	info->alternate_ddc_pin = 0;
> +	child->ddc_pin = 0;
>   }
>   
>   static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
> @@ -1966,20 +1981,8 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   		    supports_typec_usb, supports_tbt,
>   		    devdata->dsc != NULL);
>   
> -	if (is_dvi) {
> -		u8 ddc_pin;
> -
> -		ddc_pin = map_ddc_pin(i915, child->ddc_pin);
> -		if (intel_gmbus_is_valid_pin(i915, ddc_pin)) {
> -			info->alternate_ddc_pin = ddc_pin;
> -			sanitize_ddc_pin(i915, port);
> -		} else {
> -			drm_dbg_kms(&i915->drm,
> -				    "Port %c has invalid DDC pin %d, "
> -				    "sticking to defaults\n",
> -				    port_name(port), ddc_pin);
> -		}
> -	}
> +	if (is_dvi)
> +		sanitize_ddc_pin(devdata, port);
>   
>   	if (is_dp)
>   		sanitize_aux_ch(devdata, port);
> @@ -2993,8 +2996,12 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
>   int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
> +
> +	if (!devdata || !devdata->child.ddc_pin)
> +		return 0;
>   
> -	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
> +	return map_ddc_pin(i915, devdata->child.ddc_pin);
>   }
>   
>   bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 032d59119407..744181cbe21c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -638,8 +638,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
>   struct ddi_vbt_port_info {
>   	/* Non-NULL if port present. */
>   	struct intel_bios_encoder_data *devdata;
> -
> -	u8 alternate_ddc_pin;
>   };
>   
>   enum psr_lines_to_wait {
