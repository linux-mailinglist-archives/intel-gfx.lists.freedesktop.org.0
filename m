Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2A67C4E25
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704CB10E5EC;
	Wed, 11 Oct 2023 09:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCBBE10E5E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697015150; x=1728551150;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MasCmEkYXYPgPdRIbWjOUCfQbTMoQFD0vaOFc3FQxlo=;
 b=nRA9Zw0mY/6GCok4DL8TLhWF/GhtmxSctywVt+M4qBsc6HrQGx5OC697
 X2HAtNRJQiON7PrPNYitF/huuzmE9+LpCeZcg56jqLqjprMPmFdt1YkKo
 P60NqLlG719AvOevs6Y/egU2W94SmdPqYOfTN8h6pG/70pjdbioV595Rj
 YVpWudohFSlMTEO1ffokqn2TJ/zjGBoNPes4fbQYNiTDq0fL1Ao1abTim
 k+rfAqAoCAN1LW9QJHIfYU1LiwofHnRKGVTQ4gjR0NVop6xkaQtHScwew
 KWztgFJpgg9kTiOhUh86t0tdVRzolcWKDE6eLEG+CcU+t9NZLujjRynTH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="388485733"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="388485733"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:05:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="870072524"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="870072524"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:05:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:05:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:05:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:05:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:05:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gNr2/YV+fCIBDgsU+28p23BFuvj3drCQMzP1TFFRdbUGfXuNa8Q5uCMbg1I8qOYLICwB3bFE17fwKjjcRBD+QYsmZQGKcckpN339h181Q8TYjZK+5zOTUNYKum3TBkUJdszlzdZ2UuQz1PM/UX0dk3YRJbKuzgshLACDUz9xw+2t44kf2MwAS5fg5gw1jdugI95eJLnDEVCez2LnCS7j9U/9s55pFE05ECQWQAJNTUA4kzGeKP/CF0NbsBPkbtpZbmz3o27ElIS8ft6a0MVpCqNMyoq0Rmxj43a8czD6wJV8kdoJxxTP6UPvk6y+CNnbwBFJ3LAm9puQNsgTCwSqkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rM/gQzd/hmdFotuXsKVM4BwPx+4GrC0299mRkzWmn0s=;
 b=MlOVIUBzpq82R5ottYxoRN+HQqE8YGsk9S5kOga5dK4sPc3j4TgeblS1jJ1L5IJfAb/ks+baji/ynbSpASdLR/KgkEZmee+ZcVR4gdIUkw23vWi9p9Przl5m28eQ7aCa+7Iq9pO/fNS/CzPQJIXxkNsI1X2eAJY9xRaqCedeRWvdtKHbniZBS7zHdCxByEAugVWY/2K27MgQ+evw5M1+Ab7jemaqwx+uVVeBxsGSWD6nvBy8hiGeJW3Tpw9MDJhQN0hJQctwbXtXxQ47s5YNgbfMGs5j3ZD6dAL68sbYn8UrUs3iqMkGvjVNK6Q6ITFo6Lp3woDoMqs9Qk84ubOUJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 09:05:41 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.040; Wed, 11 Oct 2023
 09:05:41 +0000
