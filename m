Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D80A852810
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 05:51:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0674510E14B;
	Tue, 13 Feb 2024 04:51:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iMv/q/75";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18A1D10E14B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 04:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707799859; x=1739335859;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ZplKJW0vudZMiKvWiRUFjCHgO4hZwWiOsMEkxEOO5U=;
 b=iMv/q/75hr35tGC4JCDsoZ44XN8ngeQR4TSQgCeJKOFVO8EkRe8DDZgo
 SnL66uGM7SVuzYt4Bxk5nN59TRepO2Dlo6wc3Nf6dGFS+qUBHqmR4qn9v
 eUPERpaYTtcl5xECBZtJTYkN782Sb2wnvPAm0PlJZb8g2U15KKdmwIREE
 yWu8fJcZ+NEYaGVmpFUkprjYpj/pZdk7RSqpkbLzZf/4N1V2+JaT/JIji
 NlpWJvwRPtBvM3/b6xznFSCwD5E9ZvfoOQwiyBZTX+P8QQRIaTJU3RkNg
 lrj9X+uciYJoumTEQhmMp9aLQarqml6dYi8BdTvVWxB+3dI85Qn9QHclj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13191079"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="13191079"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 20:50:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="2776643"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 20:50:58 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 20:50:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 20:50:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 20:50:57 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 20:50:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nbz/FrGUbHGES9qtSQkGgproM+xQl+wY5po4xR9qGMvIq+P/3Vrk+RxeOEevJdrBCfw02mXiQ/Ly0vWMeTifbgNNZOSQ7BTZGVd53oGgo+nq7bOQvP4LnbW355x89SY6U8syBmxmjrmK2o0HE0KVZuJ4RcawdOG7eAOV4MXI7J3e4BAhBGZpLFOAdsQRdw0pXZ+WF8oCjihbso7esdsluK29RRfmmS+nzpL6UhULEUqp8F72MPGJ6An7WqfDn1Da8t1znvIvvKMko1RvKxkNVqUTp2pFjnLFgkpvP7/8BYMf7fVDfwPIENdHK6LozM9eghQdZz8JBARt223kF2L/ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+M/A3kNZ4UZg5tLDJF5hKs/g0zq6k3rA3aTydAuav0=;
 b=hb6FjTh1ebdrX2mqRfEt+HJKzwGCcjw/NWhCRtublrY4mNsnQ+lB5kXVtVETrmmAr85sEz/UZDNz++t/+eiDdx9F/dDpk+OyQdr4BZVkl/Bgu2FAeind3BdJXXJTE7H8Nrxu09bfO1G/EtvcEsLsXFZOA+puKKpctQEnbgeuPLVSjV3wYmeBjhOLvZKWKftFpAXiscY5vUp2NyjmoIeNt/v2pcE1tvr6d3Zt0zsOD60yQU1PHnYb2OvQVnZIgrNf3S6XwaV0WQ4m9xrYFPhRCeKufmX+C8P0fWr1I+T6dvvhhFNhFy11/7rKJ78r8HgQPmHQLMqv9af6nWcJfZDjHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7761.namprd11.prod.outlook.com (2603:10b6:610:148::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.33; Tue, 13 Feb
 2024 04:50:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%6]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 04:50:55 +0000
