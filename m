Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 709714AE644
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 02:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EBF10E183;
	Wed,  9 Feb 2022 01:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE2510E183
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 01:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644368970; x=1675904970;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CYwXZ5BYXTRKnumnWaEGPRuEcixzBzra30qtMaXepBQ=;
 b=K9K5rAq+Xt5QblEg2LOtj1YUaSmYVTncuPiRTRaVy1tpARZdqsVC9Cvz
 y/Fxi/TQ/XXMXeEFn6Z21xRca4bLZBN23RW1Yes3ew9rC2+fvITuDcBfM
 s5LrcHR8l23PCGqLTUfcntyUO0fVGtgIPGzKCLVr1CvLgs3XaI2JXE+EQ
 85HXwZBs8N7t44DnEOJAtQOia8jQlyMoDdvdOlM4rCDICG+cevHSObPeB
 dTSD9S0J7cPjHz63Y607Sw+k2epK0sr1GE5CUnj5hqsTQ/9LOzWhOUGph
 RYrIx4rceio/oSBPypqqzwICpYujB6JQ1pE9d64xjzvyqQ5sZyd7bDfcD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="335492879"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="335492879"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 17:09:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="622095804"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Feb 2022 17:09:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 17:09:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 17:09:29 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 17:09:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oNjAaIJudj/+ZH3fGJiyTeNsmhWw7pAG1GePFx5a2ww7pcGNI91MyIW3Gn0V8RjtsJv61uZQza0UMtPcz3b3M7Nq8fWepl/168ts7NaNC4YCEil6jshtt0D8EgSeWBtUXPuS9gD/ADPv61vPN2YwoPZYdEJmsO0PQAw2LNZAsIgTyb+dAw0HTymHwLei9t+LZ65cMX9TBH+Qe9rOIw/lXGQwwY4RSeFsEeh1ASYaakqcp4tRd7APvPTZd7Zn/xOWk4/EoQSZ3CxQQADymTymeneIXijj7jMtACDIINufJT5TWipdVT240IoviiftJSt5xpSCbR/BoBA8/JIfjWsDRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHFOvUyN2Wg2PdKYNBZgqRvZQZRd9G3wR4oeD2hB4hk=;
 b=G/XKUe/yq9H52qE+K40TU+fBsFRyAY78eNDsp3K1iDxo6/P9u8S047rYAVwXmRHoVDs7Y3vrCUY6vP2e5fTxswi3VcXG7OW9Y3hcXiJ0SDo49BgFcP0V8WqOa9EeE8/Ff4nmDd7vxYBR5pjzKeIKrQDuDP2KQB83noOAj/gp5DJ+hd09j1xLmoi+Z3NYGiAY60XbiB8SvoO9m3SAk7NFQr5J9WlPB1DH2IcH7Ezjs/Xz34LcWeNUQ+1P6n4Lnd61qoDv2IMV4FIf3HYN2vgjCYbduwt1te5pGup/mNd4TAXcGRqFC/2tmaRQIpqepNllzKc8UfoFv1wWMi6v8iYYZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BY5PR11MB3957.namprd11.prod.outlook.com (2603:10b6:a03:183::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 9 Feb
 2022 01:09:22 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::ed44:f436:839e:c501]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::ed44:f436:839e:c501%7]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 01:09:21 +0000
Message-ID: <7ebeff6e-6853-8a3a-7e43-d68858831fcb@intel.com>
Date: Tue, 8 Feb 2022 17:09:18 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.1
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220208070141.2095177-1-lucas.demarchi@intel.com>
 <20220208070141.2095177-2-lucas.demarchi@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220208070141.2095177-2-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR06CA0039.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::16) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9292e808-08fc-413f-1448-08d9eb68ce15
