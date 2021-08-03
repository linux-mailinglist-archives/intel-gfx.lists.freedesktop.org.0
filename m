Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644BD3DEBA1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 13:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97650897E0;
	Tue,  3 Aug 2021 11:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB77897E0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 11:17:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="299243057"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="299243057"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 04:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="436994767"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 03 Aug 2021 04:17:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 04:17:56 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 04:17:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 3 Aug 2021 04:17:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 04:17:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aMp0JFf9VDN7LHv7fxI/fHTO58psTkTRfObxOrugSnGor6aCb1sxWHK2lZf7gdRjvniA1vddvdU/ilkvcsmFtFjLrQovFskTfYdgbg+XtJyqgw35SX6TWYZfGH3juYn6N7ZNQDzR1R8nqzndL3M01XVZXXQQhheLVVy+6pZMd8xcCGw7YitbWHNzvT91y1k8pRJazzm7PqNmX+4beR+CGbtFnLxJLzGyCrSNRQO/l4S2PZ0iRwKdMPkroWZhf408cyWeVeucvv1D0Bbq5+XhpvDwNoH9xhps84HSGM45DycWA6zR+A/5TcqJF0N4q7Se2jXR+mUuZSImlK9L7Jr9Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HUQGMVhvkSpCNnbEvk8qUix01j4qTZWlVoUXl0gNwAU=;
 b=lZLqXFHbbKBaZ6yf9qu01gYHWf97Tpdwa2i6cIPTFVdxJPkzsbl69arVsvvflDMy2ZlnOBMwdfv7S1DlwFPXnRufXuFF3dVER271LfEhfC4mK2NvLf4d72GyyDQriZUQEBbeB3dArvDBTSDD41LTnRmc9NU/O+F8AP80UBXFyQSvUGf+/6JcjVbb4K4YhI9yhRjsIdND2QtYp+GYsePFJfQKphpY2S5AzIUtsB3hb+fgy5m57HFR8tO88+B397VUmuiEcTOHFOjcOYNzLlBJ/SiK2fAAN3sn0Nbaj6D3rDKQ8Ulp7oKZHzsMO/54D8lAadf47AlZYa9bZb0e6TLWMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HUQGMVhvkSpCNnbEvk8qUix01j4qTZWlVoUXl0gNwAU=;
 b=ASkRm6BaMKcoPTIpOngCvJVRvJuAhKA7+ec2KLztGEXI67yO84/SWRJlWYer4XB4R+Dtz5TaHtkRiB7Ib1xkTylIu0PTBUR9TWCAF82BXNuPgn/97tJMV2SzcyRHRbrWr/S5y/Y9lKlhtyweFEAW/rvQ6/20yQoT1rzGO2p8tfc=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5505.namprd11.prod.outlook.com (2603:10b6:610:d4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Tue, 3 Aug
 2021 11:17:48 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a%8]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 11:17:48 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-4-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <c0055e67-2841-0ef9-c18f-d60e9e186897@intel.com>
Date: Tue, 3 Aug 2021 14:17:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210731001019.150373-4-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0458.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1aa::13) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.252.35.69] (134.134.137.83) by
 LO4P123CA0458.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:1aa::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15 via Frontend Transport; Tue, 3 Aug 2021 11:17:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5ae0f3d4-cbdc-4136-c525-08d956705372
