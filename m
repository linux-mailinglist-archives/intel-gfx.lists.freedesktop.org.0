Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 547E070FABD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 17:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD4789130;
	Wed, 24 May 2023 15:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32BE310E45F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 15:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684943303; x=1716479303;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=EvypB1rMaAIbg2oxqtwhw7Un/hNBsSFJjYM6Xsp3GFM=;
 b=W0rPoXqvBH96tq9f7c5EK6LnvkmzxrWViQk9PWjRW+WuV9+V4BxAyh1X
 bPazi5zP7yhavA/mxZRd+MhN62Vu3rxQqpTQwQ6ViLK7f4qF1OTmsYHzl
 qLFnIwyEjnJSVQh+afQ/BiI3+ozwD00xtk86BzFRThtmSbKjDkDY27WP9
 wTbApa675FYFsRky2S85zxaeeciSGENMCl4uZ6X0PdepmAvVoNdqBW/UU
 /Ly/DgwCvzTIDY/JrPfdRLGXBxrnmhHNbaLyy/RRr+6v1G+fZYqHl9Wes
 0pQan2wBQv4VJyl5IUrRGcE056vIA+uPhoxohCRmipSRKqmrez6+TLGpR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="338182985"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="338182985"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 08:48:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="878697501"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="878697501"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 24 May 2023 08:48:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 08:48:21 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 08:48:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 08:48:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 08:48:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H60cnvO4iKKHQFSRZVk7rG2wc6yZssz//LagwY+hdyVmkFyhXpYAH9BPSZbk+EHCrEUJ60VJpkr4OtjNz4G1M/cq2zmPHbQvmFM/9dsTZp+kTWy1jhzmATZS0GwYkOFdFrfy9M89/jn/LQpxsugDi+4edG4Mu2bCnVPwIy/UV2JOSqSITRtsQWXv1WBzgqPnBy8CvB8OmiTIhhgusWpHu/SqZP26ZwIxsSi8QHT/VNC/BIL2xqDDIKys7XgPSYzCFcFMibAxNRtLfitImHfowtD4d6cC7stZ4GyGjrfQhAdlUA+Az381xWe5mwLn+wdTw3jm85GMHew4Asu0HG2r2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+i7WxYqw9Y1sotJnUQXJPPMAKdO4JeXAr0nDgCJCzM=;
 b=bJvTvfUQzWt/kWtWhq1wzv6vyUx6X1wYPeoyu/pWvhnbiSEETz0zZRNVfDUwNS9hJs0+XUBw6WjgnWw+TIxTjMgJSJyel9CL9JvZMxUXqCMT0EeYYCFNVEaNr8TKmzcfbuwSuESFtzomc4DY3Eyjj02u9WkkfnrZQK7H/H9ZGSa2VLCpe/cjLI9hrtIXbwR1BRyifuPK9hgO7pagedSPJgjr427vqRzP8zryAxJbgEmgPBai1dU9edEzD5Rj7MGjmEKeTnQH8xtxh01tV2cGse6ylwdr7A7chhEkeKvIkLJs7b5QvWDURVmrPNXwqsxgnNlpKoOOfH1jz84gNIuXLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by SA1PR11MB8395.namprd11.prod.outlook.com (2603:10b6:806:38c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Wed, 24 May
 2023 15:48:19 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::e15f:6c7a:7fd1:d63a]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::e15f:6c7a:7fd1:d63a%7]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 15:48:19 +0000
Date: Wed, 24 May 2023 08:48:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <3glsg3b2nmdtzb3yijhijr2gjkwb7oaih4pwl5qiry2qrjvc3s@qk2upnfz4fjd>
X-Patchwork-Hint: comment
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
 <20230511165534.10266-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230511165534.10266-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0051.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::26) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6135:EE_|SA1PR11MB8395:EE_
