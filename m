Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93E88A834A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 14:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E68113496;
	Wed, 17 Apr 2024 12:42:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HCp6Xy2D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9053E10F5E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 12:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713357750; x=1744893750;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XQQ2+nVTbf3BF/L+BNPX3bTJ/EBRpol8UleakEDJsKE=;
 b=HCp6Xy2D6737XPIGjEtOovK8HrajcchYIPNqw3Q9/U9aDawgm/fIhFMO
 Zn0tTeL0/VDJ4PXKmxBWu40B5Hhb40EIfQd7/+zXozTxaa0iruR6vmZso
 8wfaEawsxzQ1wZUg398A7R/FV4ND3O9zdVtHRdJa4G8oIB9+uEKLCQsHo
 Zh/Gm+L/S8clt8Iqo+nxYrW7Yy98l+9xpzSy/f7Dl7RD9dKmRfCJXD1MB
 mWEFr1M3Sti/PrF9eYzfA0kKiBFqoCra6GHtvXiib1jYVNiTf6XUTugTR
 qwBp8lYFdiBKDfbQ1fqSLRhTDzZyftblHIz6UBO7BbzPv+RM2xTITgrjk g==;
X-CSE-ConnectionGUID: B54Lz/Z5QdiT1nSm3nBcGw==
X-CSE-MsgGUID: nVceCUmKQ62nB88ir65Q3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8705771"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8705771"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 05:42:29 -0700
X-CSE-ConnectionGUID: 3NDYUQQQSeOoLK/Ytv8Ang==
X-CSE-MsgGUID: VodcwKrmSsm70P5yk5tUuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="23206651"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 05:42:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 05:42:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 05:42:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 05:42:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 05:42:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2L93mUWhg/c1sP2CA6KUEk0U4Ye90SYCwI5RLrb4M2GSkE2ojypTQb8xU1Dqz5mRUy95W+L8rxHzGozIytwRryYCHa62BDwq0T26zK3sGWkRhVpXyQcrOfrNB1dV1cPF2sN8sq3mVBzP57LPjZiwacY14gjyKdWp+kbFNBVDaJ3rYB0kj+n82TQGPB9a3Wc8M2Dy5CSuuby10G8iLAotpwhZeG5BVnXqbhhl0V6U3BnSJO2cWObApOuuWTP30mMB7WVOD3wVf7Atyqrm/4jV6+hde9DVq53rSPIfJ1PmGtqwkHN/qyQ7TbbpB/Af4n8ZZIdWNHerupvBkvG8JKDxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4SjYXxCCwy7HgxbXKRS18jaRgsoA8xWKmW8fCT8w4j8=;
 b=drxtDSVezTgfZvFYicaNsAhA2kdKyRh1jjutw+A8XIN6bhgh989CoKP30hqIEMDkyO09tR7OrIV/H2COKyYjQZc0b7ZzuVGJKlPq7A3kMU6j2QpF5swsEKpMqfB4rThj+x5lANMpkMNrOdn92YPCNs0qe/zHa6sMP77oahLCJdr7aqlpt0ajBPBVmdnNuUybOCiYI/xIvUtMoe8QHVsJySX74yI4q42yM8WFzO/kaiWuMMH3DkQ8Bx0QVolXJTvBu4dBtON0p98FTcyzgz/Px22At5NkGWVpTteTTlppsesUGy76FWUQXuQ0OIkEgga/uH127LeN9gl3ecMWQ/cmMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4717.namprd11.prod.outlook.com (2603:10b6:806:9f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.31; Wed, 17 Apr
 2024 12:42:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7472.027; Wed, 17 Apr 2024
 12:42:25 +0000
Message-ID: <12b4ce11-1f00-4b13-a933-c701a1b80ddf@intel.com>
Date: Wed, 17 Apr 2024 18:12:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] drm/i915/dp_mst: Account for channel coding
 efficiency in the DSC DPT bpp limit
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240416221010.376865-1-imre.deak@intel.com>
 <20240416221010.376865-5-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240416221010.376865-5-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0156.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4717:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eb96b99-52de-4a3c-9198-08dc5edbd5ac
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WFAsIeWaP+T3RlR1XFFjErz0ECyI1p5t0RZqN7sPofLpBv8FL2AFLN6B5gUrqD4tW2DXFBvyqryXbaWNGr2yg72ObWjppuvEfBYdrHijYvlqdsFEKDW934JHbJaQ1nL8nZwL/XM9cwaQem/xYl0Lo1Ra4WoKj1+V8EJOZOk6GxbOQ2uw2/QpSfy8PZtzzJcDYgAlz4YENYZh4aHiXp1k77IEJ0oXeSp5dNeaKFB3sbFP3u6R8Jnrk5/81v0XKKbXIKFeddb7Rk47qDCcS5DZNsm498D7OE8+u+qyvg3jphdrXvg/ptceBnhsSbNNVXOC/mfJelHAksfW08Vawol0Iyppn+/bVyrksy9Wa0rZiJY+SuYFcVqubsf9AuaDLkTHQOZQ7LkWcDxY8tgPlwqK8p1V796UKw+unZZuLrDx4yl1Vwug+0jLw8E3z3gfkcFiMtm93KyOmY6xWu1WgII6/oq+TyY+vO1Cm4xRi9GIjdEHS8BHlESjxqOuObdiBd+R+5dwPQDIlxZF+zT9jNAVJIyxavZHytBYynH3/21ydnd6RT6DL7NWwhIBXLB6Bx/I6HZtLpFmRLGoW6M3OML0Ez4F63ByqmlE0ikL5YsPjwfu8+0xCa5hCgbe7mHiqSZuRe3UDT7NeGufISwvaN3rHBlfIHOERnOrUBJKfymk8BI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXJpc29McDRvSE40bnkxa1BhTkRqTlZ2cXhVMGE0R1c5N0xVRXZYS3MxRHNs?=
 =?utf-8?B?bVZ2VHMyOGp6RFIxRHJzb0VNallZSmdnMjlPU0kwclgwOWhranFVaWxlYzJ0?=
 =?utf-8?B?OEhEL3BVS2t4RjQrOVJhRmhNcHNLOEExWithZ2hqY1lhcG83SExPdVkwa05p?=
 =?utf-8?B?UVQ2UlQ1cjMzMVFMaWZORGhHVzVhcDl3NjcwVWU5aWcrSm9MWUFMMTQ2OUdL?=
 =?utf-8?B?bnN3S1d2RkVBODZoWnRVZklnSFFoanNyWGhaU0Z1WEMvQ21rcEVZdGwyMTRx?=
 =?utf-8?B?SlJaNzQrMkRKRkRvSjJ0Znd4aFdCMi9hclJUc2gxQzliL2grckcyQlEyZlFl?=
 =?utf-8?B?UEVpbWpwdWtaM0VRTGpFYlFtWHJLWDlyNTBsYkZGQlIrai9mSC9rUW9CWE84?=
 =?utf-8?B?VEhxMWZQVEtzZCtaaHpFY1ZyenBrYVB1MlBlSGpXRnozS3pqcjZvUEJTanFZ?=
 =?utf-8?B?TVZpbjdvVXRmL3h0SG84T1c4aEZoQmp6dW9CaVl6ZFNIeWR6TG14SkcvMmEr?=
 =?utf-8?B?NHR0YjJlUXBFY3FLTTNmS3RqWm1VTjZRS1hDbS9ZakNsbDRqV1hQN25ZMGdm?=
 =?utf-8?B?aDc2S3BVdHhCM3IwaWFtamwrN092UFFwMFM2Q3V4TGJIOFNITnh3RVpRWDI5?=
 =?utf-8?B?SFgyVGU1dVlWNFhRVGNUQW9PNXVuOUtBY2o1SlRtQmZDbE01RFBja2NlWTdS?=
 =?utf-8?B?aXdoTmhhN255cmZGMWwvb3F6M08weWVGcXREZWd0eXpDY0FzNXZ0NGNkdjZm?=
 =?utf-8?B?dU1xQnpZbzZNSUlSMVFRdTBTa0VmV09CSFFkZjB0SWZJbzZFeGNvNEowVHdv?=
 =?utf-8?B?QWZoL2lZL1RIcGduemFPZW1CdndzVWxNZkRGek8rWFByZGM1eUtZeVN3bDlt?=
 =?utf-8?B?NC84QTU3aWRVbHlabXRmK2tzeXNmLzUyeUFaN1lNY0ZVNnpEUktkZk8ya0h6?=
 =?utf-8?B?NmMzRDdRZFFNc2V6bHFZVVFVNm9CZmlzTlZmbDdOVEVUWm9saXRFTkFJSlo2?=
 =?utf-8?B?TjlzUGIzUmlRMXY5UUN4N2VWOExxOEdJeHdKUzF0MFRVU3FYR1FZeG1mbkdk?=
 =?utf-8?B?R2o1UEwzS1lvY3MyQUJoeUJrQ0tUVUdBUTIxNXQxV0lvM0tYUFVQOUh2d0ZW?=
 =?utf-8?B?cEhuK3BwQktPOG82R2JvRkdpazN0bG8zVWZaanVrOTJ4MWR5S0JWRWNrMGh0?=
 =?utf-8?B?OVpLaGtYeEdyOVl1U3g5VHZKZlorYnV5M21oV0wxb1NDL3VTeHlEUWhXVzVt?=
 =?utf-8?B?WVN3K2V1UmxtaHE5Q3h4OVVSRWJ3TUFldlNiUTc0My9EVzVpQlV1b3FaaUxV?=
 =?utf-8?B?blFTekhNT0FLcUhnWjdNRFJVRUw3ZjRiR3I1ZUdtc2Z2WVhiNWlFV2hLSjJS?=
 =?utf-8?B?TGFOdjVTcExLOVp6SVJBL3lSWXBYT3lXeDBqVGluMFFhVk9ka3RpZWljTDYw?=
 =?utf-8?B?UEFEcHFPSHAxUnp2YzVqclMrMjk3NFVRR2NiZVc1MmVxOVhzRnpDN2ZmTExw?=
 =?utf-8?B?UHhoQzQvRDBJOHdONFJvQkorRkZBWHNWaXYvVlNLekdtbEtVUHVSNU1YUHVD?=
 =?utf-8?B?dGhxd0xmdTBheGFyY2dZNUxlMXBHalJIK0NJWUwwa1NVZWVmSHJYSXYvTlNH?=
 =?utf-8?B?RHRVN0E0dEhKNHE3QjdCWDQwOUNrTzgzS1FINjhmbnFzSS9zMjdXbDZKY1FZ?=
 =?utf-8?B?cVd1eFc2T3BHZmZ3M1VlWXY4TFliZCtOS1l0MWVBU3NaRU9hZU5ZU2Npalds?=
 =?utf-8?B?NitTVVBhTmhlanJDQnRJTFg2Tkx5b2xXQ0V4ZnJpZHR3WnhvYTdIVnJvVGd3?=
 =?utf-8?B?bmNDSG5FNEhST1ZMRjBOSVA1R2hDY3BtY0oxRm1aQUFnK2F2SEdHZWR2QzBk?=
 =?utf-8?B?dVdkZGFNM3M0SThIT3lIVVYzRFVka3lraElzSzhSeTlRRXBYMXBTRnZJUVRV?=
 =?utf-8?B?N0ZDdVJMY1VuQ2tJTm5wc3VXdjlTVmhYcVAzdEozR1FtWGtvNUhJdUlGeE5j?=
 =?utf-8?B?cHViZDIwdlRoVlp5K3NrMjZhSWFXRWNNbXpjQXFOMUtrbEJCOUp6c09WQ2M4?=
 =?utf-8?B?T2dEUVNuZzBUR1lRY1Z5cDRSVG9hdmtzb09HSTZmY2NoM0xjU2pLaUdBMGFl?=
 =?utf-8?B?Y2xZcGtMNUc4WlJxaW5qS0hST3VhVzdVLzBkbzdNVHNHZmdmRE5pakd5SHl0?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb96b99-52de-4a3c-9198-08dc5edbd5ac
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 12:42:25.6474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OIrAt/hnB5c0c5SZ574idlyEP2hbjXHGUCWamZf+Qh/LBTilDDDODRpZCEvZ5tr91KlSBOTubaDN3AIjXRA8RY0e0/McGNvQOhfCq4awWj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4717
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


