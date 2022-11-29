Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FFA63C4D9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 17:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F14210E03D;
	Tue, 29 Nov 2022 16:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A97310E03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669738319; x=1701274319;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8wf6p6+jKCeL9MtVi8E17n0BukG/AmSX3oKlzyVg0vs=;
 b=O6VYCWWNNWFKleySJCExqLd1OMqmjvvClNz2t3qAn9wX3M6F11gpyvlS
 GBG/X5XO0Ztbuf2pKjTXIXVT7u6mhgL8c3a/R46pytKSbqgavlTcQ8bkf
 yX3I/LHui4TXpQ51iiA1JDCposCPZck/XvmYB7XeklVSYTpNTgSGYUqDl
 vY7/jYH3ZMPbG8k2Ps+tnikyZZ90JK7wf4zl/JNooufbv/tuHaAye8/SN
 zTKJu4FW6xPzrpkBawt8iTB/+14Dd/k/xp0oohUsCvDN84exDRDBzWAkk
 Fk3miE0M1xy77svSvcqtTMbz7WFOgzA/2N64nd+QFYKdd4vxZ6GpiDw9u A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="379413447"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="379413447"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 08:11:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="676473782"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="676473782"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 29 Nov 2022 08:11:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 08:11:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 08:11:55 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 08:11:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZPC36CqCA31aUbBeIIbbz5DdBzT0ToE6jaHAPH+MfEGLMheJkZBVkAzVnaxZ/lSVOLXY7keuJ4zfxpfYPAGOlaB1Josfvu4iFAC3tTh8xd0FyOaBMHrmvRXoAcEa1VlHeNEVcd+Z2KQS6JAIqr6Dwp6hDvuZIMltdajjdPJvW4H+42WwF+SlLE7k7Jd0UZi/G2hUxNrLKyl49nbhdMg+bWx8HQdFAuTfj8aIURDg3xjAdG9O0WG49jUYwv+wgA3azKTYU6K8xJ43D4TU4pxbSbxdd2BWpp1X7baKB+bMYrMpLZ566B/B4fvQ63868gKaGoY3LU3JiEj2Im+97X7Mlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e2B26JBm+5xRUaoCRPrbIIYrS5TmGcYKl1zSYqwGdl4=;
 b=WkrN3Obefp/dAaKs9e/hR6Tbty5Pz8FgHCJdjn5+WpNN1U3pP/V/hKccBQ2kV8+nrxU5QSd7NNBqtFpnQYxar/x8eiE0pRApsLcSv6/hNkUmDtGUArQjwmLhe39LP/0Lxg+hFI45o8Nveg2hcYrpPsfmXUf/Nrz2XTnzouRSm6j08a4UF3Rz1BA/8+ITtho22Fz/xC/aS8g7yXVFHurxXRLJf1R+ph+9WvZq3FRzbcTvOgfWT6bxRiemicb1qweq/gx1JaAoRUOvKkh1hlh57Hl8yMHFKup9MAj9crq/0DMW5VXZZ+ZObqkCuTKEsNdyzL6Cmc1LjlFMI8wFgeJvDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CH0PR11MB5412.namprd11.prod.outlook.com (2603:10b6:610:d3::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Tue, 29 Nov 2022 16:11:53 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::f7a8:6d03:2464:2afd]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::f7a8:6d03:2464:2afd%6]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 16:11:53 +0000
Message-ID: <05af5930-2b7d-cf23-2cc7-abe0a390f890@intel.com>
Date: Tue, 29 Nov 2022 08:11:51 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Dan Carpenter <error27@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
References: <Y4XUuyFi3fr354sP@kili>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <Y4XUuyFi3fr354sP@kili>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0204.namprd05.prod.outlook.com
 (2603:10b6:a03:330::29) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|CH0PR11MB5412:EE_
