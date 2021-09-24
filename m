Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 454984168D3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 02:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C866E12E;
	Fri, 24 Sep 2021 00:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91A86E12E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 00:14:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="284982919"
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="284982919"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 17:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="704954996"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 23 Sep 2021 17:14:11 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 23 Sep 2021 17:14:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 23 Sep 2021 17:14:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 23 Sep 2021 17:14:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OMRzfhUDH8OkdtX6GyHJyxB0hoYkb6tyl963bUSJ7+Cj3viX5jFx6cbMZ1coEabn93MSMjFToPsw70/fK+4SIG4Q4tPkmtt/wecc9vGJRgoz4AQ4wbNzt8hTKW7CxYVU3y9GcHqGukdi2TNjsWVDKnnUSJEZFfoGCOWyJLHGjEXp9WYkE5U7dJxnsuGPB3v7UmSVd+ViY2MrMZ5OHjP2qaWu12gCBXoU6QiXPcBKLG9RgKREn9GbSZc1D6wsVsfHk7P6CG51FPyJ086EocgGAAtmCI4rVjKC7Gs91KjK3AE92uFV7QzQud4ainD/3W1epa8mx4Ybr1UHfZh5D7JUtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=zgqBWn7PkfLaHRTh3ymbSSXwaPucV/r1rBf3xO4upBM=;
 b=H90yi7nhA00hinESrGWm2YINoefnfmMH3xdlwhnovZ6VhZZfnXRhZ+7A0GY9LSWalz/pc9y0fiTcCekZG+ll0gOGUwYFqCA8A2OodN79R+IxAWgYhIu2yHC16EMKTsy7xBXkghkPafasyHJpr1Wr5X74GoeyIZvtVJvZur7Tgv4ztnz6X7BHrqO3fJ3nNnPgRKVu8/M46825ye5MmOFzfFlCyOal1zLPwORdyzSNacKbhnoomaVGVz+vtSDEBPuauUgDoKbStIY0/lL0ul2ulIE2lu0spP4YzaTUMBCeBsCTGGDJos6JX4VY9TgY0HYG18Pw6nHbLW9sHwIK2LHY4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zgqBWn7PkfLaHRTh3ymbSSXwaPucV/r1rBf3xO4upBM=;
 b=s0IgdbvcOOy8J6Wlx7X+jUxUnPQABVMFOCvQAradLRoPsTDeleLsEGLrBJWVh0saqNlg75AEIRWDzjgxWyu4mDLrHTd/rAQ/xm5HfRDndj9TXJwiTalQcBa9eH2Rl6lVqtLX6weBwbawUAyQY8ZdH8WQLWbJlMkrl29kTYCAsfs=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR11MB1850.namprd11.prod.outlook.com (2603:10b6:3:112::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.18; Fri, 24 Sep 2021 00:14:08 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165%9]) with mapi id 15.20.4544.015; Fri, 24 Sep 2021
 00:14:08 +0000
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
References: <20210923073529.1058204-1-alan.previn.teres.alexis@intel.com>
 <20210923073529.1058204-5-alan.previn.teres.alexis@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0bb3fff3-e39d-0339-7d79-a9cd3019a3de@intel.com>
