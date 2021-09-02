Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B32993FF0D1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 18:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4496B6E5C5;
	Thu,  2 Sep 2021 16:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E86E66E5C5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 16:10:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="217308386"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="217308386"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 09:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="447189300"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 02 Sep 2021 09:09:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 09:09:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 09:09:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 09:09:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PpAotLKlW06ucUAMMfXahNKtX4W9Xl/mqnbQvGXwmNXfdIHDqbs9ZSO/uYCaH85q3GKcCJ7gLVIzRWwWDKziw9CI6PRgjfP3Lup5dhHu+YNG2DVrbepcWsL8JPw+xf/LZykPX0yDwWl7xqMGvR4Sor63A3p5B/pve1tyGEbhzSDuVv9LdnJrwx0Fn3LMhXKwhyvuUx+Gd/dtgH0KgNa/HQrl84enPN+vTH7bJkGIx7dxO1lrc8aTsfbeq1a+1sseqBUtgY0mp8LuDT7L6w6NtJ8eOjQqzRB9zG+nFDyFEifvbZXyBKQ8yzcOULPvCdYuaordKy6fbV17Rb/yQ3wEpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=y+x4XTZ9uXSbROwKaOjpb50Sb1QdHpVXgswu3hux5FE=;
 b=e+AanGHSJRob4WTMSW9sHQvx+1cCDBrxvCd73MmM9ztgcLJYLMBVQLRosY/YwDCferBq4YHurGLxteSJlnx6yOvjbPVPQIvtrE9ttPYyFH5qzGVsQHwg6HpF+3mPwx6DkzJtSudUlUxMWCSwEVOyr5mHrjaw98HxAeYbCO2z60juV595xDEXKKYFxqDV9zFoJyshXKxjtnlH7YCw5WwF2MeSZvDqLk6mv6rSiRYCh/7gtjJCLyfb8rs5fe9qrl4DYiQ+3A2R2suDR0p+SZy4onH73kcIeUFfnIlxe5GxqEjevz50dZ/pBbBm1VALSnSxOwpVx0JffVmryEWMFTzVXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+x4XTZ9uXSbROwKaOjpb50Sb1QdHpVXgswu3hux5FE=;
 b=TTuJhRuF5pWu09SI2eWLpcSfDEpEiAttpFDxIJ1FvNBo/QOts9HsgcRueJJ4jXnMOJP0Bj9Y1mPXcKU4SjToPt5iS97LKq/3+ntzkrGCUZgcoKBxy9kwC/9UmC4AkpEMYdeZ2/3poqmjdIiu9nlYVV4bekJgroUhYSpLoLtB/Bk=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5315.namprd11.prod.outlook.com (2603:10b6:610:be::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Thu, 2 Sep
 2021 16:09:44 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%7]) with mapi id 15.20.4478.022; Thu, 2 Sep 2021
 16:09:44 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210825005840.170796-1-jose.souza@intel.com>
 <20210825005840.170796-7-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <eb8922de-48c6-6e0c-315e-2f3010c956cc@intel.com>
