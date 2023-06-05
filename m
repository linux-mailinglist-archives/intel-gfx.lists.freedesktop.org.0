Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 296D0722D22
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 18:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAD410E102;
	Mon,  5 Jun 2023 16:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0B410E102
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 16:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685984314; x=1717520314;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hGKIbz4B0DeWcdkqAvOyQh7J3PwnvRjppH0iaCG+CK8=;
 b=FSCD0s3skSTtblOyxXMR1y1Tgy1ynY4hleLP49Z13G4JTCnvslLheBpo
 +Ff3MhjaH3sMpgkVS3H66UhKSXacHHxFOkXI7dDjybW5hyYP2CO1SVN5S
 PEWF++uLqCTMkYazCpYzZLLY7IKcr1sKPQGaDtMq9Z230M5Zgsq0OmLDH
 HNjR8Ya2WFmonMcdkG7avqlBOYXGv7HcIL+udT3udYa3W161CgpSr0mch
 u3C7D6R65ABeoVx1zzp9+5qhP+SdfXQ1CLDJA1LhZs4EUhyevfwG+77wr
 u0GctqVD6oxeVBwQxvQ7yAMM4QZqZ8MEedGZ2aydhNzK+m859FzQkjewn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="355273212"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="355273212"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 09:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="741784204"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="741784204"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 05 Jun 2023 09:58:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 09:58:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 09:58:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 09:58:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 09:58:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjXdaSmrGwnpTNQGqBwHnAbTj4sqyMuMEjrxfwR9I7hw8/1q4HcbEPM/1L7zGUa8/tG7A7/lpDWvSBkEvdqIfonAp/5bvN3B+BmvfsS96VI+JcfunXIMT9/igV0UhzUxu4e9vpat9xhDkvAPGWddruUIsjxpKGoz2wppFUhC7tc6cW3lANwJxCQhtCHMmPu/97bG1ncyxagwqeBswTt7qbv4CpOc9JK+bnztwlprJOwBpSX/p9hWNGqfH4oU/2r9Gil3k6fbN6HyJQjs/NolPM29yMvE7aUiDgVFwBo9jk8Hw2IKXORs/6wHnlPw9L5mymj+pd4UA6U9ENFeLJ29NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h1KLhWHBJIYkt4O9+fePNKsOELuxpDI0ffQH22OYwCo=;
 b=OX6TraqEl2ehwMXWsQ4HATDL85xfrhpouoY3pO+6/GGjmvySsJm7iw7ER14lN1XnAPOlu2fLC/PSN8MV7YmhOaI7qdrQO2A4g1aw70meiqaP5eavO/OwrXfPh8UXVkegPH+GUM8QIfbt7PBRzr0KdI/PsUVKBb/0z0dGdKOav1CBKVye4ukhwOQUX4gxkRzesTsl3eZzVo6MdmgCUVAMhCSIcWsgEs/Mh36uGxhTplrc8Ev2Vh87YQZaHPZ/vY09AM45+/ehwOY0Fik4eukQH1p2B+jc3wBzn6PPcn1QlXhAmLjhlyLpyaI54Q7ATDcILRkuZAQedso0mV3SMSIaOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by PH7PR11MB7479.namprd11.prod.outlook.com (2603:10b6:510:27f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 16:58:28 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::994f:415b:1832:ae]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::994f:415b:1832:ae%6]) with mapi id 15.20.6455.027; Mon, 5 Jun 2023
 16:58:28 +0000
