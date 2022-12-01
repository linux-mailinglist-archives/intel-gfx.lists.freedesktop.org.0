Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7888563E980
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 06:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5985A10E0F7;
	Thu,  1 Dec 2022 05:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE4910E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 05:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669874016; x=1701410016;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7xNCmZiLfVOKsxZFWZw2e1OI178CJc6sMgl0gtjGVL4=;
 b=B2kt21frpVzMUtHm8zk9iX9MM79/KqDvovGZchlPgU2cdQv6lLtnqfl+
 eMfZ1N/MWDOiEH8U5cluwjdjg6lKMksHfIBAC02NjFEaN5+LqZ23cjZrL
 sM7JkDxAiQUJTui3hNu5YMiqraaDQi2k+wNx2iGTFQXk9rCzd+h+PKHfo
 13F/gz5RG5695V40hxV6Wh+OjvIkkCoIkz/ZBinEHPD+YqwakUd4gO+1i
 pb7ZT3Oh1kN4iG7KZ/IrZue7AlnHu0ucIzLULuqfa5/9ui5U3NyVi7vdB
 GPZTFStn/kXM7Uh4tMsuzKEIRAWcwYcTpZQrvHd4dWJqbkoH+C/XnwhCg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="317451581"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="317451581"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 21:53:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="622169042"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="622169042"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2022 21:53:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 21:53:27 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 21:53:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 21:53:27 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 21:53:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mjz8Va/KC3nbZZ2Pw3hSkegf8Q0D7rljih8bKIGXjHrYMCxd5hX40SGHRaw0HJc7AkBqvQjEQfPJj5ePBc+Gr+Zd/Vzf6J1LbabkeGRwFYPZ69PKHHws+TY5dYAR31Ej0sKkR2Pt5MfZa/QYw0D58/oHgDUnjqwHXn7C9YQ/+3PrOq78xknrD02fdsiYtDZjuGCsXER7q6E1pnHE0SIXE3pfVMiEr8biRpr4KURxZ+v6KayGc1Ucudp2hnUOxQaOmbXsY5MYce6LW5dwEcesf0oEgkUCo0ST2nxdZ1Euyto2mLL6+rEkKVnRzZs3pLWbFZxMtwaPY/vg091o2MKVzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=roPTOcmA3noYGq6PARoSqRIL+EnOk2mS/lV4IbU6fKM=;
 b=hJYVuLqwRb8AdYCmgPA+YcInnmlaQv3s9dQQM1c9BjLzeaivmwaFsUp0W1BXYTYpfx3qGIwvUKfnKHl318tLI9TlKWZRk2ZsEBin98TL4Kj8Z0LLu6Cfmg1tyefUktpJb1GwmApa8Oxcz9tz0XNkjgM31hc4tOu01LOH5X1X3gd84ERAKbL7yP39XZenSwoTUdQVfhdUHr48SA/f6wXpjCONYMjXi9K9OUTO7NiZd+9lsMiTtMCVNhbNUne6XEMIv/YxuANm3wu/XBAW6Vz1bAwTzIe/i0rf521iPveB7XpKulC4+b9denMzO+W60kijIOowWjO2cPZZnaqzVNupKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7523.namprd11.prod.outlook.com (2603:10b6:510:280::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 05:53:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 05:53:18 +0000
Message-ID: <b30dcee9-526f-6b89-a720-bec48ff522f8@intel.com>
Date: Thu, 1 Dec 2022 11:23:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-7-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0135.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7523:EE_
X-MS-Office365-Filtering-Correlation-Id: e7edf2cb-8d82-49a7-13a0-08dad36058b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eU4Y7zBsNPohJOB9/64T8gwP/El1MhmLlv1se/SklSx8uP+Vy/bJ58fkKAV4dk1isAzeOv1HRZT3Mlbqx2x7DeYTztbP15MVrcWK3A3i/qAID6vF390uiN+WzMu7DjWAUhRZ78Z7tv4ojUGEyPlzh/eF7bHk000sU77v4WW7MMpNKZPaj1uT7W7b1rt54ut/IaJrKZ1KC+aoIiB+rvXvs33MuKxkrTmI6kXxLG9KBQh0o71Ykn0IkW96RJrrJNxOvUgksDUe1f5Yq74QTWxa5MHMZ5MDUl0AyTVlDvRPYWJ0msAx2alAMDf+3xJ9Z1LfOiQKpIBP/I1MwAzug4/B7W9PqfxSXTu5rF+EG8gWicuHY5csJAHR+T+R8Yo87zaz3FHxrBjZadjmNoxfxNaFalvahA3637YO/osSvZZyDEXKPXzraVxJ2V7FPQLx2ck2WM7OpZfIN7Jh4XGN3sfCT0mFs62BczxGQMMtY0DtCZFVmJZ5budAU1P+1bCMoHJuemcvr/sGkqPAjZIQF5ZsgTNDIFeszp5FSOLKchWej8MwI8CWV2w9EhLzp/p7VtIxvFVDgOGtrnnE1UwXMObThFwoPPH9O1rwLY4Hdo4b3EwPRYSyLGrR8FVKCYKnh6spuETj+pIlJaWtknvsFyvJSFhE49PbSIJ3SNGtYlfD1jVSxw8TqF3Zysky8oVKw5w85XgmX5sToBUrUVCsIM2dZwHI+o1F5QA5yGyqBc6EGRM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(396003)(346002)(136003)(451199015)(6666004)(31696002)(86362001)(316002)(2616005)(6506007)(478600001)(55236004)(53546011)(6486002)(6512007)(82960400001)(186003)(38100700002)(66556008)(66946007)(66476007)(8676002)(2906002)(83380400001)(5660300002)(31686004)(8936002)(26005)(41300700001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUV0VlBuNVBnVDBzcGkrd21ockpwM3VHeEN6Qy9icTcrUHNZakMzOEE5Wlli?=
 =?utf-8?B?RU1MZWNFWDlYRVlIZ3VsanhXY0hXRUR4UkRXZ2xHKzFTSUpTL3hMb3luaWNY?=
 =?utf-8?B?d0V2dEZvRGl2MDJrZlNDZlFPcE5PRzFJSVArM29kOHNOaWlpTzQ4TnZxYSs0?=
 =?utf-8?B?TkorZndpNHIvRHJVekNRVCttRnVlcSt6bys2K2hVNWtZTkh4VTgxNXJ6UCtm?=
 =?utf-8?B?ZUJsSkZhbVVZV3BxMW5MNjZ1WWJ0NUMrNVhydzcrZC9Sa1BuaW12WEluSTdT?=
 =?utf-8?B?NktLSGkrc25UYWhuKy9mNVhOK3hIc3gzZ2ZySkpDUEF4UVhZcmQxdXpVbEJk?=
 =?utf-8?B?cHFmYWFVbU5QN2k3cW81ZGw3K3o2bTVpS2c2L1kzcmlvaUM1MEQ0Vm5aVkpq?=
 =?utf-8?B?VVl5cDdqQytPeERrNEhLdXEvL1JXR2FhOE5IZXk2UndSNTJ3NDdyK05OVTZC?=
 =?utf-8?B?bVU1aTRlalR3dXdYb2RvcEdSVUZVYmpHMENWWkF6RE9Ra2ZPU0NLcEhhcUNY?=
 =?utf-8?B?SW9IK1UzQmcxN04rbnZwcTMxYVBHc2JNbjZBNkVraFI3Mlk5REhTa1EyTDlq?=
 =?utf-8?B?dXR3S3o4MTR0Y0NSV2ZDT2s2NU9YcGVyK1lPMTg1TGc3QkxuVmpVcmtEdUpN?=
 =?utf-8?B?TllVNzBHRFgzRHdJbWRHdjJDVk16dTY1cGY5SGVUS2VEZFlDS3dyd0MyUHJu?=
 =?utf-8?B?UXBTWXB1TEppRkIrWm1IelNGUi83SmQwTlBYNFlQcDNHZ09qQmRNV3I0clVm?=
 =?utf-8?B?WGlOOU5HUHE2SW53Q3NhbVd3VFpCTUV2eDZsalIrN0ZmSEdnN3YwaTBwUHJH?=
 =?utf-8?B?UXE5NmVWNHRJa1phanYrbkJPeE12VzZCM3hwZi8veTFvckd4blpyRElYS3RZ?=
 =?utf-8?B?UktqM2ZJOERjKy9nZGFnWTFNa0JxN29aZ28zVmwvS1pZUnIxQVNMZWsxTWFm?=
 =?utf-8?B?K0hFRnNpNzVVWTdSRUVKQUUvQzdRY2RBdGpZVjMzRUNFZFdkWXB5TzE0UFU4?=
 =?utf-8?B?S0oyNkhyaGptNjlRR0dQalR1bWVxTmRLbjZsSExCUGw0ZUdkUFZFR0lYSnFH?=
 =?utf-8?B?cU9BaGU2MXdDQjNVQXVHQWt4WUxEWVBENWZTbUFyQ3lFQUdrbmk1UHJrbHM4?=
 =?utf-8?B?dFErd3ZHSmZiUjIyWkpUOXNFNWk4VGNoY2dTamxONk5mcWFBWmkweXJFeVVq?=
 =?utf-8?B?TFhkRmYrVlBkNzFvRk1ncjJPODBKRHRaMkhLYkFuQXVGVTBnZSs3VXJzZnRT?=
 =?utf-8?B?eGhQc2dqbk1ZWU84azMwejc0OHkrV2FLa0VYY3FJcW05NGRrYzl4d2QrTU01?=
 =?utf-8?B?WitGdXlNM2ErZ09UUW9UQVYwSFREN3BaaDk4NExLRFRrOFJPdzF3ZDVlQS9E?=
 =?utf-8?B?NTdISlpnL2dwcnhaaVA5NGE2MXY0U05rQUF1dCtRdXBEREJlU25rNFZ5djR4?=
 =?utf-8?B?VTlDQWY2OFFCSVRUbnk0NGpFK2tVUFkyVWVBSnJxcEdJWXZyVVlIZUxoQk1W?=
 =?utf-8?B?OElwakZNVFJZTG56MzBSWnpVeDBmMTI5SUF0MFBEdTAvVHo0VVZndmhKalc0?=
 =?utf-8?B?MkZMcUkrOXRSR1BhSFJqVTVEWjBKZlV0Zzdjd1lHUkFWSnhkeEZ1akRiT2d4?=
 =?utf-8?B?bEllQkc2WkwvZTVlUCtpT3FLRGN5Y2NrRCtMM3YwcjlEY2N3bzlIenJCY0xH?=
 =?utf-8?B?MGFTbWEvTklZYWVHUER1cGFKT0YrK2VzT2tSQUJCMnBDR1pnQWRpeDlnV3Q3?=
 =?utf-8?B?KzVZUTNrNFVqTmJZMk9EcEg1eTZzNmpuT1l6WXhCTDgxNzlVcHBBMiszeVZy?=
 =?utf-8?B?dkpTZXNIZFViaUhoeGNjTWZkeURVWEFXVHFFSDFLUWN4TXlWMXIzcUVVdHl6?=
 =?utf-8?B?Q1VoeTJydG9wTWw5VTJGTVNYTC9Oais2dFBvOHBjejcwMTZtNFkwOEx6dXBV?=
 =?utf-8?B?YTZYSlBLZTlhNFFabUdNT1pjOEsvcThPWHRlSGxFYTRvd0dnMkZLOURuQjUr?=
 =?utf-8?B?RFEzdmNIQUZhYUlUMlJmcGdXanFYMDRob3BUUWVwVHZUcXJQaGJyTDJKcWEv?=
 =?utf-8?B?bVNCczMvWldZdTRRNlN4QkpHbXVZNXJHNEc0OXpkUUQ3TG9qQnpIWmtqN0xs?=
 =?utf-8?B?WlFwOHVhYkxVWGpPb2p4MUFtYzBhd1crZTlReHdzdXc3aHNtVHRiZFdnSmk0?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7edf2cb-8d82-49a7-13a0-08dad36058b9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 05:53:18.8628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WP6NBaT/TAvenPwp7L8AxZN9+++4ewZwUAumFapZtyA8zzqW6EZ/6D1PheUZ7KrJqKyj07QYbB0JbC0RnaQU+65/CNyEgb8pc0kURxZJOjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7523
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915: Document LUT "max" register
 precision
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
> Document the precision of the LUT "max" registers, just
> so we don't have to dig through the spec so much.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/i915_reg.h | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 22fb9fd78483..cd0a445814c7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3620,7 +3620,7 @@
>   
>   #define  _PIPEAGCMAX           0x70010
>   #define  _PIPEBGCMAX           0x71010
> -#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(pipe, _PIPEAGCMAX + (i) * 4)
> +#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
>   
>   #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
>   #define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(pipe, _PIPE_ARB_CTL_A)
> @@ -5304,7 +5304,7 @@
>   
>   #define  _PREC_PIPEAGCMAX              0x4d000
>   #define  _PREC_PIPEBGCMAX              0x4d010
> -#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4)
> +#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4) /* u1.16 */
>   
>   #define _GAMMA_MODE_A		0x4a480
>   #define _GAMMA_MODE_B		0x4ac80
> @@ -7551,9 +7551,9 @@ enum skl_power_gate {
>   
>   #define PREC_PAL_INDEX(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_INDEX_A, _PAL_PREC_INDEX_B)
>   #define PREC_PAL_DATA(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_DATA_A, _PAL_PREC_DATA_B)
> -#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4)
> -#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4)
> -#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4)
> +#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */
> +#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */
> +#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */
>   
>   #define _PRE_CSC_GAMC_INDEX_A	0x4A484
>   #define _PRE_CSC_GAMC_INDEX_B	0x4AC84
