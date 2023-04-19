Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9AE6E83EE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 23:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F4D10E1F4;
	Wed, 19 Apr 2023 21:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A0B10E1F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 21:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681940957; x=1713476957;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Dm5aen/AlxtQH84OTFWcNtwGJu/2f21DW4K/WZZ6WvE=;
 b=O/HWZSlFFSNynArEoY2K5YN8bYpumQ4b/Wcx9P0h1P2ehG/g7myj3o+3
 VOKw3Z8tjsprbUefvEQY/xW7OJD//PODsbHpbueSLm7xZ3vcZXJ9+k+Ar
 bkbAdjz+mYWjFQyUjeyZi78P1/0oDHdEZpGqoluMVmSABUelROVx5VK7g
 2v795TTQzBvIQGzEvrDaSM3Y5EKCkutwSC7xfohPqB8Z4XfrGdBd6B7yt
 yqbpWTtFowhtoq//kIdeRCaA+9QKtlbSQnd9AO/l0mgozA08UtEzVc7ou
 qme5+g1lhEBU1nCH5okl7BcsDj5Lr6Yn2eopqJ2ZcE/q7dMvMuaC7x6i7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329742844"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="329742844"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 14:49:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="780990120"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="780990120"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Apr 2023 14:49:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 14:49:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 14:49:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 14:49:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 14:49:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kzouFBo8akrcXQ7gg0YtMcHp7ObZbyZeo1j4zivm0ulCRDVqZ4t5tLqP0OZ0i3U6lXxxYuVcpcjeDgyo5mIDA6PECPrFT8T/QJ/NvZM/UzEWySI+hH/UlyQZcrNhA8ocAN/QmRZ4xw9OIlbNZNrPAB7azEknw78EuEBayTv2WOLWri5F6WuuQFUceYlzSPR8atW9OPYyf8MVpAdB+m2pns8RfQCO3EvPy8QqqYHcauvJlhTfNKIvYOBZGOlJ2a0b547pqy7V7J9enoR2x9OdxgeMnWf86s/r7J6dCYEAeI7ZxBnUbmnGA9OaLltPhfMJOiCaWXq/S4N9TSy3qWIPBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dGr6eyBLbKq+2BOG9yOgKSDKNk/hAPx8445vxvjg80Y=;
 b=NE4vi+gVNuHIUh+mFzDriVUi6ltz1gDhcbg0BSeSNJFrsFy+GBQpVlx4xLQ/DciwXNfW/7yx0mCxQUsLH2HxRGjldKW7GEohuTlrq5O8LnjJb5PKp51H5hzTRKf2a6kx5Sz9+w5n9ZpOOEehfcjnpQ9OOBquG0Bd0SSH2ac8SjGEzGDB3LU0HcSzmfKicMLa+o3G/BKx2RfG75Nx84ICkeQyWHuTD8D+3xuuggxJOee4OamnmlKXjac65F7ey1Xt8j9sruuv3V0TH74pU4Q7MVF2tyJ0oPPBSNHP5612kH0pmPk+Fasc0LfU2D2x9LDASuNXt2UMeDH4/vP7jQNbDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by SA2PR11MB5147.namprd11.prod.outlook.com (2603:10b6:806:118::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 21:49:14 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4c7:f160:a73c:86d7]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4c7:f160:a73c:86d7%6]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 21:49:14 +0000
Date: Wed, 19 Apr 2023 14:49:10 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <ZEBh1h75onL5DPKQ@msatwood-mobl>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
 <20230418220446.2205509-5-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230418220446.2205509-5-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0035.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::10) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|SA2PR11MB5147:EE_
