Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1129629129
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 05:20:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B252E89CF6;
	Tue, 15 Nov 2022 04:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD6389CF6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 04:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668486037; x=1700022037;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WnFHpuAX6yR8UicXnymig3OMNhFVbBRZaNeR0XCJAI8=;
 b=TzelTT3Of9C7FHANNz8O8IYlSE+5aAtjqRNBch6pdOasCIiWiovOGjhv
 ZM/x7+QrrJ1hNkvMcVk5XF2ocpYUBZMJQCGr1EX5ExiYDjU1Thexl8809
 wrlX6xNncS0EqrbWXHcl1ZmLOQ5f+uRUF8CCEYeZbYTYeyBxg8Dx0BLvt
 dUaKXTK4kDWlg0+YKD/hnmTOim4eTSuCfcz7NyeM+0bMuSqhW/YU4Eoc4
 l3BGs2uvJgdRzPYcghaHoUaOuijdloqdtjkZVjPprRoq72RI6C6fhw03o
 3g+buTUl1E1X95omOirIghNSbOvtXX1KB0pvlMzzK2C7yAZhup5Qh4beM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="376423395"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="376423395"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 20:20:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="638791122"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="638791122"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 14 Nov 2022 20:20:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:20:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:20:33 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 20:20:33 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 20:20:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HCVwwjQ3CCavd/aNk/qzK9e2+WJWKwB0lDmExSsh2jqgy9G4Rg+E21EA8rzYTFSCafSc+2Sf4yq4+ZRXiAZUUU5Q6crQDzACrDIT2moB7jzs1ZJjQ6IjXFxMusnkWqF7mZMVlXlakK/cv47zVBPepoGwjzfaRuMIOmUq1/a++OcDqdhgiKeh1yB/Ptfy0VJzy7n5475F3X5uGvXd9E5gUoOpI+1L2rU2ebf0l+C0Qi7pZIarBYA6wgE+TCP9VmHEh/OrztRlV02r+8PDtcLQDNjuRiKgwmA7RMlsrw+epUXiIDWmMZ6TawxsBHTKTMne4iHbPfT0/j9+WR2thM2iyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BUqSLENNFDqXCGZ44QmXGGHRbIxmX4vCR9z6+aXtyHQ=;
 b=k3LtnJ/A5iJRXU3VZK0GH8v43b4RLxzoZxT+W3IYq+rV1OJZSxdZLZGTgzN87vF/gfuhPCbLvuoNBJG1q8G7eEWJWP3Ahfq2kyjVx0AXPJp+SXews7V5uK4bON8xiwRJD3UyYKtM6YVN0lP27JmOagAPJ4rSUOC3cmxLvDUhblMkchsNhgo+w3nrH3/EUe7LX1CXX+PchE/Gm3fJfZ9E7OMIePtKX1cy8kt6JFyT2+5Ne7yS6d2AhU8PRjDukjsGjR/wDTGtyTnN4oGrOs97u8nVKJqt/Zd81xTsfQPAYeIRxzP4wI3Pc21Zy7mUGWmF18ImTUqhXJgbY51Zz2hg0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BL1PR11MB5493.namprd11.prod.outlook.com (2603:10b6:208:31f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.17; Tue, 15 Nov 2022 04:20:31 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 04:20:31 +0000
Message-ID: <444ebfbe-90e0-25b0-acb3-01cb93f1ecf2@intel.com>
Date: Mon, 14 Nov 2022 20:20:29 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-6-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221021173946.366210-6-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0378.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::23) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|BL1PR11MB5493:EE_
X-MS-Office365-Filtering-Correlation-Id: 4143e4f4-aa19-4335-d662-08dac6c0bbbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SYTaGlZ57F8Y5Vs/Gwjwfi91qfBpaYWfSP0tFSBLAJLdCx1BdtexG6CKTU5IHIJmS6dqkPEfOIPO3aCrwVAcAXkpPUpy9mersBa3RfZGLqUEv1XMTdl93mBqdYl6xEV23tffSTNDeBQXQt2tXjaRss9aJLk4TBPh70YZumUeTYEYX8Gs8Vj+O9KzSqFPIPAj1TiqP8KuuMhNCqLaoz+livcH+n8Tl4MM86HOacAZ2G1bJ44xD1f/FrwVfyBfBmX7eEpK0mr5kyKWmvGl0QZG3T4iTIOU3UOEneNtLn07VoGYPggZLmYGHNKXADjrHaNV2VJ29dPAlNlELqgRXanpA1EGxMfX9UxGmE4RJMbEK0JaD1jq55yW108ZccpPIgLQpNqey6KfWaHEE+oDJd/d8XQyjYQU/nQJZmQw8J5VG1GNRROFJzFSNL+tr4WokX2lCZcovopiE8YLG+SPY6cmD6mv+XtLiG5NTXmZOSPJV2metipnDGD67Y/9uK4tcQquAyHxnM/b58/3RfAfoF/DcfokONeoLOPaV/uz/C7N37qqcMIZN+z5UHv2s1jmmkh5LovBgyf23xx7X0uv0LM2dCTSxt72TaozGu4HaEbeTtovgE6hKNMTFbcEQKs+pcp/fxSzSmxYdinyvJ3OelC863//swMIA6ncnJtzxzqaVbMi6Z6Mz5Z1schEjkShbJEzkigN5VHOYs+OUUj7DOwMFc7qVvf4Ymeiu/1fverUhc4MP4pEde2ddQA+UHwp+ZIi4rawcwh7cZRoRzVgHLfk623mTovPNTflmqyibs5gu/I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(31686004)(36756003)(86362001)(31696002)(6512007)(8936002)(83380400001)(38100700002)(186003)(6506007)(53546011)(2616005)(26005)(6486002)(82960400001)(41300700001)(316002)(66556008)(66946007)(8676002)(66476007)(478600001)(5660300002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejNQR3pPN0F5Q1hZTG4rMHJTbkN4NHlGR3cwY2J5UERZWGcrUGFsQnVoZnFJ?=
 =?utf-8?B?VVF3TnI1VU00d3Y1TUhBRm56dWJtSVowWjAwK2FrMnh3YjExZE1YT0xoR1BB?=
 =?utf-8?B?MmhmNDNxd3djSytORGVONjJoK1JFNmxKT3NxUlFGa29EK3kvNmg1NEQ3OUxT?=
 =?utf-8?B?YXdjc1V2QXpmVEtoUnJWSW1vOEtucjhSVGFpMm9CcnFLWnh3TDVXN0ExTE1w?=
 =?utf-8?B?cDY0YlhJbVVqZWpCK2dKSmNFOXFaQ2VtMnNETU80SDh4WXVEMFZUQmNSaFl5?=
 =?utf-8?B?NG5vN1RQUXd0dGR0TFJmWUhzQ2YxblNDWm8zMnRvQ1Nnck1qb1d0aGNteU1J?=
 =?utf-8?B?OGRLMGp4VFlZL2J0MDcrMGxPaGp4ajh0QkRaUGhmUExvMmN4ajMxRkZXeE0x?=
 =?utf-8?B?WGQ2dEdySDN2enlLMWhwUFNIWDRxSDd3bXRub25Jck4wMFd3Q2NIUW84UDVH?=
 =?utf-8?B?RnBGc0RialNZQmhmRHVDcEpiWDEzWk1pVmZoN1RIOHI4TG9uZGVLY0FsYXMz?=
 =?utf-8?B?NEMxQ1JZRW5iQTZhb1VDWUZVOXhuT054L0hUSUw2QzgzRmE5MitZVHZnSjZk?=
 =?utf-8?B?TmxJdWt3aitOeXVzZzM1NXJYc29UbFYxVmFwNTFkRFpySHl5b1AwdlFBUHNQ?=
 =?utf-8?B?SzBTa1ZQZ0ViaVlvOGE3UVU3MURnMkZ0aXBlSVpHUXFvYlhBMm4waUpqYkpP?=
 =?utf-8?B?ZHdIYklWMmVnaUhMbXJWNkQzSGx3YzRNTFl1bFBaVVpJeUU4V0luRlBDMGNk?=
 =?utf-8?B?bXphY3V2MFMzZXJaV0lFZWx6NmMyU1I3N09vUWszN1dscmlQNXgrY242V3Qz?=
 =?utf-8?B?YWRBZnlHcm02NmpQMnkzbUIzY3U5bnptaWdMYkEweHJBbHJ1ZlNjUFRqdXhN?=
 =?utf-8?B?dkZIYWFSWTlyUStJdnNKeXZDdWQ5aFFtRnFIYkVvMjlCVitoSkRKR2NyNnRB?=
 =?utf-8?B?bCs5a3Q0emVzZDhpT1lkNVNScFhvVHgxZDRyTzhya0ZQcjd6eGtGVjU1bG9u?=
 =?utf-8?B?V1hpdTNFemZ5VlVVQ3JPUWxtaXk0dnRUVUxQL3RHVGk4KzhqQ1hEZjJKSGJG?=
 =?utf-8?B?N0lTZCtyMytPM1RLVmp0K3U1MkYyOXlSRE5MWkJ5M0tiZkVUZXZwYkhWcnlu?=
 =?utf-8?B?ZjhvTU80SlZuWVFEU0ZMcFRzNlVEUjl5eVcvU2w3OHVDRUZpbkhMbWhCS0dC?=
 =?utf-8?B?T0x4bzJMaTFvMGpYd2lKMzRubUlnM3pIMmpEaW5HODhDZjFJZWptRmdDRTV6?=
 =?utf-8?B?bDhLdEd1Y3NpbXJ1NCt4Y2Z2OGFRRk9kQjZnWlIrazM0MWJ4a2hXeSt5bDda?=
 =?utf-8?B?a2tKTnpySmlDeG94UER4MVZtNWdzQWxyeHhnMW5LUkhSRVViTStqMnJtOGFN?=
 =?utf-8?B?U0d0UkFGNWgvS21kMDk0SG5TblJzU01KRm1veHFzYVBjdmtpalh4dUpnQldO?=
 =?utf-8?B?TGpQR2I1aXd3OHl5bXZJdndHZkl5TVlsbVI0d0trWXNQc2FNb3dFNDZLVGF3?=
 =?utf-8?B?M3ZXTzh5ZGtESWVzZEE4UW1uMzM4TUovejdwWGN2NysrN211NjBTYmp0azds?=
 =?utf-8?B?WTVySVM1eGQrd3NOanoyQ2dKYXlmR3hzWVY4ZDZEcVY0UWdiU2ZKR0p2bjdM?=
 =?utf-8?B?bG1pbFBwZDhmSmJLR2luTCtRdXlHS1UzV0s4Wkh1ZHpDN1ZSYUxBVG13OEd0?=
 =?utf-8?B?SWtXNmlzZ3E3dEN2VGJUdlNiSWVhN0VaeDNqOU1Wa29LamZnbTQ0clNzQlN2?=
 =?utf-8?B?UGNCN2pDZ1hGOFJ6MldpamNKL01tUzVuUml3VnpWcmZSNFFVSkhkMnFVaHpQ?=
 =?utf-8?B?YTliRzlrQlBweWpiQ3hYRG9NMVB1M0NrSm0vRDNvb3lTbkY5bW1tT01VNlgw?=
 =?utf-8?B?eUVPbFIyQlR2ZU5mbk52NDNlTE92NkxjQm9EU29ZOEZ5WU5yUjRQTGJBSXFr?=
 =?utf-8?B?OExJaWMzS1RlMmJPRTVrdkJLSGY5V0UvdnRGdTRaenZIclk1VGt1TlFUeGIv?=
 =?utf-8?B?dVZUWGxDdFlTQUlkdlI5N05sb0xkdFFhelRiTnhOa1A2RG1KYVV1YnlUY3NM?=
 =?utf-8?B?ZGNxRTh2V2xNdEwzNWphOHVoSmV6K1lTZTRwS0R0Ry9aRDI0SmZGV0xSWndW?=
 =?utf-8?B?aW9ONEtZNVlxczJGMUZFL3FtRkpwWStXdzlKcE40alowdk1mY3NSWUVXRU43?=
 =?utf-8?Q?FM1MmSfrqJYgTAI4DwjqcUU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4143e4f4-aa19-4335-d662-08dac6c0bbbe
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 04:20:31.4556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wP42oGINpIanaRkNRkYYaLNthaZfg5+SY/oGlxO+3k2yvC/Tt2M9tzikzqakJezsLRm1GSDexpQ2swlWeSEkV7L8kmAVB6L5SDcSNX1cHg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5493
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915/pxp: Make intel_pxp_start
 implicitly sort PXP-owning-GT
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



