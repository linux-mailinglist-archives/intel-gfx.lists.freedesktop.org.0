Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C1843C3DC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 09:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95C96E573;
	Wed, 27 Oct 2021 07:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A420589D5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 07:27:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="229952743"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="229952743"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 00:27:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="579432950"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 27 Oct 2021 00:27:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 00:27:50 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 00:27:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 00:27:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 00:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F2QMA9/VsGeKu2gvIqxhv6Qv3DAhnN1B9qTgNmOtiYFJY54Wf9SkVdlbhBbYkodEDi16eBoX4lxRIHb6m6CXC0Vgu1/PAnxwKkOVQ2ZRw4V83CcP6R2OCeD+6JyUjBGjbQTgrOF2a/0pv5ONusLPmpyKIxFHzwr6HnoinVUZB5xo5SZ7B2wmKdT7s3NqsAz0+1DiUuzUiPY1JBAiHJhqpTZMd8mgqc6xdsyykytkqG3WOxBd2pasf5BLPFL/fBz+3bwHQVMYemSyGlgxsxTQccM8rDEgtRjaJF0qr/fdj7h5GKKrJsvQEWb1s6t7ZcZjO2RHJwJWvIOeMIqcOC27xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUrh6HRoo3K6o++lg7RfQqys8DGsBcc8UnulrViClRU=;
 b=DbrbXCOJn82VhmSOrp2J8Rymsy85AEa3ee6Bg1EtpdPOefK4kNvFXWZWZG6aKMI+0HLFTpFh/jF2c/Pv9Zdu+24JfZb/o9668aiA5ouSoV5m1WJCY4ejosRIcWxVXxcXvSCbkvgO3An5mhmvJv/1cpY+aQUhmrLSTG76EpBjTeNbOJ3jyxc5QbI3dPt9nEXbgmtYvk5P9aYjL1oVS2JNfcdwrIW5+ELkkyvNI7+LLbEgGNTb9VWJZcY2usmJR3ekf4TOuhxxDQuUZ+2GC1djHXpr6dA6ZRPtRR09juC8hswxtqGiTAUCqubto9y14te6DSl4WN8XPgT6XksHPZ/fzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUrh6HRoo3K6o++lg7RfQqys8DGsBcc8UnulrViClRU=;
 b=cIP3j4tiibGlbaFlDj5eJtWl1XqpBUlyjf063YbLH7HDIcGdjwmF6VU1UnhCM8Qkta/+dNCZ58kgGTuqqD75NxzKEH5Bb0hPjOq+IjxpahdOedtoH93AJa3jixpe+7TR2ahhpKE5dotSxAaUck0VeFeBhn0jAkLnfIBDLRFc+U0=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB2795.namprd11.prod.outlook.com (2603:10b6:5:bf::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Wed, 27 Oct
 2021 07:27:46 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4628.020; Wed, 27 Oct 2021
 07:27:46 +0000
Message-ID: <d86a25b8-b68a-5e2e-f4ae-c539ddf12885@intel.com>
Date: Wed, 27 Oct 2021 12:57:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Uma Shankar <uma.shankar@intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-21-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20211015133921.4609-21-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::13) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.211.197) by
 PN3PR01CA0123.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:96::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.18 via Frontend Transport; Wed, 27 Oct 2021 07:27:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a9065f07-c693-4bf0-9480-08d9991b4560