X-MS-TrafficTypeDiagnostic: CH0PR11MB5505:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5505E7317830627A34C31546B8F09@CH0PR11MB5505.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HpT8cYHX/GTqHGRDTgIJ3+nis5r5XqjnlPCmIT3n3UYa8v1tssC+ppHuCta+5ZFrkU7kaRfymcQ/BKa2614snFjRxzb8ZmN5Djoi38zDBb+H8sQ4HK/2k6tDd8+bgLBvJ0IJS3O0S8BryXe8+pmoN+WdXEGm3DPC1YfalOE9Ou/L7j/pq4H6GRaPlf+V9sxDgIzYK2WO2cgkJBHBCUOM2rwYcxLVrbgLcIr6eMsvrisFgnExPzA5unvuai4caU/9BWuByq1+xZi3AIOiLCF68VOdVRVRWqtdMgC0sshMITVFY1M/o83o/JydhKtLUX+W2VdcWrIkiL8ZZTZ/uuHvx69MWHYaqsV5Om0M2O9YTQv42wj+ph+TecuNaJPPj9fHV3t4x3pw/w0wR82iCBmoViLNkGBoYMou7DGoHiqBY0+NN4EaHUkEurozOGy1X0x7d8H/cSv07ZKZN3tipSbOzrxr42jnLfVWLuqQL5ZFfs6b1XaSZJmKh/fhopDldy5zPLzshxnf07UnUNBhBY101EXhiFWfw820miAkniUHnMcsy83aAiEft/zpfwo6XGEX6/AEqNhUUoXWHbHLSx21MCLczSNXPbMv5B47FtDTZkLZLAfMo+X+ZKCO1e/Y5O6nzIzZczkzK1VQ1V95QZs+1lqgEDFdzREGSqVsfq+aN4dl9NnkO6Kp26ouQXcLBecxy2lpZB2M0JarV+BRpLlDJ5q6eJkOaR0p6js140kqnDo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(396003)(346002)(39860400002)(376002)(16576012)(2616005)(956004)(66946007)(86362001)(66476007)(316002)(8936002)(53546011)(66556008)(2906002)(6666004)(31696002)(36756003)(8676002)(186003)(83380400001)(31686004)(5660300002)(38100700002)(6486002)(26005)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFR6bEZIQjNRMkhnS2twRFZNUzB1ZUd4V1hzNVkrZVI5L1JhR2pKOUVDT2Y5?=
 =?utf-8?B?RENmOXAvMzVGL21ON1dia2F4ak9ZVmxlZFJaT1ZKdzZLckxsY3JGV2s0eEtQ?=
 =?utf-8?B?OUxVZTFjRFJDbWYxOFlLU3ErK3JpVkRUemRMd3hkdnd3eVJUd1Nla3VxSmpZ?=
 =?utf-8?B?U3kxNEZWZldTbFRpN21OOHduVnFWcHdLYU95KzlxSzBJOFpqZTFBak5lTDBL?=
 =?utf-8?B?ZHZldStMbHA3RE5TUGJvdUxDbTA3ODR6M2hKV21vT1Jtc1BLVkYzTHE0YVpC?=
 =?utf-8?B?Mjk2RU1aU3QzTW9Gb0dTQ00xNHFtWUVETjByVWVEWXlOYnNETmlFc3Z0MHI4?=
 =?utf-8?B?M2loTnlkVG9MUXFtUDFzNzVTdFp3bDRzQTNEVW5qbCtpL0VacDZwS3hONU02?=
 =?utf-8?B?bWJXNjVUWkVSVklvMDM1Wkw2VDZqM29IU29CT1NvSUtaekNsbVZzVUFQc0gr?=
 =?utf-8?B?ZStpbDVwV2EzU2M3YUlySUErSWpRbDd4VFUzQWZwVzU4eUY5U3FMNUYxUS84?=
 =?utf-8?B?a3lOVFlkNUF5OFpOQlRjak9tTE4xT09nRXdTV2xTN3VJTTMvWFBRTnZUYkds?=
 =?utf-8?B?a1RWdUVmMU14ZnZ6MjdDMGJHZjJ4RmdRSGFGQ1l4VUY4MlhuUnNiSjBDNW15?=
 =?utf-8?B?cnh4eXdrSmdsTWQvY2c5Z3RTQVVDQ1BwR2lzYnFqdnBjcVZlS0QzMTNIR0NK?=
 =?utf-8?B?bGNKNnFFY1NycTJMUTloNG1TZ1dMRnI0NlM3SkQ3T3hBNUVWTFVWY0ZOVkUz?=
 =?utf-8?B?dFBNMmNXWTludDd3MkNVZ2NQdnVrbTNjV0NaY3hYcHBRQTVXQnY2Qk1RRmNu?=
 =?utf-8?B?MnFtTHRXdStVdEtuaU9jR1R5V3orZ0IwRXo1Y0dRNGJFbnFwenpZOVBLMDBt?=
 =?utf-8?B?djlEVmdWOEp5ZmlmYkpYaTZ3bTE0NnMrZmZQakhVVWhsUE9qYWRKdUR1aVpP?=
 =?utf-8?B?VFV1US9RV21YTXU1cjZpaGsraUZZbkhPZ01ra2FCSk9RZHZueGpXSGVZUkZD?=
 =?utf-8?B?S0dlWmMwUWxGejg2ZmswR1VQcjluSEFoY3pibHVmdUpjQTNBaWd0ZUZsOWpV?=
 =?utf-8?B?bmJTZGtwV2NONDgwRERjN0Q1SngveTYvMTN1anNTSk9POW1HOEFERDhNMmVH?=
 =?utf-8?B?VythekZEYU5YbzN2TjVIZWpIU1lTZjNjK0g3cjIzcjJPRG9BdTM3OFN4NHZ0?=
 =?utf-8?B?S0hVWVhsTHN1cWhUcXFmNmRBSStBRG5LaDhGN3daZmJCNHNsWjJFQ0ZlcVFw?=
 =?utf-8?B?cEE5U1R2bmtQam1RY3dWOW5RZUN2dGlrL1lOa3hnSFBwcnRpb2JpSzNqRWk4?=
 =?utf-8?B?NHhmSGh4eU9MdkVPSTVLbjJxbmlkOFV1cy9EQmJwVlBnamF0cVZHMkx1VS9Q?=
 =?utf-8?B?V0hUV2MxUXFPSDJWU3VYUGdhTHFSVnY3SVlCRDZiQjZaV2RITXVZMHdRV1l0?=
 =?utf-8?B?eW1kdXBBSFArUlB6aC80emthNzBCVjJOWUlvdEtLOFlpMTd5VHExU0pRanp3?=
 =?utf-8?B?bXpDZEY5cDVkby9UYU9WSG5UU2F4cGNsV0YxTWRnRWlVbVNES0s4MHErem93?=
 =?utf-8?B?YmxTMGVEblRBQ0U0ODY0SDcraDBzY05vRmtlTkpxU2hNb005MldDNjlkd3pm?=
 =?utf-8?B?a0NwUHRSSDNpRll3MTBSNjBUT0VsNFJucWR3NkljMW5PNVZTU2wzdWtvdlV2?=
 =?utf-8?B?dlpDREFMVEtxTm02K2lYNmYwNzA2d0ltK3lrRDZXeXVZampoTVhZUVFwdDVz?=
 =?utf-8?Q?VTakidhYyva4pLc6JY9ZaC3QW8PAlWtcKVdHLHo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ae0f3d4-cbdc-4136-c525-08d956705372
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2021 11:17:48.8809 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uaa6gIAk1OrFMzFauaiX6XPUjLv6tISsMWO5IYLpI5FJPZOFJeMy8pNr+27kAllXMe+x5RU9EQHzcZXBuWUdYhzLfVxhbck3t6MQPy2JWlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5505
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] DO_NOT_MERGE: drm/i915/display: Enable
 PSR2 selective fetch by default
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



