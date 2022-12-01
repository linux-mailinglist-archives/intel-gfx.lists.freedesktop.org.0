Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39C263FBF8
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 00:27:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A24010E68D;
	Thu,  1 Dec 2022 23:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7453F10E68D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 23:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669937250; x=1701473250;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=x/4wkQ0CRiwxxzWBApdiR6iALjQrxAArVZEY9CxxB9E=;
 b=DtIWXg9qqj0AUG0hQZo3bn66M7fskGCH9b4RM8YBZJgVAGxx3uTx3b/i
 szpMQnbrT6hYHTVkCQOq9ilNgbRU/8n1N5tOqZ9KKE838TXiHPP5+FKmV
 /AUWzcbQPdfqV9c3yh4gdWAiL+bSRWP/1/NmLZFyFqnZ7+bi3J9+6h3OF
 CnvkylaBZFiCejvzoDRFwvF0cnQeRJQKMPO3tr/uJP++DlbRqr8qS73sE
 mg3WUMmy/fxABofYaKjjE/Gjuu3r9NNB1kbw/A1/Bw+dFaJNP0zdfXSwB
 vDh7U2hk5cLlr1kaUADqjqfA7nSZ7ZrCtqXyYEo0kBrCH2+8wwVpS5+y2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="296176321"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="296176321"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 15:27:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="708264088"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="708264088"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 01 Dec 2022 15:27:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 15:27:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 15:27:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 15:27:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dySFnHjF3+st0fnwsaDNnk/w/2cSaCcYvsd0Jd92NDl/5GWoR1bcqkO3+vwLXe5VExND5Bl16kwAxfebq3mkylccScHBy0umy7EoCojcDldozqgk/ImKpgUbUkKE09MidAFW7puivW+TERwPQk/5TPnZur80wO44Z2bCkOUjUW7gPIhqmfuDJNCnb1vDeZ5natrsnml7xPLOkyrMCv1bxYvn3nBZqgA+GQ4Uges9qoQevZDRhZ+qjtmhDjjHUAUXhf9HBhU6BivAOGdmKzA3t7rqh4yiO0HMIu+iqiKkGp4FWs5/tKdxximCrcdM1sMy8N9r+KWR5cQKMi/Ryx4Udw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYpOJI1Aol32fNqUH89gL2/4QPUAgQB+J8/PxZ2g5lU=;
 b=A7yIrkPknj/nayXWgQrlFSIx2pknU36L0L5qjEqobUq8nGTL7J2x1hTFZhFG7BXtyibS+tiX3/xwId+gbscp96a4Pg2zjAlZXIEeYLvezRnGjZs29Hv0V3+5H6xPeO8uyzJ2f8i9E93PSbtM3/GypQfHzmJvUcMClRnfC/CTb6tKo2gTvyUHzGrdUzgvB6G83WB+/HFD+BJ5dyQC7Fzc8fg/6eq9OeB00/awm8ncULRF0nLo2OXpu2/40I+hF98yHEwUZK+jaZefrRPf+GraGlzUvkqIW97GTZRocKjNMCJWT4l+LovrhU2kLOs6gmoYjiWxnRADYnbrMhsrdKnKNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB5391.namprd11.prod.outlook.com (2603:10b6:5:396::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 23:27:27 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 23:27:27 +0000
Date: Thu, 1 Dec 2022 15:27:25 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20221201232725.rnn6ct2fae2rwcqe@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <Y4kyMSEltDvdD7uV@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y4kyMSEltDvdD7uV@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY5PR17CA0016.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB5391:EE_
X-MS-Office365-Filtering-Correlation-Id: e4a2cbdb-f93a-49ef-ebfd-08dad3f39bfc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qtkj+XUvx2ge69v92QGmK8RI+58T8CuKIXgugMJtIHtu+pZ3EMgVF13lHwQtHFcABL9lqpUXcxex0Ht5IweLahw9dZlHuDybhTK6tWpoJyIFbuR9ui35N/rOSMRlSx+4n+Yx5l6J4kNUySCWjHiyUPRqpOKAKaVyIipbJTIQiHP24dz+99eLtL4bYkDnBv73NdmazvLMZ4Zea33Ten0kz1X9YjRTuoPXBIljhptrDBExYPWeWrXQSdlLz7Gq+zFg0h4vrnlBq+sXUuuxO87Fgpt1aHWl8RX2UBAmw9bbEHdIAEg4AfUYYTvDpmCebWLRUBrgt1qR5KG5JmYHdaNwmYIV+rvnx3xogHTaoeblpe4f2eOMnoK2eSvvIAEpEe/km24G1WKpmaJb/IRlDgIg1CDEnwfpBXamKr3SCrcR3kHmaDKNx9z8SAlDVmgwitPp7aDumWChf7Wxsbz7HvSYsjRQDA5bNOWPpEW6oiB3IfQXJp8Y/xZ/3Z1aHabaGA6klNkSlWBrOG9p1/G98knSQvZgMhElGUmtJNffwz/q4NKAG2ehGeVTcjBcHEkQMwa/DRAtOGbXxDhZGihGCk5Re9qSm0VSkuOIYnSvs/aMRYrVGBHJGG9cqblGG6PqYFcQCg5xDhkkgKk4pe7VjIY0PQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199015)(8676002)(4326008)(41300700001)(5660300002)(66476007)(66556008)(66946007)(316002)(2906002)(6862004)(8936002)(6636002)(6486002)(478600001)(36756003)(9686003)(6506007)(6512007)(26005)(186003)(83380400001)(1076003)(66574015)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?58lBSb0TOr1tz9w59Hqgv2GylLgzybC8u4W+Q/+DatCHMU+Xeitq19GUOK?=
 =?iso-8859-1?Q?II9ag90VPx6+Onefp+CHqcibpD/pohQMvpnBRAaFS8U/UGsrJuIW1HgWJ2?=
 =?iso-8859-1?Q?qjTYxN/NC5zo23PSscUprc3jVTBf0a29IJJVpK2voG68SLExqookB61SVO?=
 =?iso-8859-1?Q?0drVzt+0zd6XtB6HhMSlGhGIR8Ey7I+wfT43jsp+fJuaaa20SlJg78gAT1?=
 =?iso-8859-1?Q?yQA/0SNJqNdfDQYUOoCD21glAgjSXSntQOb0akPQQzxeod1nqSDxxOVYLj?=
 =?iso-8859-1?Q?V7AK/h16Zdq2GwEjHmNx9lkcLyjCV3KwfnaVkxCMOrEhitG7lt2PqwOZ+H?=
 =?iso-8859-1?Q?HlzhF0QjoctP1/nndAEwgbfRSyZVo28l0g6utUDoQMpg8VR3tCC2AqR6eq?=
 =?iso-8859-1?Q?D4VlO13lryG3jmSDPy8GCoPX8wtlEoCjTUuTirqaHgwOModKVBabXt6r0D?=
 =?iso-8859-1?Q?6Jhr6Z9rx/jciHISJkdsZkUGGR4BxWDhuy7KHkroDI6ZZpEzhcklW8Qooj?=
 =?iso-8859-1?Q?NozD2L6srjxWSuWxFnwUFAoEeUoEWqbxw1Fjxrkzp4GnCLhMcH3I4Ns8Jt?=
 =?iso-8859-1?Q?KBHui99UWGAeymtsSNtDIA6Tu9Tpk5UO3HbpV6ME3JmVEUOf/KzwDo7Nce?=
 =?iso-8859-1?Q?fy+MRDUd0WQdmu1RJNuelT7KI27UZiEBvpUVVCWoVP8q9Wc29dEO8vnNHG?=
 =?iso-8859-1?Q?wRVTcXfbjFTWjwYXVNVAyHA/lzBSbsjMoqbEvFbwIOzCK02IcA3aAMEhe3?=
 =?iso-8859-1?Q?AeArMXOI9sAtkGTXKSVMghbNKt9y6qp9LO7/dEZzC+SCpDCwVjYtruAEm3?=
 =?iso-8859-1?Q?1ol1T675wHHIkCmiDI/tPVyVwdO0se1+WxW0iT3P26VeakrVeSUTINzKXJ?=
 =?iso-8859-1?Q?Ub21nRLS+TTxGAnPE6MaGnBXJPvrDlbO9uzwiiMjds0M1IANqETWBuSHHQ?=
 =?iso-8859-1?Q?xYsexaFcJrlKTfLdn2bIOTHYMpwuu8cPK+D8S12GkYcPzozMsIJQverC84?=
 =?iso-8859-1?Q?92VhkxhMr4SC00xROBOQI9JP1ngLkeUTXX2h9nuKhHLzxefAmhw8T74Vk2?=
 =?iso-8859-1?Q?ujxOzeWuPKsa5iNWlJ+htZ5EjMFCqRYkKYo14p+pWnMtwFklSRYyhiJQMw?=
 =?iso-8859-1?Q?2geumkLWvjT53A/IyaC5ZsHKgtjwPs/yzHvioc6Gbnm3Q300nVQAjFjvcm?=
 =?iso-8859-1?Q?3TsTN8HQqMMdxDxMirTUpCFoI8uRlKy0YG1iUPVT3Io1BLt8IN0yE4DwSS?=
 =?iso-8859-1?Q?gBbpks6xa87Iuvkf+krG7cCB3FczpfhgGbCgblmO2FzRCSq/nc7qRklRUK?=
 =?iso-8859-1?Q?t+zGVvWQuj4aTLF2bnVobK4pSaIpKyb1+AU6WrBxOGmvHHxY9EpPNeEpTc?=
 =?iso-8859-1?Q?nYFKQNzGAZbPg9CFKODb/dfatw0rhsMSQccw1NQ9h4IKnZ/X7nAe+bBLsH?=
 =?iso-8859-1?Q?SM9aJCMVu5h4YpQXi0Xss1yqhgvAifQlQTPjM1PtOwcxth2aQn94+xlSpk?=
 =?iso-8859-1?Q?GCkozeSuHgAUdPfXevxKyvXUhOBfRz+pFcl69QyqGKhKi7q80+ntgow5KG?=
 =?iso-8859-1?Q?b18Loo378KVQQxomTWFxV6B4Vu4UnaTUcMdjvp3wonMm/BawzuAU0+no8r?=
 =?iso-8859-1?Q?7G3oRZYogEJY+UnMTsbWbdz4v9wWYvxodT7zcnL7DlRrV49oYLRvoGkg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a2cbdb-f93a-49ef-ebfd-08dad3f39bfc
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 23:27:27.4997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Kv2jVCyHnOfdXPqS/lDq/dnJ7qO22laPQtTekHR5Vg5myg29NwDUgiFyK2p4vTkcpfFa1k356jAjRiWEfagNxZJbvRNqZXw5v/xJLUCBA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5391
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Initial display
 workarounds
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 01, 2022 at 03:01:05PM -0800, Matt Roper wrote:
>On Wed, Nov 30, 2022 at 03:17:08PM -0800, Matt Atwood wrote:
>> From: Jouni Högander <jouni.hogander@intel.com>
>>
>> This patch introduces initial workarounds for mtl platform
>>
>> Bspec: 66624
>>
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
>>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
>>  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
>>  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
>>  4 files changed, 28 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index b5ee5ea0d010..8f269553d826 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>>  	}
>>
>>  	/* Wa_14016291713 */
>> -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
>> +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
>> +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>> +	    crtc_state->has_psr) {
>>  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
>>  		return 0;
>>  	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index e82f8a07e2b0..efa2da080f62 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
>>  			       0);
>>
>>  	/* Wa_14013475917 */
>> -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
>> +	if ((DISPLAY_VER(dev_priv) == 13 ||
>> +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
>>  	    type == DP_SDP_VSC)
>>  		return;
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 5b678916e6db..7982157fb1ff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>>  		return intel_dp->psr.su_y_granularity == 4;
>>
>>  	/*
>> -	 * adl_p and display 14+ platforms has 1 line granularity.
>> +	 * adl_p and mtl platforms has 1 line granularity.
>>  	 * For other platforms with SW tracking we can adjust the y coordinates
>>  	 * to match sink requirement if multiple of 4.
>>  	 */
>> @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>>  				     PSR2_ADD_VERTICAL_LINE_COUNT);
>>
>>  		/*
>> -		 * Wa_16014451276:adlp
>> +		 * Wa_16014451276:adlp,mtl[a0,b0]
>
>These days we don't really add steppings in these comments; at best
>they're just reiterating information that can be easily seen from the
>code below, at worst they get out of sync and cause confusion.  I'd drop
>the "[a0,b0]" part (which also isn't accurate anyway if you're using
>range notation...it would be "[a0..b0)" in that case).
>
>Honestly even the list of platform names on workarounds is of
>questionable value and I'm thinking about writing a patch that just
>drops all of them throughout i915, leaving just the workaround lineage
>number.  Maybe I'd keep the platform names in the few cases where we
>have multiple workaround numbers (with different sets of platforms) all
>requesting the same programming of a register...

I'd be happy to ack such patch :)

>
>>  		 * All supported adlp panels have 1-based X granularity, this may
>>  		 * cause issues if non-supported panels are used.
>>  		 */
>> -		if (IS_ALDERLAKE_P(dev_priv))
>> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
>> +				     ADLP_1_BASED_X_GRANULARITY);
>> +		else if (IS_ALDERLAKE_P(dev_priv))
>>  			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
>>  				     ADLP_1_BASED_X_GRANULARITY);
>>
>> @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>>  				     TRANS_SET_CONTEXT_LATENCY_MASK,
>>  				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
>>
>> -		/* Wa_16012604467:adlp */
>> -		if (IS_ALDERLAKE_P(dev_priv))
>> +		/* Wa_16012604467:adlp,mtl[a0,b0] */
>> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> +			intel_de_rmw(dev_priv,
>> +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
>> +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
>> +		else if (IS_ALDERLAKE_P(dev_priv))
>>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>>
>> @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>>  				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>>  				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
>>
>> -		/* Wa_16012604467:adlp */
>> -		if (IS_ALDERLAKE_P(dev_priv))
>> +		/* Wa_16012604467:adlp,mtl[a0,b0] */
>> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> +			intel_de_rmw(dev_priv,
>> +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
>> +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
>> +		else if (IS_ALDERLAKE_P(dev_priv))
>>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
>>
>> @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>>
>>  	if (full_update) {
>>  		/*
>> -		 * Not applying Wa_14014971508:adlp as we do not support the
>> +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
>>  		 * feature that requires this workaround.
>>  		 */
>>  		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index a8a5bd426e78..ecb027626a21 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
>>  	 IS_GRAPHICS_STEP(__i915, since, until))
>>
>> +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>> +	(DISPLAY_VER(__i915) == 14 && \
>
>As Tvrtko noted, this could come back to bite us in the future if
>another platform shows up with 14.10, 14.50, etc.  MTL has exactly
>version 14.0, so best to make this
>
>        DISPLAY_VER_FULL(__i915) == IP_VER(14, 0)
>
>so that it won't automatically capture future platforms by accident.

I think it's better to do a platform check as the other platforms are
doing. See DG2 for example:

#define IS_DG2_DISPLAY_STEP(__i915, since, until) \
         (IS_DG2(__i915) && \
          IS_DISPLAY_STEP(__i915, since, until))

Lucas De Marchi
