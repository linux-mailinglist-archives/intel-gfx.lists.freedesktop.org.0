Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4832C6DC89F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 17:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5D310E3C3;
	Mon, 10 Apr 2023 15:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D8810E0B0;
 Mon, 10 Apr 2023 15:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681141039; x=1712677039;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=zTJob7gKwWrOgaIEwIWuBE/U5oXlFGcyZ1asiD1knGw=;
 b=iSV1PWLJ9X2tSlyavYMQQODYeJJ2d228bQwTZlGuv+puqgRqkXFSCLN5
 uwN5vQP3+csXQsjUXTNk8Rr1UOHQlIVVS3cBLuO+KuoIak/rOFpG8rsOw
 mz9Hgc29ea6WQzYf49X655yjjMqsRYwu+nCrF+pwhAtQf04WxnNywDq4d
 JNV57jrJQU1T00rlDbz80sWv1O8gvnhnJihdLw8883/0RQpS6FyMMVPC7
 jlqggfUGvuODP7Psub5Nt5aqPNqIV9zbiwfLSVUOmMl6MCyInL3wunnfq
 T2utCWoXu4HFLgCmYS4+Ctw2wDLEtK2b3sJZq+LHgghWf29HBtYnD3LU/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="406210130"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="406210130"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 08:37:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="688292495"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="688292495"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 10 Apr 2023 08:37:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 08:37:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 08:37:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 08:37:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 08:37:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O8LpCaGCv8hC5tOrolP3WRX4rkeXO+a4vQ04kvtHjebb64/uIG5/b0Bziu7dhLsPF+XzdCyfcc1ualgSgjbKVgyVCXQKWYQsgWFC4fG4iek9Fqo4bSuQq2xE2LDZaDgLNlK5nSRnGAdFQO98HFjbxfuz/eWMJd4lIfXU6cmllqRpPdxf1T6EkaBQ6pc80hnTHV84C00tGp4Tx+0dS8bPx9DgIzZ/n14iQIkTeds4mOPohsCBAu3ecgKjGgCFI1Z8geT7b6STQkjMV0AGWU3/qy04ABde+Qk1ERm9JvS+g4MxpDQS/9dEjaljzUm5nOCgeoMLN1aQtrVfJtlCY9z+Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4NjCkkt2z904+AgJXF1Pu7siEwIOFuPRE5G4+02qH84=;
 b=TWiAC0Tig4Fy7U/tSzRd6LtaMlBFx0+vWSKbnPHCOCbnKwtaajG6PCd3VHsqaXp+3Bb8bBzpfIeULbk0rVosFuER8XMU7XHaXvnXfmUHZ2dHmZ65Ob9PerIfAe6AipiRmoI81IWr0R6mHH5PCq6mwRYTpodWcVQBu23Fta9p52/p3Jxtrj8lwrPRAQh45+LmbcSobofdFghTHrZURNV8zD5wYlMcbB8FpvYnYkJij75tmfF0hm2ZIryjohtoveJoUelWEHNlFj6C5wkvNqEjSZF3KdrfntjwHsXrmV96XPVIrN7HpV5krIceEZfTDQXzoYCopgzD5rkj05KPCD/gtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB6295.namprd11.prod.outlook.com (2603:10b6:8:95::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Mon, 10 Apr
 2023 15:37:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 15:37:11 +0000
Date: Mon, 10 Apr 2023 11:37:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <ZDQtIsxj2dhD+nPU@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <20230406143133.29474-3-jose.souza@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230406143133.29474-3-jose.souza@intel.com>
X-ClientProxiedBy: BYAPR04CA0013.namprd04.prod.outlook.com
 (2603:10b6:a03:40::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB6295:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e432009-e076-44df-af28-08db39d97323
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 662BG3h6ImNgHwG/e8uJsTn5P9BfbA6+6vbWBrzug/APlSRPfUKF84X11QBptTouXM+7Zjxqz12FLWbeY4Y0gTafIVngNDcJdOW8qJ5j+VGPysqDCmvkZ2Gth7q4i+9m0ut6B1p/FbHK9nmkMAG241ALf1L68oDWB0INA5iitmkPiTpdYhjF/w2wjqLSL3VQGYjjOvPo1EdnBks2TbTrfyjDCMWaXWy6ZIWNbb5F2XwEzjfb4J5EkiXryQANy58NqU0h8GfyA9ssLlB4+Jst8B8e5a6txuH3bCuG6SbwR2+uT7lFMRoxP2V+Pcxwkj4bYgIAHfKCasTYc6eMHONQ7+6CbcBsZLpWKZ7xiyTRYUn1S9q3DVi5OQSMIF/JEGyXkMeEyNM3XvdA9RVs0hlVI2svcfhwNNMxCMBdJFGlgw8WM9hG2gbVk+O+Bk8YQs6mn5L1ouNm6qkS00GKamFG2fEfwzADLPKsD4hXv+/pw/K1d+GUB+2Jx8zsH0jymhlKa4b0Xsp59TLpUOR/5b2fv4LkbQZLcPKszfxHs3nGhoiZAsR6x6lFQkOG19OQGiWTfP/BbrBRfFsZvUYSTWR5+drke1BL9exEMQWtVlT1YO4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(366004)(39860400002)(346002)(451199021)(478600001)(6486002)(6636002)(66476007)(4326008)(8676002)(66556008)(41300700001)(37006003)(450100002)(316002)(66946007)(86362001)(36756003)(2616005)(26005)(83380400001)(6512007)(6666004)(6506007)(2906002)(5660300002)(44832011)(6862004)(8936002)(38100700002)(186003)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?xRl6hJi6ouVBTCFiF3k8g7ZaiqOaEn/UsgHRVVjSLGeBAx4tMqGTrWAJBh?=
 =?iso-8859-1?Q?XSnCbyCWZdUiwSW+JbZj4/JGBbih6pHmPirtLJZxHw+1yq6k8jcC7Tn0x6?=
 =?iso-8859-1?Q?3jvKApx6WfCdIf/1B71PwzMu7VJA7sdPFf1iR7Pil+esyuazrrZGNoxYad?=
 =?iso-8859-1?Q?+6+sGX4IIuYNmHOVc+VACh5zsyTYbpeHz40RkZz4HQS7voQRtYHLX2xta0?=
 =?iso-8859-1?Q?Bz3SYsJdZAZHkzYlOx9YHE30JWf/OZJE5qQ2YmW4hzDm8AYrLBhuDXrjBQ?=
 =?iso-8859-1?Q?tUSyaJTi42pnJsW01WzPsrBn3boCjazUQasHEwgGIYr+xXIT3E93P88AaQ?=
 =?iso-8859-1?Q?umhRIFns1p8C+EYTgJdBzOssN8BNghqP/77ARvwq9pXQIoqyQUA4iyXAI0?=
 =?iso-8859-1?Q?abBFlTH7i82Dq4xkqblD4S7RKqXcebnsR3stmJ2JmAjJk9KHEsiCAXqsAl?=
 =?iso-8859-1?Q?b71Dv0S2Uvlxf/7y2O5KRUCbGBxfff0dMuN25s7LCzPn24lS4k3YHdlG/U?=
 =?iso-8859-1?Q?+afdZbfAMeI7UkK0A/+N8CnFNQnTbukx6L2U2t0D4RpZY3i/HREK5gPpOg?=
 =?iso-8859-1?Q?f0W/W7++Cg1NgZ845sdWkzEk0TT3rpZ7Ngw63i13FyV6ApXynSaaAaEW5U?=
 =?iso-8859-1?Q?z5xPUnjo9IfmZeIo+bKd3WxoDKZQGzh9RSakrtf3yxxN3cKOtgZBGtP2as?=
 =?iso-8859-1?Q?l4rz0vZeKVQSX3Y4jJ7+NKeFzXxei6ZxAybzTVnPY+hY1xs5QPEIv53bRa?=
 =?iso-8859-1?Q?CvKq0C4ogcnjTtAuSYkRKQgohyRrZ/vSd9yxx2wUjjw8W3YWPh4H/EKWpJ?=
 =?iso-8859-1?Q?DZIXSAUzcjpwZVT05Nv9UTRsQ90nKTaorpMO3YpVlHexGleyLCXIMmoujD?=
 =?iso-8859-1?Q?Zl8BvnR/m2dpm0rp9K3VIFmNnIKThKTsHxqcntexeIoRQgzz6X8QUaONmt?=
 =?iso-8859-1?Q?2rK3H1ZOo4Lkaa8XTuDbEBoLZmc615RiAU7TaO5UzQpcuhg67z8Ropg3Q7?=
 =?iso-8859-1?Q?caXGICBUntV+znaALojoOTui80fq4Wz6piM47H3+mVS0X2B1NufgBLVxZJ?=
 =?iso-8859-1?Q?Qj3V7t6KpqqQUmFiR5GnXfeZ4/XyPqaPfW7lrqsgaqi4UOtsOXtEWmVghH?=
 =?iso-8859-1?Q?SQDXbQaVcAW/oPfbAWrIFjeJzXeygYHcDSHzPnKgWBZweSlsNCgZqDAF2o?=
 =?iso-8859-1?Q?4IYBDHy2O43QkL15Y5Bwm1pIsWByK347XkR+bIUzHztbapulS1+REORl0O?=
 =?iso-8859-1?Q?XE6Egev/nR2Rl64iWxQQe+MtAs1198BD/apVYU8XFMUHjea3OdLR0SW7pK?=
 =?iso-8859-1?Q?PMN9KSz6H0hdfobFX13iSYXKL7jrpOm/e7UiPC0LOMNQoTc2AhcjP8S8v9?=
 =?iso-8859-1?Q?Y300X04kLrKJQ3uogC1sJ7BGtiU6P20DSpQqNFai+0rM1TfRLxD4pBlu/B?=
 =?iso-8859-1?Q?2VFRkfTR7Q064uIFAgfu7KRl8gxZeRR76dJivqq1oPqBqbWZXAZcmAAund?=
 =?iso-8859-1?Q?BONCGbIhtzQyp7rw3ufN2yKNammI/k2FB4UV4iVz9F4IfumwxJBRZ4wWza?=
 =?iso-8859-1?Q?nxVaUt03rltjrg2WgGqyECHyo16K3EIPlx25nf/xpoj493uHJbeTFqFugm?=
 =?iso-8859-1?Q?/DejQPEsvAYyK7RhB135/YJVRZR4Y21uyW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e432009-e076-44df-af28-08db39d97323
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 15:37:11.3240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4ORYkOr1faVwJiSb6ts/nlm7ms45QXvdRL87DeX82VYl6/812C0eKp6F/LpI4g8bFpH0qdMnFrTNxkMylTDJ7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6295
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 rebased 3/6] drm/i915: Only
 initialize dlk phy lock in display 12 and newer
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 06, 2023 at 07:31:30AM -0700, José Roberto de Souza wrote:
> This spin lock will not be used in older display versions, so no need
> to initialize it.

Should we add some warn_on(disp_ver < 12) on the dkl phy functions?

Anyway:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Cc: intel-gfx@lists.freedesktop.org
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> index 5bce7b5b27bc7..1c5d410b74e5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> @@ -108,5 +108,6 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
>  void
>  intel_dkl_phy_init(struct drm_i915_private *i915)
>  {
> -	spin_lock_init(&i915->display.dkl.phy_lock);
> +	if (DISPLAY_VER(i915) >= 12)
> +		spin_lock_init(&i915->display.dkl.phy_lock);
>  }
> -- 
> 2.40.0
> 