On 7/31/21 3:10 AM, José Roberto de Souza wrote:
> Only to execute tests with PSR2 selective fetch enabled and check what
> is broken.
> 
> IGT tests know to fail with this:
> - kms_cursor_legacy: all tests that checks if evasion happend, I have
> fix for it making cursor_slowpath() returns true for display 12+.
> 
> - kms_psr2_su: The pageflip test, it needs to have the damage clip set
> otherwise it will update the whole screen and the selective blocks
> will not match with expected.
> 
kms_psr2_su is a test case for intel PSR2 HW tracking and kms_psr2_sf is 
used as a test for intel PSR2 manual tracking. Is it necessary to modify 
kms_psr2_su for testing PSR2 manual tracking?
> - kms_psr: psr2_*_(mmap_gtt, mmap_cpu, blt and render), all those
> tests should be dropped or skipped for display 12+.
> 
Could you explain in more detail why we need to skip on display 12+?

> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 9 ---------
>   drivers/gpu/drm/i915/i915_params.h       | 2 +-
>   2 files changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 894a2d35668a2..e128f0c2aeecc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -877,15 +877,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>   		return false;
>   	}
>   
> -	/*
> -	 * We are missing the implementation of some workarounds to enabled PSR2
> -	 * in Alderlake_P, until ready PSR2 should be kept disabled.
> -	 */
> -	if (IS_ALDERLAKE_P(dev_priv)) {
> -		drm_dbg_kms(&dev_priv->drm, "PSR2 is missing the implementation of workarounds\n");
> -		return false;
> -	}
> -
>   	if (!transcoder_has_psr2(dev_priv, crtc_state->cpu_transcoder)) {
>   		drm_dbg_kms(&dev_priv->drm,
>   			    "PSR2 not supported in transcoder %s\n",
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index f27eceb82c0f5..8d725b64592d8 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -55,7 +55,7 @@ struct drm_printer;
>   	param(int, enable_fbc, -1, 0600) \
>   	param(int, enable_psr, -1, 0600) \
>   	param(bool, psr_safest_params, false, 0400) \
> -	param(bool, enable_psr2_sel_fetch, false, 0400) \
> +	param(bool, enable_psr2_sel_fetch, true, 0400) \
>   	param(int, disable_power_well, -1, 0400) \
>   	param(int, enable_ips, 1, 0600) \
>   	param(int, invert_brightness, 0, 0600) \
> 