Message-ID: <24a97d74-354d-482f-bb29-28cd77d52261@intel.com>
Date: Tue, 13 Feb 2024 10:20:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Fix connector DSC HW state readout
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Drew Davenport <ddavenport@chromium.org>
References: <20240205132631.1588577-1-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240205132631.1588577-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0064.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7761:EE_
X-MS-Office365-Filtering-Correlation-Id: 354b930c-b07c-4eeb-a11e-08dc2c4f5cdd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mmbL+1AYN35f7WAsexEmlvh4zfF5TfQRrbf6lkGEf6lPfNui3ltx15iwPYOuHPAg2BcGLMd3BsODS5HE+ELwQVYAX79exsdBEe0qXi24BV108oGgwbnRBIdmgPAPEhzrc/Su/RPVCbl2WZBtyoMWvg7q8KCZlhhAxizg4irRVunLSEnxo3eNNoybY9so6i3C+OE2U9KFOCGYN8tEv9biIzZQx5QSYmAwM48L1/Wd6sNppA3OBbjMsdqManLsJ+RpMQvxD75LgaI9Cs0Kq+qQ6dkGhOm2b5m8Zec/ZZjX+mWtW2BHFZIIf26KmWZnjQfsP6nlAz1Lp/2gMRx7OM5aEwogol1r/bADTiscDEzVBgVWnuMO7Cjf9ouXfbcS+VejtwB8iDCw/QGurA0WlYKRoZP+1MIZWbW1jBj6Kg3rKfmVljYvBTvBK6lwUetwaDcOOWtDAAynOAdOAH/pQD49A1A0L8ROiIt2zxbTq4nqSlQFuN1l5nL0gqzSfnQzgllDm7VAbATUCxDZsdz4zUFfZcjBOPsLHBQUWIG9uWQ+q50=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(376002)(346002)(396003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(8676002)(5660300002)(4326008)(66946007)(66556008)(2906002)(66476007)(36756003)(86362001)(38100700002)(83380400001)(478600001)(6486002)(966005)(6512007)(53546011)(6666004)(82960400001)(6506007)(316002)(26005)(2616005)(41300700001)(8936002)(31686004)(31696002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUJrdHRMaGpGb1VkUjJELzgzMEczTUEwZVJGazc1akxSUU9oNnh1VGdNNTk1?=
 =?utf-8?B?QUh6REs1OWR0ak0vVVQ1MlNXNTlvNFhsZitYcndHTHJOU20vTlc3d01OMUhz?=
 =?utf-8?B?VDBVbEhBbmVjSFh4aFBIVlE5SUJnaXhqNFBqcUdHZXplN1pmY1R0STlpQytx?=
 =?utf-8?B?SVdwTExuY0t3SFprMERQVCtjYlpndDc5VEJBR1VlVFAvK0hPRjNERVd1dlBJ?=
 =?utf-8?B?emhabXcvdVh0RXhiNmRxeGNGbkhGSFNVcFVES01tZXZSeU1SMnl0TC9Ccnkv?=
 =?utf-8?B?RHFVNG1ITVprM09OU1FLSDB2UlJoR3htaStLYXhzNUlKUjBOSEVySG5MVUlJ?=
 =?utf-8?B?S3o2NjBGNnQ3Z3l1cVZzUGwxYURJMXA3NEp5V0d2S0EyRmF0QThhVGJBeUxW?=
 =?utf-8?B?VjdLN0lzMWZxMDBqMFdCTkFPcTIxVUJ3TGcxb0J0eUZBL1l1c1NPZFdVa1cv?=
 =?utf-8?B?OGplbm81Y0FTMUhrWkhtbjVsLzRGckU4R1lSYU9OS2sxUTFtVnp3VzVyV3pa?=
 =?utf-8?B?UHhBbDhtbXNyU3l0RFdqeGlDdllIZUFYOCsyRC9FVGJkdGxzYWpmY1Zwa2xn?=
 =?utf-8?B?SnE0c05OMGkzd2Z6c0RBR1NVZ2xOdEpoTVM1NFQyTFgyK2tUOXZialZWZWg0?=
 =?utf-8?B?NWErODdiZzhlMkFVSXZUbkFMY1NvZlg2ZENWUHVrUjFJYWxnK3JHZXFHMXFN?=
 =?utf-8?B?eFh1a0pwVWNmNWpVcmVjTU5uOEV6K1RHUkgzVENud1NHeVlNN3dGRTdCSVow?=
 =?utf-8?B?UytFVzVScUxoSzdOSEJyMFFGU3dvT1IzbEhBd01ySUg0UVJQYUs3WHVqSFNF?=
 =?utf-8?B?Y2RtWHo2NFk4UnlWbmhaQVNPSUVCMk9yMnc1T2lUU1hIYWRtUGlpOU52UmRR?=
 =?utf-8?B?SDloNkxuTkZqclI0U3NZeU40YlJ0L2lJcnZ1MUl5Ri9YWjJONGtacnVnVWZT?=
 =?utf-8?B?NzI1dXR4NE1pZGZ0NHdZQmNMNGN4STVnRWptNTNPQmhZSTUvUzlBL1N1bXQz?=
 =?utf-8?B?WklDbU00Z3M3MVZGdWVJeGU5WmxsV1VDd1JCSURaOGRMODFTU21qeTNMLzlo?=
 =?utf-8?B?TGJCYmlyRngxay8xY2FCcWdZS2hCQ1F1MkJ3V2RzUjk0ZGg1emlqemtXK1c5?=
 =?utf-8?B?azV1b1Y0dnhSVXBTYnQ0M09hS3dOZWF6dzFTaWJpUnFwMTlWTngxaGVnVkls?=
 =?utf-8?B?OGd6WmhreDJ2aytXeVMxVUVlcGJsZmUwUUE1NGViUGVTT2MwTnF3TlJ1UUYv?=
 =?utf-8?B?MlpWdXdEaTJRd0V4ZUJYUnU0elBGUHdQajNiVUNoTlAwT0EvYWYvbGpzd3JH?=
 =?utf-8?B?Q0hUbzNlQUxuZWo3dkt2eGM0aTcvNU1sNzZZbFA4VDhKdTdUNUZabTJBeHg4?=
 =?utf-8?B?TkVDUjhOY2hjL0dWOGFwVnUrM3Eyc25wdW95Qk9EN3kvcVlMazN6NWlIZ1Yz?=
 =?utf-8?B?MWpmN3FKQ09ENHM0Vm1uVDdqN3BGZkpKWnA5bS9CMGtuWWs3a3U2dDBGQ25G?=
 =?utf-8?B?aHZab3NsbEc3NDcwY3BMWEw1Z0p6SkNZZ2Q4Zmc1WXY1WjZzM2pTbTk3QXRl?=
 =?utf-8?B?K1NHWnZBWitDdmYwWW5FOHN6WE5TV3FPb0NYNHFKV1RJSlRoa0tmWE9RcjVZ?=
 =?utf-8?B?RkEySTNieEliaGVZRFV3T1ZWcTZqbGlXSURDMGlFWXlYYW44S0d2YmN0WXlO?=
 =?utf-8?B?dEtHSDAzNmFjM3B3K2lCcE9uTERZYWNiS2VMMDdOME1EeXRRK2pWSWZOQmtm?=
 =?utf-8?B?OFBxekQvQkwvVDlLcVRCZkg0SGg3NzZUNWNRLzBkZEtXbDQyYmpyQnFhUzJr?=
 =?utf-8?B?bFp3QzF4dG5MRGJ4VGpKQ0tvSGQzZGFFR2t1NG90VzVGcnhadkxlVzM1Rjlv?=
 =?utf-8?B?RHdmblRKRmJtNUhKcVVTM28xVVlYRXJZMTV2OUhyVVREQTZvbG1zL0srR3k3?=
 =?utf-8?B?VzhRQTV6bjRUNXhoVW5GbGlEVnBtOG42aEFzL29WejFsU1M5RWdhT2Y1dUI4?=
 =?utf-8?B?QkF6V3FsdHJQbnlUTHVRbTVRWDllcnBNZFNqZnFvdk4wRis3YUU2bTVUTksx?=
 =?utf-8?B?Mks3S0w0aGJsYm1Nd3dNaXR0V2VPa0FHWkM0elNUeWMzNFRaSXRZTW9SVWFH?=
 =?utf-8?B?TkxGOGROWGQvUFBsRUlPblF1UUNFU1pjalJjQUZ2R2RyRTdlSHBTbzZxbDBZ?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 354b930c-b07c-4eeb-a11e-08dc2c4f5cdd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 04:50:55.5214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KtrRz3JJ47a7qsU0q5cVh+ZRlJ++8yO8IEtsyJ98G3oVic+Pj3xpp5Y0mAd1lov2nPSLdYLSpBllr2++aVFzgCcV2VXtGqpvRBkne4nl5r0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7761
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


On 2/5/2024 6:56 PM, Imre Deak wrote:
> The DSC HW state of DP connectors is read out during driver loading and
> system resume in intel_modeset_update_connector_atomic_state(). This
> function is called for all connectors though and so the state of DSI
> connectors will also get updated incorrectly, triggering a WARN there
> wrt. the DSC decompression AUX device.
>
> Fix the above by moving the DSC state readout to a new DP connector
> specific sync_state() hook. This is anyway the logical place to update
> the connector object's state vs. the connector's atomic state.
>
> Fixes: b2608c6b3212 ("drm/i915/dp_mst: Enable MST DSC decompression for all streams")
> Reported-by: Drew Davenport <ddavenport@chromium.org>
> Closes: https://lore.kernel.org/all/Zb0q8IDVXS0HxJyj@chromium.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h |  7 +++++++
>   drivers/gpu/drm/i915/display/intel_dp.c            | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_dp.h            |  2 ++
>   drivers/gpu/drm/i915/display/intel_dp_mst.c        |  1 +
>   drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 ++++++-------
>   5 files changed, 29 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d691..6e1ddd05bd504 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -609,6 +609,13 @@ struct intel_connector {
>   	 * and active (i.e. dpms ON state). */
>   	bool (*get_hw_state)(struct intel_connector *);
>   
> +	/*
> +	 * Optional hook called during init/resume to sync any state
> +	 * stored in the connector (eg. DSC state) wrt. the HW state.
> +	 */
> +	void (*sync_state)(struct intel_connector *connector,
> +			   const struct intel_crtc_state *crtc_state);
> +
>   	/* Panel info for eDP and LVDS */
>   	struct intel_panel panel;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ab415f41924d7..f8b1aab7745fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5868,6 +5868,19 @@ intel_dp_connector_unregister(struct drm_connector *connector)
>   	intel_connector_unregister(connector);
>   }
>   
> +void intel_dp_connector_sync_state(struct intel_connector *connector,
> +				   const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +
> +	if (crtc_state && crtc_state->dsc.compression_enable) {
> +		drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
> +		connector->dp.dsc_decompression_enabled = true;
> +	} else {
> +		connector->dp.dsc_decompression_enabled = false;
> +	}
> +}
> +
>   void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
>   {
>   	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 530cc97bc42f4..f911dfab5fba9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -45,6 +45,8 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
>   int intel_dp_min_bpp(enum intel_output_format output_format);
>   bool intel_dp_init_connector(struct intel_digital_port *dig_port,
>   			     struct intel_connector *intel_connector);
> +void intel_dp_connector_sync_state(struct intel_connector *connector,
> +				   const struct intel_crtc_state *crtc_state);
>   void intel_dp_set_link_params(struct intel_dp *intel_dp,
>   			      int link_rate, int lane_count);
>   int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 5fa25a5a36b55..130c6aab86b22 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1538,6 +1538,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>   		return NULL;
>   
>   	intel_connector->get_hw_state = intel_dp_mst_get_hw_state;
> +	intel_connector->sync_state = intel_dp_connector_sync_state;
>   	intel_connector->mst_port = intel_dp;
>   	intel_connector->port = port;
>   	drm_dp_mst_get_port_malloc(port);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 94eece7f63be3..caeca3a8442c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -318,12 +318,6 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
>   			const struct intel_crtc_state *crtc_state =
>   				to_intel_crtc_state(crtc->base.state);
>   
> -			if (crtc_state->dsc.compression_enable) {
> -				drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
> -				connector->dp.dsc_decompression_enabled = true;
> -			} else {
> -				connector->dp.dsc_decompression_enabled = false;
> -			}
>   			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
>   		}
>   	}
> @@ -775,8 +769,9 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>   
>   	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>   	for_each_intel_connector_iter(connector, &conn_iter) {
> +		struct intel_crtc_state *crtc_state = NULL;
> +
>   		if (connector->get_hw_state(connector)) {
> -			struct intel_crtc_state *crtc_state;
>   			struct intel_crtc *crtc;
>   
>   			connector->base.dpms = DRM_MODE_DPMS_ON;
> @@ -802,6 +797,10 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>   			connector->base.dpms = DRM_MODE_DPMS_OFF;
>   			connector->base.encoder = NULL;
>   		}
> +
> +		if (connector->sync_state)
> +			connector->sync_state(connector, crtc_state);
> +
>   		drm_dbg_kms(&i915->drm,
>   			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
>   			    connector->base.base.id, connector->base.name,
