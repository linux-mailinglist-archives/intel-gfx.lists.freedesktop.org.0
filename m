Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE2057A7F4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 22:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E6F10E0A9;
	Tue, 19 Jul 2022 20:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD8510FD1E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 20:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658261173; x=1689797173;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=x/QNElVIQ7Lp20MHxzouAEEhriYWymYyYch5/M4zZDw=;
 b=GeiAkt53ge0eBNMgMR1I2RLNPtOcWqpsFmz+t7QUuUyxyDvx4Ciq9OX9
 PG6ELi9FpFcihoJcSq3XWrz85XhFDuflpzoatkTow5RiCbIs0dDoHd7wS
 UhWsm3COgjHw5hr8TmNTM3w+jLFFoduJ6+2jcj4VkP9rAwmR6QjKC861q
 Qjp2BSbdHI39lnPdQm3PzPS3rEtK9Ge5f1MImUkBEzJTfDvOyBeOKtehp
 HSXMx9OewMLnsuBDdDtehkA1mcL8t8afwiDsgVV/S2Ks4LLrCkLlSOVet
 4rf+2C+LAFL5beAkk7KNDCckKZPo02ybB5E9LE4hBMpcTIbKrZ4SOlh5D w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="287334168"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="287334168"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 13:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="625338401"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 19 Jul 2022 13:06:01 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 13:06:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 13:06:00 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 13:06:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+iEIEzF/0o5rWApSRvwwacl2fLZr+MptbzPGif7pJt37fIzwjcLaTppWmpzKpmDtUie0pKuUF/r1pMn4+ZL2O3+W7CgN827bllp8tcHLZTCV2BjT+7gFxJarGTw/cB0mxfuGa7Yo0vV1gHv7R5hkonhHsrxfQtWcl2EHYNhubsdQJYvaZUb86je+cCIavmyxP8pd/AhzyZsY5eIqS/fK208RcBloGw5tYeVCy6wPegMW2HzMD1HRy8Hf+AJF1GwyRedyW79W71J6i0KxlDzuraTNpo4shwMN3s3bv6tf8byLuIlI2GA2rLwaVCpXZLdAB/M0+jfe8Wrleb09Qlckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zN5JDiqorjLgW3ovN2WTjNNyqKf01/QQ/ysGj4ImvTI=;
 b=m6sIXkgTTzgkusHH4haoUt6WTfCzupMuJ7tuZg8huFnMmdmZNT1i7BE+Va7eigZ4vZdUf81rq+7x/3Zenn/iUppeabPaOrY8VvQjA/RoXUs5GDuIbpnQVHpQQJflL7vnx9xsZABTtcz57cfouJHsCEptdcan8vME0GaIcNOAM4ZHZGFjCLK2ae46owWdsnJ9nvrlXfSfp4LutscXmmOlpbaA+f3JG8Vi1pGoGaqj4rNuGHeBE6hCJcPwA+8cAKnrKO4DO5Ohn1OaT/vqW83B3mzzoWyxrcDT1rrq023Mylp+7Yg+VGpbi4E0V6qFynildLCr22yn5RybscSAc9aS5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN9PR11MB5484.namprd11.prod.outlook.com (2603:10b6:408:105::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Tue, 19 Jul
 2022 20:05:58 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12%6]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 20:05:58 +0000
Message-ID: <feba9e3a-0aad-57ff-7d78-07dd8e65b5d3@intel.com>
Date: Tue, 19 Jul 2022 13:05:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220719172825.3155696-1-alan.previn.teres.alexis@intel.com>
 <20220719172825.3155696-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220719172825.3155696-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0061.namprd07.prod.outlook.com
 (2603:10b6:a03:60::38) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfb320a2-b1e0-4b5e-30e1-08da69c21878
