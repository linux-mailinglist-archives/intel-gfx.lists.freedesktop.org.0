Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687CE4B8798
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 13:27:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDE210E74F;
	Wed, 16 Feb 2022 12:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E24B110E74F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 12:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645014434; x=1676550434;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GCXphrHYZgN7IQdw0FlFO1EWoyg5cC2zZ9ytOSofD/I=;
 b=RzcBoyh8w6U1VVvdHWQxavUOmsopjQvu+hCbXeFtMBakxzMFGf6R3pER
 m8+5FBM/mXEIG4rmbJ+R1LJtSlzeFpkD6sCQXA0okBHNZ+QupiLZtq3II
 6nXGyxxPzk2RsWQT5Y1XylgUpuFwz3CFKJ7QTsQnRkxdSmx7/zRUAX7aF
 sEaaig3lksSxch44iV49NFjj/HldfVeU0GZvSvNJPVkZSupZBL//k/oqF
 vUgexqzEVgMXU7xm46EQyC8za6mlg7pBWpjRUxtzLk9agJC9lEOB9iwPR
 GMgkXAKsMIcsWbs44FvLEdWIAcJBvsyyv8N/SNBk+z7Qjixc2nplDMygs Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="249423511"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="249423511"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="774022436"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 16 Feb 2022 04:27:14 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 04:27:14 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 04:27:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 16 Feb 2022 04:27:13 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 16 Feb 2022 04:27:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUDvJ84CBPJ1V6XgbIAP/HyybJjqU77GCoCP9+tObyOw83eYHrzyhxEeKBk5fn9R+svnLQg871wZZZ5uj4RDumQkGPcvWRiZl3woA+TLnCzwXVHvrqBJLKG8QzWnA49mnvJCbav1dndxQOiw2gBIseRLlUU19RvrM0MCGbxkuPZ4CAyoxV95fT0dNySwwNVDV4YgmJ7bAGQ8NUTqGVn+tEV4SL5n99QU/1BwcBPF98qalMphDQSB39EJWXx4kJdD2b2zROjTu6SmGPQuJDkcQRvAtuz8kRvdoM6gX43ekSntFqilviVhwfTkrnFqahnq7jS0gMMsv+bCOnuXW7cHhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IXncuKzotQ2ihynT/rOjpUXK4umkihRIa3t8+ourD/k=;
 b=Ff4bteal9v2sMYOiZR7Pqo0o7zdOHTFupTtmqS5wvCvvfGQWaVEgRT7b7MN4WvPP7Jy3m2/+OHi2lMhuUZpS/PU1Ll+4YBoCS21Z8xZWdHMguvp8FusjiXiLs6wBucPzKaeUr4FMx7mX5Xk4zH85OoDcrvuB7TRR1apSW0SYHzl2NvfanPKoF3nx9oKlOVfn5munUAxV6lxn2GLerV9kQcGybN8Hc5FRvSvBZAZ8+ujrd7s6qkzvHJqyA+66Df9mBGuKoR9QVsLjLoWTEYWU4TevRIHwHdavUbK1oDhgFBqApBTcQpzbtPO76xMtK5Xj1iPsPmUP3/79abb+fGekfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BYAPR11MB2743.namprd11.prod.outlook.com (2603:10b6:a02:c7::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.17; Wed, 16 Feb
 2022 12:27:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530%2]) with mapi id 15.20.4995.016; Wed, 16 Feb 2022
 12:27:11 +0000