X-MS-Office365-Filtering-Correlation-Id: 248a0f26-c7fc-4fde-8cf6-08db411fea98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jj3anhftLX8g81Nq6/duV93WzEJCpzAcb7It7uqEfdVP4SZKHLfWJJreCJKlrOOMxy955LgXcZldZ5c80FvS4efrTc5Jw7piOD3ARbABY7SwP4eWXaVLI8t8jhMBEj295wMdQLxKD1cld/1uNlBFA6lFXnRK0S3qs4hNffLLT0AIZ4Pe6MXkM8JWKe7ngQUDvF0pxeLcRrhtpD92i53rCVBhBfWIXZd+VxvfEgrGs2kJDwgLtFMPnH0Gh2zqUc/KoTZtvccS49kl4ptIygHKqp2guwkMfKM93iZ1jl6jBjij5N0OpHmgamPwhSU4QJzzRGjjiVXScLofu/hh6yc4EHzQa+M8Dk3YRa3q7x9gUie3g9GENX/+8BketO6UqrJH+6RD9eANDbVMnwBDhG67ZqRf/OBfcM7HvB00pn1bl4r/A2PobL9iPjWLahAaUPlD0kDk8KFNgGXdyhYKppiCf2kKfzQnoJJyaNqpIXvSnr05HUB6iebfWbJp2EcFl+CegtgiVhL6n2mvvGwjdRTh/VsgtEFArfREvoxhvIuptT4x+95muMmMF1sI6JfIhVZQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199021)(6506007)(26005)(9686003)(6512007)(33716001)(478600001)(4326008)(66946007)(66556008)(66476007)(316002)(82960400001)(83380400001)(186003)(6486002)(6666004)(8936002)(2906002)(8676002)(41300700001)(5660300002)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFZwL3dHSWM2YzZwL2RwbnhxUDlEZzlxdVNSTDNQaU01dzNKbEwwUUZ1Vkp6?=
 =?utf-8?B?RVRuRUZicDVBSWpEbEhGUnF4L2ViYnVjWm1xYzNCM3pFSXVFOC8rUGtWYXZS?=
 =?utf-8?B?OXRtVEF5TE50aFJhZ1RJVWU5ZlRGeHA3WnJEcDJrdENsZFkrUUQxaEZSWGts?=
 =?utf-8?B?OVRuci9EbDhnVUUwcldYbTFSUTJTS0I1cUFpWkcyNWdxNzhNbEc2SHNxMTV5?=
 =?utf-8?B?cmxkMFovMkF0YmU4YzB4a0JKYW1sZE1DRmN1TXE5Y2VzdVE5RXFrRE16c0Mr?=
 =?utf-8?B?Z21KTjZseDdZOHVnRUZCRmZZYjB6RitrcG5oNzNOUkZGTWVzZ3pkWnBTWjVK?=
 =?utf-8?B?aUNnUmhsUHhyVDMxaThJOVdiamN2VjFSRHVPeUdpVXhkYXh5NXdsRE92N05K?=
 =?utf-8?B?TnFndG1pWWQ5NVZWZ0VoeklJd0I0djhKd3NpSEVjWnQ0UmZ1SFlSc3J0WUxV?=
 =?utf-8?B?c25vYXY2azdVb3l1NENNc0JvT2VkSjVhUUhUbUZyNko3RlF2cVBUbm9Tb2pJ?=
 =?utf-8?B?RlRUa3MzZnV4RGxlOUdTbW4xZFlDd042UDBIWjBuZ3hLVlE1bXRiaXZUZ2Jn?=
 =?utf-8?B?SWl2bHZmK2xYMDdMa1pTQm5YWDhJMHJtK2FHc3VmejY2UlFpRUJ4eGNid1RE?=
 =?utf-8?B?RnJWUGFhYkFnTVdXMy9QcENFalgwOXJ0aVVPNnE0WkN4b3NJM0pBNHJzbFcv?=
 =?utf-8?B?Q0ljYkI0bU03amRqbzgzVCtEdVp5cnhta2xhUHgrRjJNSWVqMEY5RTlieGxJ?=
 =?utf-8?B?MVliTEx6Vk5OZjlLeGVQZEh2SmQzT21kVVphTmxaeStONEJzL01YbmJlWlNL?=
 =?utf-8?B?blhGT0l4eldtNXl1N0t3d25rUXlTV3kzdzBvZExHaEVHV05ZTnVLMGpTeFB3?=
 =?utf-8?B?ZzVKREtYK05qU044dTJCVElzZng3L2Z2SDhac0pRTks0NmpRdE5rZGZRc1FL?=
 =?utf-8?B?THNqbG5WS2RWb1cwN2JURmR1clhFZFROWkRCeHhaV2llUFZCTnVUUU4wQmJ1?=
 =?utf-8?B?RWMrTGZOSEZLNkY2L2xQVHRVQUJNQUgyWS8vRTdnZjFSY2RJSGF2eDRsMzdJ?=
 =?utf-8?B?YXM3Qlg0YkprU254akMyMmo2OGFiOVQ4VkNDYXFva0Q0ckw4MUI4cWpjN281?=
 =?utf-8?B?eUZDVHdtZzArRTBQNnU4QzF5eE1Xd0ZacGxjZUE1dzdnQ2VKUGRTUWRxRGVu?=
 =?utf-8?B?WEVTNmtjLzZQSXl6ekJseFlUcHh3c0pSQzhWTTYwM3RzRGxMek11TWdBSWNx?=
 =?utf-8?B?bjdsTlFlYWZ3Ynh6SVArQkFPdTFRU2o0dzlsbmFDanVibkc5QVJ6QXg0N2dL?=
 =?utf-8?B?Njdsa1l6UDFvMWlhaHF3a0swY2w1SGJpU0lPb0s4NFNFZ0l1RXAreXUrMzh2?=
 =?utf-8?B?Z3dLNWxWNjBpQlBrSFZxWk92dnZMTXIzVmxnenJ0UWJEOFA2ZlRjdmhUS0dj?=
 =?utf-8?B?YVFYa1VFNVptSmRUNHlYN2RScTVnOEY3MFBybG9hY003Mmo3VXdmeXR4M3dt?=
 =?utf-8?B?VUM3R21yS2hKVkJNTUY0djNWSWgrYjRKcUw4KzlPMlNuNldJZTMrWXhmMXN1?=
 =?utf-8?B?TWdEd1lVQmVwaWFET1RySmhnUVlkMWMvamhpcThUTm45NXpmN3ZEd0gvTzVq?=
 =?utf-8?B?eWtzRzhuUjVaQVNhZ0llTXMyNThjTTQ2UHdKeVBHMHd0dmkzK2U4Sy9icFBk?=
 =?utf-8?B?UUJOVUcrMFVNSVRYUHRaclNvOXVjMTMvUjFjODQ5RzJEOTMxUlF2ZlRScC9m?=
 =?utf-8?B?eDJZc1QyVUthQSsvQ2NjQ0dadzV3cklSaEI5WUxpaTlEQ0xTQ01BUndNeWND?=
 =?utf-8?B?OEFNY2xZZG5rWG44dXgvWjRoRlk2R0RwWEN3ZzBvYUtFTVkwMEtVL1BSUXdK?=
 =?utf-8?B?b2F6eG1ueFYxeG5lMTZaZG9SWVRzTDV2Z29WZ2Q0emNUck9KYkpRUXg5a05Y?=
 =?utf-8?B?R21hZWwrVVovMFJWQ3JFZHhSUVBNTEsvNjdoR0JxWUYrdUVyc0s2VW8zQm0v?=
 =?utf-8?B?aWNPaXNxSUJTVDdJQjdqS0xwWGxZamcyU0RpSzRnNGVrejEybWorQUJKU3ph?=
 =?utf-8?B?NTV0Q21xM1RaemhTOE5DaHA4bVkwYnl6SHlpV0F2b1FScWYrcFdaNStWU0xr?=
 =?utf-8?B?VEtjdHl3alJxQ3lGeUxBZk9ORUFyM08vSDFjWUxRVnoxRGUrQmRhVmJNOFFw?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 248a0f26-c7fc-4fde-8cf6-08db411fea98
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 21:49:14.0406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NglPgu3SZWcVuPIW3t+AN4lJ/qUCOKcWw0Ihf+yQ1hb3P1SnJOD05MfnB+cyppxFr+iewsh8ivmuaPS2pHzOH8aqb4Agmr2S1652d1iz08Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl: WA to clear RDOP clock
 gating
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

On Tue, Apr 18, 2023 at 03:04:46PM -0700, Radhakrishna Sripada wrote:
> From: Haridhar Kalvala <haridhar.kalvala@intel.com>
> 
> Workaround implementation to clear RDOP clock gating.
> 
> Bspec: 33453
A better bspec value here is 53509, you're referencing a non-updating
page
> 
With that.
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b925ef47304b..312eb8b5f949 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1703,6 +1703,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  		/* Wa_18018781329 */
>  		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> +
> +		/* Wa_14015795083 */
> +		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  	}
>  
>  	/*
> -- 
> 2.34.1
> 