X-MS-Office365-Filtering-Correlation-Id: 7be4d969-e3bf-4f8e-4eff-08dad2246e38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RxTSqMvBqbcuWOxU+5jWuvNo+M3HpewfTBAKB3cI09MHHFInRl6JseHAKkWasep0+afbIUYHCwLDza57VUZgVoMpIY4wLiQseIEBRM0XYMZi4BY4JEfd4uNN6Jhr1+0w+1KgMUDNRaiN9VibN1zYP1j6xSzujvNUIXCxZQAbV13PPc3SK5rYgc65V/jgyiVFNmGXfh0uy3FJeG3hhTuvK7WsXN0jMmIz7IeoQh074bZvLUUlCX1phd83zhVHQVQ1ADqSBtArOQf31FE6DrevAQQFf8eslgnyiwZFdzAOhWVlI3JBXpbK9zzlpvyXc/WNuErQyORR2IjfcLYDBpHkMy6X85bgKJmpwgnpsI+YAOaAxxEasHqDSYhAHUcR/H7pkLio4s176R4hFPL2579SnOIuCbF1VQo1CbHdteGtjZ98QvwO31mrsg5XL1QiopGANzyErGXjulV1BtgCPX5LpU7dlZnKLf3jbh1y9z3Pt2f0KSJBewfDk5wlL4VOYF0FlEaBMw6QB8RznchbVwkIiFeJLVbUH2PwpCXaMKUaO+Y9osjzJ2lOJiKha+yfTujiangZazmNBlt+RHqdtbOloEsmdrCfWRVOvCT7vU4gzjyQX5WwGAkKs9lKYBWGOsvqCXNUWq2Ijto6bDcZGTaxQJJwPNEd9TYlTsbUlnzGJ4i3hwiL/xHDNvLAG4qF99ZwrLdU9E9goSLdwkmGOLzNh8ceJ8BCj5jUO2KU1s4grYk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(366004)(136003)(396003)(451199015)(31686004)(86362001)(31696002)(478600001)(6486002)(36756003)(2906002)(186003)(2616005)(82960400001)(6512007)(53546011)(38100700002)(6506007)(66946007)(41300700001)(316002)(66556008)(26005)(110136005)(4326008)(54906003)(8936002)(8676002)(5660300002)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUZkU2pjOU1nSFI3YS91eFNUcTdhWm02T3ZLV1JGaFNSMmNSbWF1MjJ4SVhl?=
 =?utf-8?B?TnpGYzVuSDUvZmZuREMrWEh5UmY1eXA2ZTZzQkZwbXd0c3F3eFRHRm0vbHJ5?=
 =?utf-8?B?MmtmOFM4Y0tUWUp2QlY1d0hhc1duaTZjeE8zeUJiRC9MYVBsenFjMTE4aHRP?=
 =?utf-8?B?SWhuK2lmUjZnSzdSQkc0U09uZ2p3cFptTGNFZUJ6YmFkVzlLKzc1TysyRlZx?=
 =?utf-8?B?dFdvZHBFbHlnNHRLcHp3ejJPelR2K1M5TXJXVmo4MXBpM3NJTTA2Q05iMDI4?=
 =?utf-8?B?WnhUQWpTYXBtcDZ6Ti9lY0FVVXBHR1VPcjhXM1lOdkliZzlrUWlncVRoY2h3?=
 =?utf-8?B?YUY4ZnRBTkZJRDBIbUxlVTgzaFVLeWxCeGs3empya2QxRzI1eU8yd3pmUGlw?=
 =?utf-8?B?SW1QUXo5dkxqanJPckRSZWNFK2p1aG9zeHI0NzZwZ0ZZS2ZsQmRTRTZ0M3k2?=
 =?utf-8?B?dUlEdXRlN2R6VjY1YWZBKzc4MXJSb092UEplUzRHVy90TElyTWJkV2kxN3FI?=
 =?utf-8?B?ajh2ZmRwV0UwWG4yUWJ5VzRWQVpmeEtTYktaTDRUZ3c4VGNBS3lKODZEeTN3?=
 =?utf-8?B?aXQ5L09TWjgvd2hNOExFeGhtYklZZEp2YkIvY2Z0Yk8rWmhwMXZPVm4vbDRO?=
 =?utf-8?B?US9TNmJyamNBWjJZTWdybHRYTE5QWjNaL2ZRMG1ldWRrYVRlVUhBUG9ySkEy?=
 =?utf-8?B?N0s0Y1I1T3hsZXNCWVZaaVNiblZkQnQrNFBkVFh6SzhoSm5TSzNDaVpGQ0hO?=
 =?utf-8?B?Zkdja01Ka3JpYm90bUNFajhGUWViRFRhWndYbFRSM0hBOUl5UVJwNTlQaUM2?=
 =?utf-8?B?RnFFOGc5c3llVFlnSVUzN3VIMGhrT0dOc05aYkNZMkcyaGx6bmdYci9nSWdi?=
 =?utf-8?B?TTFUaFo2UFNaWHVhTXFITzNRaGUwZW1IdERoVi9qWGd4OGwzUEdvN3p4c3B4?=
 =?utf-8?B?NjQrZUJxTitPRzYxQVVzRjJyendiR0t4NjZXekhpZjY4SlBHM1g1TzlUL1Va?=
 =?utf-8?B?NFNqbHpOL2hWSDc5M0QxNVF6R1docDhZejgvMElvemZpejlUcTR5OWV1Vm5P?=
 =?utf-8?B?dVdqWGRZd3crelhhUHNUTHpZejRDK1U1Z0JnSTBoQ2dlakt3NU1tRTc3b2wv?=
 =?utf-8?B?WTkwdGVWczdtK21HRkRqYXhQY0N6bFZyd1gxbXNWNkNqODVSS1RoNkxFNE5x?=
 =?utf-8?B?WkhHU0FJck9pWHNRZmhWQndDT1ByZ3htbGpBMjlmQzk5d0hNT2lJN1FUKzl0?=
 =?utf-8?B?cmVqT2RNUU84czk0SmZzTWFkZUxIb2F2OHJKR3hEY01tNFdQV3NuNFBuTDZ0?=
 =?utf-8?B?R1Jid3FsQ2lUd1paUXBlU0drTnl3RDJTZTdWcVRMQ1ZvNDVJYnZ6UU4zWEJu?=
 =?utf-8?B?S29wMXBiN29La3lvMVg4aDJhOGQ0TUVCMW52VUd0a2c3WVFqYzRiM2pGQmtr?=
 =?utf-8?B?UkR0aURIcjVWV1A0US80OFh3djBXYzJjQVVRb1gvL01oZFI0a2ZpSUxCNHBq?=
 =?utf-8?B?MVhZVHRFekZrcVh6djlEL1lCeDM4Nk1mTVdhb21vN3dkNjJ2ZTlzNG15cHds?=
 =?utf-8?B?dGxnSXVXTlRVVkYwOHdneE1ZNDE4UlBTRzB0V08wM1h3bE44WkRaUVQ0Y1ht?=
 =?utf-8?B?MWREc0NMWkVrVjNNK0F4L0hVK2ZvT20rSFFlaHRWS2c0czZGMW5vTkpmQ01T?=
 =?utf-8?B?UENzRW9iUVlQbWtQL2xndWZkakVyaWVITmlaWUt5UzMxSndDTXl1eWI5ZHVV?=
 =?utf-8?B?RWFjTFU1Z0hOTEZ3dkhwUys2Z2x2bHNaSmNKQjBMNWt0Wm9Sb0p2QytuMGQz?=
 =?utf-8?B?bFlQUlkxQW1kMEp4UU1sMENObXdvZHEwc2NXRW1SczdTcE1DQVRVdzMrRmlq?=
 =?utf-8?B?YmU5UFA0Y3ZUREMwNUIrN3hCVzYvRi82MFNpNzQwVVZObmt6ZGplU1dxZWtO?=
 =?utf-8?B?SnUzVVpZK3lNMzJac2Fjd0MrWEl6dERQc3VGQTAyd3VNRmRCOS9wRGJzeHdK?=
 =?utf-8?B?ZWNodzB3Y0JZdGJ3STRKMElXdFpRSnFxclEvZEVOcGM5cmFjNTlZb1dkaEZz?=
 =?utf-8?B?LzJ0Y1RpemZIV3ZSQWR1QjhLUDBRaU1NK2NycmRrOVAvdFpXbU5TdVJtNDIz?=
 =?utf-8?B?Q0FLUGFDRlMxM0dtOW1qTmVLQjlSS1FBM2VjbFUwa0J1WUh1dFpuL0xsT2xo?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7be4d969-e3bf-4f8e-4eff-08dad2246e38
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 16:11:53.7592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uZn1eJzz2KNOCzhCB2hkfHU+uRCH1fMX6kDwggY4aIpoR5Bc3WW/WSYJDp14NvngWsnLvg81JxDEc3Dzu46x081cvggwMn+gsT9YxO1bPXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5412
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Fix double free bug
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/29/2022 1:45 AM, Dan Carpenter wrote:
> The "fw" pointer is freed again in the clean up code at the end of the
> function.  Set it to NULL here to prevent a double free.
>
> Fixes: 016241168dc5 ("drm/i915/uc: use different ggtt pin offsets for uc loads")
> Signed-off-by: Dan Carpenter <error27@gmail.com>

This should be an impossible error in normal behavior (the fallback code 
should select a new valid FW file before we get to the cleanup), but a 
user can shot themselves in the foot if they override the firmware path 
to an invalid file, because that disables the fallback, so:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 0c80ba51a4bd..8aa9bcae8e72 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -585,6 +585,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>   
>   		/* try to find another blob to load */
>   		release_firmware(fw);
> +		fw = NULL;
>   		err = -ENOENT;
>   	}
>   