Date: Thu, 23 Sep 2021 17:14:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <20210923073529.1058204-5-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BYAPR07CA0050.namprd07.prod.outlook.com
 (2603:10b6:a03:60::27) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 BYAPR07CA0050.namprd07.prod.outlook.com (2603:10b6:a03:60::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13 via Frontend Transport; Fri, 24 Sep 2021 00:14:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b399825-c0f5-4030-9a3f-08d97ef03a2a
X-MS-TrafficTypeDiagnostic: DM5PR11MB1850:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB18509CBA368071E23595BEFFF4A49@DM5PR11MB1850.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j8ai7zHpnazi1OCii9unPkPjA/gjCFGXIR8+91zjEzr1DRAmt293ERaQd+lOTQd6S2gWkTE8AHfPvKi/Xib1IfhyDSeT5EgAk7jgZ3aUo985U38D+TfLNBIz/YnicwZhnMT71sXJl0ptKy7Gb+cFGZsnWaBxLTRSnBAoSUKUO17zoFA3k+EkCMHyRJz1CL5av7nEu6dPGGSFFIUNMQUjfJD6KsxbqugV9VTwM4Rz0djl1I4hDi7aBBX5ZZcml5K/6piE90wMbDZOl+P8+LdQDe6kkM0rwFuYD+h5RFJXZp4TTZXRgbWr+xKicoOq/YYmhc01jX17Vg4yfqPC1aQ9muMWK0J0DvIBiHDRfWvQDOealIJ+0ot+g18MrT6Bd5b9glzbAGW1vXJPWuWMfg6RKpotpNgbKojHKdfRJKILVsRcP5vH7lZdvZSkEP677ktn3MGwO/75oS63h18o/Yx5GGJg/vfFTC+GBvKiXYmZiJi0qVVwHXKOmJPIxLWCW3FBbkddmtUEjmS0vsdIPzSjHhMiSRxUJRMWIiwaVFcTmlrD6qfmbGB2ZPRuvQO5YBQM7eMLxZykXAtd0ev7MeGcmgimlO/cqT3KFBWP6LW6uQKdT3dcsslBlf2RqW9mXAY+lBGAq24a3bws64FFeHq+iR1YbFJ2sdzKx3krO6WHJRA6+MBb0B4MPUoxfiie7BqTcPNSFFF0kLMowXuQFT/UCO487+czh0J3l6ejOZX3JYrTojv6/H9/H8FvUIxk3XO2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(31686004)(186003)(2906002)(31696002)(36756003)(107886003)(86362001)(38100700002)(26005)(2616005)(4326008)(956004)(66946007)(8936002)(54906003)(83380400001)(316002)(16576012)(53546011)(508600001)(6486002)(66476007)(5660300002)(8676002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmRHQUtYWk9CbnRJbDZqV0pMNnN5aUtLT3VZM2VsdWtkTVJtTG9IUHY5Z1lW?=
 =?utf-8?B?YUF1MmdTYXZNTVZ2dGJ1UTlQekx0dTVnWENqZzFIOXFWc1NOdklvQkJTRWh5?=
 =?utf-8?B?VXdBaVc4VzdaN1IrSjNUK0RLN25xNHpJamZoeHBObmNTRUptNkVSMHpIendG?=
 =?utf-8?B?Mm9YTUw0aFcvQjZDVjU2ejZEYTJWZG1yb3l1SjMvc09DOVNMRm92Wm9OOGY0?=
 =?utf-8?B?bm1mSUxqZTMraEh4TnZtaXgwbitmN3NOaDFhTmZ1OTdkWHI2RnpQdG90Zkkz?=
 =?utf-8?B?bVpPWXdrU2JxZHVWdlRzd0dINTZ6WTU5THN2N1ZtcWtVblpPZ0t6UW5JTlVa?=
 =?utf-8?B?dG9xY0E0UWhvcFRWVVlUQWhZYkVnWnhOL205VG1QaHNYZ3ZyNFE4T2pLRlhD?=
 =?utf-8?B?TEx2SnR2MmNMd0Q2QWNPa1hKbHp0UUVxVmQrRndqZGpnbGFLdFp3MnpNWkxm?=
 =?utf-8?B?YXJyWVAxVGdGN3RLcmkybHJhYlpWdmpDTUFIN093NG9Lci9RN09MUjhBOFRz?=
 =?utf-8?B?N2lCWXZKb01abXVnMEZPZ1o4VE4wMlUwc0M1ek1tdmRMa1U5Z0RHa21rU2tN?=
 =?utf-8?B?Z3Foc1lFalloYWo5ZE9YWDlhSUlvMnZzbjRJM1JLWVQ5TERUdFlxRVpqTFQw?=
 =?utf-8?B?QVpGcFdSTlhaaFhrOHNJa1hjQXNaR2NrVjA4SEZxRlBMWjFFM1cvUjVPN1lX?=
 =?utf-8?B?WS9NWHpyVlJXRmpqSmdMZCs3dFZmbmExaDBxTXBoN2hnY0l1aXZWUi9kZ0xi?=
 =?utf-8?B?ODdNM2wwQVFHSzNpbk95YXg0ZEtSRXd3RFNxSmJ6QXZXVzNObmgwMmdLdHVZ?=
 =?utf-8?B?QW1DckVXZENTL2lWWUN6SThXRFU2ZWpVbEp5eGJCQ2ppRmVmMHlhRmJHTGVj?=
 =?utf-8?B?ZHJMTFB5YjdGbmZRRXhQQUpUbmlwVXZrYTlUTndsa0ZUNzJ4eWJPLzNvaVFL?=
 =?utf-8?B?dUsrWVVkQ21KK2FlR0k1ZTdDWWd1NVEzVGRtRFMyYlpnem5yc3M0dncrSVJK?=
 =?utf-8?B?SVZ4cHFqUy9EbzdaZE05cnNmeEI4MUlYR3lrSG1XUjlWUlFQNHVJS1JqS2Uz?=
 =?utf-8?B?M1Qra2RCNzhZZlRPWFYwVlB4V2NDREVxd3g1TkhtNzdYNTZLR1NUT3cwM1B0?=
 =?utf-8?B?amV6Q0pnMFp2SS9kSUZZeXl0YXFjQzZxeXBoT1VtcUcyUG42dnNYTVF4dkx6?=
 =?utf-8?B?ZS9kMGhFaE5EdHpIcEhoM2dHRjhmZkdlNkEzOEcwM21UbDA4bzgwcjN0YjB5?=
 =?utf-8?B?REFBRFNSVitMN2xnVDdYQVRhd0dKdFBoMEhTc09RdTU0QTB5S25rMHUzbkYx?=
 =?utf-8?B?QWxvU1FQTlU5UndLejRNMFRRMjdIU2xmbWlmNllHRFViQnNSMU90RmlPNnN3?=
 =?utf-8?B?aHVGWVF2U0JjMVdvNlNZT2NReUdIcGcraTRvT1UrOUxLV0pKY1hlYlV2TEJq?=
 =?utf-8?B?U2RFMUJMb21Rb2NHWG5rdnliKzEvSFV6NFhjVlFOaEdxOW4wWnZza1hpU0w4?=
 =?utf-8?B?MktkSnFJalFCU0hJY1pFTjYvTDBmWVNUUmNmWUdjcjhGK2d5dnpCb3JZSHp0?=
 =?utf-8?B?YnZMa1lLdDhhU1dGSDk2NUl6dzM1RjdsWEQ1ZDFWMDUzUU9lOG9SVnBUaXlw?=
 =?utf-8?B?RHdoZTFPWGhPTHlxRTU2NWgvOHhJbVlvQktSUXBpSWFrdGtlYWdmTW9pdjRY?=
 =?utf-8?B?VnUweGlYL3R5aUZXVXRjOEpRTnhlV1FpV0h5SHFBbmRYaTZRN1lQWG45bXh4?=
 =?utf-8?Q?sJ4oovetu2BXSAihj5M9cCCKNkYHESwWHEl/CPQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b399825-c0f5-4030-9a3f-08d97ef03a2a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2021 00:14:08.4141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vEyexTU6VLDhjR/8idKwMf4ElMjD8VvxQ9s0isQ3qRYD7EeIonZ3iXqxE5Lx0Y9W1nRQJq3D0t1lXihC0wjYe0Huk8lmlQgWKR4DCzhMc58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1850
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v12 04/17] drm/i915/pxp: allocate a vcs
 context for pxp usage
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



On 9/23/2021 12:35 AM, Alan Previn wrote:
> From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>
> The context is required to send the session termination commands to the
> VCS, which will be implemented in a follow-up patch. We can also use the
> presence of the context as a check of pxp initialization completion.
>
> v2: use perma-pinned context (Chris)
> v3: rename pinned_context functions (Chris)
> v4: split export of pinned_context functions to a separate patch (Rodrigo)
> v10: remove inclusion of intel_gt_types.h from intel_pxp.h (Jani)
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile              |  4 ++
>   drivers/gpu/drm/i915/gt/intel_engine.h     |  2 +
>   drivers/gpu/drm/i915/gt/intel_gt.c         |  5 ++
>   drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 +
>   drivers/gpu/drm/i915/pxp/intel_pxp.c       | 69 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.h       | 30 ++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 17 ++++++
>   7 files changed, 130 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 335a8c668848..c94fce9c8ddf 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -280,6 +280,10 @@ i915-y += \
>   
>   i915-y += i915_perf.o
>   
> +# Protected execution platform (PXP) support
> +i915-$(CONFIG_DRM_I915_PXP) += \
> +	pxp/intel_pxp.o
> +
>   # Post-mortem debug and GPU hang state capture
>   i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
>   i915-$(CONFIG_DRM_I915_SELFTEST) += \
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 87579affb952..eed4634c08cd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -175,6 +175,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
>   #define I915_GEM_HWS_SEQNO		0x40
>   #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO * sizeof(u32))
>   #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
> +#define I915_GEM_HWS_PXP		0x60
> +#define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
>   #define I915_GEM_HWS_SCRATCH		0x80
>   
>   #define I915_HWS_CSB_BUF0_INDEX		0x10
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 5753c5943ed9..88f627f014d3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -21,6 +21,7 @@
>   #include "intel_rps.h"
>   #include "intel_uncore.h"
>   #include "shmem_utils.h"
> +#include "pxp/intel_pxp.h"
>   
>   void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
>   {
> @@ -714,6 +715,8 @@ int intel_gt_init(struct intel_gt *gt)
>   
>   	intel_migrate_init(&gt->migrate, gt);
>   
> +	intel_pxp_init(&gt->pxp);
> +
>   	goto out_fw;
>   err_gt:
>   	__intel_gt_disable(gt);
> @@ -749,6 +752,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>   
>   	intel_rps_driver_unregister(&gt->rps);
>   
> +	intel_pxp_fini(&gt->pxp);
> +
>   	/*
>   	 * Upon unregistering the device to prevent any new users, cancel
>   	 * all in-flight requests so that we can quickly unbind the active
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 9f711ee0d42c..14216cc471b1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -26,6 +26,7 @@
>   #include "intel_rps_types.h"
>   #include "intel_migrate_types.h"
>   #include "intel_wakeref.h"
> +#include "pxp/intel_pxp_types.h"
>   
>   struct drm_i915_private;
>   struct i915_ggtt;
> @@ -201,6 +202,8 @@ struct intel_gt {
>   	struct {
>   		u8 uc_index;
>   	} mocs;
> +
> +	struct intel_pxp pxp;
>   };
>   
>   enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> new file mode 100644
> index 000000000000..5031ba589d95
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "intel_pxp.h"
> +#include "gt/intel_context.h"
> +#include "i915_drv.h"
> +
> +struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
> +{
> +	return container_of(pxp, struct intel_gt, pxp);
> +}
> +
> +static int create_vcs_context(struct intel_pxp *pxp)
> +{
> +	static struct lock_class_key pxp_lock;
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_engine_cs *engine;
> +	struct intel_context *ce;
> +
> +	/*
> +	 * Find the first VCS engine present. We're guaranteed there is one
> +	 * if we're in this function due to the check in has_pxp
> +	 */
> +	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0];; engine++)
> +		if (engine)
> +			break;