X-MS-TrafficTypeDiagnostic: DM6PR11MB2795:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB27950E269CFB0C2AC2A8F5C5CE859@DM6PR11MB2795.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: huCcN3Rn3zrlBXRsMZRdLQQ23tmt/mB4QzVEj6xwKeZA1mnGrAYGS2EpgA0Vw7IqyFIoIF0RljKyHbCkqz6yeEAZJRH5gpVbEuWAlC3j0hnjZGSE9G6z5vRlDUDGondCh+gklCqOwfCAuXKYIcXIV8BI2jw06Yl69PJW6pdjliM3Vf2H2h76fgeH+XgIK0TyacW+jJMiOOinakV46DM6rlO2/9gshs3Pl444D6m2SbYHvt/JMyUbjerpnZul6sbHiJT9V8KgOHmGBLGUorGgKqUEukSObG+kJVGaUUbYlvBN8JpUkpP4QBhIItj3BYDOzP77FpjKLXlKknolsCE7c/9cmVssThWONb3hkBxwVlht4PNVjJ7H7R4u6fHFezqoinHCiMYm+GHmkZUSaZVcD5mQsxro222Y/m/AAcrKQoDG9HdY43pZ/yzai+T7Ngk5CL+ooHIEO4ErwZGEnN2Lq5bvKZq8hv8gTA70F2geu2e+8WNJObJ0Y+6c0POeCOBilswzJi2BtGIs/oEcI9eXEpw0BCg2xz3ZBu2D1L1AVAbLywEjeNSOlVIPAK/B4PeIMVkxdtWBmXfMhFUBTJCNSm7c9AfrlvG3QXqFNRkyDg2s1Kn8QUQcyFSu87/0RI/5vi7oJ0mvifi+15tA5QtJ52MxbELrSA/7H+ZvLdYQWa8f5OYp9ZPeA2PNxO+kKA1fu4j324m8RYqZ9Bf5gpcTXnGEOxiCsKDguA5iGLfiHng=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(366004)(6666004)(6486002)(1006002)(53546011)(31696002)(5660300002)(4326008)(66476007)(316002)(956004)(66556008)(66946007)(8936002)(36756003)(2906002)(26005)(2616005)(82960400001)(8676002)(31686004)(186003)(66574015)(16576012)(508600001)(83380400001)(86362001)(55236004)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFZhRy9XNHVxNkxKNmliREl0TjQrUU0xWDVDeElyMGxQMStjUjVUalZXWEY4?=
 =?utf-8?B?eXRyTWNqNU5pZXdpVlBwY0hiZEFHRnRZbjJjb3RMbURvbzBKanRITjE4Zndu?=
 =?utf-8?B?STFnYlNzRHNITlc2UVlTUCsySlpUV3BnUzQ5Z1c2QVYzSVY2OHRLSEtlcXU4?=
 =?utf-8?B?a0RaQlJEbDZsOG40WG5XY1FncENCMVlFRVgyb0NXSW1TUkZ5a3hOKzNLWmtO?=
 =?utf-8?B?ZUlDRndvaUN4dlc1dUlBUzB5UDN0RVhJdTZEdnI2UWN3UUJPQW1hTnI4UEc4?=
 =?utf-8?B?UUZxbVQwSkdTalluL2Q2YmhXNVNyb0p2NjhSbk9GNDFxMGVsdGU2WTVRdHVu?=
 =?utf-8?B?b2wyVjJvOXl2WG5aZ21xMG1Kb0Z3Wm1CSURhUldJbEhUNlpZSzVXUHBZcS9a?=
 =?utf-8?B?ZExkV2VNNk15SkJwbUpSTjU1Rnd0Q3F3WWNjNFM0UFlZU0VVNlJRb3Yvb3pi?=
 =?utf-8?B?bTRseWhzdGZGT1NPSko5Y1h2VHV5V1doRTNpYk5JRTB0ank1azZPYnhtU3dk?=
 =?utf-8?B?ekZ4WHY0Sm1IWkEvNlk2SktNd0ZpS0Y2emFzSFZmamExenZJdHd5cDFUTDJR?=
 =?utf-8?B?MkI5aGhNTEdrZ2NqdllXZWw0OS8xV1JYRmJwdjFBUE0yeFI2bUhUa1E3cExz?=
 =?utf-8?B?K1ZXbTh4M0IxeHBXbWpubzYrQ2YvRmhEcDFvK1g3MlZ2OUlqZlUxZ0dIbE50?=
 =?utf-8?B?T1pESDBDNzBkNDZtZVB6UlhNak5PTGJHYnVLV2M5ZFFEdXBjTkRldms2eUlG?=
 =?utf-8?B?aC80cVlKYmo2Zm1aOFJ2dzVsOEtxTGxiZDR3TzRzK2hwYWVOajdhd0lXNTI4?=
 =?utf-8?B?dXV4OVhGcGZ4MG11dXkxMnIyM29WSjlUb1c5YWlCemFLSjg2VXQ1Qlc0R0VU?=
 =?utf-8?B?Qk9lbEF3ejFJczhGSW9ZQlR4MlRIczdLUjFyN1NSc3lqakpXTUM2T3BtdWdE?=
 =?utf-8?B?c01ScEN5SjBoZWFkdHFRMzFQTUVNTXRncFVxMVhmaDhQaS9KT1gzN055bldN?=
 =?utf-8?B?NGF6NzVxMVI3ZmFpZzBLN2t2STlQaFJidFdjV2xwSC9RUWROd2FqajRsMHB4?=
 =?utf-8?B?d3liSjh5M1g5bmY5dWZmYU9ucFZTZW93Q0FMVDdYRFBrNFZMQlc3cHBaY2xh?=
 =?utf-8?B?dkJTdWc0RjlMYWJaODcwVDVLZG5Ud3MyV3pFcnhmRTdVY2lFc0ttME92TGtl?=
 =?utf-8?B?OTJsR0E1NmRtbThVV082NnBWVjJVaXdHTnVYd1g5amVHWEdWbDVwTnc5SHdF?=
 =?utf-8?B?OCtSdlRFZkFBSmsvelFZbW93NlRWZWhzckZtWDhCUmk5RkM4SDU3d0VvdXh6?=
 =?utf-8?B?U0VNdTlINGsxWmZGUUtIWXM4SVJYTGtENG5xZ0tyVzI3WjFVdUFCbjM5TEJs?=
 =?utf-8?B?WTRaeTd4QXJVSU11ZGNFNWNGUTBYYTNLS01WM2pVR2s5KzdnaWJHTlloM1dm?=
 =?utf-8?B?QTh2azhEanZ1ZG91MkpqcmJsRFRZbWRNMVR5UTZHdUlrRGtiMmY5dGJwNXFK?=
 =?utf-8?B?cXRKekxTTXJ1d1NUVXIzM0hmQ05yUU9PS2xLM2dNSFNWYzlkaWpkQ3lwNFhm?=
 =?utf-8?B?aTJKNXVOcDRpaUoyekl3ZTh1aXBjRnU5MDAyZ0ozWWpDeU8xK0FQWmNXcVJm?=
 =?utf-8?B?WmxpTm0rSUpTc1lsYUJCanFtY2NvT0JsMUZrMURRQjNLUXAreWZhUllKbDhr?=
 =?utf-8?B?VGlBbXcvM05Ed2RyazIxUjRUNHV3QWNNeVVmVCs5T3d4TEVLeXpMcFEwOVFQ?=
 =?utf-8?B?eFJBQUxCL0c0MEFVYTd3Qi9iM2lpQmNRaS8vZVZCV0dJblh5L1dXdGNLN2lu?=
 =?utf-8?B?SUVOcFNqQmF3VUdoSHJHTE92WWk2QnNUaFkvUWFCL1ZTOHFYdUxRRVNuU1hD?=
 =?utf-8?B?MUd3dmpJVUNrK0UrZTNRbzVMeTZYS2VTdWFyM1pVODNMRkloTVlnYldYcEkv?=
 =?utf-8?B?ZGZaekp6M0JmS0RXc1Q0ZVo2KzlRK2tPS01sWXk1ODIvTzYyRHJYK2RwZDN3?=
 =?utf-8?B?OXd6emxvNHhnTVVSZWRwa3dpQmMrMkgvTUJkVkpXRHBvNEljNkJMOEkxelYy?=
 =?utf-8?B?RUtCcnhwSHc3V0w5alZxd1hLOWZTcjBMRVNTWitqNHl4bm5hakk5d3BMelZ5?=
 =?utf-8?B?eXlMaWtZVkFyVGpUYUcrNWY4QVhEM1BWeDYraWFCbmJQazdiS1VkWmxyaG1R?=
 =?utf-8?B?MjZvU2llMzRCcFR4QUpPWjl0OXBoRXVIMjJuaHRIWFlKcm8wanY1NTQvTSs5?=
 =?utf-8?B?R2t0OGdBeHAxaGlPVWhmWE9McnRBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9065f07-c693-4bf0-9480-08d9991b4560
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2021 07:27:45.9876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nxAFCZyh01tIc0yr1GADxjZ01CRFK0+XIu0hYK+3vQOHvm1+fDyF2z8c2mj2pa0XTW41kT4VCICWCn8z1gUfyNem5Dv5Nwc4ryURRCx9wkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2795
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 20/20] drm/i915/dp: Disable DFP RGB->YCbCr
 conversion for now
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


