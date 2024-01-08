Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E83826CFD
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 12:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8607510E147;
	Mon,  8 Jan 2024 11:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EA510E147
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 11:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704713893; x=1736249893;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PrF2qlvTfSMM/TY8M1I8hJLpgvj39fyQMsyef3kQs3M=;
 b=dUTby1z2m3KvrWuR+h/ulxh2CNTNpQjkNhnCGxkLY7HaTu5xyZ+AN5TY
 tb3p3Ebb3EstJKjSNacWp6cAgqt2AxKWojl1ojynq5h9B1Paim3rnr/Vo
 GPh7mFA9sXrtXZBdAHiHCu6J48zemNr6Bz2kHxRPIgSWnEQIacJ+lrvfl
 QsAckwMKdeOPgxGqt5XLxfoThmqG3C88HCrDreV+qN5LiCG5Dits//cRb
 sRjPmHIZK6OUPp81xdMpOhKny4Kfs5tjGWJQnadSpW9HYKyFQChmKVgmt
 8oIksjyiwy/qBOwrDcCbPyPj0YeEBqw9UyNN9uF7KjKVEnuFHMBYBG5Km A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="464259171"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="464259171"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 03:38:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="810177274"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="810177274"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 03:38:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 03:38:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 03:38:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 03:38:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 03:38:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PHa9ZpKmIWX4FXMMGkJcGC0V/lMPsfsu+uc8O9UysEhFktrMC0YJyneuvOfWy1whAY1a5vnF9EcJHPLXZBPUbKX7gR2TzwHYzqFFI1vvQ3aU1CuPRLc9goUAmZsIBvtNQeb6k4qyRF0cqbWWsCndngbwd6gZzHSS1+CwCJOQEXTxpDSzUbxxMaBK9C7zlesQWGQwsCA5334CXgdSoRfnYBars1skEBHlmVwdMsF0QBvIjQywBUpPm6zjRXf5GzkWg8ly73owOdv0TlSlH0qGtb+PZEbT7h4ImBrYVqjFwULzW+0xaYw3ACYtLAjlmX9WsLEMLPDeqTFugmP/l8QcWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+0Fw+M2oseV5eB4k9knbNvK1qFVItYXonF3V/en+ws=;
 b=cA208CXUcBNrNCHNMi96TjFRah9p10UumE+qwNllcDyYrfsoGoljX1OErxim/3umbkJoUftutO13ZP4Qk+m0d2Ikbd3FXcfVjC1XOMzRMjVq5i/LAqnYH86dcG+0EZGM1Uxcv5aYme0A3KXkEhmiLnG4s2qwdo7hVR+1pLisP/5i3WL8FMTD9nmL232gBFGJVMyWCcSUqn/g+Hs8XBRym89ZQFwMEHt65O96nkeoScw4Tn0zFkKmw4fZ4aJATblPeIFb5/U1zzvRuyQsqLqLj+R6tTWf30vjUDzjI0EuiwX8Nq+I5QuVgq13nEUKg4marRG3Y9bvB4zJNUtQ4ylMCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB5984.namprd11.prod.outlook.com (2603:10b6:510:1e3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 11:38:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 11:38:09 +0000
Message-ID: <6b28b7db-4d78-4420-b8be-15f5f71cdfbb@intel.com>
Date: Mon, 8 Jan 2024 17:08:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
To: Arun R Murthy <arun.r.murthy@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <jani.nikula@intel.com>,
 <imre.deak@intel.com>
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240103090715.307309-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::29) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB5984:EE_
X-MS-Office365-Filtering-Correlation-Id: d3d02e0d-720c-4f29-b846-08dc103e49e8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Rz64up6Ian3Q8SGH1G9hYJTu7SxzZPV3wORegQPmRFRAEooRPEJ4gkTbCkcMawg5A09/OWCS0dgZbNKIdYA5oco4uhaklHRdwuI1z3I71qUUa1k6GTh5+8D9YhLlAGrDXTVl9fRX4Bedtn4g+q3ioT2bMM2HY0aKVfBE2BpZIfixOBiIQVg/TKuu4mIFC7Y3lVEK/VLJWja4hN0NgWECfL2aQ0dFwhPWDXEduC9boRWCA+/2xs5EL609HX6XRHbQwbUQCJU/MMebzSvPMJiu9+y69YAzxvRP43SFreMfXHW6BXvvDwBdxDacxrJoTsMRgQYFQA4bTdlb2evtQqlwLtf74Zrq2oujQ603k+zhkVLfmrMFKb8vptVPyZrcqwEnuWCRJpk4JE2A8f2s+dybYRMyAmlF2thPjfmxnPUwtMeVvDRUYyBfGmi9JGhK+VlWxzdrF3rM7LwXWk1aecxTR/pej18YcAXJzMGKGl0O1+Yo8Zf+jlBllS6eSdrbsnQOd3U2tGeZxK3KfyWdvuZHdzviwGtFughGje1km+hbpOZYqCxWOwJOaaTl3aBn9HAk0K+Vv+DwWvcwQ/ak7eq5fmNineKT2fc91kFXZuzJayto6eZgwhDsPTugij2s2LAwvTZXGVxZBGSOxwhDqkRRw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(39860400002)(396003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(31686004)(2616005)(26005)(83380400001)(5660300002)(31696002)(86362001)(6506007)(6666004)(478600001)(38100700002)(6512007)(53546011)(6486002)(66556008)(41300700001)(36756003)(6636002)(66946007)(2906002)(66476007)(8936002)(8676002)(316002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDFkeFRiWkg4TEdsSEVTSWx4cHNSRVFZeXdsL1k2bVJ6bFRvZU1ILzcrYlFO?=
 =?utf-8?B?SjZSM1JkdVR3TjhLYkFnelZvYmJXNEVTblczOHB0RG1LeTdSMDYrek5SUTFD?=
 =?utf-8?B?eEdzK3FlaXBNM1FEeHg5aEd4OWhpcGdyWm53UUJpU095bHY5Q09hTkd0STZr?=
 =?utf-8?B?Ym9sdlRyWjFrRVQ1ZDZPblFldHQzL2tqMU5UUjJNYTRvZGZCQ1BNU21tZklu?=
 =?utf-8?B?K1BNMkQ5RlE5WjBMN3RWb01ETkYxZFBPL0JBZWR6bmpNUE5IdzljdGI0OW4y?=
 =?utf-8?B?UnUzS252TkFpSW9POU1yamNRQU5zc1g0cFhwRHdEV00yUTZGRWxrRUVUMEsr?=
 =?utf-8?B?cHh3djhsNElJRDVmS1gybGxCVDhoaS9XMDU1RGtqbkxJdFRqWExzN09nNXFM?=
 =?utf-8?B?VG9CTlg5Rm1XVm1panJleXErRGprdnAyUkh3S2Z6TGxyU3NmRE5MVGwwUnNh?=
 =?utf-8?B?M3d0L1pNSWpPMUhqMGFrQmJQeUpTdWZyUWRtdkFadmJ6L3IxQjJ1SlRDVWdT?=
 =?utf-8?B?STFmK05mVVhlb25wc3M0UDFmSVJtenFSQnZHOUhSck5EK3d2N0lkWGY1TU5j?=
 =?utf-8?B?Sk9KbjAxd3loTnZQNmsveWNrWWgzNWxUNHc2dHFQb0JNWVV0enlTTUhzRXZn?=
 =?utf-8?B?QVRWaTVidk5LbXljU2J6RFN5VDlycWJEVjdRVmN2b2UzR283RFpUYlhVa25D?=
 =?utf-8?B?UlFUUGl1VmI2NlpDaG9HemRKVDZ6M3hKbEdIc0NCV1lmRy8rWTFyQU1ZM0pt?=
 =?utf-8?B?R2MzOFpGUjNEcE9zakFCbTBHaGpkVCtYeVpQdEdWbWhGZHNoVVhiQlRvWGd0?=
 =?utf-8?B?c2ZtRkVMcUhDQVJibGlteFZnYzBkQmdLR1pxMHZNRDNRTlFEbnZGdzJJT080?=
 =?utf-8?B?czFqNU5seTRsaWZXeUE3Tnp3TWpzTGpUNDFnYWxybUdkeng3UmVhbzF3b21z?=
 =?utf-8?B?UXd5U1E1YTdxSUNka2t3TGczWUx3aU9hUFlHUVIzNXdTU0lCYkRsYmxHWXRw?=
 =?utf-8?B?YkJ1dzZkVDlablVLMlZYYkFraGl4TFIzRVNvM0xROGxsbFh4M0N3c1ZsZGVn?=
 =?utf-8?B?WUFuTzlFNkMvd3BSWTNGVUdJeXV4cXlRekZsZkEvRmNGZG00TXZ1M3E3cVdI?=
 =?utf-8?B?SzYvSldoOFYyMnEwWkZKMGxlV3JBSlV0N0E0d2ZnOHYxQ0U0UThHMTNSRFQ0?=
 =?utf-8?B?Tzg0cW5CSlE3S0g0bElIcGpXbTdoOTFabW9YaWI5N0QxZEtyL3I5UFZnMmxY?=
 =?utf-8?B?MFFCTDVMTm1NdzJ5VHI1QXhxaTFaUFljWWtkcmxZbVl6NHdWQU1XMzFkYVpq?=
 =?utf-8?B?bGJDalZhd1NwVjJ2Nm51R2t5SGVKR3MrOWJGVnU4WTZaMFRPdVQwMlBqcTJn?=
 =?utf-8?B?RlQzcGpIQTJGakxJYVF5N3gvQ2dNbHIreU92N1RPSFpuc1hhNXZaQnZNcllr?=
 =?utf-8?B?czJBS244SHNjdFRPUEVyKzFjak5NZGtYZlNLSWFOT1BLZkJVejd2ejJDVWgv?=
 =?utf-8?B?QzdqNEtpYzI1b1VaQkw0NkRvUm85SERNRENiMkZ4SWVKb0Q0NFBKaDBFc2RE?=
 =?utf-8?B?by9hL1RoSVVHdXVWUDF4RXlQLzBjQ0NHMDdCRWVvWHFPRzlOemEvRDNQQ3k0?=
 =?utf-8?B?SmhaRks2M29VOTUydjRlZ09RRFk0YjJQcEhUK04xdEdXZk1WTnd3bmdva1Bj?=
 =?utf-8?B?SXRjOU9Yc01CdmxDREpubGJaSU9IUHluZDZwbERqMlBKRld5aVZYeTNhWVlT?=
 =?utf-8?B?bTB0cTRYNzlaY25lNFNQT1hpclQ2ejJMdHp2a0U1dlhrYXVsbVpFd1hNZlFT?=
 =?utf-8?B?U0hITnAwUjh1b3lkSWhhbHlxV0FnMngwYmlrZkZsMUJwMEFpZnJ5Q3Vtc01j?=
 =?utf-8?B?a0NEdXpUUTdFR3A3VE5iMm51L2hyM2I5MlYwZ2NibHFWZHlpYTJucnYrTGc3?=
 =?utf-8?B?VUo5S1FEeTc1b29JejNHdUNDeE5UM0pXZUFNc2FDNDNuZjNpT2RjaEt2aTVV?=
 =?utf-8?B?aWlPQWUrbXExdER4NDZHcVh5dWpTVHNLbFhNSXF4ZWZEWitiY3dYenZMNm1P?=
 =?utf-8?B?T0k4b2hOY0lYUzQzL2dEWmlHZmZBdkR1NUdkZndENW5QQ1B6YzJFVks4Q3BO?=
 =?utf-8?B?UWdoM0VJRWVNU3FWRzR5NWVtbUp6NHBVaXE5SXFvQ0xzc3BTQkhsNEhtQ2VT?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d02e0d-720c-4f29-b846-08dc103e49e8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 11:38:09.7243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +8vF7mAQx4+GFOK0etNY77/RKcNbQ9wx+BDFQfo7KC/8lBfLpkxOWhGVaN7GmYfmh+ceNWNrFdH1AUhb+8Gk8/D+3AFPbfVmJVx/YPxIgzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5984
X-OriginatorOrg: intel.com
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


On 1/3/2024 2:37 PM, Arun R Murthy wrote:
> With a value of '0' read from MSTM_CAP register MST to be enabled.
> DP2.1 SCR updates the spec for 128/132b DP capable supporting only one
> stream and not supporting single stream sideband MSG.

I think, we still need to read bit DP_SINGLE_STREAM_SIDEBAND_MSG for 
single stream sideband capability.

Only if the MST_CAP is 1 we can ignore the DP_SINGLE_STREAM_SIDEBAND_MSG.

> The underlying protocol will be MST to enable use of MTP.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9ff0cbd9c0df..40d3280f8d98 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>   	if (!intel_dp_mst_source_support(intel_dp))
>   		return;
>   
> -	intel_dp->is_mst = sink_can_mst &&
> -		i915->display.params.enable_dp_mst;
> +	/*
> +	 * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR rates then
> +	 * DP2.1 can be enabled with underlying protocol using MST for MTP
> +	 */

I am not able to find this in the spec, am I missing anything here? If 
MST_CAP [Bit 0]  is 0, for both 8b/10b and 128b/132b, it says it does 
not support Multi stream Transport.

Regards,

Ankit


> +	intel_dp->is_mst = (sink_can_mst ||
> +			    drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
> +			    && i915->display.params.enable_dp_mst;
>   
>   	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>   					intel_dp->is_mst);