Message-ID: <97a917da-e59b-9fb7-e213-dcd0a39a95dd@intel.com>
Date: Wed, 16 Feb 2022 17:57:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-12-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220215183208.6143-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN1PR0101CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:c::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: afee0f6f-9763-46d5-b0b3-08d9f147a7d0
X-MS-TrafficTypeDiagnostic: BYAPR11MB2743:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB274393675CDCD59A3B04E40ECE359@BYAPR11MB2743.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wWMZvWQeiYaHprNotvWpqEY4z0xkvQBe+WhxdG0mBePsu7SdyE/64BnOnoYY9oExRj2Afk+JA88a/dyszHE30y4XZU0nW7g+v50dNd/O1eWUOc04dWmE9gSPyRB+ClG8gfh2S6IdZGk77TqauJTD65gYDV6J9aB44a2YaAW+M18B6yPJBrR9US+L5yhzW8ioTqFKy9L+FedwjPkJsTAYT2Bu/1X+gzgWEVe84HwzLFh+Rs1sUDRRPyBmDouwp8pld3fbVcywWv4Gne09QE7F2fP0JJlcPVZDFIG2AowL75w7O3WA2XaxnnQzkxVn5nQ6/uEWlzVUd+2gb1OQN3/5zBr3Dznw6pGYMDDL4C2UTmpfNYO+DGPnFwq2k4CbP6T2yRx63zt8/jXJYdMHAwCgaJirFS4LFw71S5CDrS16jUio9fxYzoIJpzPb+ijKON6k6IojPf4t0EsDIUq7U5/ai81DnGpVFOmVh+cKDxLtEJEcOtBEYgAc5ywLXzNh55K8UxeCyPAtmwXSKm7OQmopvtY3I8DxAo+R4ks5HhzcD0RM/ATYDyf2gp+LG1GZajy5mnJSy1iboX2Q+rIM80uV6+BeFu1mrhH1M1QykUXZGeGoH6AXYuKEkrmz1Ysb7PXyNOllO9w6QlJCvXW7N2+sS0P0XOcXlIaudsP1FGm55wsSX5Qq8qjBhj9cem21CLvXqbuPHDoKIJgYXB0fUkYjUS8s/f/vJbyVBYhQaWzwmjLJf9mN6R4IOwBROxxt8cfY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(66556008)(55236004)(5660300002)(26005)(2906002)(82960400001)(6512007)(8676002)(186003)(316002)(66946007)(66476007)(53546011)(6486002)(508600001)(38100700002)(6666004)(31686004)(31696002)(8936002)(6506007)(36756003)(86362001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHVkZDJiZGVidVJGcFJ0bk5sOXE0eHVqbkJxMkFDOVpYYzc3NnkzUWdQYkUx?=
 =?utf-8?B?eFoveWxmOWpsbGlDM2t4ZnpSZ1ZBdHB5YmtFV01ES0dpalR3RnNDVW1NdUoy?=
 =?utf-8?B?bWU1NmZiM2xnbllmSC9SdVRJZjR4K05GenFhRWUvOFhRR3FWKzNHLzRpT1Fq?=
 =?utf-8?B?TjVmTit4cExLUktRUGc5ai91Z2JNYXh2NzVjQlV3L2k3dDZDNkh6SGFnbHhF?=
 =?utf-8?B?ZU8rMkE3aWd2QUNEQ1lFZkhpbzdMTUZmTGhaUmtZcmlJOEJiQ2I5bzBtNy9P?=
 =?utf-8?B?UVdrT0RINE1zQkNZKzdoUnlMQk1PbmhZM0Z6N2xTLzdVVkdaL01UdGpXRmJv?=
 =?utf-8?B?dTlHUUJsbFB4VGE2VzNrV2FvMGl2by9TbGtOVEloanMwQld0ZXNYaXE3dERo?=
 =?utf-8?B?SDl1bnAzOFJ4VGdWbm9qWVFyYWVpOE1UZlBsVVBxWCtheEE1eFlKSmJ6eWVm?=
 =?utf-8?B?Ly9MZFc1RkVtK1pFOXRiamZMaHlkdkFMOTZFVGh2Y2liR002eVk2MFkrcy9r?=
 =?utf-8?B?YS94UVBreXppeG9yczhkUEVxRHErYTNpREVBaXdCT0NDZ1BrbE1WeWViYmZ6?=
 =?utf-8?B?eFRORE1LaSsyUVFOWjJwcHlwMktXL1NYbEFCRURSZFFBUzdRdW8zajRFM2lq?=
 =?utf-8?B?RXV2TWtBcHN2eFVkTTNNTzlaalY5WnZLd0pOaWNvTEgrMExIN0hTOU5zTFJL?=
 =?utf-8?B?SlYrYmZCS1hRRUh2cGhMeXo3b083MHhuZ0crdmxSZ3luMzAzN1RwbHZMa1Nz?=
 =?utf-8?B?TUxtQnNtd2tpMDhiY1QxMTRkRndYQTlzRFlrZDlVYUgzM2VEMzcxZlhzVXly?=
 =?utf-8?B?K1pmdlNaY2l3Uk5ydXNsNmJWRzBVbHg2dFFNTkpXWHVYUi9jeVBiZmVjNGZW?=
 =?utf-8?B?ajBXd2F5VXpybjBpdENqcUVjUGNCM21aSXlhdGIzZkZPbWZvRDR6Yk4yQWFV?=
 =?utf-8?B?dHVwa2Vpc0VFc0FlUCtucUlpSFBGZVFlcHg1SkRpVWVERjRsdEpzQ0pTT05q?=
 =?utf-8?B?d0xPWTdDQ3lSOVNIaHVwV2p2ZC9SbG5OaU1TOCtvR3RadTdaeGRBRTk5NW9R?=
 =?utf-8?B?Y21FYlozOFhQVVNTcitBMDJhVTBSTitSVWFTdFc1V0tuZmo3bklsNzVoSWVT?=
 =?utf-8?B?bWRTbitPaFNDSUhFTmlVRVlTc1l1Q0kraVFGRmI4WGhUNnhPUXVMekFMRXdR?=
 =?utf-8?B?TFlva0h3TFozUmNzUlpwWUFITkJVOUtHWEpsM2JzOENkQTZ1K2lHWk5qUkRi?=
 =?utf-8?B?QjNpUEVVT3BaR0kwZGZOZUM5RkVkRlpqcXd5cEhnbDM4YVZiS3dRSmN0ZE0v?=
 =?utf-8?B?QlJTcnhwSWVOeHU4STJiUm1VVUQ0Vml5OGZuNUFGM3hQWkVhbDUxUEtiVjY5?=
 =?utf-8?B?blF6QXhGNmNuTTRWM21kRWpieEhmY2Q0bWtDRkdUcjNaRmRXQjFleHhlS3Jk?=
 =?utf-8?B?YzYrNUJjT1NjWXdjS25SaE9lOXYrbVFKY3ZJV3U5NDdsZ1hQTHNsOUtpWkFv?=
 =?utf-8?B?NmNLdU1haWlFc3NVcFBxSkF1UUdveDNSUTFFcUdLNnZHOUdYRU9pQklGbWxT?=
 =?utf-8?B?Y3lmRDlhbDlZLzBxUFVOZmd2M2J2dmQrT3hKRGtwOGgyTEcyWVVxR3kvV3hH?=
 =?utf-8?B?cFVyMFo4U3dJZXpWRWJiNWpROHEwNytMdWpJWHo5cWF6TDFLc05Fd3k2Ym5i?=
 =?utf-8?B?NytSZ2U0RW1NTVJOaFptTlVHdnRNMkthREtvSGE5NlZ5cm5RQW9MY0Zoellq?=
 =?utf-8?B?SzhkWHJMRWpuTkQydmRLOEkxYVRTU29yK0dJWGVwbjBwRmF3VnRuL01qVmxz?=
 =?utf-8?B?RHlPT3djbVJFdzhyQXF2V2ZTeEJKWWdqUzA4SkQ4bHhqMkRscEkySy9VN3ho?=
 =?utf-8?B?ZXNXR3VTMFdHSG1COTJOQXJLQjFLWFFhMG9tUWxhc0RheWkzSDFxS3llSUl4?=
 =?utf-8?B?NlYxWGdZYjRzTE9vd2RFUHJjNzZSYmRpMSt4ZHNxcFcrUWJIS1JFMy9GQzIv?=
 =?utf-8?B?ZHVNV201YVZmVFMvcVBSd01zRHV4dzcrS25heG1sQ1FKME5GRFFHKzNpT1Ew?=
 =?utf-8?B?eEVQdDAvK0VmTVdwcGNKWTlpd3BlMjRGbU50RzV1OXRZZHRlUGdjMVJSUlhw?=
 =?utf-8?B?QVRSR084VlRjMXk4WE5JdE9NdkVoSzZoWEtCeHBEZ0dqY1UwTWRocFdIclBL?=
 =?utf-8?B?U0hMUURDU3lPaFVzS1VpUnNFZVplWFFpMFUybzJxcHF3YUZIYWdJME9NcTk1?=
 =?utf-8?Q?Y4iuSGFggMA+zN4WAE3bE4NsW7LcKw9M2cxh1ako2k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afee0f6f-9763-46d5-b0b3-08d9f147a7d0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 12:27:11.4453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q3Ea92sjsQZ8FgCfInhJLBJcA+C152+Dw0n2otc3lFriGC64aan+U+dgkumIjj4Qlq4T2SrXCbgh7NU/E0kenxEcq7Toy1T2DMyFxMVw/48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2743
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: Use bigjoiner_pipes more
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 2/16/2022 12:02 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Replace the hardcoded 2 pipe assumptions when we're massaging
> pipe_mode and the pipe_src rect to be suitable for bigjoiner.
> Instead we can just count the number of pipes in the bitmask.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++++---------
>   1 file changed, 13 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 192474163edb..0690470eab97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2727,16 +2727,18 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
>   static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
>   					   struct drm_display_mode *mode)
>   {
> -	if (!crtc_state->bigjoiner_pipes)
> +	int num_pipes = hweight8(crtc_state->bigjoiner_pipes);
> +
> +	if (num_pipes < 2)
>   		return;
>   
> -	mode->crtc_clock /= 2;
> -	mode->crtc_hdisplay /= 2;
> -	mode->crtc_hblank_start /= 2;
> -	mode->crtc_hblank_end /= 2;
> -	mode->crtc_hsync_start /= 2;
> -	mode->crtc_hsync_end /= 2;
> -	mode->crtc_htotal /= 2;
> +	mode->crtc_clock /= num_pipes;
> +	mode->crtc_hdisplay /= num_pipes;
> +	mode->crtc_hblank_start /= num_pipes;
> +	mode->crtc_hblank_end /= num_pipes;
> +	mode->crtc_hsync_start /= num_pipes;
> +	mode->crtc_hsync_end /= num_pipes;
> +	mode->crtc_htotal /= num_pipes;
>   }
>   
>   static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
> @@ -2809,16 +2811,17 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
>   
>   static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
>   {
> +	int num_pipes = hweight8(crtc_state->bigjoiner_pipes);
>   	int width, height;
>   
> -	if (!crtc_state->bigjoiner_pipes)
> +	if (num_pipes < 2)
>   		return;
>   
>   	width = drm_rect_width(&crtc_state->pipe_src);
>   	height = drm_rect_height(&crtc_state->pipe_src);
>   
>   	drm_rect_init(&crtc_state->pipe_src, 0, 0,
> -		      width / 2, height);
> +		      width / num_pipes, height);
>   }
>   
>   static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
