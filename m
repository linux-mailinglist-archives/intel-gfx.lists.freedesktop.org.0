Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 599C888BEA8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 11:01:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFD610EC38;
	Tue, 26 Mar 2024 10:01:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OvLna6sg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95F610EC38
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 10:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711447312; x=1742983312;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/+V9uL5nYl8AZOutxvazQZJtM+PIjtLsKg5xd+PkCmQ=;
 b=OvLna6sglmupkmoy9zPSSMKQv9GyRX1WtKZOI7UqjN4HEwXhaqkpOelZ
 E3xJ3rk3ooPN9aSuwJrkgF3L3eg5mX8bRgm64G3Op2Akon+i95ILsA/7M
 EWt1JHNUDzGL72l5USzGCcNbHJUJKIAtuBwthNThDfAxjhZmV9HvhVBEH
 ei79KX16OQkNEuPAzIsxOwkOhT+LAUNF524OGVGLtg/36qgJPoOeg3hQf
 KkDqRah1XS+s/lCHLZdYGJG2HpwIYBy8EWFoxOOhR0kHxEhhvB3IzPM1+
 SDTg+cBV/ySn8FhtjgKyc4cUVrVMd4ZMvX/ebkeVr3zgqkFS8EDycfP0/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6599281"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6599281"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16299382"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 03:01:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:01:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:01:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 03:01:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 03:01:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n7RoFI3hEcsPyFgmr8DBF6QVxDxPLsr+JHAWGd4tN9C6BvlXvaZZXkkr1sZFWv3xvAmlkGwEvEweFgMt6q97E63zmz60XBmuFaA/gLw0CP6zas5aSwlrSZFw8tcKCiRBeYUpvfM5TXhVYaNm2E3HKpBImPle5+jRUUKj4zT/Cck0DpmkTvtnl0Myz/CEu2mgWdyUzhHXSaGj1aI6suc2JYIJDIld8fWNOl6FFkYnZ/fNnCNlb8dQKwYW5PCPukeVkice49opdSA0OBYAcBsArKg1uiAgwxLf0LSlXLmtsUIIcPvqOwZGSP8ERv1D6j0JFWHuM8G7yZDvaGYluuE/Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CBWUQL9jE0OXvfNmvP3gpz/CXBqOd59R4WwgVq83WI=;
 b=Uf75Us/KKBt3Nk0+KueKrEf5D7kAGjiq/7FGcRModrj77RbidYeDQ1edv+w3TqYcgYyaLfxyoZxXRSJZWj3S/1H5MdOmgzRU9HDYnHan5hL/TT8G82hWWSyD3EcnySLypVlD70zHdfmm6QS2p2oODKBtd2PljeAGp8kDdw2SI00qbJWARgqlImT1s2PaMWKfQpAGSXhX4N2IA0L7JgEJ5V+euY2rdwguAaMJFWVj2xWRj/qnHYYUrA2uRVIb57+flxgJRm48MKiBt1jApu0A2Gh3ibT4uz5VfzMl5otwuN1mq28cfjJTCsqMnjJvKII8wNAQiCo+lPImM6bX3KeN1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7303.namprd11.prod.outlook.com (2603:10b6:8:108::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 10:01:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 10:01:50 +0000
Message-ID: <c2083a63-a296-4c4e-b896-4494feabf060@intel.com>
Date: Tue, 26 Mar 2024 15:31:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/11] drm/i915/dp_mst: Fix symbol clock when calculating
 the DSC DPT bpp limit
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-3-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240320201152.3487892-3-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BMXP287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7303:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vz30J25RFjBFgZjEEjxa5BrT/QsMzZxpeGgxMJnDKWdMmIAq+b87INLOnmP3i2Y6iwed7MQcLohFoG7AdNS7Ns+jnIjCeABw3NLAFTfetgtdXxbNNJIYEt13HAkRPC0uml8E0kwXXBAwYK7Gs0zTRgITFm+dN/1nF7hL1qLCGe3bRDkGz78X0sBoMZOVhPUvcC9uaj6fegyyuBnvlQieiXgs2wSsPLBR1UVGw12KZbY2k7lL+sg3SXOIR9eQN8mlQrmNXS2ijKCittgyM454qc+M/RJF8J57z6Qq8ZC+WXdqqBij71ZUGxne6qcagkMlyovegid/lCF4jHWouQiV7SfIZOOTaWfBGdcqOfdRVzXtSW/ICrpYrqC5T+aKESVYnUJikXsu3TY2qZlY2cYg4PuGv/mXCn+B8jbAhQXmvRV5ut2G0hjdRTddYAkww/hTtOjpql3DMGs4JwRVbMOK9aRb2PVfF3562qIGhG5kMrt5UPIGtr4v7LXR/sRjX6YD6bgVjxzlRUlF1xRIjCgCXQHG4LnHwbMVh3mI9v6sAlez+duXC2VK9coFAWr9kCtSU7CGBOGv/tMCioEVnQwDfNmd7G+f9Wu2yrb+HCHY0ulBh48Tf6/crmrJ1b3A9P2+0DpNdG4BzfhNcmrtsUyffb5O9Hq4rYzy0rWYMwqjKKc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDhMcElRc2JOYTgyY3lFZ3U0MGMrRXJsVzBSc1hZT2VXWjMrRVA3ZHYvSkRy?=
 =?utf-8?B?U0xjNEFQUlcwbFZuV3YvMDM5c1ZHNEYycUs0aEdLUi9mYVh2bUZWYiswcmhR?=
 =?utf-8?B?b1FQV1U2ZTVFQWh6UHMyZm9OTDZnSXJEUm9FU3VGeWJVZ21KUmRYMzd1RUps?=
 =?utf-8?B?OEI2TjJ3TDJmVTVPRnZYRDhSWmwvMVM4S0JyQmxBeTk2bXBRUXBUTXVzRE9Q?=
 =?utf-8?B?ZTAyWVdrTi9RQ291R3hORmFaU2Znd1dBVkcwRTZvOWcrSVBuVFFuN1RTNnBj?=
 =?utf-8?B?eEp3MVAybFdlcTBRenAyZ0ROaW04V203U0Vpa2ExUDFEYlNDUUdCaWhLMWFq?=
 =?utf-8?B?WUJJMUlxclNoOWhFTXBQUUZ4eDlkbW8xWUQxbHhReEF1WXU2YXBqamo1T2U0?=
 =?utf-8?B?ajlkMU1YQ2p5blVGZkQreEdYazZOZmc3bzFMdk5EZHg0S1NhYjgvOEJ4bjd5?=
 =?utf-8?B?bURqY09FK2g5Y3RsYmNjQXc4VnpYeXlseTlNeHpVYjVLRnhqV3licGFDZmdM?=
 =?utf-8?B?ajNRT1JwTVVRekVmbkxSdFphK3pkY3B4aDk1UjB6enZYT1dGVGJWR1RTRUZC?=
 =?utf-8?B?WTNWUWVXVURNSTlCaWwvSHZRY2tRUjZFYjhzSXdIUlVIQkRSK3l0ZU9TRys4?=
 =?utf-8?B?UHFyeDJ6N3VVWHFwREhIWW0vKzhzM3JuelI0c3YxMnp6S2s1UjBGbVZjdTJG?=
 =?utf-8?B?dTlUVHU3ZEpOWWFNMzdMMWNrYnl1ckVhWWJxUHBzZW1hbFFqNGppS09GcnFu?=
 =?utf-8?B?NE1lZXkzbVdBTHUrTkhHS0Jhbm4yaGtBU0ZRRWE0cjNUa0FLelR3bFluR2Iw?=
 =?utf-8?B?Ry9FYWR4cFVldmtyOFZzQWo1d1NOMXR2WVJQQXdYK1M3WGJxVXRGeHdLa25P?=
 =?utf-8?B?eE4zTkVLNXE0c3RtM3JBNFN3Nm11aGdwbDdjOTBtZVhHOUpYcGFucjNwbFVW?=
 =?utf-8?B?NkRMVWh3dkdrU2thblFMMm9Zak1ld2NWMkJCanROYTcvYVFqdm1UbFRDbFpz?=
 =?utf-8?B?b0VZUkFLYjFKQWdRcDZxMWpVaWxVNUdURXp0UkJ0K0dXQ0VZV0hNSVB1MWZW?=
 =?utf-8?B?aFYzNkl3NXJSRldRb0VuKzBUbmV1K1FsQWpIVTRLYzRIQllXSU5jSVhDWWFO?=
 =?utf-8?B?SUVMWWMrRXozbWViQlN5NlhUMjB2ZGlYcUY2dTdxQjFvZExuWEJPMGQvRkhn?=
 =?utf-8?B?TkdZR1pqK2tjdW1sSU9Fd21SUVI1QUFURE5Ub2gwa2ZNUmY3Ui9XclRZeEFq?=
 =?utf-8?B?Zm51c2FQVGJGUWZIMTk2L1VVMDRNT0Z0YVBteWQ2ZTFDUWFqZUlyVHhjaldR?=
 =?utf-8?B?bkZoN1hpL21LeXA5ZGhzQmRoWjBWM3l1akxkMVVzMmdZSUxibWNsdmdDTW5J?=
 =?utf-8?B?WlZNNDN2dms2cUdXMk93WUFVa2FNVWNzVHJpdDk4cElYTHEzQk1yZHh0Qm5U?=
 =?utf-8?B?S3BXUDVhbzZyYkZtNzg0Wks4WEgzWll0V1lvSUUwdlhPVXkxdXRhL3drRktq?=
 =?utf-8?B?bnE2emxzdFVycmNBMVk0SERiUHJzSXJjditKNlhnMDVnandiemFkZGFjLzFZ?=
 =?utf-8?B?K2N1anZ3Wm40VkNMY28wYnVSQlMzSWhZQ3A2ck01ajNmcUx1eUxDTktTV2FI?=
 =?utf-8?B?aTVtK212Wk5VZlpqaTB5TmJURVZLWlVjZjdLSDVncFp0WjhFUFZWQ1dGZ045?=
 =?utf-8?B?WXBpR3NvL3YreXJoUk9iWDBYMVlaeHpBamhkZk9pS0lKZmp3NUxnRjgxb0lF?=
 =?utf-8?B?UDhzMjhsM09Ock05UThRd241VzI5NDY5RFVkMnVxWk5uNk1IUjk2bkNTYnlR?=
 =?utf-8?B?R1M2VGFYV3U3MnVaWmVOQjhIcUovTXBjTm1hcXhBZWJELytmR1pKd2pjSHhJ?=
 =?utf-8?B?MW1JdExUYi9rcGl4TjF0UFV3L1BGMExjVExaTlY3aVJGZjF6MjZYMzk5dzMr?=
 =?utf-8?B?ZXY4YUg5MjJKUytGcU02UWplNktzeHFtZFlqSG9kL2pxY3FRdEVtU0NGYWYr?=
 =?utf-8?B?a2xXS05NcFpab3NQV1dSdWViZzIyWjNNS0lCNXNxUXNSZURuQWlqWTJUdDNi?=
 =?utf-8?B?RVA3dzFXVEttTUttMXRSbkhYd2o4aXhiajZuZnBHR3oxeGh0ZEZHalhYTjBW?=
 =?utf-8?B?aGZLN2lpTTBubm1LRS92OTdmcEQwYWJSSlk3YS9Ccks5UjM5WUtmMmdZOUtZ?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f2d1be-71d0-45c6-73db-08dc4d7bc120
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 10:01:49.9639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o0iuW5wXCt2XcT8+m6zwglepNOn7eZ0H9Y/Uk3vB5nQRV5/amGhaGQjEp3Qs7btARp6IJuP3XdquYXmyfw58XokhwKnJUJVYkNQmG4dIzs8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7303
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


On 3/21/2024 1:41 AM, Imre Deak wrote:
> The expected link symbol clock unit when calculating the DSC DPT bpp
> limit is kSymbols/sec, aligning with the dotclock's kPixels/sec unit
> based on the crtc clock. As opposed to this port_clock is used - which
> has a 10 kbits/sec unit - with the resulting symbol clock in 10
> kSymbols/sec units (disregarding the rounding error for the 13.5Gbps
> rate). Fix the calculation using the expected 10x factor.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 53aec023ce92f..b2bcf66071b05 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -58,8 +58,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>   {
>   	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
>   		int output_bpp = bpp;
> -		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
> -		int symbol_clock = crtc_state->port_clock / 32;
> +		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
>   
>   		if (output_bpp * adjusted_mode->crtc_clock >=
>   		    symbol_clock * 72) {
