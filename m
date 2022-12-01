Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF9563E966
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 06:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99FF010E0F7;
	Thu,  1 Dec 2022 05:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7237F10E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 05:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669873377; x=1701409377;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W47t+mvxidetfEDhy6hbPBS/b39Ha2wgTJBZtbnTdI4=;
 b=kT38nDWcfbz6FJHnoC73ELBgusmMMDbg5BFz6tHJjwpdC/fVARI5Wr99
 At8z9z21xc9Vt41a81CYAgcaZRmtLHMaPhBVBfExb6sqQxx5JK/gCLONd
 DF2hC0JWehTcmXeVjjYbBWMxBHfydDEGUQteklcN3mA/yYddUqNIpZb9G
 QoAVASavaY8i0rNThgtq/siH6ju8tp6qexDE3//5Q6qCIu4FpAFVvgFLD
 AZvmYoEfh+z9/EZvn4ePWUebhyJrX1Brrk6Di2+WjGDnqKR3pj6jGAoay
 EgZx8sbXfsNAUZkZhfCR9dGqCbOfxBbVj6bcljR5CglYYJdPR0JbNpxjF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="316748450"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="316748450"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 21:42:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="750653921"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="750653921"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2022 21:42:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 21:42:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 21:42:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 21:42:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYALQhQgt2QE7bgD506MWZWB1sviTbuGMe4MMcZ6vtJymSdhKniNUVd5+RMaQ+5aNdfXwjdyhEUfJICdgCOpehQwKAzfdwWSM1zKQO3FR7rX3zzN5QADtrL1VbnwViKYFvdSSn5WIP8pcaPhS7msNjm6dIRakxIdj/tnQ9DfIr++TmPznHWJsEzli/1jNbZVfPRxRJumgdKYKrb255gY+19qgD39ET3/98kJ2cy1Yopa2AsAJCRJlSvFoIJToBdxclCPeQWz7qFLkULnIMF+bH9BDwHvQ8l3vL6vct42aSEQ3zBsm4SEGHWtCZeY8E6sJudsKGNx5ZWy60TDemy2rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f54ZEindjFym83pwOaP80sw1nB4FjG+I5zXkaGz+rvA=;
 b=cmTLjMfIThlPeCihZd9d8C4hDrhXOrT/Tr4idSo0gkYBLPixFL2NTV6qfthoX8eIvucy55D1bcOUoBDqUd8sdRbAdFT2TJCGSpFIPmz1/v/mmYejV5zSxqLIRluN3TttRHZ1bB1KSHKO5vg8secnS18A1upYSk3KZhTmztLA9b1NNX4bm44t+VLyeL2e/fFklLSgvKlfjrYKBBOuGYtnbqWUBVm8DNB65ayGmXHn/hm6aSF5B4CRIe2jQo7xuHkxS97ohZtM107skqWlAimII5P7viRsHXg0019jzDRoYmCXMdUwnZh7tiFTTQq310P/5HB2RgNXo1muzkPpGKUe3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6461.namprd11.prod.outlook.com (2603:10b6:930:33::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 05:42:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 05:42:40 +0000
Message-ID: <d828d3f8-e0c1-7075-2fbc-26482b6757f3@intel.com>
Date: Thu, 1 Dec 2022 11:12:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-3-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6461:EE_
X-MS-Office365-Filtering-Correlation-Id: 286c577c-f22a-45e0-efc4-08dad35edc59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KaVNWVvF3uQ2rNrqNNgQL55AdevW1aDhpaz8jymzC+kGco66VCjvivjQhfzB+RVdVceYwslw+N53g2KzNN9fU88sDbKPiqK+g3qEQnMtNImmRcOeftZX5JwdaLAVD8TV0yBdMzY7jRJmvVkQHzbHUTqGPiwSpEaVuRnhmVpuzTMtKu2HkmEAAN1LOYnlXgK2b7Pdyb+yWwJLW8pwJ51Jeiize/8tOLKXJ34zdy8t2Yvx6wBH62ZJ9Pf8xfFDERd0r9YN53fwhfymJKgfi+oTaHcEiC+O8HirNHcXVSCXoUBXbymMQTNKe+vITgTfUsHhfFUzshmrGJNAWzqGkDWhE8dRLALIL/PHsxtD0d59iWCQfvg4Uw4IjPF0cyzsVdcjzwOqayen+OVEymXC1OPUiKMGdIckpnSZ7oajBj0GHCaLQ4EA+Corrl1bCwZTrR9WIdCrRvd7bzAE4sJgy79FesYH9VURYu7wNnZBGGAc1qWLkodojqo5nrS+tSidXmfAnY/+QS4NklRdlAl8PbonMhgrjQIiyZL6GIHdUaL0/szdcR50JkgZ+A5Qmfd4hmt13MzntV+slogFK80OOvjoQ2Z9h4/PVtd5lfmC7CVwR1SFdYnRmgHLytr+x0Ofxak0ssaDwWrWBo89zsLc5m7bc35zEapRtlWGKMVF5tM8BnZ9ma2tSJjFo34QXImQtZwjAGeT2322IsAcL+I8t5j14lKye24szywfW6Ib4ck0KK4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199015)(478600001)(31696002)(31686004)(6486002)(6506007)(6666004)(8676002)(2616005)(41300700001)(186003)(36756003)(6512007)(316002)(8936002)(5660300002)(26005)(53546011)(2906002)(83380400001)(86362001)(55236004)(66556008)(82960400001)(66946007)(66476007)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHRKN3FDZFBTZnBsbnpRTDRkRS9rMURMZ2RER256aVNKanZOZ3Q0c0h0RzJD?=
 =?utf-8?B?K0RtQ0NQYkg1eTFTMWJCa1ladFJ1WXR0K1BBT0pPT09HWFp5eFdRQ21xMU9D?=
 =?utf-8?B?OTNROGZ1ME1Gd05sZ0ZiUWxyZFJGZlhSV3g5OUV6cy82cU4yU1YrUnJTVkM3?=
 =?utf-8?B?c0FaaXV6MEx3QnVKTjRqWlpKQW1UenF3WWlzRHMrNzQyZTZYQlBEdWZyMVBR?=
 =?utf-8?B?RXhjQ0dLaXZBdEI5VWhvaGQzb3dNVk51SHNyWG1UcXVLWmFjbWxuUy8vK0xC?=
 =?utf-8?B?b0s1bjRPSnQyNU5wWHIvNFVETUo1UTl1VW1TS3M1Sk5JTlFZM2lpZXF0Zjd3?=
 =?utf-8?B?dGZIUHpOT3VOVEZNdDdYUC9saS9KRFpyUXlDK2tISWh3dXR5N2xkNXFVT1Fa?=
 =?utf-8?B?TzlXTDM1Qy9JbEhaTDZjWlllYXNPaWVxV0wvOHhkWlJwWFJsUkxGSHJuQzk4?=
 =?utf-8?B?NXFWSjdOakpmaHdOQVlZWFRmVW9NNnBqeTEwNHlycE9zVkRVNmdWL1BtbWZB?=
 =?utf-8?B?OUhYdVhpVEswQVgxTi9qWTRqZ2R3NkNxd3R6N3dEdWRnUW82RitLZ2VQV1Qz?=
 =?utf-8?B?SVBLYTlvVGw5eXBqTWxCMm1rNDBrWkNQTlNZWUpKUDZmek5pbUM2cG1KbnJ2?=
 =?utf-8?B?TWJiaUJGUG9ZbW9ncndIWWRnMjRrbkM2cFY5ZGRWVkx4a21rSUY1a0xUQllH?=
 =?utf-8?B?MjBQeFhLYW0yWEE2bXVKcUJwM1MzRnBGVXBhZy93cFU5U2NGaXhCWlFvVjNW?=
 =?utf-8?B?YkZnUitNbWNyLzZXUExBTFBXc2h0TG5oUEU2eWRRSzlEakw3MHBLYnRXemVt?=
 =?utf-8?B?R3VDeVZtUzlPOUErTk9mMmo2bVBXalN1UDlOWTFqbnhkMFJHQjVDMjBLNFZG?=
 =?utf-8?B?UVhTN0E3a0JBWk1lcjRxV3pNL05jSG5SbEhTVGhiYVp2SWl5VVRJVGl0eS9l?=
 =?utf-8?B?T2xoMEhXbjl4TUdYTldtbnlzYStQZjhtdlJqSXZIa2RzZ0NNVGZpMVlZMEtl?=
 =?utf-8?B?aEo4eCt0a2lIbnV1a2xlL3cvNkdFbmFHR0RMN0FnVnRjaVU1am9tQk95cFhn?=
 =?utf-8?B?TnJTZEd1Z3UzejhLWVZCSEJ6TVhUOC84MHUwekJEYjJEaCs3ZXcxYXZzMDNh?=
 =?utf-8?B?dVJUL05KL0hIL0J6VHdKYlFkMEpqdGhwZzBYN21NVU9sY1ZHR3g4QnVtVmJ4?=
 =?utf-8?B?ZHJNWkdnVFR1UW93ZG1mRXZ3ZmRheXZ0dFFCY01SY05Bb2YxOUF5cXl6VzZQ?=
 =?utf-8?B?QWw2NWRPTXQyZ1lNVno1LzBVbnAwMHB1RFJCckhqMURLRXdSSTl5QldXS2FK?=
 =?utf-8?B?Y1BHZVQ2d3R3bGZUdWhYQStkYUMyRDdCTEVLMy9TcHZhbStOMjBrNmRqeWsy?=
 =?utf-8?B?WSs0TlhEaEF1R0ptc01HUCtjemZwN1gxR0ZCeXBQTW5ZeHZ5V1B6SkYyVHJC?=
 =?utf-8?B?R2xNeEFJTzlEbGFlTGpzU0JlbzUrWEpyaWROaEFJQ2E4OExqbzQyTmI3NUx0?=
 =?utf-8?B?c1F0dnEzdWxNbXA1S3l4bUk3WFFMa3FldW5RZzNqNmx4SmcySjRXaUU5MkxD?=
 =?utf-8?B?bG0zbHpKL2tUMytVRElGbnJGRDA3S2xWRGI2TW9tay9ZZkJSc0VJNW4vWUJa?=
 =?utf-8?B?Zy8xSVViQTloVjQrU29JbUR5SWs4TGoxb2lZZG5DTUd6emVEZmY0V2p6RzYr?=
 =?utf-8?B?bmE5MytiQTdVbGc2N2w3QlB5dWdyYkdSY1E4d203SlkrMFlQbWwxVWp6WGo4?=
 =?utf-8?B?eEt0WUxmUGU0UllrNkFBYWl1RTJjVHFISGExczhvcTgyTWc2MWVZbXRPY3dW?=
 =?utf-8?B?Tmk0V2thbFkraDFIQWYwVUtNSHdYTmpOdHA5SE43aTFicTdXWkhtMklybHZD?=
 =?utf-8?B?akE1UEQxbkVabWh6RncwUXhzekR1MStVbDlsTVJQVXJuYXFGM3h5dTdNU2dJ?=
 =?utf-8?B?ZStWeXhXc3RqNTIrbTlFUmc3NTYxeGR4THJGU3lHWFVrVitxS1RNQkprNUZV?=
 =?utf-8?B?NjlvYUlGN2FFeG5IYkU2K2ROeFpFQUw5dWlFN0s2NGUzeThTcnJuZVRTVGRK?=
 =?utf-8?B?WW96MG8rbWxWYUtub1ZlaVJLMWplWmhDWTZTNkROSU5NcnlVOENJakFCYzQ2?=
 =?utf-8?B?WUt4d0FjS013L0ZTbTlKNFJ1UXFSaW1IS09sSDJDQU0zcWxtU3c2YzZHL1dv?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 286c577c-f22a-45e0-efc4-08dad35edc59
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 05:42:40.7064 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6SaOM58tgoRsHRWxG1H7EQzSlplmsQvhhofpZm0tBFjTHKrUKDac0OXEYHrnTxC4+59Pj7+aoiK6MX2wgfYRDkgO2ao4kSW6H3gJgmjfM2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6461
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915: Clean up GAMMA_MODE defines
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

