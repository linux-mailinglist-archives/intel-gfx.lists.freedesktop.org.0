Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8A1732171
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C64D10E086;
	Thu, 15 Jun 2023 21:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B833B10E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 21:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686863880; x=1718399880;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gt86iz0Ir/x4gI4rpCPI7wHDOY7esFTfC6BKjALx7ZM=;
 b=kHcOvSksKPyt1VfAXJJBNHeLZvY5/SAaEefdIH2/i3OaiF55HMN9bV+S
 FF61dDjR2AaKHWRLkrxFO/LKl2SrfhiUHHv7dlvGNr50NCVR2YPLmXT8p
 osWyVg1Tyw27NQ9fpapbx0wLGJqO/lXtkHKqk7vVLPi87G9Et/AMoXjsu
 QWJDGPy4IlyLHjCHuIPqmEE/c0p4slR2E8nPR3XIrNO2vOieDhnD+tR66
 h+/5UMJPb6Muscr8hj9GagwV1TdvQuaVUuIRXd6X0P1mrnG4pLQ+V/Q5p
 j7zzZAikQTM8XMaO1U26Da7tJJnJwIydqLaIIWUyZYA88F/q7LO/kqAF4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="359045327"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="359045327"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:17:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="706831454"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="706831454"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 15 Jun 2023 14:17:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:17:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:17:51 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:17:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mal47MX40I3DxtSxE+2Kscr1SbCkVfDx8ut9GBWJf0v4vkL76KYHgi6NCyN4jfRljEYZ007s1XkqxQEiVxzAMMcV91Xsh7S50yd69zj2O4J/2oDZjWsRIKBaaTBAyOKrSTZklwFpcJPQUceIvby+eiC11YRgAajulXAwF39UO5IkJjub323LPfp29B7Egek64VyIMtbILTY+yL4K4S4+GOpAfqJrrmF2Y9guFaOmBnxWKwRMayyr/gw0vE4ZjMvQ5mpt65XFBdQsyEC50l2g0PhwIcQdDhmbZg8lzKJvxxxcmFH9iy1pr79Nnnw1YXMJ8T9Vur4mM4vxc6lLWDb6FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+K4rZhXSUoeRmlsfM0rGkV0MViJSkwBaWbLjYUUU5OI=;
 b=H9Q3AIdcXuc8JF3nVi2OMVb+nXcJMrCpXAKX+oNexshQIWps45mrxM+9xC03ZrjrYWoxKVx8zsPV6wBfE3Ti3IdJOTbYWCBv40uImZxNY8WO+Sm6JupPn6nqKcrFxZGP4VIpZh23bR+Yx+1FON8lHzJ0vR2tcUQWsb4Qpjb+FJYI2ZBX1QxHj5YuUwc6Keo5CQwDztpMBuE6nI7n361V6e+dUTPUJ912UFj83xlYjmfZ6m7hagDd35RTBd6wtfblldWXMGO0j2yqd7Emp6NRj1bz+7oaZhQr90ErPWEprGRKlxzGJfqZJvKrET5oCVH56wUJm+Dsdz1Q5q/pKXoeiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by BN9PR11MB5225.namprd11.prod.outlook.com (2603:10b6:408:132::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.27; Thu, 15 Jun
 2023 21:17:48 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d2fe:fc74:e24b:26da]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d2fe:fc74:e24b:26da%4]) with mapi id 15.20.6477.028; Thu, 15 Jun 2023
 21:17:48 +0000