Message-ID: <8f1a3827-5dee-628a-e278-d3fdd8e0a557@intel.com>
Date: Mon, 5 Jun 2023 18:58:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230605164840.1234582-1-andrzej.hajda@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20230605164840.1234582-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::13) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|PH7PR11MB7479:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f12621f-289b-4fc3-dbc4-08db65e61558
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fpQGR+xhqOzJEteIBYmOVsSCBJ64/OB8TjBpV8Dcq0uMvsINjHtP3Dd0cxxLgu8YWU5nkDPQ248CgpVE9gO6r373rNYjtcXvq8E6g9DvJ/rYQImdo2mtbq0GcEw7v4m/p0yntZxmaTMMobLlvROjEkcosZsfdB/YkwPjWARYgQtx7m6nyX2nRAyTeuuilfQlJJzsQIzxcRDPYpliXdLkeKJvRnwvNu30K144lUk1DCOI2xVqgTX8q8A+Tc++pOrD0QOIXLuxSreZXaQgYTvjrCrMtaB0/InEyma3r0kJtazWBCGDgZrJWbeo1bbt6OhyMECFzGClhZu8xqs+ENwcy0B1uiGe0trJlgKDm0XtX3n2H0JNoxIU0DtNfSAuSebl8Bc26Vu0GztKXfX5jJlbLz1TChXCF8ei2L/biHroeDAefeS+pUS5aHpvp7oMnDmEMTQt+A7ST6PzUaEH1Pu44rXHBIQ6cme6j/SSeBDdjmNtfFW/KmieknNkwiivUixb0OmeJXvmrcK0HQtm2D5gI6EjA11RmQsj27oAXAAQMgDwNAj7Mlsu9UGeDLGzd938XZ0HHQc2qahpI9a/7kFSXVQfTyjnLui/VeyJkXOSkJ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(346002)(376002)(396003)(39860400002)(451199021)(8676002)(8936002)(478600001)(54906003)(966005)(41300700001)(5660300002)(6666004)(316002)(6486002)(26005)(44832011)(4326008)(31686004)(66556008)(66946007)(66476007)(6512007)(53546011)(6506007)(186003)(2616005)(83380400001)(2906002)(38100700002)(82960400001)(31696002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0RoNlNiSjNDcHBsV2c1RTVSTHpFTFc1ZE9sSzZTYjcvSGZSSGpqWlc3TWlI?=
 =?utf-8?B?c2RQMXppN2hSYkNLSWxZMVhyZDMxU21ZNFN3TGFacXJXTlJiSTFmQVVGaE1Z?=
 =?utf-8?B?QzFtWE1LMW9oYUNOOGJndEV0d3JOL3ZYL1BPelArZW93QUNZOSt2SXNRc2Fz?=
 =?utf-8?B?YkYybmw2QW1MRmJPYnBMWEd3RVNLbEFPa2VITExDZWlTWktLUFJKQ295Zmsy?=
 =?utf-8?B?dnU5SWdSMTdzU204SXo1MmRIZ0ZRQzJ2KzJ6MW5GQ0RJUWFjU2htdFlVbUdu?=
 =?utf-8?B?cDlLRW5BWkhtWnR2K0tOVTUvMFNmblRWSjBYMDlDZCs5UDJRVnVMYjI2Zkth?=
 =?utf-8?B?U2FWNm02RHJsRlpCbzFKY2psUVoyVitPczVZMVp4dURlcEZSOEFGVER4SkZR?=
 =?utf-8?B?T3VlbUI0czlBREc3VENCbWZTQkV6dlV0Tm4vS1p1TWNoL0dqWlFHK1FqbWxm?=
 =?utf-8?B?Z2dzNHY2NzFQMmhIOElrZkhodytwaDR6S3VsUDZtWjBFSXJmazdON3R6ZVZq?=
 =?utf-8?B?U1NaY2w4dTY3NGJ3VloxeHRmbkgwM1JJUSt5Tzd4TE0xeU0vek5FM2V5SVI4?=
 =?utf-8?B?dVpZZzdwMWhBL1BLNDZCVDY2dzBPOC92T3J2c3Y4bTVRcElYMFpMcURnOC9y?=
 =?utf-8?B?T2F6NmtyK0NKbEx0dkFhaGRtWWgzSGpIMDB0VUR5dFlOVGhFWmFkNzZPc0Vo?=
 =?utf-8?B?d1pKdWY0aEkya2pCdlB6aGhNU2dOK2RSL0d1SVV4eEtwQVRqVStmcEp2aGVV?=
 =?utf-8?B?Vit5b29kaEd0b3IrTXdVZXFOSG41VWorcExwVk1WcHJLOXdGNHFtaGIzem4w?=
 =?utf-8?B?c3NsN2dMUkk3QXhRcjNBUnhtc2JQU2tOMGtJLzZ3SmJjdU1wR2lna0hHaFc2?=
 =?utf-8?B?OEFTY1NBcHFJZTBHWmNTZmRramN3eVBTSUUvak1xaGVGeXlvNERhSFRzbnFS?=
 =?utf-8?B?ZDZhTGVrck5oMGcvaTVnOGlNQVkzVjV3d0R3SmZocS9DRmJqNFhvVlpxZVZw?=
 =?utf-8?B?bGpNUGhkd3cvelBwL2VWN2c1T1RrNUVYdFQ0TDNoeWJqSTQ5SWJiZDlJVWpo?=
 =?utf-8?B?MmJNM2c2K3BPTWw2emJQNEkyS251M3RUZTJueWNSZ1hpRUFxUXA3VjNGSVlq?=
 =?utf-8?B?MEJ3K09LcVdnR1V5ckJFWk0wY0JEVGgwVjNoL2RHZ3JlSlI2a1JQM3A4aTJM?=
 =?utf-8?B?TmpnT2RqdDZxYlpTbCtITERUMnpGeWdCSkJEMHRNYlE1b1VIVnFuL0ovNmRr?=
 =?utf-8?B?ZUg4clkzcjV5azcrMTgvZ0dqeFhWT0NLU3VSSFZEQU15ZFUrZmlGTStSUkxh?=
 =?utf-8?B?NExOb1JlWWhaOFB5Zkl0NUlnekR5S1hiQ2YzdXFPcWZYc1RMUUFBN2VQa09E?=
 =?utf-8?B?NmsvdThuR1NxNTlYUVpCZ0kyMk5BT0ZYS0NWSmtFdklCMTNCT2VhWFM2MUYv?=
 =?utf-8?B?eis4N2UwSG1kYnU5cGEwN1BaSThxUGVxdlprS3pyRm9MN3Q2OE1Pa09NQ3hj?=
 =?utf-8?B?dGh5andiZUVKanMzcXJHUmtBR0t2a0tqRGZxdGlSY0JFd2F4UlJqZ1ZGckk1?=
 =?utf-8?B?TGltTFF4Z1VGZ3NFVVJIcHJCeGhHNkQ3ekxDazFha29GNUs5WUZWVXlyZGZT?=
 =?utf-8?B?d2cxQTgxTzZoWkpDOUhya3BWUEdGanNBSU16Q1NQQ3JReWJ3Y0hUTFhqUnkx?=
 =?utf-8?B?WERuZjRKYkxVWkxjM2dLRzRZZ1lMZG5qUHdrT0grUG9IUlo5NUJFNEJFbDNM?=
 =?utf-8?B?Sy9jS25lUnZSZzlVZUpLRXU2dmczeFVGc0JKd1NlaFR3Z2RDUmw3czNUbWV0?=
 =?utf-8?B?TTVNK1Q1TG05WlNPUjl5bEJ3azBsU0dBOTJRc1k0ZzBjUDl2cTEwSHgvRUFT?=
 =?utf-8?B?VXFxYzFadzhaNXpQaEswaFVFR2xjcTZIaGVIT3ZCcmhRRmJCZ0JlYW1FcUNn?=
 =?utf-8?B?ODdTekRQV0lLZCthM0g2MUF1K2dSK084aGFwSE1IaExNLzBxY0UrL2FybFhh?=
 =?utf-8?B?SkNWSHRCbHVMeGpidmZqZHNaN0tLaUhJK2hpVUFJWk5ETVNobWIySlpVVkxE?=
 =?utf-8?B?RGdQcyt2b2JkNWM5d0FMTmh4RWxYdk5PTFcrUFFxUmtMYjdnNm96RWF3cXo5?=
 =?utf-8?Q?rbawRn2BLziWWoZaLO+fH84SI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f12621f-289b-4fc3-dbc4-08db65e61558
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 16:58:28.0257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nf9PshZbvbc484Bailohcu7X/RCL8ty3PM6+A7Zxr+S0t770phhnR8JEz7NCG6qLk4e5RQsS4Bq7cCDckmxWmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7479
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not dereference dangling
 engine pointer on fence release
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On 6/5/2023 6:48 PM, Andrzej Hajda wrote:
> rq->engine can be a dangling pointer if rq->execution_mask has more than
> one bit set, ie it could be already freed virtual engine. Changing check
> order prevents dereferncing it in intel_engine_is_virtual(rq->engine).
> Full description of possible scenarios at the inline comment before
> the change.


I came to the same conclusion but Chris mentioned "you create a guc 
virtual engine with just one bit in execution_mask" :)

Suggestion from Chris was to have "guc virtual bit" in there or 
"eliminate the single engine guc virtuals".


Regards,

Nirmoy

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7926
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 630a732aaecca8..8775952f5c1bbd 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -166,8 +166,8 @@ static void i915_fence_release(struct dma_fence *fence)
>   	 * know that if the rq->execution_mask is a single bit, rq->engine
>   	 * can be a physical engine with the exact corresponding mask.
>   	 */
> -	if (!intel_engine_is_virtual(rq->engine) &&
> -	    is_power_of_2(rq->execution_mask) &&
> +	if (is_power_of_2(rq->execution_mask) &&
> +	    !intel_engine_is_virtual(rq->engine) &&
>   	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
>   		return;
>   