Vinay found a silly mistake I did here: the array is an array of 
pointers, so engine++ doesn't work. The below chunk should work as a fix:

--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -37,12 +37,15 @@ static int create_vcs_context(struct intel_pxp *pxp)
         struct intel_gt *gt = pxp_to_gt(pxp);
         struct intel_engine_cs *engine;
         struct intel_context *ce;
+       int i;

         /*
          * Find the first VCS engine present. We're guaranteed there is one
          * if we're in this function due to the check in has_pxp
          */
-       for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; 
engine++);
+       for (i = 0, engine = NULL; !engine; i++)
+               engine = gt->engine_class[VIDEO_DECODE_CLASS][i];
+
         GEM_BUG_ON(!engine || engine->class != VIDEO_DECODE_CLASS);

         ce = intel_engine_create_pinned_context(engine, engine->gt->vm, 
SZ_4K,

Daniele

> +	GEM_BUG_ON(!engine || engine->class != VIDEO_DECODE_CLASS);
> +
> +	ce = intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_4K,
> +						I915_GEM_HWS_PXP_ADDR,
> +						&pxp_lock, "pxp_context");
> +	if (IS_ERR(ce)) {
> +		drm_err(&gt->i915->drm, "failed to create VCS ctx for PXP\n");
> +		return PTR_ERR(ce);
> +	}
> +
> +	pxp->ce = ce;
> +
> +	return 0;
> +}
> +
> +static void destroy_vcs_context(struct intel_pxp *pxp)
> +{
> +	intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
> +}
> +
> +void intel_pxp_init(struct intel_pxp *pxp)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	int ret;
> +
> +	if (!HAS_PXP(gt->i915))
> +		return;
> +
> +	ret = create_vcs_context(pxp);
> +	if (ret)
> +		return;
> +
> +	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
> +}
> +
> +void intel_pxp_fini(struct intel_pxp *pxp)
> +{
> +	if (!intel_pxp_is_enabled(pxp))
> +		return;
> +
> +	destroy_vcs_context(pxp);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..73acd879f2fb
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_H__
> +#define __INTEL_PXP_H__
> +
> +#include "intel_pxp_types.h"
> +
> +static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
> +{
> +	return pxp->ce;
> +}
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
> +void intel_pxp_init(struct intel_pxp *pxp);
> +void intel_pxp_fini(struct intel_pxp *pxp);
> +#else
> +static inline void intel_pxp_init(struct intel_pxp *pxp)
> +{
> +}
> +
> +static inline void intel_pxp_fini(struct intel_pxp *pxp)
> +{
> +}
> +#endif
> +
> +#endif /* __INTEL_PXP_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> new file mode 100644
> index 000000000000..db98df723dbb
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_TYPES_H__
> +#define __INTEL_PXP_TYPES_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_context;
> +
> +struct intel_pxp {
> +	struct intel_context *ce;
> +};
> +
> +#endif /* __INTEL_PXP_TYPES_H__ */

