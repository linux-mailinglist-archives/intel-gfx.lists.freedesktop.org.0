Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72879618FF1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 06:20:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8514010E02C;
	Fri,  4 Nov 2022 05:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A63810E02C
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 05:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667539196; x=1699075196;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wdrscmpjXuLI3DrDGJ1df5FT+ZTNoELzSOpK4AoUtxE=;
 b=XRUFQJfNXsgK6GoRVZWkipqjyiQTRrw838Tm2JbpUicQT/qzfJy7p0ga
 V/QGrip8jiD4qUwNtysb6GdhL+WbxouX8DMm0/9ASkOGPZMqNgoeNzqWn
 rzTyKj7ZAHu3Rq/45zteW4QvsCQSjR62Te+zwnoDKIiGRYgOscAgeQ7nD
 FQ1dHCCU5X3McebNkg2sOkh7Fcez+EHztSxtjJV9sCaI4+lFAr912VU7s
 40ZSrQkWC+ETk8fQrq0URyEQ7c9aiOKgIOLVr86YG1yLo5WIcugnvB82g
 P1jLgrM6ldz568wtLrwMAFUf0NRnlf11gIQgfk3PNPXGwfk9C5adJUjD/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307506179"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="307506179"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 22:19:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="809942679"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="809942679"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 03 Nov 2022 22:19:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 22:19:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 22:19:55 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 22:19:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PAuLdjHsQAFXZfBD2FJIASpdBTOhkTjfYGZAyUXhuRBvZC53yIX2AD8bidd35a3W1fmRc0qeXzxRO21utvcCegtzt8Mab6YoVGzZ0oCsQLST8k+IY5jND/aGZQyjqboTh4F6NrfUPPjKOdIiClTWzai3vi3nnYRw8VtIv14BX6/wFtVwIS7Oh15CrLGw9tUWZxs+aGjhDM4DJSt7EZFMU6KZG7L7bB0H2k+2ZzOPeL7+65fdUEwn8sKceORleWCczQi0FRdRzTQx9pRb6yEuijuGqcs7WqeYpHiKJn8dA7xWOslmtsE+vbec49VOyRXDhtsNcIfvAZ1Uc7RYxAmPmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1sUccL7oHFWmshRSXx4xbvHRYai4hheFyvkHkeIVTqA=;
 b=MFEHFI61/9ho+n9ZMPyrK0wLEJWubV46Z2WlCzU5Yr4X4sNkjtP8Nxthz9/DjkQwa8OwrsZzhTSLNI+GYZ2+STSQb+OYhibvRGVCRKiG6NAV5lvhHgbdDzQBtGCpXFmZPf9qgZlYMxXxYa42isM6nswgHLUJ104R929U9bi3CwEsWL23EX92XQp4TM2s/HUBXSDCQRezfXY9r3sHgliPZ7PLiZwCpTDnj/W9TgPtoSFj7WmhTIsWTjQXIsjLtLyqJwsfXR9RBZLvNZhLhgwRecZ2cpk/WsedKKHwQ8m0RWfz027gaNOiJ30KX5bO4w/SIb/leNylT+ZWcYSmm+cdAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4887.namprd11.prod.outlook.com (2603:10b6:510:30::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 05:19:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 05:19:48 +0000
Message-ID: <ae278ba0-f13a-8218-3b82-76b634deadb0@intel.com>
Date: Fri, 4 Nov 2022 10:49:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-12-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4887:EE_
X-MS-Office365-Filtering-Correlation-Id: 29376696-1251-4a89-5d52-08dabe243177
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hQlTYZb2ch/U5P1OnAIG8wjjZFzZ7jy3jWNScMDero2gLG7AKUEqcxg2vLBK3OpqsfD9AK3eq4jVwf+p83haODBcsyL8Du0QHbvZeZQTNdgsGmgb6icbU8peza9yvAOwk10YLfT67UR3l3GHQD0x3g2FFk7uev6bbcLAspsvbEA/n5Z2xpBKZw5SKqK1P4XofBlB7EtSbQEMFV0Zi483k4RFNcLzRbeoMozWyXvwWUdEmBTWvEVZotzubhrlwN08fCjNrRXnksDDnOVjXH7mGYVQ7jCq7Gl5M4cGj5wO+gtLtAA17m3sT/oJqfOJUuArrlqQqnHaMYrf/w13B/dnIwbVXOUBfMN3Wzjhnn0NH9t9TyobGHuvCrh7CT8w0dMkHNjoAv8BbunS8aSc6pFFRQ26873KxO+Cdlmr4ihso71OuvAYiOh4I61qqinqoc2PLn3JiIHLg6qh647OQVZLtIv0igLa4oKKyygh7hxjISPrBuuAS1Z7v7iZ9eO5hedSPvfAJXBElbH5d6naEO015HhMcOiGyF32XAIMVglffk+2rb1mSkbX4N4AXcOdHx4AKrUFkOinTgZRSVipaT7i3b2S5FXt0XoD1/4DDnbt5SnxmYXVLj6dR39m+PIdbgUsaoQxL013RtgkNRi/ZvIR7c3iSwnVz2JpBHOB2jl9A3HSP362XdPKUSwwkJTEyxQGbkgq8XjNOXIZABB7FQ5XDzV8gB4URYi0F1kKpe71TGJvsm8ZipeIKztXj1tIP6PLnj9/6uhOUOgpBISlGEJQ6PFUGWJ17xjPOcATu5b/YFk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(136003)(396003)(366004)(451199015)(66946007)(36756003)(41300700001)(26005)(8676002)(66556008)(66476007)(6512007)(2616005)(86362001)(186003)(5660300002)(8936002)(6506007)(6486002)(478600001)(53546011)(6666004)(82960400001)(316002)(31696002)(38100700002)(2906002)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eS9mL2pqR0pMemU2V1dDekxRb3VzZjlScnhORE9CK2hPd0hZV0tCYkdheUJB?=
 =?utf-8?B?em9oQllWYVd3OFJMajlmNExPMmpCYWwyeVM2WnRLLzNFYy8wdzhwUTVOTWx5?=
 =?utf-8?B?UThyNkdtZE5hYXYzMUhxMHVaTW9YUktaRmVzSnIvbzUydUkwNlVhdnZ5TzZW?=
 =?utf-8?B?UXl6dWZ1anZLcjVLNGE3K3puYlpDL1UrTWFWZklhNzBDZkxKMGFkL3IxUGVM?=
 =?utf-8?B?WWlUS2J5cGRQRGt6SUxaRkJidG1QakpFOFo3ei80c0lUSmRNU3U5SkV6RzJa?=
 =?utf-8?B?OXE5NFNWQTR1VVc0WGhXYk9lWDBvS1hBL3RzNm1MVnFtaGRha2Z4MWpZUkUy?=
 =?utf-8?B?QXFyOEc5TFgveEwvemNFRWpMUENCNStNSzBoaWQ2cG1CU1c0T0crTGw5Qmxl?=
 =?utf-8?B?L1RKSmlEdTRWeDFvdFIzT3Q0WmVSL1Zad3pBN0pjdEdtNDlrSTZ5di9raFFH?=
 =?utf-8?B?TzhWbFhRenRrTjMrTG4zRFlEYVJUSDNCdzRJZmE5N3M2cjJHSUxEaWpMeHdN?=
 =?utf-8?B?UW96UnA2cUkvMThqZkV2d1R6K2pLalZLNFo1REhmUDlMa0dtTmpZNGRmSXNJ?=
 =?utf-8?B?VkJua1d4bmF0UXZrVHNiSEZUNkh4ZVY0elRVL0lxNmVVUU14NUhrMDhJMHdD?=
 =?utf-8?B?STJlb0luTDZEaUlHUnNjOWQ1Ymd4dmd0UkFvRVBsRmd2S1F3bi8zMmxnYjhC?=
 =?utf-8?B?SHBrN0xOOXFLVWptaDBZV1JtZmJvRzZ1UGZIdjZmaVZWVjFRRHhad2g1MVR3?=
 =?utf-8?B?RVNkQ1BVaTRnZGZiUnh4dVI0RUgxNEF2amxLSmVLeWVKK1pwWXA1STVZSzF0?=
 =?utf-8?B?MVN3SFZYajM1dXdmeFlaM2Q5bUhQcFZtaGlRU0pRMGxSSE85UkRYR1llTkJl?=
 =?utf-8?B?VGRqQ1M4aS9CKzdBaFloV3RXSjZLeiswbm81cGVmOGdWV0Q0Lzd6TUZEOTR0?=
 =?utf-8?B?QkhMaUlhUVJQZVYvaWdBR3lrazc5a081bjV2SlhBS25mTGM3S2t4M0dSTWYz?=
 =?utf-8?B?V3ZBRFJMbEtCem9FT2hSTGtCTFFSbmEyUlQ2Q2hEcmM0T0s3WkJJaUdHNEhX?=
 =?utf-8?B?YUVQakVrd2dNNllJREVoT2ZaUFc1V0NwcXhqclAvNnovbUFZYjIvc3ZaUTJB?=
 =?utf-8?B?Q1FCbmhSVWw1Sm8zd0FnaVN1UWdvMGErV0kzQnJlRmEyL3ZQc2hzdmJYaDVO?=
 =?utf-8?B?eEpNbUJvdWR5YXBQa2NxTlptcTlGT3ltdG5ma3BqcDZIdWFNWUwvaFkwWEpn?=
 =?utf-8?B?a2lEUUVMc0ZnYk95K0k5RmQ2emg4Sm9qNFN3NGFzZ2ZuaFN4UEpiemZPamdj?=
 =?utf-8?B?VlAyU3l2cW5kb1JtVWYwWmZ5a3pTNHQ0K1NIVUUrbW9FTlo5dytoVWRCVXFP?=
 =?utf-8?B?d1hJcXVSZ3Y0NFNKL0s1ejZHZDNDZmJEVkxKSGpYS1FGd3NHdGtpTzU5a0t4?=
 =?utf-8?B?V0JIMWpzYVhPTmxOMHcvNmdGM3dnYkJvY2RpWVN3dHduNDFwTWR0NXkxSTJm?=
 =?utf-8?B?S2Vra0RNMmdzUko5NWYvazJaeWkyTnN4Z29CYkg2NXFyei9lYXlLSXNMOFo2?=
 =?utf-8?B?NTdyRWVjTWpvaUJIWmlTY0VUSlFrQ3VMNUIzNCtEWDVtczREeVlqR2lBMFJQ?=
 =?utf-8?B?SjRkYVJMci9xMTJDWHE0ZXV0TFZBOVhQak82MnRlbldzclNEeXpMQm8rSlk2?=
 =?utf-8?B?K2Y3TEsrcU84eFFGR21pNm1wOVlLT0Y3OWFPcng2amxRL29WZktFUWRvbFhX?=
 =?utf-8?B?N3hZWGlJSDhPUjA2MUMyRjFlZnlOY2dVMnBkOWl4a0hleFlsK0wwcms5VFFR?=
 =?utf-8?B?a3RRREErejNlVThaRlNSb1BFVDkwa3djT0t1OXJEMGU5YXVzdEgrRHBJazdh?=
 =?utf-8?B?eDlEQ1M5cGt3alJPTk9ydFBnS25VR1ZlMnhBUnBLVDl3MkVhQlZDdTA1cFZX?=
 =?utf-8?B?UnRHZ1B6VXhjQm5OSkVCU2RGZTk0SGNKeEo2YVNNUWI2ZkhMSnIrTE1wWHdV?=
 =?utf-8?B?a25YbmEvby9DWm5tS0cwY0wxa2lWeitDSGw0NkNqQ0dxVzVFelJGWG9ST0NI?=
 =?utf-8?B?bjVjZDhjOXpwaGptUHJyekdSY0syUDlDK2p1bmtNOVdvdmRsMElESTUwOCtF?=
 =?utf-8?B?SHdmVmE3RHJaYVMzMXgrVC9kZmEzeWg1RzNxN0NqNzdrbkxaUEVQQnJyWmVX?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29376696-1251-4a89-5d52-08dabe243177
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 05:19:48.7477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J0fSKhzII7yMQ/TPSmBEeFIOcL//sypS9dHM6UIpiByr5lBkSPgkmKWU3zdOBwiPRtN3eOdHAyVpWqMP+hBHLt1FUUZUV8T8IN4ps8EvCBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4887
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915: Create resized LUTs for
 ivb+ split gamma mode
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

Patch looks good to me.

Minor suggestions inline:

On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently when opeating in split gamma mode we do the
nitpick: 'operating' typo.
> "skip ever other sw LUT entry" trick in the low level
> LUT programming/readout functions. That is very annoying
> and a big hinderance to revamping the color management
> uapi.
>
> Let's get rid of that problem by making half sized copies
> of the software LUTs and plugging those into the internal
> {pre,post}_csc_lut attachment points (instead of the sticking
> the uapi provide sw LUTs there directly).
>
> With this the low level stuff will operate purely in terms
> the hardware LUT sizes, and all uapi nonsense is contained
> to the atomic check phase. The one thing we do lose is
> intel_color_assert_luts() since we no longer have a way to
> check that the uapi LUTs were correctly used when generating
> the internal copies. But that seems like a price worth paying.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 81 +++++++++++++++++-----
>   1 file changed, 64 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 33871bfacee7..d48904f90e3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -597,6 +597,30 @@ create_linear_lut(struct drm_i915_private *i915, int lut_size)
>   	return blob;
>   }
>   
> +static struct drm_property_blob *
> +create_resized_lut(struct drm_i915_private *i915,
> +		   const struct drm_property_blob *blob_in, int lut_out_size)
> +{
> +	int i, lut_in_size = drm_color_lut_size(blob_in);
> +	struct drm_property_blob *blob_out;
> +	const struct drm_color_lut *lut_in;
> +	struct drm_color_lut *lut_out;
> +
> +	blob_out = drm_property_create_blob(&i915->drm,
> +					    sizeof(lut_out[0]) * lut_out_size,
> +					    NULL);
> +	if (IS_ERR(blob_out))
> +		return blob_out;
> +
> +	lut_in = blob_in->data;
> +	lut_out = blob_out->data;
> +
> +	for (i = 0; i < lut_out_size; i++)
> +		lut_out[i] = lut_in[i * (lut_in_size - 1) / (lut_out_size - 1)];
> +
> +	return blob_out;
> +}
> +
>   static void i9xx_load_lut_8(struct intel_crtc *crtc,
>   			    const struct drm_property_blob *blob)
>   {
> @@ -723,19 +747,14 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
>   			    u32 prec_index)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	int hw_lut_size = ivb_lut_10_size(prec_index);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
>   
> -	for (i = 0; i < hw_lut_size; i++) {
> -		/* We discard half the user entries in split gamma mode */
> -		const struct drm_color_lut *entry =
> -			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
> -
> +	for (i = 0; i < lut_size; i++) {
>   		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
>   		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
> -				  ilk_lut_10(entry));
> +				  ilk_lut_10(&lut[i]));
>   	}
>   
>   	/*
> @@ -751,7 +770,6 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   			    u32 prec_index)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	int hw_lut_size = ivb_lut_10_size(prec_index);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
> @@ -759,14 +777,9 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
>   			  prec_index | PAL_PREC_AUTO_INCREMENT);
>   
> -	for (i = 0; i < hw_lut_size; i++) {
> -		/* We discard half the user entries in split gamma mode */
> -		const struct drm_color_lut *entry =
> -			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
> -
> +	for (i = 0; i < lut_size; i++)
>   		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
> -				  ilk_lut_10(entry));
> -	}
> +				  ilk_lut_10(&lut[i]));
>   
>   	/*
>   	 * Reset the index, otherwise it prevents the legacy palette to be
> @@ -1343,7 +1356,7 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
>   			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
>   		drm_WARN_ON(&i915->drm,
>   			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
> -	} else {
> +	} else if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
>   		drm_WARN_ON(&i915->drm,
>   			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
>   			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
> @@ -1564,6 +1577,38 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
>   	return CSC_POSITION_BEFORE_GAMMA;
>   }
>   
> +static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_property_blob *degamma_lut, *gamma_lut;
> +
> +	if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
> +		ilk_assign_luts(crtc_state);
> +		return 0;
> +	}
> +
> +	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.degamma_lut) != 1024);
> +	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.gamma_lut) != 1024);

Does it make sense to use some macro for LUT size for split gamma case 
and regular case?

Same thing perhaps can be used in ivb_lut_10_size?


Regards,

Ankit


> +
> +	degamma_lut = create_resized_lut(i915, crtc_state->hw.degamma_lut, 512);
> +	if (IS_ERR(degamma_lut))
> +		return PTR_ERR(degamma_lut);
> +
> +	gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut, 512);
> +	if (IS_ERR(gamma_lut)) {
> +		drm_property_blob_put(degamma_lut);
> +		return PTR_ERR(gamma_lut);
> +	}
> +
> +	drm_property_replace_blob(&crtc_state->pre_csc_lut, degamma_lut);
> +	drm_property_replace_blob(&crtc_state->post_csc_lut, gamma_lut);
> +
> +	drm_property_blob_put(degamma_lut);
> +	drm_property_blob_put(gamma_lut);
> +
> +	return 0;
> +}
> +
>   static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> @@ -1599,7 +1644,9 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   	if (ret)
>   		return ret;
>   
> -	ilk_assign_luts(crtc_state);
> +	ret = ivb_assign_luts(crtc_state);
> +	if (ret)
> +		return ret;
>   
>   	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
>   
