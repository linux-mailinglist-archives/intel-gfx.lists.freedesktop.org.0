Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA5E7454AA
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 06:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D59C10E0A6;
	Mon,  3 Jul 2023 04:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48BC810E0A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jul 2023 04:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688359997; x=1719895997;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PnOffuPBCpYeCvXsGDIEqpI5JO4BLmRRBvi9aYAdy3Q=;
 b=RAMeaTdC90dA0yvHjTkdi68yETPPdDwdnkFnca/or2t0aK8nmPRDc/d9
 A1QoH03PgPEDBwOyu+YNBeluhBa6d/OQkVEUU/lOueaQRUtfYU1gCc9Fx
 96gIdbAxFJniMGM759sXY7XXa3QevMiBX9JiJfQuRvJrGPEsMvyYVntgr
 8XcnwrwrRGyHFpngpeB9MyVycFDLICIcQFN2nytUDam9C0/i1Z1TaoQU/
 EdTI/dTSU/Ug7811G41OaEppudkQjiwT93rujbY9d3kxtT8UHaJ+t7X+8
 acmBzZxqVpHvOXzTstY8jbMOFHvIOMjkd6UeeYrh/76F8I0WUGy8LZj1y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="426472308"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="426472308"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2023 21:53:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="808434904"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="808434904"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Jul 2023 21:53:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 2 Jul 2023 21:53:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 2 Jul 2023 21:53:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 2 Jul 2023 21:53:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kEcOfEohXsFYLgBSwfVeOKVv73VQroDbIMD7Jk3Dw8Y4UuIVQ29kYE4soWTfrxQsjZtufZ5KTw3yOWuhwYLW4d0FPfrgIMQoDLff3Q2e5+YpGgKf9/jWZTNyBxS5NSQxwqoV+e2vdC/l3xQaWy+nfdxWzFoWuft9wceUG/YvSP3EqFwg7IHdvIjaPsKMEBzxHhmbRdKEmD+TgEETX5Hc+N16JuTEWWGMYGG12YARzGSty0a438ePdJjq5Cik9COoZXB+6/S08+LU0mJngkoeug/S5LqFpPZdjqK98C0J+z/MbyEDnytF5682zTAxfpUOMO3rPDurLDgtMIWY615o/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/7L14y4dti9iq0El5VLBO4YEILzQBWqChCYUdepkAYA=;
 b=D0gZ6BOCVkPP9++c+uPCF3qoGNRe55tanUJ2Q1bMyG+KPkrRYyqlEMO8Sl15P3PaIoRJhXiZhMVH2vd73ZeHnUc/mlFhbK3IxBiI1bzGROUK1enS0SNUGCmiZZUtttZg5B/hkE81xBopnntK8VV0kAN736X1OJjGCKskWvVrLgkwpnyCXqwR+SX4Hp8iyRiv76VLQFCI6sjD4qzzL0zITmF0aWRorrG3AFjav8PKBRDRZI+5Myn5yDVHCFftGeXKonKnbAsd9De5ynnGhUffrDYFRU81sU/WV3bapCClkcOGDm8zUzLMhMShH36zSYSzlnn7C+doDbe/vIMuj6ZRQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 04:53:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2%7]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 04:53:11 +0000