Message-ID: <c459e000-1555-0f85-4833-20b3fe2123af@intel.com>
Date: Thu, 15 Jun 2023 14:17:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20230614223646.2583633-1-daniele.ceraolospurio@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230614223646.2583633-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0176.namprd05.prod.outlook.com
 (2603:10b6:a03:339::31) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|BN9PR11MB5225:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fd5b535-0a2e-4ded-1c2b-08db6de5f80f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d5Z0DfhFSBP/B4fQ70AfMe6QYd6DEAwy1nfI4d8CWrmYkh+yI4EUsnugain7YjI32f15a3Hg7Aco4wYtNCVV0odrX9GkZYByMzhQamKcgmN9sKI8ux5dgX5z74/1INaSAOsFJM0pdZoUx6/hsUQ/g6cOhtV2D6+JG3OdLtBYU7HMa1PNmi1vuggkF2Vmh53p6jKaGCAmyvxXBKg4JRxBGhY4D0AeM0AG7c9B8J1wayrDN/uEidknsYjEcR1/bom6O5SL2hazq1sJW1K3Gwvoxk/LbYvYAoO1XX7zTmX+SNOoF76HFkxqZRNxISpYGm4IqRMctGXd6R8OKtOWKagAB9h+eha2Co0au7FEwdVVIvTVeuP+g4JouzSnFnc32nuRO/UWe+XF4viqPlTOwwTelFGVD3GGmXwPCWJQYcqVNOJP8jNBrb5OFb3CbLvdAS/+xwEBF+zcuUgpC/SaCxqP2EK3j6Nze67ACMbNeo5q2FV3D3yeMu14II0GpRXlBw7FuuYl6VCU5NJkAr5a8DlfkQcwEP1nikyOFxD5qRn72DoMAnHIDkTZ1x/s3hUTJM9aq9KcjV81o2NM9h04NOjgsxSolGjsA21hMKF9e7ZVtjaea1v8GQzYrE4366zKP082j9RfQYMSPrYbN8Id3aEChw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(396003)(376002)(346002)(366004)(451199021)(5660300002)(31686004)(2906002)(8936002)(8676002)(41300700001)(31696002)(6916009)(66476007)(66946007)(66556008)(316002)(4326008)(86362001)(38100700002)(478600001)(82960400001)(6486002)(83380400001)(6512007)(26005)(6506007)(186003)(53546011)(36756003)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S09UcU1Oazk5NGFHeHp5YlRJeUtqRGNMWE5GTFBFSWk3dkl4OE10U2Nmc1pI?=
 =?utf-8?B?eVJXUkVoc09qRGZkRnJ2OTJIYlJIK0hFVFpRY1N6NWZ1RWRJUGtzZ1RvSEhs?=
 =?utf-8?B?djNQNmEwQ0FYWHFTb1lKTDd6UUtMZTFLZS9IMmo1ZUJrc0syUmlhSVN1VG1U?=
 =?utf-8?B?d1laamV4Wit1ZEZUejh4ZEl3RnB1SDdhUWtOSEdGUXBDdk9JR3l4NkczN3pj?=
 =?utf-8?B?elQ3akhwZFR6QmRIaHVPdUtuYjRvYS9WVVg1VUlFR3E2ZG44dDNaYjRtbVpp?=
 =?utf-8?B?UkQ3K0h2ajRSc3RTTzRuMjB3YTBBMC9lT0dhd2VMS3M3c0NOb3hUVkRHRDBU?=
 =?utf-8?B?dU9lOUxPTWdOYnV3MkttVU5kSWlSZjhlVlQzN00xN0toZXZlU3VuS1E4M0g3?=
 =?utf-8?B?a2lMYlNvNDJtN1ZrMDlxYUZGT0pVM1VBbklFaDEzakdBR2JvSDFIVWtHbjRp?=
 =?utf-8?B?MnFKRDMzZTF0UUpxYjVjUTNYV2x4aEptd0ZtL1pTekVUNFg1UmN1QSt6YUNr?=
 =?utf-8?B?eWV1QU51MWl1V0hjSVBIbEV3aUhsc1lzL1c1U2hjQVR1OWVvMUlkSFlVMEQ2?=
 =?utf-8?B?bkNUNjhXZHBkRWVuWXovbTAyOGs5dmE0c0lHaVkyWHBxVlQ4dCsySllNMmNC?=
 =?utf-8?B?QWREQlBlM01TUUJsOTQzL2s5b3JSRjE0Z3VkQ013YjMxd3h2QTVNK1Z0dkdx?=
 =?utf-8?B?ajcydExJYlM5MmpCMk5VQ3ovUXliVEJmWFJYT2tJeDdsZjd6aGV0Q1VjNVZY?=
 =?utf-8?B?ZUdRT1hqbFlUbmxUdVNEWndZTnBFVUwyUkc2ckFKYmd5VTl3THNEMzFqWmRD?=
 =?utf-8?B?ckdQZldzMWh0LytNMlk3MlRVL2ozYnBNWEIwN3REYWhQQ1B0MDgxcmNTT3pt?=
 =?utf-8?B?WUxqcDEzeXB5VVNGNnlzejE2Q2ZpVS9LbXEzSVlMYytjQlVmSXZwc0ZIc0Za?=
 =?utf-8?B?VTVlbEFRZm5SRWNJMnVzNFFkdlR2ZmV4aGJNS0g5SlVzRVlkRS93NGp0TlRK?=
 =?utf-8?B?TWtRbFVHZjJUY0UySjBBWTZuOGkraXUvdWw1OUlxSUhvNHUxWS80TDF0dExM?=
 =?utf-8?B?SzdhdEJibEdaSk5vVFozajQxM2xOVDlzVWRFbVJmTzhxMjdCTkgwRmRzSkh6?=
 =?utf-8?B?NDY2ZDlqUnJGY3RmeXErZXc5eUtQdDRaZlBuYnZtWE5WaUtGLzV5MDlJL0R0?=
 =?utf-8?B?Q1BQVGIxUERMUkJKMkI2dVlZQlF2MEpRWUllQTNZOVlGZjhYWnR6SnpBSHlj?=
 =?utf-8?B?SmVUVzcxWlFYVFpIeTFnc2NYOUNkMmFCaGZDOElKdVp6RllQemtBVkczYWVY?=
 =?utf-8?B?cEZUa1ZXY3VjZXNjeG9ndnpOKzNkUXhZSVFVZXlhNDlXU1FLT25QTThQMHFG?=
 =?utf-8?B?MFF4QXl3cUpYVGZpRnBsL3lGTnFscjJHU0N1VmhyUU5FVi9Bd0ZsMDVqcDEr?=
 =?utf-8?B?R2kzYlpZMkwvb3RGYnlQbVpzQ3B0WjhrR2orcXZOTVJFKzhuVjVTdVJjN2xr?=
 =?utf-8?B?c1VGc3FCSlRVNWFSR1JsU3FpaGlOTHM4SE96TGR4U2kzM0l5TXRWWlUvM0RH?=
 =?utf-8?B?aVRHbkZzazh0WVdDajBtOUw3QWlEVUN1RzhXcWRQczB6R0xNV2pUS29HcmZR?=
 =?utf-8?B?eXFKcDBqNnVRWHZtR016T041em0wR2pxVG44c3FlcU4yV0wxejRQZWdsUW5N?=
 =?utf-8?B?UllEOTlrZlJMY1pYTDRRaGNtWWsrZ3RqZjFQbUZhQi85VTB2RDFNSU5raHQ2?=
 =?utf-8?B?T3RpR0FvMjJDMWxxUDZqMW00eW1RY3N2MTFtWWtGMlJpTzRuUGZZSExHTU9U?=
 =?utf-8?B?YWtRcmtLbTRKYkdnd3BTS3czVjJDVWdYWXFFMHdQdXJFY1doaklxQXBmU2Mx?=
 =?utf-8?B?TTY2aGhzZWdDeDJHN2MxS043TElaeVA3MFhEODdnN2l1bHFrK0pvTldrMnJu?=
 =?utf-8?B?T2tNY0cxVmpoT2NRQ25JWjkyQkplTzI0TytEdHdkR0E3Y3VIWVYrdkg4SzJ3?=
 =?utf-8?B?d3AwUFJoR1dUK2lMMmpnUVUyWHZQbk5SZ25ab1FWdExMcyt3R0R6V21wQnNl?=
 =?utf-8?B?NlBhV2d0Qlo3SFk2NFpHWFNSZEFDRUJEQzRIc2NLT3NHZFlqYmlNOVhWUHZ2?=
 =?utf-8?B?TDhYSmRJeDhDNExDbGRxQnN1Vnc2SzZ2cFk0Zlk3Uy9jVG54RzI2YTFPZGVJ?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd5b535-0a2e-4ded-1c2b-08db6de5f80f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 21:17:48.1164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cQ/Js0Wf08T9n6YYVIHOIGjJViwvBQMi0CVT2PCG7TV/1jPcYfehH0h6t8ghJu6gOFUDFcZ2ac2aF75FNFOe3T6YkJHVXNiXOazL8OKva5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5225
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI] drm/i915/huc: Fix missing error code in
 intel_huc_init()
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
Cc: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/14/2023 3:36 PM, Daniele Ceraolo Spurio wrote:
> From: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
>
> Smatch warns:
> 	drivers/gpu/drm/i915/gt/uc/intel_huc.c:388
> 	    intel_huc_init() warn: missing error code 'err'
>
> When the allocation of VMAs fail: The value of err is zero at this
> point and it is passed to PTR_ERR and also finally returning zero which
> is success instead of failure.
>
> Fix this by adding the missing error code when VMA allocation fails.
>
> Fixes: 08872cb13a71 ("drm/i915/mtl/huc: auth HuC via GSC")
> Signed-off-by: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

CI came back green, so patch merged.

Daniele

> ---
>
> Re-sending for testing, because it looks like the original didn't make
> it to intel-gfx and patchwork.
>
>   drivers/gpu/drm/i915/gt/uc/intel_huc.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index d3a7219e9ed1..bb95bdd1c3f9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -384,6 +384,7 @@ int intel_huc_init(struct intel_huc *huc)
>   
>   		vma = intel_guc_allocate_vma(&gt->uc.guc, PXP43_HUC_AUTH_INOUT_SIZE * 2);
>   		if (IS_ERR(vma)) {
> +			err = PTR_ERR(vma);
>   			huc_info(huc, "Failed to allocate heci pkt\n");
>   			goto out;
>   		}