X-MS-TrafficTypeDiagnostic: BN9PR11MB5484:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z9ic+6pfw6ABh21ip38yJe/bjjDhuyO2dX783jLh8kN2Pf+8Zc1EQSdImC6MRFcJxp1RSYXT2bzs8gobjVz8du+JfN+YnsXBc/r7Xiue8wGDqISEs9t31az+JEOAYoQzDzn0Nirl8KAQ/a2laTdj50Popu3Xn0i54RXarf8e1HBrpqSYJQMMF79Ds3CWOIXUpwmmIhz0bEM16CWuB+RpipDwEHGolixxqHYhAqg4Hf95Pzb1AfU84pvXJ9C/qenpPYsN+aSq1NMiONeCbbdq1EVWGQrhDKuUevCGIff+NWvYOFq0gPwAaRRR8jetTFsPYSzkobWM/0aau/trNd4k67Y+kAgXPkgGCgTvsQw4ZUSnLanZwtTVBK4xq30Z6GgzuGpg3MHO1lMi6aqnj6CzEkA+sWloLqtJwQYSDT0xoVlyGeHMgVjtUCgpp68gPtAcz2iwHSzx/aoiHMg8g//FIzwkasKaCwgufiJse2+M6FfOQHzQrWU2i2//PLeUuVtP+5lfE5yzgAiWRtudt1VL62qsfX65quMNgA8vSjBI17JSNfgtmdlyU4641PsZZwAadzcojMSd3DIX1KuG28Z4oixvFkSaQDLMnEYt618bPSmrLpggQcChu1MbB5F+F6yZE9WVKY2DkZCAh7gF93k9bOFLnOSm7kyhqz7JvcPgGjOM2jkiqpPBwR9KUilqo92R5c6NAD9ktYubHU5VUMNjmizWww7Hi3eOJBFpb9N1XQelD6G4op6cfFtCOEr4Rhzxc3vngvvryCHpVg5Hjzyd5FPjC4xr9wstl2P+Pip62Z08hMbWW6JIB+k1MtXv+lT2u3loaW2v1SuVaJA5tSTKhw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(39860400002)(366004)(376002)(346002)(2906002)(36756003)(86362001)(5660300002)(31686004)(31696002)(66556008)(66476007)(316002)(186003)(8936002)(8676002)(478600001)(66946007)(26005)(2616005)(53546011)(6506007)(6486002)(41300700001)(83380400001)(38100700002)(82960400001)(6666004)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTFtNWtRWmJ3bXFGRmdsakc1MU5pRzBDd1YyKzYyZXZmdTlyTzZnV05zdlNF?=
 =?utf-8?B?dWxTaG82QW1WZFYyZlFmS0Z5VnR4ZFFMdHB3Wi8wZlI2a3VRK01acWVJOENQ?=
 =?utf-8?B?bmloMW5kK1R1L25Xb3VZeWVuejA1WlhEOWtIZHErNklQczFTLy95aDRMYXZN?=
 =?utf-8?B?ZXp6NHRjU25UZEsrV216VFA3cGhDQTBWSVJ4VGNMTUpKUkVyUEl6NENWNGNF?=
 =?utf-8?B?TkJGakg2VFJKeXVaSVU5UmlBdkNLS1FPVkh2bzdLREMraEw1R2xGOTN0Uy9Z?=
 =?utf-8?B?OHVQUmtiVUJyQ0RzeGZ6ZEVwYTJBTVJhdVJnMC9oSVdxWUJxNTJJc1FsaWs1?=
 =?utf-8?B?cjJYZ3JBOVRJR0FXSy91UmNRQVo1YW0vRXN1eHNxdHM2WUNIU0NFT0pkWEtx?=
 =?utf-8?B?ZlZCQ0dLWjVlTlVJY0JGWTY3K1NuUWZFZGNMejl0b3BvZGpmTFBDUXFnL3NT?=
 =?utf-8?B?dko5NGNiZFVBcmZ6RFNCQjh1d3dHOE1BSG92REVTNXdVWUFHUG1RbE42RDRD?=
 =?utf-8?B?MEpUcGVCbXpGM29Daml1MXdhbkhDaTMvZ0FWRVJYdWpoWkFVampvS0dSTWVx?=
 =?utf-8?B?UStoV2tId1ZldzNKY1N1b2VqOGR0TVY2SitGOEt1TzhxRGZUU0U4TDkyNmxI?=
 =?utf-8?B?YjJXekUzdVVoS3I1N0VzZmc5QXJIVVBPNURHaWNBTWd5NkxMN0d3KzYzVUd5?=
 =?utf-8?B?NlZKZkJja3BCcisxZERaWnFGNE5hQzZzVUc2Qk04VkhXWno0VjQxd1hxcFFj?=
 =?utf-8?B?WE5QUitEckgyMkM2UFlNcnd4YWFGVWpJOUZtY2NBckJIL3NRditxTXlUVmdY?=
 =?utf-8?B?NCt3bmpITnpidnpua1FZb3UwVWxiT0UrOUViWVdOZFBycTNMeG5Eekw5Ty8w?=
 =?utf-8?B?UGI5VERaMGZDM29hM2xjeXhVWitpSGxOby9WTnFrNWwwMzdHWDNoU1I4YmZa?=
 =?utf-8?B?UHN3dlI3RDkzbnFMbGc4dHdHaU1HQW9JSEVyRTNFNjBKRjBBL00vQmtYWmJl?=
 =?utf-8?B?dFdTaXpxUm9jYUFmVWl6Rm9JZElUVWl2d0lpeWpwUURUQ2ZaM2lVRHh3UXRX?=
 =?utf-8?B?K0w0QkhjdUR4eFM1eFNzYStuOXdHNHRXL3pxZDBlRmZQU0gxeUtLOXVqOFFE?=
 =?utf-8?B?TGd2VGpKZ3RjNUJLZ2VwS1R1TjBxdzVicU1ZKzYyTmM1cTdEMFE5bGpvbTkw?=
 =?utf-8?B?UE4yekZDSVlmakE0cDJEOVBLRlZ5WGkrVGdpZys4Y3VCWTRldWx0UEd2bTZV?=
 =?utf-8?B?OWo0bW81c05Ib3doVzZ3NExNZFNXSENBOEd5Umh2bDlENWdzYTdVMGd6TUZu?=
 =?utf-8?B?RTdldjJ4eU8xcHNtSldZN2xka0VlVEM3ZXd1OXdBT1BZNmM3K083Y2RROTBy?=
 =?utf-8?B?SVpMcTV6ajJHaHNqWGszSWxQRTNQdmRRYW5rK3p3d0UwUnp1cXV2dmMxRzg2?=
 =?utf-8?B?MURldWtVTFpjOW9IZEpWOE9FVDFWekkrTWpEWnhRRGVrMUViWFV4OXJ6ajht?=
 =?utf-8?B?Sk1FbU1GN0ZQSGs2OHhRVlowbmRWZDc5RkN6QXdoTVVEVWlnZmVyc0I0K3du?=
 =?utf-8?B?aWZXRjdPSHhtZGo5YlNqeVpTOUdRZlBFNEVrM2FHOEh3YkFGQm9rZXdYOURD?=
 =?utf-8?B?QWhRNHV5N25PQ282dE1yVmtWTWN5MHM5eURCSXlxTDQ3MzRwb24yS0VhOXlh?=
 =?utf-8?B?NHg1aFJ0NkQraXBBb3VJajExKzJkaGRLSmpBMUUxdFY0dlhYZkNpZ2FTYmFP?=
 =?utf-8?B?cWVoQUFXczFNNTM0UzhrSE5LaDZRNDZlVFlXTkxiSHp3UnJUa0l1cGtobHBa?=
 =?utf-8?B?eFZsTWF2dnEvTVpCTGtFdWl2RVpMZjAzajZzTGdtbFE5SjhCTzZNNlFGbldS?=
 =?utf-8?B?SU8zcTA4ZjV2NWtMd2JkRXZQWmZsQjV2ZmdxcnplSUtMRUVRdTF2S0xmVWVx?=
 =?utf-8?B?Kyt2ZG9ETFFrMXlQazhTQjloaHhDV2cyMnFTUzN5UTMzRERxTVlmQWh4VGR1?=
 =?utf-8?B?UXppemExMDFUc1p6NW52QlFhZEp1d1RqazdyQWVkVmpWU245VWZYeVVCU21T?=
 =?utf-8?B?QThOTk96ekZwMXdySmVubUQvRzdzckU3U3RWd1ZnWDhYdk50eklHSWdzWFZV?=
 =?utf-8?B?amJvOTdFU2dkU01IV3NCcDlhcStrSWN4Q2pqUzhmZU10cmhkY1V0LzRHM2E0?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfb320a2-b1e0-4b5e-30e1-08da69c21878
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 20:05:58.6135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jpoIRwtpA1hnoAghVeIDqcYSG2AwSaZDlrkkmGl41/B8Mr5lCA4ZyeNBnOlQcomJIXHhaqxt0TnnKO6GjVX/apIqwF4w9tivRxXXA/CYDiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5484
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Remove more
 GuC-Err-Cap noise
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