Message-ID: <d8d0502b-df19-7986-16cc-00051bee530a@intel.com>
Date: Mon, 3 Jul 2023 10:23:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230628100816.16528-1-stanislav.lisovskiy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230628100816.16528-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0125.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4966:EE_
X-MS-Office365-Filtering-Correlation-Id: 54988ee3-0db5-4e0e-deda-08db7b8166d2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yb+o0zXs8WZwUMFTGCuGC2sV95KEvuiIOfSThQx6TcUiiY/vmTdznEL3k9vOvufeAMTjjFrzGNAOSRgAcCcHDtSfYl+P2TB6TXF6VJ+inpBQGYGbpqlxBvo3QrGCz6eDfjJbaJj049xfh9jZxONiny9GSI2CSy70+VfQQPxr/n2LWYzsKdW9lvtxd1P+xZNka7IaT0PNLm6wDLpcvbnZPlee9LUqTbgEM/gnqkNr4sbvGTq9vDHtuLvUBFkrcHEwsAFZ0aO/fQfLR29CzBd6rHvw6+34+twcjbzrpviUJbhLdToryh2jX2llABqMS8AWpWGmCfYL2GyDZnviqAp+AHKznMvQlpstCcG1TNeJVHsVWaAITsXyHJ3COsgsMi8HXAmPmAtD9FFUwc3bPPQDtj3o5bUPdrFxDbDyGRYfT3Ymc3GJ9aYun0y7np8g70+iAhWDIxjHGeE1yTdES6NfzcKyBMj3QSGllkahzPIyPiTb+jrtAJxipMpvII2KCcQdxkOR7heGMFWpTjozOuzmdDNdRw+ipN1CdUFUV9uPiDD/2pW+qeOpTvAvsxpyGR8srLvyZtEnHg5aYe4wy+Rlre0355G6w6iCM1ZlJCYUwwgckbqqTL9wxApJJg9Z0IOye49rHRCGm6Wg4Xf5Md9kmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199021)(2906002)(41300700001)(5660300002)(8676002)(8936002)(36756003)(31696002)(86362001)(186003)(2616005)(31686004)(82960400001)(478600001)(107886003)(26005)(6512007)(6506007)(6666004)(53546011)(6486002)(55236004)(316002)(4326008)(66476007)(66556008)(66946007)(38100700002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTlWL3lhZFF1bzQvdFVFRzRlZ3l2MmQrRGQyMDhBdXRCZmQ5dFcwVnI4SWdG?=
 =?utf-8?B?Z05lWmxhQU1WUmFhOHFGMEMxNitEcmNJNTZybTBXMFlDYmQ4a1g2bzVUTGdv?=
 =?utf-8?B?MGprMm0vYlFpRTY3VmJ5bXF5RkVEaW90ZXF6WmNFQ1FPQllGTmJ6RW4xTXpY?=
 =?utf-8?B?dTdQK2pNb3hERFpnQVBxQ3UxMHpHSm40Mkd1eEltVTJ5Q1lST3NRQ0M0a1hL?=
 =?utf-8?B?Q3hBdGdKUjBrSTZIR0xIVWN3QTMrZWhNVmtYWEgwYVovMktZeGRFMjFEVHdz?=
 =?utf-8?B?VHkweEhBUnhDcU9uOXprbVpWR1dFcHZ1YWtua3lyUXRXclYwUXlDRDQ5Qm9S?=
 =?utf-8?B?b2owR09YRDUrc3NWUVBaQU1SdTFNMzE5S0JYMHovRUtqUG9vN0VrSERyOHpJ?=
 =?utf-8?B?SHFKZjZoeG4vZzB0akVpVjBjN0R0Y2tpQmwyYVRNbm9lRG1UeU8zSFZUNElD?=
 =?utf-8?B?T0xxMWloZUliNWEzZ0Y2c1JxNTBLK3BiODBza2YzL3RhKzN1YWZIS1c0M2VJ?=
 =?utf-8?B?YVdKaDAvU3RyS0lFeXdseThMRlh3WkdXcThidU9nUnlDR0RZWWNwMFBFblN6?=
 =?utf-8?B?RnBXcWFGL2dCRkFqVFY1dnJKRTdCcVIxeGcrYkRKMVlqaDNJZDFUSlMwVXln?=
 =?utf-8?B?YSthTnJDQS8zRzNDbWhvVG1QanRLL0lxOVgwZWRMTjZkVDBxTDRORzdGWUNB?=
 =?utf-8?B?UXRLMHB0UEtMYVFhT0t0RnRuMGZIRzFNNE5sMlZ1RDFVdU1tWlo3Y3JsL2Vv?=
 =?utf-8?B?YitUY1lOb3dkZExRa3YvL1JoWXM4U2IrZzNCbmJQQ1lPQVpNV2ZYSFJiU3lr?=
 =?utf-8?B?WGM3dVVYemFodTBYb1NZRW1SQ1ZPa0Q2L1dHaVBwL0tDYzd6U2d6MGxmZDJk?=
 =?utf-8?B?TmpLdllDeXVTZEZKdy8rWVdka1pjcXVwRVFtTVlMRk9kdWxDQ2lVV2hqTkRK?=
 =?utf-8?B?eXBJUzVCd0xWOGlNaXFsVFBrL1YweHhZYU1ZamRoWEdzNVZkNHZiTTllSkd6?=
 =?utf-8?B?UDlBTnVRalNscS9XdzNmME9Mc3hBdWc0QTJyNGVINmI2RWNpWXA2NEhNZHBk?=
 =?utf-8?B?ZWUyL25MMEw3SW9ZcXFrTit0Q2FtUENHWFFEOXVybkJQQmhlMldWWERUSFBr?=
 =?utf-8?B?TGMreDU4UnFIYzc4MzhUQ3A5bjVpMkVPdFdZN3dURGRnZE5pS1cwRUFrSHIz?=
 =?utf-8?B?Z0FFU0kxNDVTTjRWV09ia0lYcm94OEx0MHRxdWRELzNKSGR6MlM1RVBTN3Nq?=
 =?utf-8?B?anJIQWtrK0pEQkpHd1lLOHIxd01uTGRiV0pCZ1lsbVlLRnJBM2lPbXo5K0Nz?=
 =?utf-8?B?SGM4b1puc0tuRDFCS3ZMUG9oS0hLUjdHY3V6ZUZ2SDMya3FjQ0dhWUtLZFBx?=
 =?utf-8?B?d2pjYlJKYStCNmNnQndvd25zbUFtcEFrak9kUWQzT3MxQm1NdTdXa0JTa29h?=
 =?utf-8?B?aTAwdDZ4SlgvUnVlTnhtam1BdE1aQ3pTdHAwME0xUTBvandJWVBCYS91dGp4?=
 =?utf-8?B?cjFmbEpFMi94QytPMzJ4T3FXZ0FSemR1TFNNSEFhb3ZGYlJRM2FVdmN6Ykxm?=
 =?utf-8?B?bm1rTkl6eWxqSW1ZR0REYUZWWGV5elRVZjFrSlBlRU1GODY4VG9LWVlNWk9F?=
 =?utf-8?B?Y20zWXVhWFVEMzVsZm5ZVTJkTkoyWjNVeW5BNnZSeTNMM0JwdzVoNzROQzBv?=
 =?utf-8?B?bUM3ZlBQTkl3cUVPL2w3NXluckcraU1JS3ZzbjBhMTg2cTYvRHJsUUxZK2k4?=
 =?utf-8?B?Ymh2c3M1NjZyajRjazIyZG9sNlBUNVM1L3RjYzdSVnNDa0dWSUhaZ2ZYTHN4?=
 =?utf-8?B?KzZjTmpNWjhWb0NRMkN0b2dRVDRVRytTTmJiOVkzNmIyOHVhVDRFc29ReUFN?=
 =?utf-8?B?VUpVdERpdVVqVHVsaTFzUSt0RFZWVjlDenk1K1VSeFR5bjVBQkJ4bXc3WkN2?=
 =?utf-8?B?Y2p1V29mS0RtcjdneEtvSEo1OHREUGdBR1l6YjNhR1JGQkJhaXE3cWIvUnp3?=
 =?utf-8?B?YjduYTgxM2F0eEVoeUpGMHpHODR1bzlXN3U1WCtOZFFCZENnaFhJTjBnUmo1?=
 =?utf-8?B?c0grRjN3cENCc3NxelQvNXE2UGtoQUs2d2ZCVjVJS0lEWC9PNmhrSlhiMDZt?=
 =?utf-8?B?THQrclpRVGV5TjU5TFpBT1czVGxUMHhDZjFCWnZQeldaMDkrSUhsRU13bDNI?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 54988ee3-0db5-4e0e-deda-08db7b8166d2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 04:53:11.2626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j0cwRNRbKtyXMdkBmhuHNS41YXXpOPRL6EA9UQAm8gQg9XdRuS7WSt2TzvNvNkI45l2jvRqadO2PvIbPyxaPbpQoiRIOKzl525Ikc1YyWE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't rely that 2 VDSC engines
 are always enough for pixel rate
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/28/2023 3:38 PM, Stanislav Lisovskiy wrote:
> We are currently having FIFO underruns happening for kms_dsc test case,
> problem is that, we check if curreny cdclk is >= pixel rate only if
> there is a single VDSC engine enabled(i.e dsc_split=false) however if
> we happen to have 2 VDSC engines enabled, we just kinda rely that this
> would be automatically enough.
> However pixel rate can be even >= than VDSC clock(cdclk) * 2, so in that
> case even with 2 VDSC engines enabled, we still need to tweak it up.
> So lets compare pixel rate with cdclk * slice count(VDSC engine count) and

Is it not that we use slice count for the number of DSC slices in which 
the horizontal scanline count is divided. So this can be 1,2, 4.

Whereas VDSC engine count is the number of VDSC engines the stream is 
splitted.

IIUC for a case where number of horizontal DSC slices is 4 and we use 2 
VDSC engines, each VDSC engine will get two slices and slice width will 
be HACTIVE/4.

Perhaps what we want to do is to compare pixel rate with cdclk * (number 
of vdsc engine count = dsc_split ? 2 : 1)

Regards,

Ankit


> check if it still requires bumping up.
> Previously we had to bump up CDCLK many times for similar reasons.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 4207863b7b2a..5880dcb11588 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2607,9 +2607,14 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>   	 * When we decide to use only one VDSC engine, since
>   	 * each VDSC operates with 1 ppc throughput, pixel clock
>   	 * cannot be higher than the VDSC clock (cdclk)
> +	 * If there 2 VDSC engines, then pixel clock can't be higher than
> +	 * VDSC clock(cdclk) * 2. However even that can still be not enough.
> +	 * Slice count reflects amount of VDSC engines,
> +	 * so lets use that to determine, if need still need to tweak CDCLK higher.
>   	 */
> -	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
> -		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> +	if (crtc_state->dsc.compression_enable)
> +		min_cdclk = max_t(int, min_cdclk * crtc_state->dsc.slice_count,
> +			          crtc_state->pixel_rate);
>   
>   	/*
>   	 * HACK. Currently for TGL/DG2 platforms we calculate