Message-ID: <088fd317-1e0d-7842-93e0-faa28979bb2b@intel.com>
Date: Wed, 11 Oct 2023 11:05:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-8-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231011000248.2181018-8-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0078.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::7) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 9591eecd-2eaf-45a7-f83f-08dbca393e7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yJPdPaUeG2MQNWcT06OHyZy8neJxahzCp4NPms9xEGputX5tzsBCjWMtAZeQv3TMkiuzEFDHdZCuakkCIG/gr0Bp++N+zCfeYnNLSEweUu2nPcG1guN/pENJ9AOA+9Zr5zAeaDrFbKXxg6CyT7yVqjWMDmfgEGR2NgcsVHoufLcSg5I0gs3DvLjhU+jWHPqPgMlNifNbdxQDTzuw3dBhPbm8b66kQPqKMSukt+KFeYQ9ChQkHjgXyk472dpdjvV/nqPIce6ZA03jakVSjK03zSTdDpiu5oO32k6Svc+ge11iCZxAazSVunxX+h2l8nLjZ+L7tW7k2S6MKbznPrQ3K//gITECo5Vsgc8YgFa2Ydf6S89QzB0j/0j4s26vNnshhy98ERmZysKhG0fze6pNLVeC50m9hDRxwd09kwJdpDMCGOyRGvvEcMmxz7nSmfqEPPkrjVVUa4cQSHDTT10xc1qbx8ysYLcdK6VQwHMqzc16EdJJoLFUTlRPdKTUB7NyWkNMWoC7WoqYcD7+1qhSCpTSRqBsVCcZPdlbrVZZiRSQ38tfvttLk21orugjwuj84L6PrItAb/duiUEGCXalM9yEQ1OXgSuL0MRHdt2FWiUA33lcVCNc3Rx0bNM6ojoCIeqj2pU1lFobQ/RRVXWFFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(31696002)(86362001)(36756003)(2616005)(6512007)(316002)(6506007)(6486002)(2906002)(44832011)(66476007)(53546011)(41300700001)(478600001)(66946007)(5660300002)(66556008)(26005)(6666004)(4326008)(8676002)(8936002)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THMwaWRDY0lqYmg1Y2E3ZWFVY2JESHdEelZsQVBobEVFYzVwSFFCQ1NWNG5y?=
 =?utf-8?B?ZUo0UFE2OGcrblhQcG9EUXJ3UVR2c3F6akZQK0pzZEwraTRsWDJZOUhSMUJN?=
 =?utf-8?B?d1duK2Y0Y3ozV3I3WmFZUGpqdW5DVXFVNlNReE9uTkQ3TVcydCtLTHNHK3Nq?=
 =?utf-8?B?RUw4Vk50bU9KZHpJTEZ1WWVWSlBnNXdNRHFreHdwQUVzRS9taWprYTdwbVJ3?=
 =?utf-8?B?SmdQU1Y4WmxFWG5QcnN3YS9QcUsrb2NTMDhtVDlOaVZjMnpzdEc0SUNpSXVm?=
 =?utf-8?B?anVDVjMwOE1iNnpnWjMycVRMaFZKaHB5ZW1KRGVtM0ZyOFRWeGUxMndnMCtk?=
 =?utf-8?B?cEk3Nzl3NHI3eG1uM1JRWG9oVkUxK3FsWnJvSktXYU5ndmtsQzVGR2JKZGtk?=
 =?utf-8?B?b1RtYktlaTRta01nbFp2eG83VC94ZmRUVTVQR2ZKamRBSUlxYXdmZjM0NnlX?=
 =?utf-8?B?dGY1Y0Z2R0d5OHF5R0RWU2ljenhFT05hY1ZhSGtrZFBGazVqQ2lFcGNrNGpJ?=
 =?utf-8?B?blBITW9Wb0M2NEI3THA3eVJsVnVvTklmTXliSWkzZWUreWkyNmxYaTFDM3B2?=
 =?utf-8?B?QVZpRHF4V3RKaFNneGdqQzlTYTF4cU1abk8ybWJpR1ZQbkhQb0RpQkNDR2pi?=
 =?utf-8?B?R3BxRlNFODJ0d3RTWlB3dUd6UHJ4VUV6eGlMbDNORTloMzhhSjRuYWovRFlr?=
 =?utf-8?B?S2NCVzZiT3FzM0x5d044MEZ3SEZlRG5pUHdveGhvRWNxWVdrQlhzTE4rUE5Y?=
 =?utf-8?B?OThlSE9qOXdSU2ZsYXFPQmpraytoOXhqU2VoZHNwUmdud3IrcWs1cXJQaklK?=
 =?utf-8?B?ME9DbTJCdUx1QlF0VnliVmJQTm9lTjdCOVoxZHdjZ1FxRzd1MG0zemJiWTRr?=
 =?utf-8?B?MWpJMW1LS2JWczNwTGtZYk1hRUc1WDR1WHhRM0cxclZ4bm5ObGlpN3dqZkFO?=
 =?utf-8?B?Zzg4SHVXckdBQXhiNHRsK0hYZnhFNHZrR2tnNmdFNmRpNU5UMmpxQVVpWmJY?=
 =?utf-8?B?ekdIMWkyUTRrNmljQ1RNYjBETXZ4TWZoK25PREkvRXdMQm5ISTFENS9yZEoz?=
 =?utf-8?B?b29rejB6U1laQkF4aWo3cXMySGVrUzJhbWluVFgvRmVLNTN2Z3FCQnhxaEhp?=
 =?utf-8?B?VThJb2dJQTEvVm1FZGQwTnRUVUs0YVNNMDMzQmZndVBqQStwdUREM0oxS240?=
 =?utf-8?B?S3RYb2U0czZRUkxLbEtWRkhzaXlHSzdabWxvM0ZIRkhkcU9EcS90T2pjbXVB?=
 =?utf-8?B?OVhpWVBkVUxhWlV4cDNFdzE2RjVzV2lzSno0NGk1Nk02WHRpN1lqYzY0aVk1?=
 =?utf-8?B?a2tCMlV0dGZza1M1NkFLWW82TFhCNU04b1dvRDhONm93bDl1ZjYzTnZHMCtX?=
 =?utf-8?B?Q3hkT3VjaG1ERzYyZHZ6RHZFZzVmcG1MM1NwSWplK2ZzNUtXeXZZMkFIT21N?=
 =?utf-8?B?QW9aZWlxUjcvY1M2eWRNVncyYVhHNFNGWjAzc3hGckU5QXFIQlhPVjczT1Np?=
 =?utf-8?B?S2twSWEzMHVtSmttdWxvd2ZWMWlOM1R2RHBJY3JnL1FMbWlacTFZR2UrUDlw?=
 =?utf-8?B?NWU3M1hHN3Z5VDFuVTdhWEIzWndGR0wzTy9PNE8vOTE2MTB1Wm5NZktYbE9W?=
 =?utf-8?B?OWp1Y3pSL2htc0FxYjVobVZ1Qk9EanNIcGMrc25vYmFvd3Q5NFpXMmRXUGVK?=
 =?utf-8?B?N3NUMkNNOGI4WVF2QzYxRlJ2REZsaEZkU1Nad2UwY3VtdE5TOXh3SG5XcEVQ?=
 =?utf-8?B?Rjc4TE5waG9BVGFRMlprYVNHa3lpZVlhZzZockJIV2dVMFBjOUVNaFNLRWNm?=
 =?utf-8?B?V0R3Q3BDNy82b3dGWGRweWUrRmkxK1g2K2RSYXVGMXZZUEk0VnRFdnFwMkpS?=
 =?utf-8?B?V3pIMSt5UHhwblRMaUZ5NnpST2ZvQnhWZk8wWkJtV2xCM09taHJTenBUUEFW?=
 =?utf-8?B?Z0FtWEl3VDFhaTNFbVNPZDQxc24zNEdoeHVJYVcwSnpUVEVBc05EdG9VSTM4?=
 =?utf-8?B?d3JURm5QTzJJT3F6UGo2Kyt0NVJrQ0IzOW9SeGtXdWI0cStWd2VlTkZvWW12?=
 =?utf-8?B?NDdCek1rRGs3K01vS2ZmcWNKY290QTQrcVhRM0IrYWhqdE9iNk5kUWhPeXpB?=
 =?utf-8?Q?6egi20UeX342K47EpQbIYSQfB?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9591eecd-2eaf-45a7-f83f-08dbca393e7d
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:05:41.5241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EWp6335g9cCtpwJB/z3zZAgy1ovLr83a65tKuLTxKKiSmeTeGRlkuTJNeO35pYO/j4Vm1LZLOaNQZdtIWFBEoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 7/7] drm/i915: Enable GuC TLB
 invalidations for MTL
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2023 2:02 AM, Jonathan Cavitt wrote:
> Enable GuC TLB invalidations for MTL.  Though more platforms than just
> MTL support GuC TLB invalidations, MTL is presently the only platform
> that requires it for any purpose, so only enable it there for now to
> minimize cross-platform impact.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

With a happy CI this is

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/i915_pci.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index df7c261410f79..d4b51ececbb12 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -829,6 +829,7 @@ static const struct intel_device_info mtl_info = {
>   	.has_flat_ccs = 0,
>   	.has_gmd_id = 1,
>   	.has_guc_deprivilege = 1,
> +	.has_guc_tlb_invalidation = 1,
>   	.has_llc = 0,
>   	.has_mslice_steering = 0,
>   	.has_snoop = 1,
