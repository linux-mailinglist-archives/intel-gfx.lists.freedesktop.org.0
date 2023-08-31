Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB4978ECCA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 14:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 640F110E663;
	Thu, 31 Aug 2023 12:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E6210E657;
 Thu, 31 Aug 2023 12:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693483803; x=1725019803;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pDlEWz7jjj1+6OGZyvg6KqwiXp+ej+QNFTukg4Rt1c4=;
 b=BDy9eabHDTQvXUFo/qNaXVRlKyUXY+5mvXrGpY+887hbEQeylJgXOGwD
 r2t2ygCmGE5N04IRxqUbONrctwpoosBUySBNNcxCwO940wTKutlkHsmpo
 RDPt9Q+uk0/9aQQmREiCEaBkqeZStmgY/DxGlA/Z6IhGPSKYtAA0VxgVf
 BQpgD3dRlq9PH5iwElVqPRHHKJU0nqDyceY99kLnFObdCZmGAZB6Uvs98
 wVOF87/UTpS8bMIoWlyDPeeZ/+7/wsOqOfLufZ3/F38fSpcYvVJ74yS1c
 viKXJv1IxGNk2i6GjJHt7xbmK+5KbvB1mjFtEEGJbsTkIoaIICAt5Iivc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="356231923"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="356231923"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 05:10:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="804949923"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="804949923"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 05:10:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 05:10:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 05:10:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 05:10:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 05:09:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mc1qYh6+KyMFjBPIh/pJyRg2fZzk8oq6n0fvQUxdfoASA3ESTkwaFhwq8nblcIUccnp0phAlLKgIgYO2Pa/HE4SBiaalsa8UbPn5TNjcJuCD9hGEMGbERrcK8zetV7jommJF3vdd/a4icbIJrWHIqNVgVIdS5tIfxHw/YZclIojRouWvaX1i9MLIqI1XbtQDtJDWURb8lK++WnVl5YryFRwxgQfXh/bjcidwtFJ292MSXS19nRTIBD/u+o9stHKIlZIaM28pP3eCgOOFjSIXJf4aZN12tTq6SvuRwKZ3q4dvUFoE0MQNlsFn8KbwqbPXBuIiVi7mpZDTAh7dPuvSKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0uy3NCGBZxehryifC8E2PIdtU2M/ESGMVjM3H0WW9bY=;
 b=S3JlUet1exRcBdtXnJAjfnME0p2xNTXgzLgqJBM6qUzeKGkgTm1ytTbayQKRTr2riKaGCz4nRrJgSerFAzR1OBxb7UNGuHSBN0vOQQESxa+fHmbSBIJ6DGi3+Q5QCJ2BhcUDqMC0ihtgu+WJyfD17CMZF3Nd5xAP6wpZLUPk3OpYiVtOyBXAtndWh0cLlRx0GfBHaAIb9QvDsklKezezahren99y5tZ3sChfPAvi0W6/16zZphobUhFUUyGILy291Et7IGhHtwWAI7qaxtlBmeNGT5P2xS/4qZll86aJwo4ldRpMMhNk9HxQR9J+sbJeV3wdBOWK2yMnufXHHlmXoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 by SA2PR11MB4906.namprd11.prod.outlook.com (2603:10b6:806:fa::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 12:09:42 +0000
Received: from IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::6f86:7fd1:af53:ee2]) by IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::6f86:7fd1:af53:ee2%7]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 12:09:42 +0000
Message-ID: <300de67d-dba0-d753-2c86-df51026a6497@intel.com>
Date: Thu, 31 Aug 2023 17:39:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20230830233836.477940-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20230830233836.477940-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::23) To IA0PR11MB7955.namprd11.prod.outlook.com
 (2603:10b6:208:3dd::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7955:EE_|SA2PR11MB4906:EE_
X-MS-Office365-Filtering-Correlation-Id: aff55177-15f6-42b4-4332-08dbaa1b27df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NSNVPwJZ3eDKyQzt+Rhup6Hd6Tk6mttiZGlWemFoIQlnIpFZKmqEIZbavU2MPMdX778V1PM84kzWv14NDlatPZCRYS1nqyFPW50e3fFc18y2YfZJj1Uh0zLJm20XOolqTQDRHVBz7nzMBrNbHuYqd0Q77deA4CzRjs8X1LppR5tXrvQgG4qWD3NexzjkML/UsNFQScZjH3cLpGGAiiI1eFqrlI1f0f663seB+CGM2Cq23r2haOYb/J7dZUvJbvTos77mpF30C3bDYzo1iu0pA/q6Vlw9BhC0Hlvdc+obg7g+1PB5t533Z5NaiXxjTNgBZTHaG7sN5NZQOGHQwfu0D6pq0Qbrm762ME8CfKEc4iPtlTSxZA0Bvz9HTft2LH7E6Vsn5kglP2fEbJdTgfrznJvoWI6u6OWZ+DZEJDvYZUPAeF8Q8X3M+lQwwYYqzGn8ImbZLjPTrCWCk73DV7sp368rkrPLWOJUbdGKKkw+ZqL/jzd1eMFOD2TNYTwB3Ha8Y99MVaJ2bLmrSDEMTAn5xu/iWwT0lU5k6+h3x2EbqqyXrBpOhIPuruJPNjr9UumRkgPVsnu6vKBNUyfNshB7JGdPdGArTSoG0Kle5tW0aP9+Z/+7Li66y7adZ0p3YK0zlk7JAVg+9A1Sp7CE+hktSg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7955.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(136003)(346002)(366004)(451199024)(1800799009)(186009)(6512007)(38100700002)(41300700001)(82960400001)(316002)(5660300002)(83380400001)(2616005)(4744005)(44832011)(86362001)(31696002)(26005)(36756003)(8676002)(2906002)(8936002)(450100002)(6666004)(66556008)(6506007)(6486002)(66476007)(31686004)(478600001)(53546011)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFJsQWtxclpKQVFzcWdybGZxdGVZa3hHQzE5c0kyQVFCUjZLR085RkJTZlJD?=
 =?utf-8?B?NnRwOVNLQ1BnVCt3MTFFZmlWZWNJT0UwNUVpaHM3ZFBTUXN5TTJMaXkxbnQ0?=
 =?utf-8?B?OUNWVmIwRXFDeDJPVzhiakROMnpKWkZuMEk1UGRRSUx6aU5LUW50K1l2QzZk?=
 =?utf-8?B?OHhYd1lGNTZOVGxoeGZ4Zkx2aS82Z0M3SmlEQ1VialVvYzdMay9vSGZaVTRN?=
 =?utf-8?B?a1NxZFVsVDNFQVZWZGlZYUJ2QUZvU1JhY1dsd0xNTVB0amlmMHNicU5kaFE5?=
 =?utf-8?B?L0hDajlDcmhOQjdVN2FFQ0QwL2dnVnBSUUx3RVliQ2R6dFlkWC9zaURNaVJk?=
 =?utf-8?B?ZzVYYzhxTlAwcFJ6NkRnWjVDVUo2bFdwTllFWW5kOUpBY0xvRXhEdWhqK1JK?=
 =?utf-8?B?bExKdjhyVkRwRTk0ZEdueW1BSkJVNjg4ZXVnZituNFE0NzBLT3RIbDhmUTlG?=
 =?utf-8?B?RWZZNzY2QVVaUktydUtKVEJHTXZSNk1DK2pRV3JONjJ1U2M5MGZrSDF0L0Zl?=
 =?utf-8?B?L0MyUlk1c1FUU0taY1grQTUzOGJISm9RM1hkamIyanQzQk00UFZFcW56R2pv?=
 =?utf-8?B?TGFxSVJTT2dOV1Z3UjJ3d1M5a25wRHBoUnRqYU4rY3lDd0UrSlBzTzNaOSt6?=
 =?utf-8?B?YXpNbWptdlVFMENxcXpGZkh4VTlqaytyZTZpSFVTdGpRNGNXZHhkVzcrcHZ0?=
 =?utf-8?B?dTQyYm4xWTg2N09GazZyTlhzb014bCt0UE1zOHFta05PaFNSL1pXQkw0QVFS?=
 =?utf-8?B?RFJlcGlYSXQxb045TVhOTWFUK3ZPdTlNc1hITmc3NGFKTThqUml5MkhpeHpF?=
 =?utf-8?B?eEdyWVdoS0M4a2FVd3h2RWgrdjdKczl3ZDBYZ05sRXA0VUF1dy80emdBWXVY?=
 =?utf-8?B?S2Z6SE8zNmJVOFowdEYreXErcHIzbjh3amFuRG5zS1V3eU5BeU40eEhZS1Nl?=
 =?utf-8?B?eEtHeklUaUVONTR3eVoxYzA2WVUrYkhjZ2ZHZEZiQ3VwaXFJUWNRR0pPYmFx?=
 =?utf-8?B?WmlDbDRmMHptR0dRZGNQRG9jTnFXcXI1UDZleXZrY0FybzByaHp4UHJsUndO?=
 =?utf-8?B?MVZQTkFaclhMMnFBTkRPLzhxOFdQeUNscWc5MUI2N09YT2dUaFdUcGU4a25p?=
 =?utf-8?B?RHlrd1lkV3A1RXZMUjB3a3A0eUxPcDRuTXBWQ21KeVg1Y3FmK1B6SVIyL2Fn?=
 =?utf-8?B?dDcveEVkenJYTEVsQjRFNEplSUtYOWd5cnZtaW42UkljcnNmeUxuRnd0TXEz?=
 =?utf-8?B?cEZob1JnL3A1eElRREdIZEN2SmpOaG1vN0pzaGVvSTRrNVJzM3ZhNjZYNjJ5?=
 =?utf-8?B?NW1hRlFaSnN3MWVTMFhuZk1PVUlwK1Q5OXN0bzVQanZpeTBmZjlGSDVDeGZL?=
 =?utf-8?B?WkdhdzN6Q0RFT3luaTlPSy93WkxyM1Bjc3Y2U0RBZTVYaUQxTTZ4aExydGNp?=
 =?utf-8?B?anh0UUdWandrancxclNnRk0xNzJ4L1lSM0p5djVmRStOdmVjam9ieG5UbTkw?=
 =?utf-8?B?cmxTanhHV2JvSHN4YUcvQUdodlhlb0ZUZktpMUw5RHRVRlNxWWpXM3RXL0p3?=
 =?utf-8?B?VzVBSXJQNTBYL2pvdUFNY2lGY2tROUNwT2Ywb1pOTWxneS9raTFzdVhDZWxF?=
 =?utf-8?B?cm9aQzJndE4rL1cvdjFjMTZDSHdyTWJFd05DUFoyTk81M2JMZEs4eWR5TnNF?=
 =?utf-8?B?RXJ3cXFCTWpJOGRxOUxDS2t4djg4U1Vld3dHRGd1K0ZIaUtnVDlnZUhyZWxi?=
 =?utf-8?B?ZFYrQ2pPWjZZWUFxMHd3eWRhV0V2RE9vcDl3NmxZMGl6d0pyZXc3SExzMnBw?=
 =?utf-8?B?MGtUVTFKUmxGVDU0NmJ3VGFmNE0zRE8rV1VGU2xkdDcwMVhLVzErdFU3UjlZ?=
 =?utf-8?B?Nm9KMGFaQ2o4cytkSHhLNFNzcVZjekhDblBreFpKYlc0dHRhbDl0ZWFocjB1?=
 =?utf-8?B?RERyWGYwZWo5TFVBUVRnTXphRkpxV0REZ0ptclYzd0JQQmswN0ZMUnJqNDZm?=
 =?utf-8?B?eWNlOUhLSXozSVBmOUtyWVdlQ0IxK3ZZU2ZSSlc5UGNCOEh2QWJFSmtSYS9M?=
 =?utf-8?B?dWJqRzF0QVNRRHFyRFVyZ1lPWXV5eGxHR0R0eWVtVXFRQ2pvbCtKMUk0NVV6?=
 =?utf-8?Q?N6Kbj+tbda1RVZIA5ZOMRqxOL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aff55177-15f6-42b4-4332-08dbaa1b27df
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7955.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 12:09:41.4196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x5Zn7VCnL6WNw5nXQauTHnWZFVVou3kiLEF05Or1tTl4W/4erwGZdQxplBVrkBvS4GVsMmeptckW7VpABQbkeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4906
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_pm_freq_api:
 Test s2idle instead of S3
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



On 8/31/2023 5:08 AM, Vinay Belgaumkar wrote:
> Test skips whenever S3 is not supported, use s2idle instead, which is
> widely enabled.
> 
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Looks good to me
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   tests/i915/i915_pm_freq_api.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
> index 2912287c4..03bd0d05b 100644
> --- a/tests/i915/i915_pm_freq_api.c
> +++ b/tests/i915/i915_pm_freq_api.c
> @@ -125,7 +125,7 @@ static void test_suspend(int i915, int dirfd, int gt)
>   		igt_assert_eq(req_freq, rpn);
>   
>   	/* Manually trigger a suspend */
> -	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
> +	igt_system_suspend_autoresume(SUSPEND_STATE_FREEZE,
>   				      SUSPEND_TEST_NONE);
>   
>   	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