X-MS-Office365-Filtering-Correlation-Id: 89e654ac-a3e6-453c-2332-08db5c6e4ba2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RmowX9fkXV7HlATjLMSDARDvGUxiRLwbnFL0nnbBq+DfXuWFMvm1utm4D93UHSYUEW6RPjp/rX1aTfLsGYP5xVM4NEntk3HNakUiEv+3un0T/T5CxWiU2aMR4nkVwq9bFLXlIm5/kDy5EPc3c+jcrjLNavzYpxbApGUDEoMpKpfGjLDXHj+QCxy6smr5NH5Xx/iKgDK961WaoJYTN+cYO+lQbmOcEFFoVPzv/691hZctFY+u1/IRmYvyacbmMVOhNPpod3fl+ursqQRWNCUvPNZmr5Xp+lczhGug1MKtsBfWDj83X24LXwjUJodiEpDB+szZfj3sSPieT4cJV4/C1Ch4LjJPGcvCdA1nOBWeyXIW/6/hiaPrgmiG20qRhieRVWMVgAodl0JUuDUOZEL/BrqayqfNFrrepFSX5+xGgSmruGhgk7daohWVqytdXEw4+1iLiqEOtTgwakSWGQ+Jxpvh28/Dt9YEtPl/lhaOe9McXphEBLskKnZYjCSBNn119NCGTbzpE8f3Ikh4KquRLN7VVDL60djVuj/5wfgaiWlseCWjC05iMU11ShwXj9L8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(366004)(346002)(376002)(39860400002)(136003)(451199021)(33716001)(6916009)(66946007)(66556008)(66476007)(4326008)(6486002)(41300700001)(6666004)(316002)(5660300002)(8936002)(8676002)(478600001)(86362001)(38100700002)(26005)(9686003)(6506007)(82960400001)(6512007)(186003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Z7qmUXLUT2vyeHT5lGqXeogFC9sN0qSZXh8JjBxs/YMNdMd6XiNqYdkGFq?=
 =?iso-8859-1?Q?p8LEEGpZ6ZNaycZzA64pYq3iG5TzsuRlIchmPHm1mkO7u44XFTgWVCfucJ?=
 =?iso-8859-1?Q?G0+mD7lpf3VaOlhY2TbrQXpChKWdgGRGqFtE6ZuSyT+nkEW/Xwf0kqmfXe?=
 =?iso-8859-1?Q?aGYLkOtzsIQ0zLPBwVsCO0EQWRTN4RS3FvwUOLQSI4Ab8d1SqRG5FGnpGa?=
 =?iso-8859-1?Q?FyON3GMsrDtYiTLHzXDuscJqPheYY53lUe/uylQEYBMeSApraoxLVqUdYn?=
 =?iso-8859-1?Q?Dy8bKresf5vxSpOCJSzrstqNGHcSoDFuEoOrUgmuAHDM9NHSLF88jRbuTw?=
 =?iso-8859-1?Q?cZaBucahT4PZWQxX9rFHYsTCaAoX6Uai125hjK3HYWJTcFQzysfnxl0+yA?=
 =?iso-8859-1?Q?Xdf/Yvj4ryS/Htt1Ys6io37fhvq1PPyq1k0so25PkXnkENOrfnw0xbSdME?=
 =?iso-8859-1?Q?InDAIvUEytBEmrKNaRfL8FKRDu9ewXItZiVO4G8Klqzk6W3GKoqNmFPFbs?=
 =?iso-8859-1?Q?sxAU5FGAq7PUMEP1TUSmdt2891iY4eErSnI1JyUnS2kaeP/Hbx0ljMnxhx?=
 =?iso-8859-1?Q?5t0KVlpxuwxvJaMOwBNUuP9bkufudQWwikuhnbzKuTvUSlFS5JyViuAkzq?=
 =?iso-8859-1?Q?Aa2Bw1JY0NAo9ENv0dOVf1Cl/JQUM8XhBpn5yP+4WPJeHYgzdlAPGVChvM?=
 =?iso-8859-1?Q?IvPFf+rF28BU8YzWPOrG5AkWu62rCFEyjrMNuBGtuZFC9DOJ4yLfylAWIH?=
 =?iso-8859-1?Q?WXW5mEzC/wbC+iTB5TJbivshQ+os29xkTewyXX57mePuCt1f+GbkbF7epE?=
 =?iso-8859-1?Q?wYyG2RgxoH2/GAP3bwOhGTFO2CizFRFHWM4ST9kwpRHlPRQN6lV9noExGT?=
 =?iso-8859-1?Q?bTLQTgkFHCid7WK//gGGAsSbtGHSBWf5K0qJvgDuF92PI/sCND/I9eVub7?=
 =?iso-8859-1?Q?pm+xa66Qoz4EQqOgvPUHb2pbL70ZyWgChD5ztwf2XCsHZhIJeB3WElhguy?=
 =?iso-8859-1?Q?0OYf4Guob1Vt0S5K9ijA3N25p2MbFATiaMfCwzTvUeFW2Rz2BofMdebtyk?=
 =?iso-8859-1?Q?+xRJwo3cjuIfaOu0/b7doqFs7VvljQpswq+VImsV1Oqg+vcwP4xHocVo/J?=
 =?iso-8859-1?Q?fklpsC5oR27Eb+X5VD9E5OyjYIPLJmcKOsvJp9lnNUHu0CoZXebpl9h08K?=
 =?iso-8859-1?Q?7brIZFiNPgT1pk8mLM4S0gaO8VhdoDUGJK45hbIY0EpOdvsyFJlKSBl3LW?=
 =?iso-8859-1?Q?uX2fK0smQ6f2tLFKuvnoKBAqceB0NAzsp7BFQv1HHB9Lm/KL81gr0cyyd1?=
 =?iso-8859-1?Q?sF3dPHsewQdmeCzWicVFjSZ0S+UPcc5hK+x0xdmXLON3gVuK+Tq/wUK5yk?=
 =?iso-8859-1?Q?XyjRpv3hxHt9GyUnn07RS5RVFQMU13rCNA7/UhnhYtN/BwlrmCH/L7GpOW?=
 =?iso-8859-1?Q?3GQ+zvxkU7Yf7ZqrDbN+i1XhLxnigFV4Hp0vOXGUsmfrNAupa1ODOcIzAt?=
 =?iso-8859-1?Q?zofE7ez1mMQPWcFqQPQyrFkTSsHCkw5Nf7ydImvRPPqsv07U8fsKZM4kNg?=
 =?iso-8859-1?Q?ennx9cON1OusXhHtm1981xfVBU+FplJeun16BIum2X00JjyYEwxm2AUSXG?=
 =?iso-8859-1?Q?Nw+5kqPOARU53vUcg/2Y3YlQn8T1ZrhjLKQXwDBFQc7+LZSqLpw/V3EA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e654ac-a3e6-453c-2332-08db5c6e4ba2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2023 15:48:19.1630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RBJNI+Ci1UxcVGmGZ57sWaPbZ7eeSYGU63vwWnRZHShBOA+G2HAJdd7STAVlDa9vdZWgYxi+zw8a1jkUg0SP4W5EzF140oaITtkYB/4SZp8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8395
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Assert that device info
 bitmasks have enough bits
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

On Thu, May 11, 2023 at 07:55:30PM +0300, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>Sprinkle in some BUILD_BUG_ON()s to make sure some of
>the bitmasks used in the device info have enough bits.
>
>Do we have a better place for this sort of stuff?

it's being moved to display/, so I'd say the intel_display_device_info.c
is a better place. What about using a static_assert() and leave them
near the top of the file?

Lucas De Marchi

>
>Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/intel_device_info.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index bb10e8e78a94..ce257446b712 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -414,6 +414,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
> 	enum pipe pipe;
>
>+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->pipe_mask) < I915_MAX_PIPES);
>+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
>+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->port_mask) < I915_MAX_PORTS);
>+
> 	/* Wa_14011765242: adl-s A0,A1 */
> 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
> 		for_each_pipe(dev_priv, pipe)
>-- 
>2.39.3
>