On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We lack sufficient state tracking to figure out whether
> we want the DFP to perform the RGB->YCbCr conversion for us
> or not. So currently we are blindly just enabling that all the
> time when supported by the DFP. That is nonsense. So until
> we imporve our state tracking for this just disable the feature.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 29b12456c461..3e2a29b589a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1107,6 +1107,7 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>   static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
>   				 const struct intel_crtc_state *crtc_state)
>   {
> +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
>   	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>   		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>   		 intel_dp->dfp.ycbcr_444_to_420);
> @@ -2456,6 +2457,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>   			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>   			    enabledisable(intel_dp->dfp.ycbcr_444_to_420));
>   
> +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
>   	tmp = intel_dp->dfp.rgb_to_ycbcr ?
>   		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>   
> @@ -4261,6 +4263,14 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>   	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>   								 intel_dp->downstream_ports,
>   								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
> +	/*
> +	 * FIXME need to actually track whether we're really
> +	 * going to be doing the RGB->YCbCr connversion or not.
> +	 * We can't tell by simply looking at intel_dp->dfp.rgb_to_ycbcr.
> +	 * Readout is going to annoying due to having to read that
> +	 * state from external hardware that may vanish at any time :(
> +	 */


Hmm right. Do you have any suggestion what should be the better place 
for defining the policy for using DFPs CSC or use our own HW, in case of 
YCbCr 420 output?

Also, IIUC, this might need consideration for higher modes with DSC1.1 
H/w that do not support compression for YCbCr420.

In that case we might need to either use RGB compressed output and ask 
for DFPs CSC for conversion to 444 and then down sampling to 420.

Regards,

Ankit

> +	rgb_to_ycbcr = false;
>   
>   	if (DISPLAY_VER(i915) >= 11) {
>   		/* Let PCON convert from RGB->YCbCr if possible */
