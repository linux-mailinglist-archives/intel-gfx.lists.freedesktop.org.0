Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 748537C56BC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:25:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD42610E1E9;
	Wed, 11 Oct 2023 14:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19CF510E884
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034299; x=1728570299;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WIjJ/GZrKl7od7CO07wSo6fAK0Jr5n5+3SoiLzkjOkk=;
 b=WiXFA7akngU0ssaMvu5SQIf7kT/bA/xu1gwefF9+9hqzImrJT6Q5VNVi
 a5W0tSSShoWG+VyGOuN97yH4gBsfSlQO/UyE8BltEeFeh/5lP/9YRVT9r
 V1C9JEtCtZv+JWTbQGPP90VHJ0nZ5foYD1xVQDlB5kr0dRlaXYh16wKTT
 LDf1uyD8ghog2CmXw7Z2HyTOZIg+K/lgEcTY238EbcmxpBiDcV7K/RDVN
 eoLJROfO7YMYpBEp/h9ngYDZeBb5/SlfZBtHriQ3oE9gi4/7Q1k3sJsvI
 hNTnREFQmjtynnviQTcG9ThBVV0GJEU9L7/xPl6gNuc8ljPvrbCTFcniU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="388539909"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="388539909"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="870162396"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="870162396"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 07:24:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 07:24:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 07:24:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 07:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XWBj2n54fdpfsBsfwnToL8lltjNsNu9tgMmh1P1TuDV0T+rlNK52VsRFlKyejH5ohAwpBqft0wCIQ2TVE4gaBYHXs1fQOHnrsvp/C8bbvj/tHMx+KpUV5k4jot00zSrF+pLfyGcyrJ7nMw4y3tgcwLm6sjHFfefhxOn4N33GTQRjj8URklmtZVYfmJMnFtWpJLq5Zj9usfbodNONGbhut5u+6tUE8fuxOrZQbEnnpnfZNiZsyEZlAIDx+OWkPfbrnJW4gBTZCZm7pJ9WPTq0pnytoauPbCf+GeJeMM1GgToftcz+VVe8UUKHS5GsSeQ79Pab5Vmq2WrklOJq+eFrHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3j7jmQONVAXPsrQfGz2uJ8nDOmylrMwL4MQxdPFc0Y4=;
 b=FA7UUqwjrghCDYw47qo2nHqLMyuQb5YXOCj8CFlX/Q92iixg+TeSWZIYR1nu6dMsTutqsY9W4hRz8cZmkDq960y6p7zXakqg64/Umn4/rMCdCDq3S+42Vtv1NAIMpq0lNcD8+/Z3md8j6NAJVmRVLU5Q584eMtIye22Kktq5nFbhWevXYYKY2n95WtOsaoUaG1ATgmE5hePok7zKWDc7iy3OYPPxaADV7nqykJM1i96j8ddBdPnZBVeM79CdLyqoz28lqGigRKlMXdxdETXdE6cbamt+7Z4pNoLZc4yLznfm/C8sG6yVZT1JoWZwrsVodW838J+cavaGQFW0DKMJcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB7714.namprd11.prod.outlook.com (2603:10b6:a03:4fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 14:24:37 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 14:24:37 +0000
Date: Wed, 11 Oct 2023 07:24:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20231011142434.GJ5757@mdroper-desk1.amr.corp.intel.com>
References: <20231011080039.2781048-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231011080039.2781048-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: SJ0PR13CA0092.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::7) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB7714:EE_
X-MS-Office365-Filtering-Correlation-Id: 82ade969-efc9-4aa0-6f2e-08dbca65cc4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 83SEhvzOCHZ6+z4iJaaR86Q56HWXsVUQd/F/lJn8NycXDdn5c2hxQbIv0M/BZURYib19AnB59Ur8Lry5vBOX9QOtzlS0Xgk6hhOhwx12BrymxANxfFtnqDapcU4xaURj4O3tTOzmtDKqEC14xxXD7pXa5Pe6Y9yr7+vMwXANNi158Kzz+GFsHwBr/8sfEjfpF+x5Q83jIOD2MZNfmHIP2fZWV6W5r82nJjknhy7yYduCBoGAYFqM7vbxSeDtAHpXZ00/FMxpKq9HZkK7w1b9+AXAfpqNNC9Lmd3U/ptFL1TLCkfX6ZIb8gQAw8FIw91YMt9P6zFxP4EHDjeFFlH+RDq/kiqgR8zsiaTQb/iQj78W+RxUkIRnY1Dx+09c+o5OMPN+avVG7o9YQNakVqvWKqxzwORzWBYxE1eXEe/bFo5hs6yhRGefCSPK2uOxCM/gIBN1SWnjUxDwtg8Hu8bUDqqJf2athCerMCxC9r+3j+JSHkogC1LOhJj5+sD2ifBUd+Fmpu94vyx4RPz+W1yzKag7sgDLKEjirSdqmNjUuwfOlo58AMdfHuEPdUx76Zry
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(376002)(346002)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(26005)(1076003)(6486002)(478600001)(6506007)(5660300002)(6512007)(6666004)(86362001)(33656002)(41300700001)(38100700002)(66556008)(66476007)(316002)(6636002)(66946007)(8676002)(4326008)(6862004)(8936002)(82960400001)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6MyLMHZLSCSckFOV8Y5POND4rchy+l5QVEz/G14SLnzkfmUWzswEAO1PV8QO?=
 =?us-ascii?Q?ZT5gRRRmheEWzL8VywvFHo77vamtiYbBg6AhuQ5CXGdPLmZ8V0TYJMSWPIVy?=
 =?us-ascii?Q?wD3aEjIak/YWSTnmcnw5uamva0pLnJ39QKcT4Jv/P9myzSnA2MlG8mZiuP3i?=
 =?us-ascii?Q?EhkqtyNnpMVzvwzyzzn7Qe/rVejsrwjhjj/V0wTQ5xGrVS7paHnd8iE731OS?=
 =?us-ascii?Q?ZkqGwBybuQRevvmmZKE0nUB3fmboNwefzp1oPXifLb0/bZlDEzV9/dzb4uVM?=
 =?us-ascii?Q?Yz7f3/HVbOMEwHIT5EWPAb3Po8K6HWZ5pIWIsTXrsoBHloJfE8L+6twEy7ms?=
 =?us-ascii?Q?u8/TjRTwMVURyUhko++P5iKln493qQhsR0tPe2inJ0FsuI07vgRyto1RGIp0?=
 =?us-ascii?Q?BABJOEn98B7hXHv4WnSaHP08eispKyOgdGmAdKAO+FYLZ5M1sfeGYGRkRWGp?=
 =?us-ascii?Q?WGXskKDV+3L67Z99+rI6H8G99BEy9sthgM9qw2IxiACcXmtJwjdF3s8Frvxk?=
 =?us-ascii?Q?xznWO0ISiivYOq/ozLSVexf3cCFre9lCQqPaJpakFKsFDg18Gz5rp+SLKX1I?=
 =?us-ascii?Q?pSnvWTt/q95ROcj+RQyPvjqsMerx95gPQ4PBWp0anooLCmw4J8GQQ0ARYEsP?=
 =?us-ascii?Q?hGcVN7LfRMVBhXMSNM81V+NkuWpIXkY3MmGoNzMwlX3MULXtSBXXzhq42ETU?=
 =?us-ascii?Q?qcd0Pvj9kcFNHdQbo1tW9y0I/RMCjDw7SyG5MNctWG2cVRWQDNZQfUapMG3a?=
 =?us-ascii?Q?xMGt8a/pE0yji6hxxoqmSxQPpf0XclVubD9gHanbt7heQ6mQG6HS+Lzf6EIY?=
 =?us-ascii?Q?Aa+jAiCDw72FdLnpxnUUtCibkBX02QVMvfCrf+6aLcx4QgJHngQnZzUtlu6h?=
 =?us-ascii?Q?blkConMndpncdqBSSoeM38mJx2lXKuugWqNQmSObBP2T3OTTG+LiBkk0zXTv?=
 =?us-ascii?Q?bR8o9U5jLcS2bbhoG31+Q+vsrMU/TDcPbzLnfajxG2cmUHFaYQckkr6cLNxf?=
 =?us-ascii?Q?eO9Bb81TIhIjl+JCcOiN5Kr6E75U0f91HTalCUvK3rcK/QvVxQvCWnDtpg+8?=
 =?us-ascii?Q?E/+mE09Z1mZtj5qX0t7/jOpxICWLJGf3Iwv/PuiiBJR2VX5eeL9HYHTNdm/7?=
 =?us-ascii?Q?vA2nw1e1K/jbiOyQyW6xfoqb3Dfxq729n3nY0cL6FQIpLbnKFJyqCKsB4UI9?=
 =?us-ascii?Q?32PUv7d/foZvS/DlUYNh2zbDuRvfF1q/MdsTngAtQlfxMIHqU+XA+vGlFkqC?=
 =?us-ascii?Q?LFj7WCtBXIynBxRS8hNZKp2x6Z5rKKhH+tVqqWBC6N9ecNzPUxZzKBsEY3iL?=
 =?us-ascii?Q?ZxBSxPDklSU0DrTMH94VV4JUV72OVozSDK9myZ+9QX4AynexwU1OOJjYgOjX?=
 =?us-ascii?Q?OFgxbt3//MyipjKYSz8tUjBp6lGnbsI+7zzPPBWmaKjxGBDltDbN2Gr0h28G?=
 =?us-ascii?Q?qLHlbGuu0/hJPSvt8gbvWiYruj/3DNI8ck1UFj5j+6QL9bJOooifL4jHm0Q6?=
 =?us-ascii?Q?ToViQLUgAZAaJfyjSuGVNQRS/XYWGf3NRNGM8VKfQSAOroFni3w5xuu267gO?=
 =?us-ascii?Q?N8TLUjtmRyDKo88k9+shC1BxM+jaGWS4ehWffEMFR8HzVptH42XlW6exDPDw?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82ade969-efc9-4aa0-6f2e-08dbca65cc4f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 14:24:37.2547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KDFHhhxZG0SQhgwUHZI4dZ4cwPM1+GaeSOJhob8DBcM4jW9MRAa3xd6r97cGI/DY7opsnbMBdrGeafb7domk1KurD2ymO2Ru+QQW4yQHW0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7714
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add new DG2 PCI IDs
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

On Wed, Oct 11, 2023 at 01:30:39PM +0530, Shekhar Chauhan wrote:
> Add recently added PCI IDs for DG2
> 
> BSpec: 44477
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  include/drm/i915_pciids.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 1256770d3827..1c9ea6ab3eb9 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -718,7 +718,11 @@
>  	INTEL_VGA_DEVICE(0x56A5, info), \
>  	INTEL_VGA_DEVICE(0x56A6, info), \
>  	INTEL_VGA_DEVICE(0x56B0, info), \
> -	INTEL_VGA_DEVICE(0x56B1, info)
> +	INTEL_VGA_DEVICE(0x56B1, info), \
> +	INTEL_VGA_DEVICE(0x56BA, info), \
> +	INTEL_VGA_DEVICE(0x56BB, info), \
> +	INTEL_VGA_DEVICE(0x56BC, info), \
> +	INTEL_VGA_DEVICE(0x56BD, info)
>  
>  #define INTEL_DG2_G12_IDS(info) \
>  	INTEL_VGA_DEVICE(0x5696, info), \
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
