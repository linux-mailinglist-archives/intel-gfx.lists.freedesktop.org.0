Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B6E61765A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 06:53:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109E010E59A;
	Thu,  3 Nov 2022 05:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AAA110E59A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 05:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667454792; x=1698990792;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lNM3xG5rvKHwkg3/ka1oqy/21977Ku8Xl4QiiI3Iuzw=;
 b=kArIZR0TfPbF5zCX0O5Z8vfwy16kWRP9YBF0wUpfEZI3nI68kisrrj6d
 /05GRMV+Zjq8EUbzv+brNpBspIC7W1dpYgzNRmhwJG1JQZliEDxTapX+M
 uSWr7HSwbEt7R+Pq3cvPyUGyTKFEH9UbvsoHhxmFXK+qP3+KbiMSdByJ7
 eLrHc6rVDpCtgPuCj6LShtEFh+LS15YH7GJMt2cm9hH+98YmixfjAHuZG
 g4L41djBHX/0KIPdpCDCGH9GD7j2Rs3W//t9QeZgM8zYv9NpqvmxqjUcJ
 6lU0JmtVkgP/Y74rGyGz231s+GsRI5uy2he9t+OKfk05YmDfi2b0UPzx6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="307209257"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="307209257"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 22:53:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="667844901"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="667844901"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 02 Nov 2022 22:53:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 22:53:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 22:53:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 22:53:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 22:53:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P65KGxNm0E9azV4JGUVcAYK07Op/9LDx9YTRw4SRoAtoo/HF+Y2XsXmk9pWksGWT2jXS1E3mcwN0DZDmTRNs/aXHGw7sGFJSiCXkv7dfqlVnPZ7X8ula6+72tbZX4XurGByZ72liSVazuo423i/rukRGDkHoZ1B67IY5WVTSiWKX8HQppj/wowGv/cZCQeLczs9SXtRey7eLNwzrCU1U49OYBVqvZccgQumXxUKiaiNUmS1B8xkhOQ1d/61MCmIJEbIKgVtET9gXn7k9ScPlipWmjurvcdHKy/JyTYlKTTWQf4IMtNXSPFAIAtioLdUxmTsQRHqKHAI8eLXns6JsVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JdeUOmDqAveJQv5woB1WHW6tlKTKricC7UayLF4IaOU=;
 b=Fq7nlnRT/DPoW16rq9fuJXfrkBpQfIS8VMDhAuSeRh5xMq6U/kCwnyHPLtgHgL0UsS0eVrJiFgW4hEXDRmsqYfRwQRGjANAVz+OBYvty2k7fHG4pj+vf8dBTONNjVyd3NM++tMzpiUulBZdmroKYVgFxM34HmrFQoGHyj7E0J8hSpD1AekhP4TVr2Fd1k2alF3GR7xzUvaHQGgVo7gfK6HPkpyCnBEdAkZkcVZ0Sxve5GkUDq1AUr14ySTFCks4tEIjiCaan0bnge6buutHNeETlKL13Q5QI+zhPfvdGow2KVV42yXQ4D4hyyEiXFuzOLfBlXS66EKmd3nu+rFAgAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7103.namprd11.prod.outlook.com (2603:10b6:303:219::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 05:52:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 05:52:57 +0000
Message-ID: <007c8c66-c7bf-d2b0-4be4-38d40dfda277@intel.com>
Date: Thu, 3 Nov 2022 11:22:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-4-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0140.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7103:EE_
X-MS-Office365-Filtering-Correlation-Id: 23cc21fb-0a37-413a-3792-08dabd5fa832
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uTrZo0O/BLvheqaU1k2QxfpU6NvfDPAQL/oud6tBmlasiUPNQmfcxJ+xJ+UgdTbTd5BOJw/VN9q1xbE8DXI1VuaCJYLuIcPiXUFaPmQNStUROsmSwhn1xE3Motxu4VxMAyJILC7xXl7egCn42OHwOQLhvqyyl6VAoqR1HtcyYSX5sj3h8HCWAMugh6FELCNe7BE8O0wur5L343EOr+QFA+JvlpXnkaRlihSMcA7w/5BZIwn6yzNVbp4DpwLUebZZsK4dzjTcof+N/15AaxQV9ekVzSI5IF/sQBCxkLNsWmBKEulm6KAjZvmfoPf7UtBFa2on++G7iQMNBDvgOH59Ay7X+Vt51X5xTI7jjz1La4LlHHJCJZfdU9WY39JFhjqkWsynrPih8+p+xQ+Wvd0j2X4B+/DdTdHKJpHNiM8sRa+O71Q4sZ/LIIuVXCn35hOPtnl6FKS5gWCfxQKv0W2k/pOdlVC13d75NMkzU7wbErn0XHML8zMg7dVMU4M/Dy8P/8vuXKahxp1QUrbX3aGbgwVmErlsGPBzi8etf2HmGZ4cdPZO9rO6AVZjQinoH0KB89TQDu1VWFHDbIA/uYzHXeJsg+eBOm7mGxNWINRadTseEfbXFVCekaC2zy/sRUSPSFvQ+X99oIBq4xlNexivyVc61HaL+X3/odU6NGUGHZvs9mg6kRL+YWDjjoUV/mzuF9tMZZ0+5Ypc3pueGIS6PwzHN+8TS6P689GBJrG5emlWcmmmU+zWEKPMEq7ydVp+KX/IN0gp2KnRhR3XdsAG3P0v0PSAJ6pGyFc1c7Q01Yk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199015)(36756003)(31686004)(30864003)(66476007)(5660300002)(478600001)(6486002)(6666004)(316002)(66556008)(31696002)(66946007)(2906002)(55236004)(8676002)(66574015)(2616005)(53546011)(41300700001)(6512007)(6506007)(26005)(82960400001)(86362001)(8936002)(83380400001)(38100700002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nk1aRTJQeEpBVTA2U2s4aElEL1cyd3NPY0JEbGRWcEJhdlBCVVpqcU5KdGFu?=
 =?utf-8?B?SmgzSkpiUEYxVExQRXFhZEI1RCtsUFkxNlJkM2R4SGVESFBJeVNueTZYS0VT?=
 =?utf-8?B?MFlKYndGM2Z5ZVNuQWVLb3I4czBuV3N5ZlBwZnFCRW93c3E0dXJZbzJOd2t4?=
 =?utf-8?B?RnMvZy9wckZpV3MrM3g0RXRoQWJQa3QvZlJONFBnZHJTTEpWa0RTa2RGczdN?=
 =?utf-8?B?V2k3WkduY1VsdzFDZ2hBUUVhV3l0RlNHOTRwOWxvazlSRk9DYkcyUVgzY0cy?=
 =?utf-8?B?cTc0TERLeVZhUVdUTXdsemU2THpSU1Y4dDVJV0NrK053b2NhdXNnRHZrak80?=
 =?utf-8?B?eVVKK1VrS3dGY1J4NlUvWmhUdEFlcFBES1hIUzBEcHNnTjZFTWpiTnNZZU5P?=
 =?utf-8?B?Q3UwOHhqL3E4L1c1dHdlUUNkMlBEU0VRMFlyN2tSME5RckJUVFZVNmxndHBz?=
 =?utf-8?B?c2tsOGppV09uVXJuNzlNM2tWSHh1cEg5MEQrbXdoT0tmMnFENXZsbi9Oclhp?=
 =?utf-8?B?WGQ4M3hndnRORkhhOWpLamhjRnJobVN2ZXdIYTNCdFVTT21mK1RGVGFCY2Jn?=
 =?utf-8?B?K2JkSCtnOW94MHNjaXFQY2luQksvZFJyTUJNSXQyVEpaaFVXazROT0JoeGIv?=
 =?utf-8?B?YjBKaWF4NzRwWUhOVk9CcWt3V2lSRTJiUVIyck1aUW8yWk4xL0VvL3pVZVpT?=
 =?utf-8?B?TVRZL0VSN3lDL3Job1NVZjVWODhsb2ZlQ0JGcjFXNzdkVUdNWWl3dWZZZ25C?=
 =?utf-8?B?TngxYTRwcWJTS2dTY2gxSXBOVWM1UHlpTCttNktoaHg4MjNEUm9TN2FVRnVO?=
 =?utf-8?B?WHJBWWduTVFkak5jVTdzcG50VEJ1U0t0blg1cWl0aHU0Y1YzSERBNS9MMDJT?=
 =?utf-8?B?YUpyM2lPaWF4N254eEV4a1Y0eVFVS3diRDY1bjJsVVJMVnpWNDdVeVozZGJu?=
 =?utf-8?B?V3hTTzJBMFNvN2d0TWpCTEsrSzJGT25vbDdJdVBHRGZza250aElOZWVEVWc2?=
 =?utf-8?B?UGpOMVhiVXRpYVRBQ1A1UWZpLzlRWGJFSEpnTlFaL0dIRGgwZzRLbkphU2Ev?=
 =?utf-8?B?ZXFOdVBieFJJcDNqOHFqVjJPNkhINGM0Ui83NTNEaUhlaFpPcFVubTJDbkVK?=
 =?utf-8?B?Wkt2TmtjN3pFb281OFJPVENtSHZzT2tFZzJvbmtreUxUbUJ0cVVUdXVJOEpF?=
 =?utf-8?B?eG40bUVCQzlOTXFNLzlIZi9DRU1DNEpiVkg2cE00b05zdjBLbDAxczRqVk1i?=
 =?utf-8?B?L0VNbDViYStoMjdTN1ordkMzWHNqVnd2d2k1MGplOE1ZS3lTSHBLUG1sMDJC?=
 =?utf-8?B?UjNQWXVvb2s1b2hvS1lNZkVBRnB6R0NpQUNPcUZ0eVdJazZLaDBKQVJrK1hK?=
 =?utf-8?B?bE83RGsyYktIdy9KdWg4cjFadW5ORGdXYzRUWUZMd3NjcE8wSTVuTjU3M2NJ?=
 =?utf-8?B?K1lrc3Q5WDZ4eWJKWnlQMHNtWlJWckhiUWNFZUpBMzNqeTNGUkR3NVhCVTZJ?=
 =?utf-8?B?emJBbCs5M3AzbGxuMDVrQTFMS3JSM3M3ODc0VzYxYVN3SnJkdXVKNHJNdGhI?=
 =?utf-8?B?MWtiT0RIMlltaEs5Z1MyS0c2dXlWUzgvMG43Yzc5WWxneU52RSs2RC84M1dU?=
 =?utf-8?B?SmRla2YwTWdHNStvaWpxVHdPdTdwS01rNFgvZmxZZkYxUGJzeGE1VFJ2dUJH?=
 =?utf-8?B?QkZoN1FRUkFlSFpXdUx0OGdsRnhVNFMzMHNuTGZ1cWFvRW5mMnAyUE1sYWhG?=
 =?utf-8?B?U25wU1F0alZZUWllTllEb3cxQWdSR2dmdnhiWFFIR2JxT3pOcml0dHQrYjFp?=
 =?utf-8?B?R1ZSNjFRdFBQQ1huQkpsSDdqUzBxWldoamhtVjZqMUYrRWhXVDVmUWVPWnR0?=
 =?utf-8?B?R3dPV0ZzcDlZblNOUm9MRVhRVk14ZUI4bzViZHhhS2FwNkNPRWNLU1BHb2JD?=
 =?utf-8?B?eHY5cURUV1lRZkIrcTFOZXYzZWZSOWZtWG9uRFc3dE43RUtMdmxhYTlKWlVx?=
 =?utf-8?B?MzZGVk11U3VDa3NPdEpJSnhuY2F5Q1M1Vk1ZOE9oclhYKzRvcUU3Q2x4UjlN?=
 =?utf-8?B?dEsydmRaZmVEQTFwRFQ4eWFTaEthaWRLT0RRTDFrNVZrQTZwbk1wTGNqS3JO?=
 =?utf-8?B?Sk5SQUVkU2hXczhRSktTZmJFUmJUcjVXSUhOQ0dRS0xBWUE2T1d6eWd5dEpp?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23cc21fb-0a37-413a-3792-08dabd5fa832
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 05:52:57.1970 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RGrv8Rc2YI4h0XIPGf9nUL0KfiB58y9wARESZCljyxetIeiTfEXDL+UErB6OEkE8gFdSKiIClQFpE/bDXIA0xSonBHDbQpv9c4R3NVTISEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7103
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: s/dev_priv/i915/ in
 intel_color.c
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

Looks Good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:08 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Switch intel_color.c over to the modern 'i915' variable
> naming scehme. The only exceptions are the i9xx LUT access
> functions which still need the magic 'dev_priv' for the
> register macros.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 278 ++++++++++-----------
>   1 file changed, 139 insertions(+), 139 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 92cc43d5bad6..415e0a6839a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -184,31 +184,31 @@ static void ilk_update_pipe_csc(struct intel_crtc *crtc,
>   				const u16 coeff[9],
>   				const u16 postoff[3])
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
> +	intel_de_write_fw(i915, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
> +	intel_de_write_fw(i915, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RY_GY(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe),
>   			  coeff[0] << 16 | coeff[1]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RU_GU(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe),
>   			  coeff[3] << 16 | coeff[4]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RV_GV(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe),
>   			  coeff[6] << 16 | coeff[7]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
>   
> -	if (DISPLAY_VER(dev_priv) >= 7) {
> -		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_HI(pipe),
> +	if (DISPLAY_VER(i915) >= 7) {
> +		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_HI(pipe),
>   				  postoff[0]);
> -		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_ME(pipe),
> +		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_ME(pipe),
>   				  postoff[1]);
> -		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_LO(pipe),
> +		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe),
>   				  postoff[2]);
>   	}
>   }
> @@ -218,44 +218,44 @@ static void icl_update_output_csc(struct intel_crtc *crtc,
>   				  const u16 coeff[9],
>   				  const u16 postoff[3])
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
>   			  coeff[0] << 16 | coeff[1]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
>   			  coeff[2] << 16);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
>   			  coeff[3] << 16 | coeff[4]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
>   			  coeff[5] << 16);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
>   			  coeff[6] << 16 | coeff[7]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
>   			  coeff[8] << 16);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
> -	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
>   }
>   
>   static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
>   	/*
>   	 * FIXME if there's a gamma LUT after the CSC, we should
>   	 * do the range compression using the gamma LUT instead.
>   	 */
>   	return crtc_state->limited_color_range &&
> -		(IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
> -		 IS_DISPLAY_VER(dev_priv, 9, 10));
> +		(IS_HASWELL(i915) || IS_BROADWELL(i915) ||
> +		 IS_DISPLAY_VER(i915, 9, 10));
>   }
>   
>   static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
> @@ -313,7 +313,7 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
>   static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	bool limited_color_range = ilk_csc_limited_range(crtc_state);
>   
>   	if (crtc_state->hw.ctm) {
> @@ -339,7 +339,7 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   		 * LUT is needed but CSC is not we need to load an
>   		 * identity matrix.
>   		 */
> -		drm_WARN_ON(&dev_priv->drm, !IS_GEMINILAKE(dev_priv));
> +		drm_WARN_ON(&i915->drm, !IS_GEMINILAKE(i915));
>   
>   		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
>   				    ilk_csc_coeff_identity,
> @@ -373,7 +373,7 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   static void chv_load_cgm_csc(struct intel_crtc *crtc,
>   			     const struct drm_property_blob *blob)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_color_ctm *ctm = blob->data;
>   	enum pipe pipe = crtc->pipe;
>   	u16 coeffs[9];
> @@ -397,15 +397,15 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
>   		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
>   	}
>   
> -	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF01(pipe),
> +	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
>   			  coeffs[1] << 16 | coeffs[0]);
> -	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF23(pipe),
> +	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF23(pipe),
>   			  coeffs[3] << 16 | coeffs[2]);
> -	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF45(pipe),
> +	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF45(pipe),
>   			  coeffs[5] << 16 | coeffs[4]);
> -	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF67(pipe),
> +	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF67(pipe),
>   			  coeffs[7] << 16 | coeffs[6]);
> -	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF8(pipe),
> +	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF8(pipe),
>   			  coeffs[8]);
>   }
>   
> @@ -511,31 +511,31 @@ static void i9xx_color_commit_arm(const struct intel_crtc_state *crtc_state)
>   static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   
>   	/* update PIPECONF GAMMA_MODE */
>   	ilk_set_pipeconf(crtc_state);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
>   			  crtc_state->csc_mode);
>   }
>   
>   static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   
> -	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
> +	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
>   		       crtc_state->gamma_mode);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
>   			  crtc_state->csc_mode);
>   }
>   
>   static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   	u32 val = 0;
>   
> @@ -548,12 +548,12 @@ static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
>   		val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
>   	if (crtc_state->csc_enable)
>   		val |= SKL_BOTTOM_COLOR_CSC_ENABLE;
> -	intel_de_write(dev_priv, SKL_BOTTOM_COLOR(pipe), val);
> +	intel_de_write(i915, SKL_BOTTOM_COLOR(pipe), val);
>   
> -	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
> +	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
>   		       crtc_state->gamma_mode);
>   
> -	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
> +	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
>   			  crtc_state->csc_mode);
>   }
>   
> @@ -643,7 +643,7 @@ static void i965_load_luts(const struct intel_crtc_state *crtc_state)
>   static void ilk_load_lut_8(struct intel_crtc *crtc,
>   			   const struct drm_property_blob *blob)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_color_lut *lut;
>   	enum pipe pipe = crtc->pipe;
>   	int i;
> @@ -654,20 +654,20 @@ static void ilk_load_lut_8(struct intel_crtc *crtc,
>   	lut = blob->data;
>   
>   	for (i = 0; i < 256; i++)
> -		intel_de_write_fw(dev_priv, LGC_PALETTE(pipe, i),
> +		intel_de_write_fw(i915, LGC_PALETTE(pipe, i),
>   				  i9xx_lut_8(&lut[i]));
>   }
>   
>   static void ilk_load_lut_10(struct intel_crtc *crtc,
>   			    const struct drm_property_blob *blob)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
>   
>   	for (i = 0; i < lut_size; i++)
> -		intel_de_write_fw(dev_priv, PREC_PALETTE(pipe, i),
> +		intel_de_write_fw(i915, PREC_PALETTE(pipe, i),
>   				  ilk_lut_10(&lut[i]));
>   }
>   
> @@ -708,7 +708,7 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
>   			    const struct drm_property_blob *blob,
>   			    u32 prec_index)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	int hw_lut_size = ivb_lut_10_size(prec_index);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
> @@ -719,8 +719,8 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
>   		const struct drm_color_lut *entry =
>   			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
>   
> -		intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), prec_index++);
> -		intel_de_write_fw(dev_priv, PREC_PAL_DATA(pipe),
> +		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
> +		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
>   				  ilk_lut_10(entry));
>   	}
>   
> @@ -728,7 +728,7 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
>   	 * Reset the index, otherwise it prevents the legacy palette to be
>   	 * written properly.
>   	 */
> -	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
>   }
>   
>   /* On BDW+ the index auto increment mode actually works */
> @@ -736,13 +736,13 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   			    const struct drm_property_blob *blob,
>   			    u32 prec_index)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	int hw_lut_size = ivb_lut_10_size(prec_index);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
>   
> -	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
>   			  prec_index | PAL_PREC_AUTO_INCREMENT);
>   
>   	for (i = 0; i < hw_lut_size; i++) {
> @@ -750,7 +750,7 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   		const struct drm_color_lut *entry =
>   			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
>   
> -		intel_de_write_fw(dev_priv, PREC_PAL_DATA(pipe),
> +		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
>   				  ilk_lut_10(entry));
>   	}
>   
> @@ -758,13 +758,13 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   	 * Reset the index, otherwise it prevents the legacy palette to be
>   	 * written properly.
>   	 */
> -	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
>   }
>   
>   static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   
>   	/* Program the max register to clamp values > 1.0. */
> @@ -777,7 +777,7 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
>   	 * ToDo: Extend the ABI to be able to program values
>   	 * from 3.0 to 7.0
>   	 */
> -	if (DISPLAY_VER(dev_priv) >= 10) {
> +	if (DISPLAY_VER(i915) >= 10) {
>   		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
>   				    1 << 16);
>   		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
> @@ -858,7 +858,7 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
>   				 const struct drm_property_blob *blob)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
> @@ -868,8 +868,8 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
>   	 * ignore the index bits, so we need to reset it to index 0
>   	 * separately.
>   	 */
> -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
> +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
>   			  PRE_CSC_GAMC_AUTO_INCREMENT);
>   
>   	for (i = 0; i < lut_size; i++) {
> @@ -886,15 +886,15 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
>   		 * ToDo: Extend to max 7.0. Enable 32 bit input value
>   		 * as compared to just 16 to achieve this.
>   		 */
> -		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe),
> +		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe),
>   				  lut[i].green);
>   	}
>   
>   	/* Clamp values > 1.0. */
> -	while (i++ < glk_degamma_lut_size(dev_priv))
> -		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
> +	while (i++ < glk_degamma_lut_size(i915))
> +		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
>   
> -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
>   }
>   
>   static void glk_load_luts(const struct intel_crtc_state *crtc_state)
> @@ -1075,15 +1075,15 @@ static u32 chv_cgm_degamma_udw(const struct drm_color_lut *color)
>   static void chv_load_cgm_degamma(struct intel_crtc *crtc,
>   				 const struct drm_property_blob *blob)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
>   
>   	for (i = 0; i < lut_size; i++) {
> -		intel_de_write_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 0),
> +		intel_de_write_fw(i915, CGM_PIPE_DEGAMMA(pipe, i, 0),
>   				  chv_cgm_degamma_ldw(&lut[i]));
> -		intel_de_write_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 1),
> +		intel_de_write_fw(i915, CGM_PIPE_DEGAMMA(pipe, i, 1),
>   				  chv_cgm_degamma_udw(&lut[i]));
>   	}
>   }
> @@ -1109,15 +1109,15 @@ static void chv_cgm_gamma_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
>   static void chv_load_cgm_gamma(struct intel_crtc *crtc,
>   			       const struct drm_property_blob *blob)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_color_lut *lut = blob->data;
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
>   
>   	for (i = 0; i < lut_size; i++) {
> -		intel_de_write_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0),
> +		intel_de_write_fw(i915, CGM_PIPE_GAMMA(pipe, i, 0),
>   				  chv_cgm_gamma_ldw(&lut[i]));
> -		intel_de_write_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1),
> +		intel_de_write_fw(i915, CGM_PIPE_GAMMA(pipe, i, 1),
>   				  chv_cgm_gamma_udw(&lut[i]));
>   	}
>   }
> @@ -1125,7 +1125,7 @@ static void chv_load_cgm_gamma(struct intel_crtc *crtc,
>   static void chv_load_luts(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
>   	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
>   	const struct drm_property_blob *ctm = crtc_state->hw.ctm;
> @@ -1141,30 +1141,30 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
>   	else
>   		i965_load_luts(crtc_state);
>   
> -	intel_de_write_fw(dev_priv, CGM_PIPE_MODE(crtc->pipe),
> +	intel_de_write_fw(i915, CGM_PIPE_MODE(crtc->pipe),
>   			  crtc_state->cgm_mode);
>   }
>   
>   void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	dev_priv->display.funcs.color->load_luts(crtc_state);
> +	i915->display.funcs.color->load_luts(crtc_state);
>   }
>   
>   void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	if (dev_priv->display.funcs.color->color_commit_noarm)
> -		dev_priv->display.funcs.color->color_commit_noarm(crtc_state);
> +	if (i915->display.funcs.color->color_commit_noarm)
> +		i915->display.funcs.color->color_commit_noarm(crtc_state);
>   }
>   
>   void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	dev_priv->display.funcs.color->color_commit_arm(crtc_state);
> +	i915->display.funcs.color->color_commit_arm(crtc_state);
>   }
>   
>   static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
> @@ -1200,23 +1200,23 @@ static bool chv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
>   
>   int intel_color_check(struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	return dev_priv->display.funcs.color->color_check(crtc_state);
> +	return i915->display.funcs.color->color_check(crtc_state);
>   }
>   
>   void intel_color_get_config(struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	if (dev_priv->display.funcs.color->read_luts)
> -		dev_priv->display.funcs.color->read_luts(crtc_state);
> +	if (i915->display.funcs.color->read_luts)
> +		i915->display.funcs.color->read_luts(crtc_state);
>   }
>   
>   static bool need_plane_update(struct intel_plane *plane,
>   			      const struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>   
>   	/*
>   	 * On pre-SKL the pipe gamma enable and pipe csc enable for
> @@ -1224,7 +1224,7 @@ static bool need_plane_update(struct intel_plane *plane,
>   	 * We have to reconfigure that even if the plane is inactive.
>   	 */
>   	return crtc_state->active_planes & BIT(plane->id) ||
> -		(DISPLAY_VER(dev_priv) < 9 &&
> +		(DISPLAY_VER(i915) < 9 &&
>   		 plane->id == PLANE_PRIMARY);
>   }
>   
> @@ -1232,7 +1232,7 @@ static int
>   intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	struct intel_atomic_state *state =
>   		to_intel_atomic_state(new_crtc_state->uapi.state);
>   	const struct intel_crtc_state *old_crtc_state =
> @@ -1247,7 +1247,7 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
>   	    new_crtc_state->csc_enable == old_crtc_state->csc_enable)
>   		return 0;
>   
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
>   		struct intel_plane_state *plane_state;
>   
>   		if (!need_plane_update(plane, new_crtc_state))
> @@ -1260,7 +1260,7 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
>   		new_crtc_state->update_planes |= BIT(plane->id);
>   
>   		/* plane control register changes blocked by CxSR */
> -		if (HAS_GMCH(dev_priv))
> +		if (HAS_GMCH(i915))
>   			new_crtc_state->disable_cxsr = true;
>   	}
>   
> @@ -1286,7 +1286,7 @@ static int check_lut_size(const struct drm_property_blob *lut, int expected)
>   
>   static int check_luts(const struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
>   	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
>   	int gamma_length, degamma_length;
> @@ -1298,15 +1298,15 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
>   
>   	/* C8 relies on its palette being stored in the legacy LUT */
>   	if (crtc_state->c8_planes) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>   			    "C8 pixelformat requires the legacy LUT\n");
>   		return -EINVAL;
>   	}
>   
> -	degamma_length = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
> -	gamma_length = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
> -	degamma_tests = INTEL_INFO(dev_priv)->display.color.degamma_lut_tests;
> -	gamma_tests = INTEL_INFO(dev_priv)->display.color.gamma_lut_tests;
> +	degamma_length = INTEL_INFO(i915)->display.color.degamma_lut_size;
> +	gamma_length = INTEL_INFO(i915)->display.color.gamma_lut_size;
> +	degamma_tests = INTEL_INFO(i915)->display.color.degamma_lut_tests;
> +	gamma_tests = INTEL_INFO(i915)->display.color.gamma_lut_tests;
>   
>   	if (check_lut_size(degamma_lut, degamma_length) ||
>   	    check_lut_size(gamma_lut, gamma_length))
> @@ -1550,7 +1550,7 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
>   
>   static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   	bool limited_color_range = ilk_csc_limited_range(crtc_state);
>   	int ret;
>   
> @@ -1560,7 +1560,7 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   
>   	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
>   	    crtc_state->hw.ctm) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>   			    "YCBCR and CTM together are not possible\n");
>   		return -EINVAL;
>   	}
> @@ -1617,7 +1617,7 @@ static void glk_assign_luts(struct intel_crtc_state *crtc_state)
>   
>   static int glk_color_check(struct intel_crtc_state *crtc_state)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   	int ret;
>   
>   	ret = check_luts(crtc_state);
> @@ -1626,7 +1626,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
>   
>   	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
>   	    crtc_state->hw.ctm) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>   			    "YCBCR and CTM together are not possible\n");
>   		return -EINVAL;
>   	}
> @@ -1798,19 +1798,19 @@ static int icl_gamma_precision(const struct intel_crtc_state *crtc_state)
>   int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   
> -	if (HAS_GMCH(dev_priv)) {
> -		if (IS_CHERRYVIEW(dev_priv))
> +	if (HAS_GMCH(i915)) {
> +		if (IS_CHERRYVIEW(i915))
>   			return chv_gamma_precision(crtc_state);
>   		else
>   			return i9xx_gamma_precision(crtc_state);
>   	} else {
> -		if (DISPLAY_VER(dev_priv) >= 11)
> +		if (DISPLAY_VER(i915) >= 11)
>   			return icl_gamma_precision(crtc_state);
> -		else if (DISPLAY_VER(dev_priv) == 10)
> +		else if (DISPLAY_VER(i915) == 10)
>   			return glk_gamma_precision(crtc_state);
> -		else if (IS_IRONLAKE(dev_priv))
> +		else if (IS_IRONLAKE(i915))
>   			return ilk_gamma_precision(crtc_state);
>   	}
>   
> @@ -1966,13 +1966,13 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
>   
>   static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
>   
> -	blob = drm_property_create_blob(&dev_priv->drm,
> +	blob = drm_property_create_blob(&i915->drm,
>   					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
> @@ -1981,8 +1981,8 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
>   	lut = blob->data;
>   
>   	for (i = 0; i < lut_size; i++) {
> -		u32 ldw = intel_de_read_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0));
> -		u32 udw = intel_de_read_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1));
> +		u32 ldw = intel_de_read_fw(i915, CGM_PIPE_GAMMA(pipe, i, 0));
> +		u32 udw = intel_de_read_fw(i915, CGM_PIPE_GAMMA(pipe, i, 1));
>   
>   		chv_cgm_gamma_pack(&lut[i], ldw, udw);
>   	}
> @@ -2002,13 +2002,13 @@ static void chv_read_luts(struct intel_crtc_state *crtc_state)
>   
>   static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
>   	int i;
>   
> -	blob = drm_property_create_blob(&dev_priv->drm,
> +	blob = drm_property_create_blob(&i915->drm,
>   					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
>   					NULL);
>   	if (IS_ERR(blob))
> @@ -2017,7 +2017,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
>   	lut = blob->data;
>   
>   	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
> -		u32 val = intel_de_read_fw(dev_priv, LGC_PALETTE(pipe, i));
> +		u32 val = intel_de_read_fw(i915, LGC_PALETTE(pipe, i));
>   
>   		i9xx_lut_8_pack(&lut[i], val);
>   	}
> @@ -2027,13 +2027,13 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
>   
>   static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
>   
> -	blob = drm_property_create_blob(&dev_priv->drm,
> +	blob = drm_property_create_blob(&i915->drm,
>   					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
> @@ -2042,7 +2042,7 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
>   	lut = blob->data;
>   
>   	for (i = 0; i < lut_size; i++) {
> -		u32 val = intel_de_read_fw(dev_priv, PREC_PALETTE(pipe, i));
> +		u32 val = intel_de_read_fw(i915, PREC_PALETTE(pipe, i));
>   
>   		ilk_lut_10_pack(&lut[i], val);
>   	}
> @@ -2077,16 +2077,16 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
>   static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
>   						 u32 prec_index)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	int i, hw_lut_size = ivb_lut_10_size(prec_index);
> -	int lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
> +	int lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
>   
> -	drm_WARN_ON(&dev_priv->drm, lut_size != hw_lut_size);
> +	drm_WARN_ON(&i915->drm, lut_size != hw_lut_size);
>   
> -	blob = drm_property_create_blob(&dev_priv->drm,
> +	blob = drm_property_create_blob(&i915->drm,
>   					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
> @@ -2094,16 +2094,16 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
>   
>   	lut = blob->data;
>   
> -	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
>   			  prec_index | PAL_PREC_AUTO_INCREMENT);
>   
>   	for (i = 0; i < lut_size; i++) {
> -		u32 val = intel_de_read_fw(dev_priv, PREC_PAL_DATA(pipe));
> +		u32 val = intel_de_read_fw(i915, PREC_PAL_DATA(pipe));
>   
>   		ilk_lut_10_pack(&lut[i], val);
>   	}
>   
> -	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
>   
>   	return blob;
>   }
> @@ -2131,13 +2131,13 @@ static void glk_read_luts(struct intel_crtc_state *crtc_state)
>   static struct drm_property_blob *
>   icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
>   
> -	blob = drm_property_create_blob(&dev_priv->drm,
> +	blob = drm_property_create_blob(&i915->drm,
>   					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
> @@ -2145,17 +2145,17 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   
>   	lut = blob->data;
>   
> -	intel_de_write_fw(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
>   			  PAL_PREC_AUTO_INCREMENT);
>   
>   	for (i = 0; i < 9; i++) {
> -		u32 ldw = intel_de_read_fw(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
> -		u32 udw = intel_de_read_fw(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
> +		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
> +		u32 udw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
>   
>   		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
>   	}
>   
> -	intel_de_write_fw(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
>   
>   	/*
>   	 * FIXME readouts from PAL_PREC_DATA register aren't giving
> @@ -2268,15 +2268,15 @@ static const struct intel_color_funcs ilk_color_funcs = {
>   
>   void intel_color_crtc_init(struct intel_crtc *crtc)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	bool has_ctm = INTEL_INFO(dev_priv)->display.color.degamma_lut_size != 0;
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	bool has_ctm = INTEL_INFO(i915)->display.color.degamma_lut_size != 0;
>   
>   	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
>   
>   	drm_crtc_enable_color_mgmt(&crtc->base,
> -				   INTEL_INFO(dev_priv)->display.color.degamma_lut_size,
> +				   INTEL_INFO(i915)->display.color.degamma_lut_size,
>   				   has_ctm,
> -				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
> +				   INTEL_INFO(i915)->display.color.gamma_lut_size);
>   }
>   
>   int intel_color_init(struct drm_i915_private *i915)
