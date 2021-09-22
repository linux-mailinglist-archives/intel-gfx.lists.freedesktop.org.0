Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9488A414E19
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 18:28:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0256EC41;
	Wed, 22 Sep 2021 16:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACCA6EC41
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 16:28:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="246079322"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="246079322"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 09:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="484629791"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 22 Sep 2021 09:28:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 09:28:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 09:28:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 09:28:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I162O42q+0KeyfvluaF2JfZd4JfRR7ePPYokkjdk6OCZ5QzhwNsn2FC3meAddyazQk2u3xZjao4yfJCXTIQSt/yDz1McWJMj9B98MYHshn/SxqnjEluPwFZPPO3QadC9pt6c757KIPoWx8F2rzg1z4Vh87tCHMrks77H+rGNXvBf+KdNCwzl8SCrGGv4PVw9CtC2NWwVhJ9XFXldVKfFK8C/d2GZJGQMJ542nBlFBRXHamgIfJk6ZoUbkiKt/2H653IEsAZb87utM4C5aBt6DOTJJ7yEUf+/we7wzfOirXCmj6xebnE2/uaBELzyLKCt4dzEtNkFzFf+J3Ka/4PhSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=R2n657S2j3+fkP5jijFDDsTJvmaAyJHdCgBaXXvLHy8=;
 b=dXDRaxA6O1ZZpfR9/RoI6NfAQ3b4teRUxxt+qwBWaIbyW1wn8ZmzkunNVxIHEyaOwetIl+44Q6yKvKItgy2BY2QqBX/p3bAzWb3fjbfvo0aDfvUtJna6eERGKQ6wdUfkJ77EbbvZOSmsAsfnoygEMYD9H4Huj+QZaAbrSr9dG1PFCrcbUyHP9Jf/LMBuCoZ2VfRbnQ+5OEXwbAAg1XHkJUafiu602lAZ3NMngZpfVZQ30d/CEM79kd8mNCKQwpvHO9HLgBq6nWciYRS2t/wqxUO2sI1gYuFnPdCV6efqurPK298HIOBDQ/7uprmEx7VHgkR6wbLQplPqK5ZcGoUV1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2n657S2j3+fkP5jijFDDsTJvmaAyJHdCgBaXXvLHy8=;
 b=HfuPSqyax2ya9SSmeC2tq+eNNWPmIqGrSZkgnbwHOBBW1SgQJLBML79yogYJjYIOjpT/2nlqo1wflo/ZDnJWZDnP32n/lXTYGlKXN2BCyBS5kKITo0I5q+tMnKEzA5ksdOPnWmWDU9h+U6+v5zH+/fc+THDIZknBxKmI9DjI6po=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5708.namprd11.prod.outlook.com (2603:10b6:610:111::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Wed, 22 Sep
 2021 16:28:20 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4544.015; Wed, 22 Sep 2021
 16:28:20 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210921004113.261827-1-jose.souza@intel.com>
 <20210921004113.261827-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <1ce7141d-d154-c329-bc98-a0539999ad71@intel.com>
Date: Wed, 22 Sep 2021 19:28:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210921004113.261827-2-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0321.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::26) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.208] (134.134.137.88) by
 DU2PR04CA0321.eurprd04.prod.outlook.com (2603:10a6:10:2b5::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.16 via Frontend Transport; Wed, 22 Sep 2021 16:28:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c3fc32bc-1321-4755-58de-08d97de5fd0c
X-MS-TrafficTypeDiagnostic: CH0PR11MB5708:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5708C95024D6EC38CEDA8C0EB8A29@CH0PR11MB5708.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yGz0VEfgxwdFEnp55ww7kQeuSdWbclNp1MiALevOyurHRuj/99iTxO3T8nEs0UrhXdDwjTD2qK6shvbBcQEUetyM5H2q7qFfOU29tbr1FLA7IQP1uOkb847JFI9bMyhcENREadTo2DBn79AOj7OHYz9v6gjxWrqw1F0DmRCA8MVwhOCAM13TLq2iIWdfn+11pz7xFfAcApHUt3VXI3HS3BEF19Y43NTBmzd7elzeeTkdbhb9jjf6uKW4uiDmWiljhfXAp9msKQMMgX1QEBXUStkV2JH1lmbYGxlTN2bIcoxAwW+cVsPwjM7/Jo470J5oJdmKHety2yMSKE6UB/KawpGxLvBlCv2B0unzVBoEqSRoslQvXRU8mzaVILQUdQt1ThPCoAMCcjX8lHDDsL0OU7uIrhniiKFQGWGEWxefeOMW7G+SQJZNI674JcOWCWbh78dgYXMyB2mPjROuCvzEUza2wijojYOGpv6a5NdG6wnOkoJxPV0sQI69KPx666+D/7hjMOmIgdVWj9K+jXmPtDI0uy4eSHBx+4xuKFIFgnvEM+hIgSaHFQOuefAPhx0yD0Ij8p0sbGifzwD/2bxNy2GVzfjDKEM0mYeZQPRffH1IGwRDiS+zz0bpJ0g6zu39DYpPjbat3deWNjh1tayT8t6AZDKEXLm7Csbyht/xS6tG7Io62TMYjNlGSeHfWvNHQF7QkaC82E8IdhHV2WB2SHHI4h0sJUbpZmbb16bwqHo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(53546011)(5660300002)(508600001)(30864003)(83380400001)(16576012)(31696002)(316002)(6486002)(6666004)(66574015)(2906002)(4326008)(38100700002)(26005)(2616005)(186003)(8936002)(66556008)(956004)(66476007)(36756003)(66946007)(8676002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGdVSWJpNDY5T0FBZVVvWmt5VnRURGgzS1A0QkFNNXJWS1BDekhYQmVhSy84?=
 =?utf-8?B?dDBCQ3dWaHpNK1lUbFZVNnhsNmJEbWZSeDQ4K2hZWUF6M2hsU3hPRy9MckxG?=
 =?utf-8?B?cEtmRGN6eWlna2prWnA2L1dVOEl4UWRvUk1RN0JDUjQrdmVSRk5hdjFmbEND?=
 =?utf-8?B?NXd4SVdEU2Y1S2pDTDhCL05iMklHVzQwbVFQZnc1dDlqWjMrY3VhckhFQVhq?=
 =?utf-8?B?NXY2SS9mMGUyd3B2NDhOZEpWK1VKQ2pRSmQ3L08wd1YxOExGcFA4TlZEVHNa?=
 =?utf-8?B?OFZMVXFrUEZtN0RLZWhWaEgwelgxREtod0ZUWHdMVnpVVkhBRkJ6UW1Jb2Vx?=
 =?utf-8?B?N2pjZHBrc0x1ODJ2NDhlWGJZcVZTVUhUNU5SSDVJd1E0OG5vSjZhYWNrZEVF?=
 =?utf-8?B?UTBpb0o3OTRrb0RIckhmV0RSYXh5dWlRWXBFR2tBbkFiZGZscm1lVlJuVCts?=
 =?utf-8?B?VTR2MEhRK3liN3B2cFRjbDQzSDVZWldla2oyRmF0dGZkWFdFMjRRdklROUR3?=
 =?utf-8?B?OUtCcHEwRy8yNmo1ZTdnR2NMd2kxQ1VxVlE3azBPb3d3MHJzbFkrN2dwTEQz?=
 =?utf-8?B?aE0rUDVtLzE1UTlUcmgrVUFjZWZ1bWQycWUxSHVBRUViWUpKRVZha2RpcllD?=
 =?utf-8?B?YjFNNk5nQWhuK2x4QlhjVnV2Q1NtemRPQVBVUDZORjVkU0RWcTBpZ0tGUXYv?=
 =?utf-8?B?L0w0L0NDZHlibk8xSFdJQXA1S2paWnloT0RtRGlUa1pHb3Z1WVZkb2wyRkU4?=
 =?utf-8?B?UFZ0NE95ektrNHg1d3NxRjRoaWZFUnhOZE5NUVFuUVdRVTRXTjRzQXlJdTRS?=
 =?utf-8?B?QXBYc1dBbnhDTVhvc0VWdjlFRlkxUmF4eXRSVEE3eVUzRXcyUmRFa0ZZSUgx?=
 =?utf-8?B?S0lzWGRLQjZUeHhUMXZyc3VodU11S2t5OUhZczdBelM4djFwbkVTWmlPTjEx?=
 =?utf-8?B?cEREbkFFUUJyUml2RlhXNHd2WG5uQ0FnS0ZZK1M4ck13bUFHdVlOOFBOcm52?=
 =?utf-8?B?UWJxbUE2bU1jOG1xZmwyS0EveEJRdGJuNTRIYU9JUm5nZlJxR1E4Q0Z3c01p?=
 =?utf-8?B?K2VMakdmNzFDQlYrd0JydFFLL1hQaytRMDFPUnBnQkEzUHBBNXdySzhOaHEz?=
 =?utf-8?B?Y2t1WldhYU81YXlIUUwzZUtaYVlaTWdKMVhxdngrV1F4bi9Sc1Rhd0dNZUpU?=
 =?utf-8?B?dXpZbERtL2ZLV2U5TDR1cllleUNpdlZWdGhMTXZTZzU1MVh0dXhFem1obWRx?=
 =?utf-8?B?L1JBVzdDbXpITEkrVkgxTytvRzRocDNpTTZIWTNqWVRKeFNmam9WQ0R5a3Zw?=
 =?utf-8?B?T29TVjY4OXlJN0ZIMENxYUNMN0NFc2x6TTBtVVRHOXh2aEVPVVZBQW1QekxR?=
 =?utf-8?B?RHZXOVFzWU9jcmVKNWozRTVETVVuUkx1dmt5SzIzQW41NDlhMVhXQlVYNFg0?=
 =?utf-8?B?YkZsTFB1WEFnV00waEVyL2pLRGF4cEN6VmxoaC9BbytMelNmZEN2OEFXUFFG?=
 =?utf-8?B?Ym5jbGpXYVk3Yk1nVHA4M0FMNnplTzUyTkp1WGRPS1VhOXpTS2kxbnZnREJP?=
 =?utf-8?B?T2x4MHpjSExxZ2VFSVFRYUpaNUZ4TkJwTXJZd0Q4RldVSEpZM3BNUllwZld6?=
 =?utf-8?B?d0NrUDQ3Z2pCMnluSmtjaFk4ZFZNNHd3NXRVSzg2Y3pTSm5KaElBYlo0VjI5?=
 =?utf-8?B?WmR6T1ZyQ0JxQ2crVDNzcjZma0JGUkIrZjVOMlhTdCtZV1FGOFpkVGtIYnVn?=
 =?utf-8?Q?75q8u4Csx/Yn8Lxl1GkL69ByocOFlqdz9hit1rB?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3fc32bc-1321-4755-58de-08d97de5fd0c
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 16:28:20.0304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OueU9o3rXxwOQcO5YGv/Ugch2/witUbh6EE/f8AUo39PMeGUbh/KyNo8jXKbnT99iunjGaJ9zbcRbucWTJX4ONYhZySQ14nbxJciKCtHiqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5708
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