On 7/19/2022 10:28, Alan Previn wrote:
> Remove the CONFIG_DRM_I915_DEBUG_GUC version of the
> __out macro. The original thought was we have additional
> dmesg entries in the event that the last gpu_coredump
> error capture state was never retrieved, we don't
> lose the new capture. These additional messages only
> when CONFIG_DRM_I915_DEBUG_GUC is on. However it should
> have been a drm_dbg instead of drm_warn. Additionally,
> upon further inspection, it became clear we don't really
> need this additional messages to align with execlist
> as well as remove some more unncessary noise.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 8 --------
>   1 file changed, 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 75257bd20ff0..a9910962d2dc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -1365,16 +1365,8 @@ guc_capture_reg_to_str(const struct intel_guc *guc, u32 owner, u32 type,
>   	return NULL;
>   }
>   
> -#ifdef CONFIG_DRM_I915_DEBUG_GUC
> -#define __out(a, ...) \
> -	do { \
> -		drm_warn((&(a)->i915->drm), __VA_ARGS__); \
> -		i915_error_printf((a), __VA_ARGS__); \
> -	} while (0)
> -#else
>   #define __out(a, ...) \
>   	i915_error_printf(a, __VA_ARGS__)
> -#endif
Is there any point in keeping the _out wrapper? Why not just call 
i915_error_printf directly? Seems like an unnecessary level of 
obfuscation now.

John.


>   
>   #define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
>   	do { \

