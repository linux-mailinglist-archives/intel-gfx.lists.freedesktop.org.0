Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1160F414E1A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 18:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA656EC40;
	Wed, 22 Sep 2021 16:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D616EC40
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 16:28:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223282326"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="223282326"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 09:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="550317830"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Sep 2021 09:28:57 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 09:28:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 09:28:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 09:28:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VnjGdLKRTOkj8pfkqPHHvR+2Ntn0/qFwsareVRG5AECLYPwdcwxE8aAGjkXpDe+jzbagvIx6w5clf0qiySgL3E3t15HLXLZ22GaNLILsYsdTYH3EnmU+T3+BHffVrlWlzp/NBcs7pf97nouHrvde1R5LY6hYQvdOhjFP/mCsxGAmtqVb14wLWzjRbc0HIaCIj04NFbT5gH7FcH/ePG7/DtWHEnOPOeowwJnIvwRRn9zDCuZyDLsLmxvwSYKVpDI2Xpjmp5j8caRH0pdlCKbw5H3Ln6T7Qhq3UycBT5Q5mmipIbImWcfPfZ2uMvx75AdyQPlFhT0RcMEZVWgMAlgIJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=R2n657S2j3+fkP5jijFDDsTJvmaAyJHdCgBaXXvLHy8=;
 b=QHUmSycjw2gAhk1RBvupGpONi4dEzUQ3ZyPDdREfdEW26sBHM9sF5c2jbEA68mPEa8hk9RdcrnS2N/zojBSpEke4o3mJ8s3OLni6SnyO6CS1ZEq4ApgyAk4q1RaBjumIrzsIkD2Yb3hIIRSOV2l3B1U75uTCCEEjtSEsqlZORxaSZy+enH62leaflK7Njjf0p0n6anOHTfNT/NcrdIQ0uBWURr9ySkXidGEMCLVU+Jqf/lsVAccIgwYc9VB2pg9+7XUH3ouCTJixDAJSZ8f5BMjRnoXil5zUbTurSEuF+aUqzxeQYJyt09+n6d+Hb8l8NfoB/YdWxumubQkjCKSOMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2n657S2j3+fkP5jijFDDsTJvmaAyJHdCgBaXXvLHy8=;
 b=YbxkUbwf61tRzS9ol3q/rqEIoCx1xOStj8Oeyphqier3tAyQu9K9MjpG2zkUD11/z+mA1T5Zr40KL5/44LpBVmUu6sXfhRka1mV3TohfLxORKCqjgZJze04RDBQeqNTB5AhVPvP4SDH+oBDqM1Nfgi1gNE242gIIV2dTWr+2vcM=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5755.namprd11.prod.outlook.com (2603:10b6:610:103::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Wed, 22 Sep
 2021 16:28:55 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4544.015; Wed, 22 Sep 2021
 16:28:55 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210921004113.261827-1-jose.souza@intel.com>
 <20210921004113.261827-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <51b29ee9-7927-7b0d-eb86-b8cff7775ffc@intel.com>
Date: Wed, 22 Sep 2021 19:28:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210921004113.261827-2-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0302.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::7) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.208] (134.134.137.88) by
 DU2PR04CA0302.eurprd04.prod.outlook.com (2603:10a6:10:2b5::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.16 via Frontend Transport; Wed, 22 Sep 2021 16:28:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32b4b75d-a06a-4fcc-87fa-08d97de611d9
X-MS-TrafficTypeDiagnostic: CH0PR11MB5755:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5755E2EEA2AB66D1610402AFB8A29@CH0PR11MB5755.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yje4dsVHv6Qjr1AzRyUsMGto5xG9Phrm+m9tYjf8hrb1D6l6FoZdSZB+Z+41jChZug8RznFWjCUzCwXSo7new9Tns3wC2wwj7NljQwDAtlkRkvDjk2oM40ZEHjBtPoUZjjxZuO/SiXxYMiT2Zl71BX5aB73x0tyBuwlHV8oHGSBLBDbivbpRrNbMTcVlCk6GNdoKCI2jvMjfhWC75liVvFkyA2246fqKo2SdnaEVbDZTj11vYPksk6KnNhFjRkwYWWf06rVvFB44kVKsKZx4lDXyTrFH9tqeX+OEziCUXR6/6DLu8AZTS4ZUtf2FZiO5uQefdcu/b4FVNNz4tcsO9KnXptJbhCCh5zTac55iwOWaKX+BXGKYiGqqM73kjQsvREbrSH8KoEG5Zarp9R9I2pwKBMxeH1R2Ju+wQCaWMAeyK8yuIj6PN3qNBdPGCnhYC8RjwvKzO3IRpore6oA4KMTGmONR38N+pT/gJetnmEw8ihGjfaDuHAefhM6XjSMi/Ey0r14ujd1E5WvPcOXkLTVhz1ijXhxRWy8pNN0IlFiu2d2yr5r/pdxzvWx6TJdfeUvNydtZmQu6vgBtGSp7szSgZ5vl30gLd+amhLiOsg9FTBIdBm1XL84X3/Y/owvw99c2EXaCwu4HwW8Aq/HzjhcA+1J6pk6MS+p45DItQFFwCtrD0yUr2jV0MdMuC0JrlMnW7jIEGToJrAhLTcp8aeCDwvNczBrBrTkqkwgWhoc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(30864003)(83380400001)(26005)(66476007)(2906002)(508600001)(31696002)(6666004)(66574015)(2616005)(66556008)(53546011)(16576012)(36756003)(86362001)(31686004)(186003)(316002)(6486002)(8936002)(8676002)(66946007)(38100700002)(956004)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OER3bHA1YjVWQVEwK0RqaTRaVkxDSGZ4ZitZOFlMODlVd285a2JNQStZc0Nx?=
 =?utf-8?B?Vmk5Ry83a0VVbkJpSW1URFJEdHVZWGVYK0EwNHRiTmdsU1RRNGFrd1pKcTBr?=
 =?utf-8?B?RGxYMUtKbWdoU0tlUVNzbnhvR2FqV3R4aUJvMy8vTlVIVE01dFAyU2xhZE90?=
 =?utf-8?B?TEhWOHVJcTVEcTFObUJCMUdKcDlsT1J6VFhRYTJDTDkxNmx4QWRMMFlzNUgv?=
 =?utf-8?B?V3JRWEVmemFVbS9RYXFNOTlNcmVjRHhBNlgrakRsVStkcUd4ZXlIM2pFV09o?=
 =?utf-8?B?b1BrLzN6QzhtZEJJQXFDakJva3RkV1h6cFRHUjJVNUFCSStuVGt2aktGWE9Z?=
 =?utf-8?B?ZFN3S285RTRkWm9EUWpmOVlYSkI5dFRqNmo1cGZaOHo4TStEUURIcG1BbmpO?=
 =?utf-8?B?NEh2eGRUZ2xhbk5CWGNZelJqRGpieG5XYlpCcEVQUG4zaWt2eGdkNTNwdHFP?=
 =?utf-8?B?RTd4U3ZlTXgwNVR0Ym9EcmxialFTTzE3M2cxUEpWcmVSd2IrejdheE1MMUtM?=
 =?utf-8?B?M2U2UGFIcHRXNzVEZUphQ2FEd2tMMlIxNkNUd3NqQTdadFNJMFF4cUduSmls?=
 =?utf-8?B?T3ZWVnMwU0NNTVdsRk82YnFaOGI3TjlnK0xHNXZSdkUxWGR6ckdmTXMxdkIx?=
 =?utf-8?B?dXA4OC8yYVg3ZnpFcW9KQnRvWHYwNkh6czE1VW42aVhleHFDbmtENnFvNDJl?=
 =?utf-8?B?dVVEd1VVMG45VXA0OFVieEFJTDFKRkpVTkRBMEVHalpTQ1Y5bUhYem1RekRD?=
 =?utf-8?B?bXI5cVEzNE5yOEoyYnQ3SmdIV25mYTVVTlBLbVU1UXArTzdLTDR5TFNLajhu?=
 =?utf-8?B?emltdXg3RnNQdHFmcnpWamg0cklQeEVGQ2FtTmNkbklOeWJlZWVyYjgvQlBC?=
 =?utf-8?B?MkxtZExrL2Y1K1JsSXA1ZVhMVXF2UGh4S3RyOC9zb2Z0ZjIyWC9lZW03WEls?=
 =?utf-8?B?WGlZNWxNZjBlbVdZTHo2T2ZvTzJyVkgwZlhxVFFjOGw0MWw1TmhRem9za2Ix?=
 =?utf-8?B?YzZ1Tml1cHpqL1o1RVhuZjJKR2xPa2ZocGsra0dnSUV1WVUwbGpFVE9ZMVlk?=
 =?utf-8?B?ZjhBM3Urc2xnNExyZUVSRXR0MlpQQkQxbk1TTEo5a0FEekZMa2dvY3Vvb3VV?=
 =?utf-8?B?b1pYbTFISXpOMzdMWU0yL0xCZHBDaWJGQlhsTWwrNDNoUnhDV0d4WWFmQXRs?=
 =?utf-8?B?Zmc1NTE2OEV2TDkzRkttWER4K3FvR2ZXRjZaZVo1ZytiVmJUSFJCWXRzckt2?=
 =?utf-8?B?cFRRYjkyZlpJamJ1ZlRzMHhRNExNNisvU0txN1FxVnlUSURRbGdQc2txYUlM?=
 =?utf-8?B?Qk03ZXdJSHBCMDRTeDF3NlppbER2dXc2RnZNaGg0MkxDY3A1QkY0N2NwMVN0?=
 =?utf-8?B?ZmlFSkU4V29SSlBiM01nUjJpT1pvNmxScVVNc0VuNml1RWxjbEYvVU1lM1VV?=
 =?utf-8?B?WmdCeEtaWmRzK1c1QnZ5eVFxWnF3VmEycSs1UDhmMXVqSEIrNndwdUtvTkdx?=
 =?utf-8?B?cFpXdGJhOFNsSGJjTXNLR3R3YWh0U2FpN252N1FNTXFjZ1Zybzg2eGc2SXdh?=
 =?utf-8?B?NlRqRSttSFcweVJ2Tk9WVEh6MDBXbzdwU05RWm1IZmFhNmpFNkl5Zk1lemUr?=
 =?utf-8?B?MmlHUWluS3pMRzd5eHppN2pWWXc2RnVFaFNtVit6cFd3UDBjMUFiZVdtWWVl?=
 =?utf-8?B?ZFJoOWdpSUhBRTQ5SzRmamNQMEpWazNDU0Q4QWdoUDlyL1U0U2NkKytRZDhY?=
 =?utf-8?Q?DK1pv3RY4lOZYG+SidKe+d+eHolbqpk7/NxJMSw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32b4b75d-a06a-4fcc-87fa-08d97de611d9
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 16:28:54.8549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SizdJfR1WUk8TMmUXZVv4+oEITdnqLb4uSKfPC8DjF/Sb/gYXEkQd862AhOu9SWIIBc95QYxaeTUbMo11qo+hKUXdmyi6q0FWiD/BJbl93c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5755
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/display: Only keep PSR
 enabled if there is active planes
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/21/21 3:41 AM, José Roberto de Souza wrote:
> PSR always had a requirement to only be enabled if there is active
> planes but not following that never caused any issues.
> But that changes in Alderlake-P, leaving PSR enabled without
> active planes causes transcoder/port underruns.
> 
> Similar behavior was fixed during the pipe disable sequence by
> commit 84030adb9e27 ("drm/i915/display: Disable audio, DRRS and PSR before planes").
> 
> intel_dp_compute_psr_vsc_sdp() had to move from
> intel_psr_enable_locked() to intel_psr_compute_config() because we
> need to be able to disable/enable PSR from atomic states without
> connector and encoder state.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c      |   2 -
>   drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
>   .../drm/i915/display/intel_display_types.h    |   3 +-
>   drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
>   drivers/gpu/drm/i915/display/intel_dp.h       |   2 +-
>   drivers/gpu/drm/i915/display/intel_psr.c      | 140 ++++++++++--------
>   drivers/gpu/drm/i915/display/intel_psr.h      |  11 +-
>   7 files changed, 98 insertions(+), 80 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bba0ab99836b1..a4667741d3548 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3034,7 +3034,6 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
>   		intel_dp_stop_link_train(intel_dp, crtc_state);
>   
>   	intel_edp_backlight_on(crtc_state, conn_state);
> -	intel_psr_enable(intel_dp, crtc_state, conn_state);
>   
>   	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
>   		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> @@ -3255,7 +3254,6 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
>   
>   	intel_ddi_set_dp_msa(crtc_state, conn_state);
>   
> -	intel_psr_update(intel_dp, crtc_state, conn_state);
>   	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>   	intel_drrs_update(intel_dp, crtc_state);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f6c0c595f6313..ddcd8d6efc788 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8093,10 +8093,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		if (bp_gamma)
>   			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, hw.gamma_lut, bp_gamma);
>   
> -		PIPE_CONF_CHECK_BOOL(has_psr);
> -		PIPE_CONF_CHECK_BOOL(has_psr2);
> -		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
> -		PIPE_CONF_CHECK_I(dc3co_exitline);
> +		if (current_config->active_planes) {
> +			PIPE_CONF_CHECK_BOOL(has_psr);
> +			PIPE_CONF_CHECK_BOOL(has_psr2);
> +			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
> +			PIPE_CONF_CHECK_I(dc3co_exitline);
> +		}
>   	}
>   
>   	PIPE_CONF_CHECK_BOOL(double_wide);
> @@ -8153,7 +8155,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_I(min_voltage_level);
>   	}
>   
> -	if (fastset && (current_config->has_psr || pipe_config->has_psr))
> +	if (current_config->has_psr || pipe_config->has_psr)
>   		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
>   					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
>   	else
> @@ -10207,6 +10209,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>   		intel_encoders_update_prepare(state);
>   
>   	intel_dbuf_pre_plane_update(state);
> +	intel_psr_pre_plane_update(state);
>   
>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>   		if (new_crtc_state->uapi.async_flip)
> @@ -10270,6 +10273,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>   	}
>   
>   	intel_dbuf_post_plane_update(state);
> +	intel_psr_post_plane_update(state);
>   
>   	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
>   		intel_post_plane_update(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e9e806d90eec4..c900bfbb7cc52 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1056,12 +1056,14 @@ struct intel_crtc_state {
>   	struct intel_link_m_n dp_m2_n2;
>   	bool has_drrs;
>   
> +	/* PSR is supported but might not be enabled due the lack of enabled planes */
>   	bool has_psr;
>   	bool has_psr2;
>   	bool enable_psr2_sel_fetch;
>   	bool req_psr2_sdp_prior_scanline;
>   	u32 dc3co_exitline;
>   	u16 su_y_granularity;
> +	struct drm_dp_vsc_sdp psr_vsc;
>   
>   	/*
>   	 * Frequence the dpll for the port should run at. Differs from the
> @@ -1525,7 +1527,6 @@ struct intel_psr {
>   	u32 dc3co_exitline;
>   	u32 dc3co_exit_delay;
>   	struct delayed_work dc3co_work;
> -	struct drm_dp_vsc_sdp vsc;
>   };
>   
>   struct intel_dp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7559911c140a7..378008873e039 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1674,7 +1674,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
>   {
>   	vsc->sdp_type = DP_SDP_VSC;
>   
> -	if (intel_dp->psr.psr2_enabled) {
> +	if (crtc_state->has_psr2) {
>   		if (intel_dp->psr.colorimetry_support &&
>   		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
>   			/* [PSR2, +Colorimetry] */
> @@ -1828,7 +1828,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   		g4x_dp_set_clock(encoder, pipe_config);
>   
>   	intel_vrr_compute_config(pipe_config, conn_state);
> -	intel_psr_compute_config(intel_dp, pipe_config);
> +	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>   	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
>   				  constant_n);
>   	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> @@ -2888,7 +2888,7 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
>   
>   void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
>   			    const struct intel_crtc_state *crtc_state,
> -			    struct drm_dp_vsc_sdp *vsc)
> +			    const struct drm_dp_vsc_sdp *vsc)
>   {
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 94b568704b22b..3343c25916807 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -88,7 +88,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
>   				  struct drm_dp_vsc_sdp *vsc);
>   void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
>   			    const struct intel_crtc_state *crtc_state,
> -			    struct drm_dp_vsc_sdp *vsc);
> +			    const struct drm_dp_vsc_sdp *vsc);
>   void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
>   			     const struct intel_crtc_state *crtc_state,
>   			     const struct drm_connector_state *conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index c1894b056d6c1..8ceb22c5a1a6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -949,7 +949,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>   }
>   
>   void intel_psr_compute_config(struct intel_dp *intel_dp,
> -			      struct intel_crtc_state *crtc_state)
> +			      struct intel_crtc_state *crtc_state,
> +			      struct drm_connector_state *conn_state)
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	const struct drm_display_mode *adjusted_mode =
> @@ -1001,7 +1002,10 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>   
>   	crtc_state->has_psr = true;
>   	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
> +
>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
> +	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
> +				     &crtc_state->psr_vsc);
>   }
>   
>   void intel_psr_get_config(struct intel_encoder *encoder,
> @@ -1181,8 +1185,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
>   }
>   
>   static void intel_psr_enable_locked(struct intel_dp *intel_dp,
> -				    const struct intel_crtc_state *crtc_state,
> -				    const struct drm_connector_state *conn_state)
> +				    const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -1209,9 +1212,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>   
>   	drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
>   		    intel_dp->psr.psr2_enabled ? "2" : "1");
> -	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
> -				     &intel_dp->psr.vsc);
> -	intel_write_dp_vsc_sdp(encoder, crtc_state, &intel_dp->psr.vsc);
> +	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
>   	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
>   	intel_psr_enable_sink(intel_dp);
>   	intel_psr_enable_source(intel_dp);
> @@ -1221,33 +1222,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>   	intel_psr_activate(intel_dp);
>   }
>   
> -/**
> - * intel_psr_enable - Enable PSR
> - * @intel_dp: Intel DP
> - * @crtc_state: new CRTC state
> - * @conn_state: new CONNECTOR state
> - *
> - * This function can only be called after the pipe is fully trained and enabled.
> - */
> -void intel_psr_enable(struct intel_dp *intel_dp,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct drm_connector_state *conn_state)
> -{
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -
> -	if (!CAN_PSR(intel_dp))
> -		return;
> -
> -	if (!crtc_state->has_psr)
> -		return;
> -
> -	drm_WARN_ON(&dev_priv->drm, dev_priv->drrs.dp);
> -
> -	mutex_lock(&intel_dp->psr.lock);
> -	intel_psr_enable_locked(intel_dp, crtc_state, conn_state);
> -	mutex_unlock(&intel_dp->psr.lock);
> -}
> -
>   static void intel_psr_exit(struct intel_dp *intel_dp)
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -1719,48 +1693,92 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   	return 0;
>   }
>   
> -/**
> - * intel_psr_update - Update PSR state
> - * @intel_dp: Intel DP
> - * @crtc_state: new CRTC state
> - * @conn_state: new CONNECTOR state
> - *
> - * This functions will update PSR states, disabling, enabling or switching PSR
> - * version when executing fastsets. For full modeset, intel_psr_disable() and
> - * intel_psr_enable() should be called instead.
> - */
> -void intel_psr_update(struct intel_dp *intel_dp,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct drm_connector_state *conn_state)
> +static void _intel_psr_pre_plane_update(const struct intel_atomic_state *state,
> +					const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_psr *psr = &intel_dp->psr;
> -	bool enable, psr2_enable;
> +	struct intel_encoder *encoder;
>   
> -	if (!CAN_PSR(intel_dp))
> +	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> +					     crtc_state->uapi.encoder_mask) {
> +		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +		struct intel_psr *psr = &intel_dp->psr;
> +		bool needs_to_disable = false;
> +
> +		mutex_lock(&psr->lock);
> +
> +		/*
> +		 * Reasons to disable:
> +		 * - PSR disabled in new state
> +		 * - All planes will go inactive
> +		 * - Changing between PSR versions
> +		 */
> +		needs_to_disable |= !crtc_state->has_psr;
> +		needs_to_disable |= !crtc_state->active_planes;
> +		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
> +
> +		if (psr->enabled && needs_to_disable)
> +			intel_psr_disable_locked(intel_dp);
> +
> +		mutex_unlock(&psr->lock);
> +	}
> +}
> +
> +void intel_psr_pre_plane_update(const struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	if (!HAS_PSR(dev_priv))
>   		return;
>   
> -	mutex_lock(&intel_dp->psr.lock);
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
> +		_intel_psr_pre_plane_update(state, crtc_state);
> +}
>   
> -	enable = crtc_state->has_psr;
> -	psr2_enable = crtc_state->has_psr2;
> +static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
> +					 const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_encoder *encoder;
> +
> +	if (!crtc_state->has_psr)
> +		return;
> +
> +	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> +					     crtc_state->uapi.encoder_mask) {
> +		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +		struct intel_psr *psr = &intel_dp->psr;
> +
> +		mutex_lock(&psr->lock);
> +
> +		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
> +
> +		/* Only enable if there is active planes */
> +		if (!psr->enabled && crtc_state->active_planes)
> +			intel_psr_enable_locked(intel_dp, crtc_state);
>   
> -	if (enable == psr->enabled && psr2_enable == psr->psr2_enabled &&
> -	    crtc_state->enable_psr2_sel_fetch == psr->psr2_sel_fetch_enabled) {
>   		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
>   		if (crtc_state->crc_enabled && psr->enabled)
>   			psr_force_hw_tracking_exit(intel_dp);
>   
> -		goto unlock;
> +		mutex_unlock(&psr->lock);
>   	}
> +}
>   
> -	if (psr->enabled)
> -		intel_psr_disable_locked(intel_dp);
> +void intel_psr_post_plane_update(const struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
>   
> -	if (enable)
> -		intel_psr_enable_locked(intel_dp, crtc_state, conn_state);
> +	if (!HAS_PSR(dev_priv))
> +		return;
>   
> -unlock:
> -	mutex_unlock(&intel_dp->psr.lock);
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
> +		_intel_psr_post_plane_update(state, crtc_state);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 641521b101c82..2ca50df1f4fba 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -20,14 +20,10 @@ struct intel_plane;
>   struct intel_encoder;
>   
>   void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> -void intel_psr_enable(struct intel_dp *intel_dp,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct drm_connector_state *conn_state);
> +void intel_psr_pre_plane_update(const struct intel_atomic_state *state);
> +void intel_psr_post_plane_update(const struct intel_atomic_state *state);
>   void intel_psr_disable(struct intel_dp *intel_dp,
>   		       const struct intel_crtc_state *old_crtc_state);
> -void intel_psr_update(struct intel_dp *intel_dp,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct drm_connector_state *conn_state);
>   int intel_psr_debug_set(struct intel_dp *intel_dp, u64 value);
>   void intel_psr_invalidate(struct drm_i915_private *dev_priv,
>   			  unsigned frontbuffer_bits,
> @@ -37,7 +33,8 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
>   		     enum fb_op_origin origin);
>   void intel_psr_init(struct intel_dp *intel_dp);
>   void intel_psr_compute_config(struct intel_dp *intel_dp,
> -			      struct intel_crtc_state *crtc_state);
> +			      struct intel_crtc_state *crtc_state,
> +			      struct drm_connector_state *conn_state);
>   void intel_psr_get_config(struct intel_encoder *encoder,
>   			  struct intel_crtc_state *pipe_config);
>   void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
> 