On 4/17/2024 3:40 AM, Imre Deak wrote:
> The DSC DPT interface BW limit check should take into account the link
> clock's (aka DDI clock in bspec) channel coding efficiency overhead.
> Bspec suggests that the FEC overhead needs to be applied, however HW
> people claim this isn't the case, nor is any overhead applicable.
>
> However based on testing various 5k/6k modes both on the DELL U3224KBA
> monitor and the Unigraf UCD-500 CTS test device, both the channel coding
> efficiency (which includes the FEC overhead) and an additional 3%
> overhead must be accounted for to get these modes working.
>
> Bspec: 49259
>
> v2:
> - Apply an additional 3% overhead, add a commit log and code comment
>    about these overheads and the relation to the Bspec BW limit formula.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> (v1)
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 +++++++++++++++++++--
>   1 file changed, 21 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 58eb6bf33c92e..0448cc343a33f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -59,11 +59,30 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>   	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
>   		int output_bpp = bpp;
>   		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
> +		/*
> +		 * Bspec/49259 suggests that the FEC overhead needs to be
> +		 * applied here, though HW people claim that neither this FEC
> +		 * or any other overhead is applicable here (that is the actual
> +		 * available_bw is just symbol_clock * 72). However based on
> +		 * testing on MTL-P the
> +		 * - DELL U3224KBA display
> +		 * - Unigraf UCD-500 CTS test sink
> +		 * devices the
> +		 * - 5120x2880/995.59Mhz
> +		 * - 6016x3384/1357.23Mhz
> +		 * - 6144x3456/1413.39Mhz
> +		 * modes (all which had a DPT limit on the above devices),
nitpick : all 'of' which
> +		 * both the channel coding efficiency and an additional 3%
> +		 * overhead needs to be accounted for.
> +		 */
> +		int available_bw = mul_u32_u32(symbol_clock * 72,
> +					       drm_dp_bw_channel_coding_efficiency(true)) /
> +				   1030000;

IMHO, generally overhead of 3% would be better represented by 
multiplying available bandwidth with 97%, but since this is measured to 
be around 3%, this way seems simpler.

Patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>



>   
>   		if (output_bpp * adjusted_mode->crtc_clock >
> -		    symbol_clock * 72) {
> +		    available_bw) {
>   			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> -				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
> +				    output_bpp * adjusted_mode->crtc_clock, available_bw);
>   			return -EINVAL;
>   		}
>   	}
