Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D35E36D9486
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 12:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4557E10EB57;
	Thu,  6 Apr 2023 10:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071AE10EB57
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 10:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680778621; x=1712314621;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rAVvcSWKz3keCsd7kyZl008Y3nm/dCGcezwcEXoEyYk=;
 b=kKWhesXzK3xLZrKgpsKpnWYLI/5UL5n50yxIyaHSaVQrABxly4pFrQJN
 VQ6TZEij5KmdtDxSLDzrQGszy0fYMPBhaDJh+NFA4tE9KIX7ItOWsDF04
 UUDqSRJaN0G6oWoIDJTQvudahVpCo2UBlH0LeavcBGGYdiNSimLq7iXUC
 sA5qNms3F1aH69KX0c6ZxtCl8W7tkneCaj0CwVc5PI/VR2X6RzhZID0XS
 Yn6VC8Dv2DH2be9IQ011cjHZgZTEVxYQQ9OcqjQihIW60i2dvOlGPqARo
 +nF3EnKy/Zoax/umlAAeV3jEy09sWsiWdxPSL9urThZB8ofUWvX7BsgUc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="341438906"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="341438906"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 03:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="637239793"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="637239793"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 06 Apr 2023 03:57:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 03:56:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 03:56:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 03:56:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 03:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gzkdtmegCs9AYGdha7QWM7bd8NPgjhnhbz6R9nUCw9961cHehIGnouIJj6k0VajDvkYSUH4IIubWn/JlBT1r3/fRlmvdMHBAlXFOtt4zhLn09m8YOmR0T25z7My5XMVZF7ti+xAkLr2jzw7jVcW2ITDUhYhc32F3g43OwSEDT8W6NiEEfqh4dmmHAvLcWf8fCdxt8rlJiOWnLJPj/ilFocmCcN6mqJtCvxqstKgvGEiUNSLv54cOdm05s/vIjh341CLCoCI1XBA/3CZ8ruYeMfgi3PzmjcifqWYapXW0N/VbVaGKmb8F4sniL0b3mGJF7bX1/A5eHcZcmIcieiE1Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pur0TnwF6qwE1tizu2UytF8yJ0oBKuZv76aI2uHq31U=;
 b=lOg9y0muOqjMk6ncgHsEkQY5Q7WSjfhoalOEDOw6mGF421r3hWLrmcXkYT0z6FAzzgjVPNqr1S8KwvscqS2M/0Uvfpu4BGEkQd2iSIsxLeVH1mMhEBlzJyMk7lS6Va+jOUPRS2ZKcVQIGicVgER8Y6XL543kEkbN7SZMzMLn/IRMPzvNkybdUq+RNcHpuKX1JS+g2A4PzxN1KXnrqELf1psZ2FINnIbczbQYWNnqKdr3vPk/doX7P174ufiVPeJ1hXkNfquNNE9RuvJ3GhY2CZX0h96C1oLO/bhfEC7TkIW1IdY10NcgjSaTwC97oQ1PtLgY6HyfMidawHyV4c6mfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7448.namprd11.prod.outlook.com (2603:10b6:510:26c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Thu, 6 Apr
 2023 10:56:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 10:56:57 +0000
Message-ID: <eeceb998-0bc6-53c3-a6c8-54b5e660f961@intel.com>
Date: Thu, 6 Apr 2023 16:26:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-2-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BMXP287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7448:EE_
X-MS-Office365-Filtering-Correlation-Id: b5eefe77-c42a-4cc4-1fda-08db368da403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9qSkxsyGQS5aNXIRuao/U+otKhxXilBEtZFK7t489MCV7vt73+A7qNpr5dEZIY+XH5fsHovl3lS19Bk9bNBYZK+hqNmQtauQyxgxVPZLxYzGO6qa+yjycELli931J4T6mhMQkRbXfmt3w+PbtZjIAM+m3Q4o5wdCAw3WByL9kQpLkE6OaXMMgeQ25N9idDIEbSVr2RJFwqCJVOMzvu0IYyfOzInpHMGaTpndqzxr5nYghWGB/Z8g9odEGf+dsJEDueQ1AHsM9h26mJE5Das9AFkHCTwgTl7ZFAtLPC7SQKbqg5wHbKuuhBvH3iGgmDwjP80eh1bWZX/Q7XaLlDkhcpG/0JXZ1hXaR59guKA6LdH1oPorFeVSc09xUI9NnNmGujsc3h4FzGuU6JbY8McsHDUn0itJztyD3RZGkX6Tmv6qv8/skUZBau42BJYZvy0a3kZ8n8u7Qt8gO+IHhu0Sjb47C+lc8QDy72xnEQv+hixNQFyzEfvRR6TNkMlXclsQk2Gqf2qYRK441PrAMFuiFCr5eT7M5UiTWuUfse5DsOQySk2J7242dVxMj7dhiYLtMozg87Z5bE9vI5cuhCswpSv1BOZRz9gSId+6XSOCZy0xESxVgHf4LU5CBtCH04D2wPUCiIng1nEu1OJhRXtPFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(366004)(136003)(396003)(451199021)(6666004)(31686004)(83380400001)(2616005)(86362001)(186003)(26005)(55236004)(6506007)(6512007)(8676002)(38100700002)(66556008)(66946007)(31696002)(82960400001)(2906002)(41300700001)(478600001)(66476007)(316002)(53546011)(36756003)(8936002)(5660300002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWkvblJYYlRibDFCcGJXMWR4RDdLTXhKNnV2bGNZYUlJNHhkQkltbkp3RG5y?=
 =?utf-8?B?endVSDF2ZW1UWHJ2NnFHSUdmUGxDaWFaazZOWTFXdS9ISWVuaHBpdzN5YW5M?=
 =?utf-8?B?M0dxUHVUZ0QxUi9PZ3NidmFzU1VXVXlQU1dFcFV2Q1BBWUVzQlR1VDdMbFZh?=
 =?utf-8?B?NllVUDdabGNTNGF2N3lXUVpmNUNKS0pocFl5UDJUaWQ0RlN0VkNqWkxxSzY2?=
 =?utf-8?B?NXh4cVBvWjR5b3ZoWnNEa0JNQndkNDMrWUpyeldCTEhzZ1ljdElUVTROZW1Y?=
 =?utf-8?B?WVR6NDhTenRBck1HYkRuWENUL0VNR0RVTUpFcU42c1pOT2kycmtqUkZ4bW1S?=
 =?utf-8?B?VndtcTdub1loUjdEb2U0allEYVZyUHQwcDJma3hKekFMM01kSXRnNkhhRlc4?=
 =?utf-8?B?QnlCOVZtV1VwQ2ZxOXlQdVpkeElLdkJIMlYvYjBkanVQZlpaaWw1bXBrZExy?=
 =?utf-8?B?WWI0bE9QbzBxQnpCcE9RYnltNStHUXdLM2dIWnF3VGYvVkRmcDJEeTk2a2Y2?=
 =?utf-8?B?UjVmVkV4c21NT3Q3bHZ3NWUzcFNXZmpENUx4YTNOMHdRU1VwUXZ6aDRmcVdQ?=
 =?utf-8?B?VHYwSHZXQ2xQZHFWVDU1dHlNZUVMSmdoSkhLN0pLQ0gwcmViUHFHaUxYQkRs?=
 =?utf-8?B?d01Ndm9VQ2VOdzF5YnNOa3VQR2Z5QVNONXcwOFdSWnQ1WVdoem95eTZsanE4?=
 =?utf-8?B?OHpVWjQvUkxpZ05FKzd2aU9TYjFpd2MvS3E2S2ViY3FkQlAwQnZnRjYybzN1?=
 =?utf-8?B?NllxVHJaemxPemtFNE52WndyT3hyWGh6cXRmb2FlNVBRMVFDNFZpRnBqbGwx?=
 =?utf-8?B?QUJPSjlYY1JsWmlxb2lUL0ZUclBzU1E3Q3RiM0k1b0Vsd1ppUldaRWFIVnVU?=
 =?utf-8?B?UDRFcFl0TDdrMnY0ZHdYYWtVdkpYYlQxSUJTM2hiSWdzYndWUGd3b2pGdVJu?=
 =?utf-8?B?d294RDc2V203MStaVGpqSjI0RGIrSk9FR2NLUFlmc0o1QTNhMld6RjdCNnF5?=
 =?utf-8?B?cGRPSytoOUFPTTBUKzg2RGFRNWlvaEx2bzcrL2xEa2hheGZZd0JiZGtUVnFI?=
 =?utf-8?B?WUFkTjBteERaL01nTW5CbUZvMktUU2RiNXo5S2M3ajFXMCtyendhMitMc3J4?=
 =?utf-8?B?NWlhN0d1cHFyaldZbVltcEQ5MEM2Sm9UY3gyUkJ4VXYrNUxnUnJtd3Q0T2x6?=
 =?utf-8?B?NzcvZmo4SXFJTThlVDFQWlNJOVVKL3YvNGlOdHdCazM1eXFERXJKMnFMbzZ2?=
 =?utf-8?B?ODlCRHdwUFc0cTc3Q09WSmFxaFJ6M3h1Tys3d1JTRGd5NjJSYStqeFlYYnp4?=
 =?utf-8?B?dm1sNHl1V2JqNGp1Y0kyc1BnM3NkMW9FRGd5Zmp6VG51N2tldTMxL0JldCs3?=
 =?utf-8?B?RkZCUlRhcXd1dWc4SEJDMFV0ekNkRllvNlhiT0hCZU45cjVSYTh4YW04VUtN?=
 =?utf-8?B?empGZmVZVHo5cnRmc2o5OHJsZkhkZWxxYVRVb1ZwbFVWTGMwVTdQOFRuSFFz?=
 =?utf-8?B?aW9LZ0Mxd20yWGhGdEh2WHlKckxDRDl6Y1ZSSWEyczlIcUE1Qm40VmtleTlL?=
 =?utf-8?B?NGV5cndpNzNtd2IzSGM2YXBXZTI4YzBLRTlYTnJCWjh5VjVKd29aZ2gyaFNE?=
 =?utf-8?B?Q3BzcGhuTEZKZERlekFmNFE3M1ExbHppQUtkb3pVWHBPWEs2Vy8xcFJaNUhv?=
 =?utf-8?B?UmR5c2pXUnZkcVV6bVVwcmdzcnRJa1JocitvYW1lUlhuandmRURlKzRudjk0?=
 =?utf-8?B?a0FpUElzV2hHZWh0NkZTcDA2RmdEMkNUSlVYUU92MGVvKzRvNVlZKzJBb3ZF?=
 =?utf-8?B?T01SaFpKNlpKSGFsV3JnMzRSSUFUVng4UzdYb3NCV1ZrSFh2WXFWV1h3cFFM?=
 =?utf-8?B?YmpXMWJsU3liZ2sva0UxL3o1WStXVitnK2kzN1FDak0xR3hpeTlwVnU3eExP?=
 =?utf-8?B?RUJUZG82dXFCSUNXNGpHNFJ2aHBJVkdUdGVEeFdhSWNWblpzZWd0Um1ZUVFo?=
 =?utf-8?B?UURIdDVhU05ORWF0NUwrRzI3QnROOVBGaTgwYkFBcUIwQ0ZWcDJCdmZpY0xB?=
 =?utf-8?B?dEs2UHhud2hVZnNNUTZqbFRhWHN1VW9sajJ5cVN6NG9NNW5KZVRxSTFNMXhy?=
 =?utf-8?B?K21NbytNNVlpQTgvelA0ZnpYVmg1RGZpV1NVZlV1bm1YcFR2MzVYVWl1UTJp?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5eefe77-c42a-4cc4-1fda-08db368da403
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 10:56:57.6962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3lS6Sln9sar0vR7iwjmQ2EbJDGgcdwx/hs96u1APKhAvxUJleap8m6qRU3aFfMYKseIqo3MRA4lZbI9rlWqduf/aaDF4CVQt3uHEsZF1jeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7448
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Fix limited range csc matrix
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

Hi Ville,

HDMI1.4b indeed says max value for 16bpc as 60160 (0xeb00)
And black level of 4096.

Got me thinking that we might need to consider bpc for getting the 
Coeffs and the offsets.
IIUC for CSC Full range to Limited range:
out = in * gain  + offset

Gain :
So for 8 bpc, as you have mentioned
multiplier or gain will be: (235-16) / 255 = 0.8588 ~0.86
offset will be 16, as range is from 16-235

16 bpc
Multiplier: (60160-4096)/65535 = 0.8555 ~0.86
Offset for 16bit: should be 4096

So it seems Multiplier of 0.86 should be alright for different bpc, but 
offset would vary.

Also CSC Postoff programming for the offset doesn’t seem very clear to me.
For CSC BT709 RGB Full range->YCbCr Limited Range, we use offset of {16, 
128, 128} for Y, Cb, Cr, and we write 0x800, 0x100, 0x100 for these values.

But below for Limited range Post offset 16,  we seem to be shifting by 
(12 - 8) i.e 4. Am I missing something?


Regards,

Ankit

On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Our current limited range matrix is a bit off. I think it
> was originally calculated with rounding, as if we wanted
> the normal pixel replication type of behaviour.
> That is, since the 8bpc max value is 0xeb we assumed the
> 16bpc max value should be 0xebeb, but what the HDMI spec
> actually says it should be is 0xeb00.
>
> So to get what we want we make the formula
>   out = in * (235-16) << (12-8) / in_max + 16 << (12-8),
> with 12 being precision of the csc, 8 being the precision
> of the constants we used.
>
> The hardware takes its coefficients as floating point
> values, but the (235−16)/255 = ~.86, so exponent 0
> is what we want anyway, so it works out perfectly without
> having to hardcode it in hex or start playing with floats.
>
> In terms of raw numbers we are feeding the hardware the
> post offset changes from 0x101 to 0x100, and the coefficient
> changes from 0xdc0 to 0xdb0 (~.860->~.855). So this should
> make everything come out just a tad darker.
>
> I already used better constants in lut_limited_range() earlier
> so the output of the two paths should be closer now.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 36aac88143ac..3c3e2f5a5cde 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -116,10 +116,9 @@ struct intel_color_funcs {
>   #define ILK_CSC_COEFF_FP(coeff, fbits)	\
>   	(clamp_val(((coeff) >> (32 - (fbits) - 3)) + 4, 0, 0xfff) & 0xff8)
>   
> -#define ILK_CSC_COEFF_LIMITED_RANGE 0x0dc0
>   #define ILK_CSC_COEFF_1_0 0x7800
> -
> -#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 * (1 << 12) / 255)
> +#define ILK_CSC_COEFF_LIMITED_RANGE ((235 - 16) << (12 - 8)) /* exponent 0 */
> +#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 << (12 - 8))
>   
>   /* Nop pre/post offsets */
>   static const u16 ilk_csc_off_zero[3] = {};