X-MS-TrafficTypeDiagnostic: BY5PR11MB3957:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB3957A51A58C62A7AAF6FA50BF42E9@BY5PR11MB3957.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jj0s7N3bIRJUa7aQbDul3Ud7SJX38WPrUo06goYF1Dkpzk1w/xr/hSW81VnadB6Miw7vdIjrgwAj6+Gt4P9NHOMeBSztVALQY1v/3XMGKWTxTZj0e7rNc5SVk+wep8tZoWxJ6LFXyfyE3Uwy8X0lZ716LxXG5glY+sQm6LhWaHI42e4wn9uCQuyNaY44fkUZQj3CO5N+CKBM/Bx++j991bZRvhDXf6fE8vY4dDxEE1sS6CXroBxvfoM2Ec5+QWYKSbsZffoUHwlcI7EzTrHk4wSiG9BE8lOm0eZGtCgFhvuzi1aD0jHjtj6hbnZfBrqBBFafhfeQCOj/NfBMXj1ejaJTivNtnpdY86ncCq2c2lsWzaCyBTaqXx6HQrM5sPWcOspCx9J+2m6wqhe1NBiIl0EGVIGM+EYW3y+4nhRQtGgnBqrwu2qpiqgS/1zQZ6vc6L/uvaHvpXcQm79zvMF6XtN+52HvsfM8KSmg0yIuG0qaI/zldi6jj0qlf8V7ijXyyjUeErBay6H51dXGGw3Sg1bElfuiScRyzRoq4Ld7/uSrbYr7JDF/DXi32kOLF9wiNPW5mBu3B2UoCJgaYnAEIm/HIbnX/yi0Rwx9nqjxTaFHZlXgIf2ZSv2L8JqUI2dCspbsthr1YOvC7knZxvYDzvNtLcqK60ZsHAJn/c1DGSI+DAw/VAlXWkwB5gEaFEoaaLd15ZIRbR9MlD+U/93WmP/KtFs3BB+ckkchWadaInQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(6666004)(36756003)(31686004)(54906003)(38100700002)(66556008)(107886003)(53546011)(66476007)(316002)(86362001)(4326008)(31696002)(66946007)(83380400001)(5660300002)(508600001)(186003)(82960400001)(6506007)(2616005)(6512007)(8936002)(6486002)(2906002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWtMckFvKzh4bkZWT3JLblJDZXlORFJRM1VCRzAycFJKRE50d1dPbVZlRHpU?=
 =?utf-8?B?SG1IcHJvZzF2MVhsWjVHR09kdW44ZWJFZjhGZWg5emhJNUJaUkNXQkVPOFhn?=
 =?utf-8?B?L0NuSmR2RTI5OEYzYm9hMnRRMERoQW80emJJMG9oVjRRZmMzSHh0aE5ScGRY?=
 =?utf-8?B?T2ZHUWJ5YWRMNmNoRmt2Zmc1dE5HMUUrdHZKbktKNnpMd1RoVTM2UkZHWHZH?=
 =?utf-8?B?L1huN1ZWL3ZjR3NsbjZ0OWIvOFQ1dVlYMFIwVVZncGxJYUxWQXd5d0pJY2Z5?=
 =?utf-8?B?YTF0Y2kyVlpRK2pha3BpL3ErN2wrK2p0WUJ2cWNOeVZTVWFTWWljK2F2ZnVs?=
 =?utf-8?B?cmRpMHJMZnMwcEY5V1lYZGFmQWRVNXBMYWpSU21ZMFZIN1BkQ1JkTGRxYmxB?=
 =?utf-8?B?UVFtVExVaTdqMEZZRUNzTnN1NW10aHpzSm1zaEZLTXNsTVcvVEkxZzFyTFhB?=
 =?utf-8?B?c0JOaDJzMGUrNU9uTmNYOVhzTmQycDM0R1hwNERoNHI3aGxiMmxqZ3FZMDVT?=
 =?utf-8?B?TkhJd3Jvb0t5cmtLTFZsdU03c2V2VERiODFpQVFPcVV1SmY0UDhHYXB2Y1R1?=
 =?utf-8?B?L2FmR2VVeVZBbWhINGNjd2RNWXA1VGw0Q1VBcXhEajhWVjFXeXdUQXhpMTBm?=
 =?utf-8?B?c3kzZlBzcmwrSW1QSmhnMjhFeXFwTkh6Z1dYYjJXVVdMUGg4WWpUTlpDemZC?=
 =?utf-8?B?K0ZlWUtySmZtQWhQRWhWZXFMMW1PRlpLOVVXWUhwNSt2L2lmNS94THpGNVVx?=
 =?utf-8?B?d1ZVenFnUENJd1BqQk9ZNEMyc2J3Sy9VczZUMG4rV2JZNDFiMWpiZkF0azdm?=
 =?utf-8?B?VFdTNVBhR1BwcXpxeExkSmdDZ3RMV0w4RVdlam9wckdSeHhsbWdWbW5TR01t?=
 =?utf-8?B?NDdMK2VyamVxaDUrZ2lhMmg2NndLVDRic2dXclM2UWdMVEY0dTZySWJUa1dN?=
 =?utf-8?B?NXpydXJvOUlCTVJxWGxDWUdyczdZTzVIVm40Q0xkbE9BRld4TWFpTDluZnBa?=
 =?utf-8?B?THdtYkc5STRwTTVQeGE5T2RkTXFhaVJ4OUJVbCtDeEJFUUdhM2JYVHJuK002?=
 =?utf-8?B?eXFiR2VaMnlzcUIzYUp1YU42Uy9SWERFS3lhcUw4ZUhDY00rN05BMEl6K0xl?=
 =?utf-8?B?OXp5cFQzNEo4dGVPbVpjK2xTVFBDSnRMMEQ1RHE1Tlo4czVwR1ZCTzBUZUhW?=
 =?utf-8?B?TnVnWkk4MUdSamczcjJRVExqUm1WMnpjSWVqMmxLWHBnbzRpamxVT2kwSkFt?=
 =?utf-8?B?OHp3WUFydGtGVEJyTmprSWRBNzZCL0FaNTBrNk95T1VxL201N1Fld3J6blhv?=
 =?utf-8?B?L2k3NlRKREI1bWM1MTBEQVhJNTNMdGZwVTkySktQSk0rSXB5L2ZxNTR0RC9v?=
 =?utf-8?B?eWx6T3NTUXRLMXY3ZklYQTNib2x4N3RQbTVWWXFrT2J5MjdadVFDYmQxaE9s?=
 =?utf-8?B?Z0VhYkF5MmdtUm1VZnM2c2pjV3pPUkw1UFVlS0lIWFE1L0xuSmVyL2lqOStM?=
 =?utf-8?B?eVdMVFdsaDFlRTdiU3V1M01nekQvMzd0anNsV2RxcGQ5ejRxendnZVprSVgr?=
 =?utf-8?B?aVRFMHMwOWdocVhxbjFSQjdjWDEwTTVEbkxPenIrNTNkRWluRG5uaks1TnJk?=
 =?utf-8?B?UzgzZWJsUVJYcW12VkZIYlZsc1hvbEswQzhTdzBSa0NBMThCUThIMlFzeHE2?=
 =?utf-8?B?YVg4SFVRYjhHeHJ0VmJjcmlrVjRodGxsNEhYM1BDQ3JzS3YrcFNhSlplSUwy?=
 =?utf-8?B?dWlMT0duZFJiTEt6NFFNVEMzOHZ5YVh5US9iSzhhSDdYUkF2WFg1MllBSzlm?=
 =?utf-8?B?anpuU2pzR1h0YmhsWFNCbkpsUHVoaUhRZGJuU01GNTRYNlNBSHpjNFpTd1Z3?=
 =?utf-8?B?dUVZc2hMRC9oUmU1R1Z6OUhlVjdoSVZKRkFwTVFBNXZBMXUvOUdTY1RSTEZk?=
 =?utf-8?B?SGwzdHJueDZBWjJaV0ZTNGhhMVhzOERoN1VhSGhTYkI5VmlyU1hyM3dJczVk?=
 =?utf-8?B?SVlqUmFWNGJEdndzMXRHU1JwVXJUelhOeHZ0a1dlNDljZ29vVUs0QytWTGVr?=
 =?utf-8?B?VUpWajF3US9UZHVGQmhGbDQweFdtRWJVMHBsREZmRncxVWlnOXdORERIVE1s?=
 =?utf-8?B?QlFaNUxGNFQ1S1hGTVRDTEs1YXRsWGZucEF5RE5HNklNUXpNOWJ4U0NBY0dN?=
 =?utf-8?B?bmdYMjJaQ0Q0dERicXdpV1UxU2NDWERRWFo1TVE5V25GUmhWS2JxYmEzTVZh?=
 =?utf-8?B?K3B3dGVkeEhrQlRGaGZEd09HT1pnPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9292e808-08fc-413f-1448-08d9eb68ce15
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2022 01:09:21.8593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sZneIVJZV0/gV8QwmHxO1Segt9/L74PGQ9QIU1eTUe4d3sA2fGi405oSyig1JmBeUmCU8a9wZK9KoEKvb/RjVys1jp1f5OolwAYEeGEGyd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Prepare for error
 propagation
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



On 2/7/2022 11:01 PM, Lucas De Marchi wrote:
> Currently guc_mmio_reg_add() relies on having enough memory available in
> the array to add a new slot. It uses
> `GEM_BUG_ON(count >= regset->size);` to protect going above the
> threshold.
>
> In order to allow guc_mmio_reg_add() to handle the memory allocation by
> itself, it must return an error in case of failures.  Adjust return code
> so this error can be propagated to the callers of guc_mmio_reg_add() and
> guc_mmio_regset_init().
>
> No intended change in behavior.
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 31 +++++++++++++---------
>   1 file changed, 18 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index e61150adcbe9..5290253b9132 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -226,8 +226,8 @@ static int guc_mmio_reg_cmp(const void *a, const void *b)
>   	return (int)ra->offset - (int)rb->offset;
>   }
>   
> -static void guc_mmio_reg_add(struct temp_regset *regset,
> -			     u32 offset, u32 flags)
> +static long __must_check guc_mmio_reg_add(struct temp_regset *regset,
> +					  u32 offset, u32 flags)
>   {
>   	u32 count = regset->used;
>   	struct guc_mmio_reg reg = {
> @@ -246,7 +246,7 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
>   	 */
>   	if (bsearch(&reg, regset->registers, count,
>   		    sizeof(reg), guc_mmio_reg_cmp))
> -		return;
> +		return 0;
>   
>   	slot = &regset->registers[count];
>   	regset->used++;
> @@ -259,6 +259,8 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
>   
>   		swap(slot[1], slot[0]);
>   	}
> +
> +	return 0;
>   }
>   
>   #define GUC_MMIO_REG_ADD(regset, reg, masked) \
> @@ -266,32 +268,35 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
>   			 i915_mmio_reg_offset((reg)), \
>   			 (masked) ? GUC_REGSET_MASKED : 0)
>   
> -static void guc_mmio_regset_init(struct temp_regset *regset,
> -				 struct intel_engine_cs *engine)
> +static int guc_mmio_regset_init(struct temp_regset *regset,
> +				struct intel_engine_cs *engine)
>   {
>   	const u32 base = engine->mmio_base;
>   	struct i915_wa_list *wal = &engine->wa_list;
>   	struct i915_wa *wa;
>   	unsigned int i;
> +	int ret = 0;
>   
>   	regset->used = 0;
>   
> -	GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
> -	GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
> -	GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);
> +	ret |= GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
> +	ret |= GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
> +	ret |= GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);

I was thinking we could modify this to break after the first error 
because if a realloc fails it's unlikely a second one immediately after 
will succeed, but on the other side it doesn't really matter and the 
code is simpler like this, so:

Reviewed-by:  Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   
>   	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -		GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
> +		ret |= GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
>   
>   	/* Be extra paranoid and include all whitelist registers. */
>   	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> -		GUC_MMIO_REG_ADD(regset,
> -				 RING_FORCE_TO_NONPRIV(base, i),
> -				 false);
> +		ret |= GUC_MMIO_REG_ADD(regset,
> +					RING_FORCE_TO_NONPRIV(base, i),
> +					false);
>   
>   	/* add in local MOCS registers */
>   	for (i = 0; i < GEN9_LNCFCMOCS_REG_COUNT; i++)
> -		GUC_MMIO_REG_ADD(regset, GEN9_LNCFCMOCS(i), false);
> +		ret |= GUC_MMIO_REG_ADD(regset, GEN9_LNCFCMOCS(i), false);
> +
> +	return ret ? -1 : 0;
>   }
>   
>   static int guc_mmio_reg_state_query(struct intel_guc *guc)