On 11/23/2022 8:56 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Use REG_BIT() & co. for GAMMA_MODE bits.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b1c314093737..52d289f55ce1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5309,14 +5309,14 @@
>   #define _GAMMA_MODE_A		0x4a480
>   #define _GAMMA_MODE_B		0x4ac80
>   #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
> -#define  PRE_CSC_GAMMA_ENABLE	(1 << 31)
> -#define  POST_CSC_GAMMA_ENABLE	(1 << 30)
> -#define  GAMMA_MODE_MODE_MASK	(3 << 0)
> -#define  GAMMA_MODE_MODE_8BIT	(0 << 0)
> -#define  GAMMA_MODE_MODE_10BIT	(1 << 0)
> -#define  GAMMA_MODE_MODE_12BIT	(2 << 0)
> -#define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
> -#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	(3 << 0) /* icl-tgl */
> +#define  PRE_CSC_GAMMA_ENABLE			REG_BIT(31) /* icl+ */
> +#define  POST_CSC_GAMMA_ENABLE			REG_BIT(30) /* icl+ */
> +#define  GAMMA_MODE_MODE_MASK			REG_GENMASK(1, 0)
> +#define  GAMMA_MODE_MODE_8BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 0)
> +#define  GAMMA_MODE_MODE_10BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 1)
> +#define  GAMMA_MODE_MODE_12BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 2)
> +#define  GAMMA_MODE_MODE_SPLIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* ivb-bdw */
> +#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* icl-tgl */
>   
>   /* Display Internal Timeout Register */
>   #define RM_TIMEOUT		_MMIO(0x42060)