Date: Thu, 2 Sep 2021 19:09:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210825005840.170796-7-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0402CA0018.eurprd04.prod.outlook.com
 (2603:10a6:4:91::28) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.139.80) by
 DB6PR0402CA0018.eurprd04.prod.outlook.com (2603:10a6:4:91::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.17 via Frontend Transport; Thu, 2 Sep 2021 16:09:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f0883d5-cae5-4821-9f23-08d96e2c13de
X-MS-TrafficTypeDiagnostic: CH0PR11MB5315:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB531554B76F1A3BA0C3D4DAA0B8CE9@CH0PR11MB5315.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hZjaxngltzfVjPctSxUGm0ygOJg+x0f5Ye1TBiIL/5yz3YDlj9vflH8UsHgWufD7khunKnqTYpGTVIsUq/npUENYkudJysZtIIn6j1+LHjXThl0UAO7h7pPci2PC1WddUO7B4vCH4/GcAJM+DHWrFQX3D0iL/xTS+rjQ60itTNcuFSVyBI9Oo28Kdb5AEBQ+kvxR8W11pIknYx3yYbOIdkgFELQdf7bQvDGkOWls2RubUQ0OEP9n0dqEIOhvn0IrW7jgyTkBPYDcnDJE6T5ekuk+ihDy4fUxpRYNfPEfhMXKHhQI9XPC7/CTTIrTfJg47d8BlSUAIf8yolr3F4eHCnpqepVzsz7hde0MzogpbvuK4+/44oNFMgcOvHpyqVU0/vmZhVpV7h212r3JTB8/TE9S6Kqr/KGFGIky5MTlOEEVG8tdY+SvH0cOMSD4MubsZfYCzVmoH1usY2w9alPshSX3wfozWX9Dle690BvT4nv7ycYPYpc/UKQVKMaviTfFVeMjSB+Yz4HeSliiSiT+gvaLM3ySzyri3VFfwHEEhYvpdkLW+d1crCpUcB76n8r3/AR79W4dRDVIrSXz7yq/sa8dVVhVgbZ1WteFnYsah0nm5ONQaU8iWeKrkhW+qHRBhh1Q2hIV84m3qZFWMQzS0SW2mbY+4LNe0VzamHvqER0kH6IoFnZM5eNeFrrFNVdPnNb8urBln9xYS5vKcu9XctaeuV2j1rMOqgi86WmG/wg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(396003)(376002)(39860400002)(366004)(186003)(86362001)(31686004)(478600001)(2616005)(8936002)(38100700002)(6486002)(31696002)(26005)(53546011)(8676002)(6666004)(66476007)(66946007)(956004)(83380400001)(316002)(66556008)(2906002)(5660300002)(36756003)(16576012)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWRaM05ybTRDQW8ybkJkc1Q0RHIwb09Xa1EvVldFYXpnUmtiYjgyendpOGg3?=
 =?utf-8?B?dGxSb3RaQm5tT3J4blBHaW9aZ0R2NW03WkNRL0ZlVzBMUnVYM21qc2RUN05u?=
 =?utf-8?B?d0prYmlYUG1LaVBXLytTLzJVMWtDS0dWZWJkWWhuY3RMVkhzVEM5T29aTzE4?=
 =?utf-8?B?QUh1SnpZMVVPSGlqaW9ZazJ5ZjJLMlFaSW1kdW82UE5vOWUvWUVwYno4L2ZG?=
 =?utf-8?B?YWRTVmxEbG9WSnpvYmdPQkZDSC9qYTJFWXlKUUJDODRyeGdRdlNxY3l6RGpZ?=
 =?utf-8?B?Sy8vZHBDMUdwOVR0cXlQNHMzU3ArQVRKNmFmaTlYWHVWRjdGWGMxMVNESS9h?=
 =?utf-8?B?cU9LSTFEQnhRWGxKeTZvZ2N6M3lNTTIyTWZmUC83VnRKdFRRcnpIYUVoUWFq?=
 =?utf-8?B?aXJ2Sy82c014TCtsdVhYOXN5clpFa1oxMnUxQk1LUGVDbmgyM291dTg4d0Zn?=
 =?utf-8?B?TjBMSWJSZ0t6RWh0b2x4WFpkbEYzdXpBVkk4Q1VBbzNpbFJrdDFkYTR1Qlds?=
 =?utf-8?B?Zkp3WWViOU4zaTFySjZVM1REVEZnQzJzVUsveGZ0c1JaaDVReGpGY0J3ZlNX?=
 =?utf-8?B?cDJ4NXNnVkRtWHh5SHhMVFBhNWlMUnptM1lqWGhCai9VcXR3L0p2T29Geldz?=
 =?utf-8?B?bHdXZlBWa2dKTUJ2RndHenkwMENIb0hzaXdXazc2b1dEblRwdzhmTkpEclNC?=
 =?utf-8?B?THN0Smc3d3RFSjEwc0M5elZJYVJseWtYWGszV1RNZjNzQTN5V0RhcklpOGtZ?=
 =?utf-8?B?Nmd1OFB5cnYvQ0VsZ0tZK0drWmkzdWgxOUlFY2N4ZURKc01PS1RWVGlCUlNs?=
 =?utf-8?B?VUZqdjRWcWF5YUR5OGpjWkdOTUM4a2VqSGM5b3VWNndYQll2Wk1UdC9aTnNG?=
 =?utf-8?B?N1d5ckRnMGZISlZuMTJZaUZ1TzBNdFowT2lQc1BmRVIyWWxySlZYMjBXOFZU?=
 =?utf-8?B?c0h2YWpBZ0VQa2JQUVhOZS9kUGhPQzQvZ2ZZVU1zV2tTdkxHR1RsUkNXSTNo?=
 =?utf-8?B?WWRka1Z1azJRZzNMcUlOT3VKd1o2KzRTbXN0aFpkdmJDbzF0S3B4RjhZWEFT?=
 =?utf-8?B?VFpsY09ZVEM2NGdPOEgreTNmdk9DVzROdmUwYW4rYXFiaTdLelhZQ2phZDdz?=
 =?utf-8?B?ZlNqQVc2eTZ0WE9Lb3BydXlha3NBb1hPNVovR3BaS3VoK0FmcW5waERHZkZN?=
 =?utf-8?B?N1JQaUk2VXp5YzJhdm9vb1hGSTZaR3ZLcjVVYUs1SGVoazBRS0NCTmc1bEtD?=
 =?utf-8?B?bGJwMUxOdk5wSkZ1NGxXNjY1andHblhicTZ2ZmRSZEhNVDNtVjkxUUc4WmN2?=
 =?utf-8?B?MTNCUHdLeEJkOTFSSFAxOG5QVCtFVmluakJ4SVhOSkQrcFlFQVRNYTBMWjNS?=
 =?utf-8?B?SWJjeDN1QkRUai8vejhaRkFtMFh1VFZSdEpjSkRrSlZzZjZNbWlHd3h3QWRL?=
 =?utf-8?B?YmNDSDBjMFVOMy8vZTlYN0xac0hXaEY4L2x4eUFqalA0M29YY0tWeXhXOWda?=
 =?utf-8?B?OERiU3BmZUU3bjFTRHZ6a2ZJOFVabDV4UDFOSzhDSVdyTDNuRUxwNHlFZVhi?=
 =?utf-8?B?eHJzRDVjVUhzTmNXY2FzS2s5SUw1d0VBdFNMM1J3QWh1YlhZaDNZNlNJQVp1?=
 =?utf-8?B?c3JzKzY2bkNWWGpqcDU5VVZFY3ErRlA5SkNDenBMdnlINnFFajFsVHhCQi81?=
 =?utf-8?B?L2VYdjRpbXZVQ1AxbWVkY1hHMlZvbElPWGN4UHc1ZUdRY01TaHJxSzBvTk03?=
 =?utf-8?Q?z8M2cPu9zPAVifiHV7twmVjFHtrJeSi86RDeupp?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f0883d5-cae5-4821-9f23-08d96e2c13de
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 16:09:44.4004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dA6ikvQgrgBSGaNCpNNJCFfKsqip7w79VrOKTaYyw/Vd1EroybdbfbAy0eNB6ylMxE4eoFIhIpTGNGqyve3yiY1QN0M8lIw8Cddxd40jQzE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5315
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915/display: Prepare DRRS for
 frontbuffer rendering drop
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 8/25/21 3:58 AM, José Roberto de Souza wrote:
> Frontbuffer rendering will be dropped for modern platforms but
> before that we to prepare DRRS for it.
> 
> intel_drrs_flush and intel_drrs_invalidate will not be called
> for platforms that will not support frontbuffer rendering so DRRS
> needs another way to be notified about to page flips so it can change
> between high and low refresh rates as needed.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 2 ++
>   drivers/gpu/drm/i915/display/intel_drrs.c    | 9 +++++++++
>   drivers/gpu/drm/i915/display/intel_drrs.h    | 4 ++++
>   3 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 794690c0dba56..808002aa439e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -52,6 +52,7 @@
>   #include "display/intel_dp_mst.h"
>   #include "display/intel_dpll.h"
>   #include "display/intel_dpll_mgr.h"
> +#include "display/intel_drrs.h"
>   #include "display/intel_dsi.h"
>   #include "display/intel_dvo.h"
>   #include "display/intel_fb.h"
> @@ -2436,6 +2437,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>   		hsw_enable_ips(new_crtc_state);
>   
>   	intel_fbc_post_update(state, crtc);
> +	intel_drrs_page_flip(state, crtc);
>   
>   	if (needs_nv12_wa(old_crtc_state) &&
>   	    !needs_nv12_wa(new_crtc_state))
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 8583da4e82434..6ae778c306006 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -391,6 +391,15 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
>   	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
>   }
>   
> +void intel_drrs_page_flip(struct intel_atomic_state *state,
> +			  struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	unsigned int frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
> +
> +	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
> +}
> +
>   /**
>    * intel_drrs_init - Init basic DRRS work and mutex.
>    * @connector: eDP connector
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
> index 73be7e9a43691..9ec9c447211af 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -9,6 +9,8 @@
>   #include <linux/types.h>
>   
>   struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_crtc;
>   struct intel_crtc_state;
>   struct intel_connector;
>   struct intel_dp;
> @@ -23,6 +25,8 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>   			   unsigned int frontbuffer_bits);
>   void intel_drrs_flush(struct drm_i915_private *dev_priv,
>   		      unsigned int frontbuffer_bits);
> +void intel_drrs_page_flip(struct intel_atomic_state *state,
> +			  struct intel_crtc *crtc);
>   void intel_drrs_compute_config(struct intel_dp *intel_dp,
>   			       struct intel_crtc_state *pipe_config,
>   			       int output_bpp, bool constant_n);
> 