On 10/21/2022 10:39 AM, Alan Previn wrote:
> Make intel_pxp_is_start implicitly find the PXP-owning-GT.
> Callers of this function shall now pass in i915 since PXP
> is a global GPU feature. Make intel_pxp_start implicitly
> find the right gt to start PXP arb session so
> it's transparent to the callers.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp.c        | 9 ++++++++-
>   drivers/gpu/drm/i915/pxp/intel_pxp.h        | 2 +-
>   3 files changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 798e77398acc..af60f6494947 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -272,7 +272,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>   		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>   
>   		if (!intel_pxp_is_active(i915))
> -			ret = intel_pxp_start(&to_gt(i915)->pxp);
> +			ret = intel_pxp_start(i915);
>   	}
>   
>   	return ret;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 2c835c38c527..c87f812ba13a 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -259,10 +259,17 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
>    * the arb session is restarted from the irq work when we receive the
>    * termination completion interrupt
>    */
> -int intel_pxp_start(struct intel_pxp *pxp)
> +int intel_pxp_start(struct drm_i915_private *i915)
>   {
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
> +	struct intel_pxp *pxp;
>   	int ret = 0;
>   
> +	if (!gt)
> +		return -ENODEV;
> +
> +	pxp = &gt->pxp;
> +
>   	if (!intel_gtpxp_is_enabled(pxp))
>   		return -ENODEV;
>   
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 7d93055cdd6b..c45949bb1f7b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -31,7 +31,7 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
>   
>   void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>   
> -int intel_pxp_start(struct intel_pxp *pxp);
> +int intel_pxp_start(struct drm_i915_private *i915);
>   
>   int intel_pxp_key_check(struct intel_pxp *pxp,
>   			struct drm_i915_gem_object *obj,

