Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C275B6C4C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 13:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D13A10E6A0;
	Tue, 13 Sep 2022 11:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D0110E6A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 11:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663068002; x=1694604002;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=3qANgYlEXuFTb6ejQyaXcbcP+3Y5rziy5nGnDxZQDmk=;
 b=lP81vH5nWFqQzJKjBDdes7+x3CoULkxWI2+z6wzYhWlYobe0S3B3UlRO
 Q1IZzg0GhLTycIlZDxm2/n/ydu6RrfMyxGY4agTDOA1NBSHS5myR/z/SG
 q54J0HsZdd3qRvj+dFVgj3DdTwUpku5D8N4z1IKyXlQcOV5RfEqnygfkW
 QS2/lWTc5/qnw2FgD018NesaHypoBpK4KzyHlh0nRDOzYpTfgmDZoS77a
 X7QyJ+e6kaUREbrA+NTLQHZ1UFBLVP2++DwoeBSKVXR62Sfmj+2aLi/u3
 2uKjvlj852Cp95zQ8oVvHD+wHATNHjZjjDVVH/wbopJ5lcUs2l6nPCa+6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="299449694"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="299449694"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 04:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="646890322"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 13 Sep 2022 04:19:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 04:19:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 04:19:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 04:19:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 04:19:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jxYkzoeqd6wL3flvvT25NnDTKwNZLkMo3nNny9eqPOfQMNNNDGJ/HImRiiTVD7eeaO5bIv26k5KGCRBjOAlv2o+n1RxtFGuz++cEC6+ooPLj58hbHdeyIgOjdXZ2ZQGp6jUDtglxsxZUNqFZwmPV5uEBUYMFp84GFSTe0si1KexezEr1wy6AnihOOImjc949noXBg7pBMmZjkH0BkBOKKtaLpME+yJstJwh65gOM6Hy4JApr48u5cb7me+ZUlNfkWT1lIuRZRHy5Za/WFqPMdnl1/ipZsUurWSQyMQcCUYiJiB9SUvcZkZxa7CpaQjUJJf7FAH1WkiKillIxEiGnXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bha497af8DRjV4b6FIUqxt0dqs4JcfYLsdKDTuitjaA=;
 b=l5gi8t5MF+4rhMBWNWB/LShDJDu1HU73EBiHNIrNWsOWo4eRsiRFNmjJ+TM8rEYd21BvqudrennCXDfSUhjxHnwyV4e8QCP5LBOyQxTwJunvzMH2ukaLi29Ij8zEuwOaJDpFa38+wXYUldpQu/IQrBYDegPOPRW4UZTgUV22K//vbfwVrS3TJ3Ioz0cJEFl9bjZvUxhefPYb6rlMtRJ38I7J0GHKOXArOxA4xkD+wA7rDfuDRqO1S4GSckFrjLVBsq4rGLZNh0TvxrJ9ljHJDTSl5o1flfe5Tyt8tE+z1o1efUYDZzWpUhRSuIPqO4e/oOuV/h3d6qtwD6L1mfeEhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA0PR11MB4638.namprd11.prod.outlook.com (2603:10b6:806:73::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Tue, 13 Sep
 2022 11:19:49 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d%5]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 11:19:49 +0000
Date: Tue, 13 Sep 2022 08:20:38 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <20220913112038.z6motxauxgemv73l@gjsousa-mobl2>
References: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
 <20220908-if-ladder-v1-3-9949a713ca08@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220908-if-ladder-v1-3-9949a713ca08@intel.com>
X-ClientProxiedBy: BYAPR05CA0081.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::22) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA0PR11MB4638:EE_
X-MS-Office365-Filtering-Correlation-Id: e1d97719-7d23-48e7-ce3c-08da9579df16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mpLqd7e396KqL+kOfc+1nNFXKTT+qRgvikALUIuRmr5XuB8phOpDAse6aTbbjAyGISFN0r4Q7fQVQx/58HkFWmE/+4/Ea8+4RALIp1i1RBT8Hi9k4p9gKVfF35sbDuH6P+JetAbJnb8VYrBmXmcCp+4H8rqBmQVlEKv5x4ZM0biaRYpdr8I4QoLaumkNWwEje6Hn+AzsZytilCuCjV/5nyO1UYpkQPdtnLUBRHJUUEWYnA5duJGAoGhXM9Px4TIVYNW1R9ZyNxTiCpMZL2ofs7HHujYV8U+4fjjQgh2UIkIrzSi1QKMueXf6Wf9joouP6eJRdXLI753B0i/wbS5ZmAlCVKRMZZZCH9tvQ8Zz5fFGiqFo3jLd5LfqWk2l7Kxl7ABNWdJ7zDdHffU2gW0UETuuQdT3LoISvL3iF7/FDh6SzDsaSKzNVfqs1b/WzGfMTn0vm0xRFlHHYCr2MuwjnPGEEHR32yPssh9n7gU/w1WDRNjxadEfF1k0Y07nKLIvVg1kGi1Ye24D+N5daVauN2Ja2oRX0VOCtGt4LffMZhaa5Rm+rrNfQI9e4MmTMFu7UxV3Cb8GYGn0M8LrC+EXNaSmUUbMvEApl9L2TO1puTJCadAvRuwA8v8PMxGiEcv5p/uvUmlsszjEmSSXz2qTu67JIHY6qZ5t5100RNSEo8w3r6xlzEwwiv8HuEebLXC9ZGEpb+6m2CqzodalevosAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(366004)(376002)(39860400002)(136003)(396003)(451199015)(8676002)(66476007)(2906002)(86362001)(9686003)(41300700001)(316002)(1076003)(186003)(6486002)(6506007)(6512007)(82960400001)(26005)(5660300002)(66946007)(44832011)(8936002)(33716001)(478600001)(66556008)(6666004)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CXVLi0rlSoJdDN2yQVjzZcoX7IkapIWhpnERBHW6n2GBBDA7D7O7VyyeGJ3h?=
 =?us-ascii?Q?yyUxmhujiu5ehBSqXn9YpCmzBKRfnnVQEPfNnDyaUWOMQSWb7ICwXhRVINcg?=
 =?us-ascii?Q?7zJlq6a98VZbd2HmvsDsKAL4hKu36F0GiJPV+oaBhxZXZowlVmgAXesLtYuh?=
 =?us-ascii?Q?/rEd57IjXQYK3LJ4p+VhOq/Ot9KTXlVlHgEEyaohVzOrovV+/X592mUhFF3i?=
 =?us-ascii?Q?xWWPKsd6dt5U6K6gBuNyjJ9W3wOgqXwBfMFvON/EOZAo4KdpZQEZ1tTzy1Yx?=
 =?us-ascii?Q?YW5XQ6wDd10rj9hiNy7bsCyhJ+aBlOABTZxx3Y448XYhRGMKkdRxekItohsN?=
 =?us-ascii?Q?8SFV8NNgy2IcvVVjBSkjw0+zE48bjFaT+LVBIhTvFyYskKWHLBAsFw67abmq?=
 =?us-ascii?Q?pxw5QBG8QL0d1fWQV34CKwiJ3vk5CJqC5hhhQbUX+EajlOMPAL1YLZSIair1?=
 =?us-ascii?Q?U2yL5xHtn7ZuDegSOU7cVnabL7smUI4hh23He5ngJ92QGasDYOZmmYwEn47U?=
 =?us-ascii?Q?pkYCBHncx/rE28E6eSBKtMwE7fYhvbEYis3YevdHs/sgqXi7MRyUtSyOsw1L?=
 =?us-ascii?Q?ao03T+NMoc1SEebAPi9UgU2QYiGPLGqU68fCS/BwNhTaYplDTcXyTRELm0JL?=
 =?us-ascii?Q?0VvVWs89Veme4bFoWcIRhKnX8xDui9JC43sppEWfBQV3EtEwnWqT3pVJNaMZ?=
 =?us-ascii?Q?Gt1nZwGc501CcIQJN1o8l3TQ5gyxDmfI7U6Ft4YHwTS3ZsShOxDbwyJYitU4?=
 =?us-ascii?Q?jDIfMEAOFQJL8ZnTVg3TMEcsTAF3lWOT54aoQqIL0P8a6p5XPrImMqa0xvkE?=
 =?us-ascii?Q?85nH1UWNuoA/zT4/jJxLgDKzsfydCc/PPAkOA60B+VhXJLiB//pCiJckhMuy?=
 =?us-ascii?Q?wpDBjHwCvaEA9uVt15ydjA9rYkqYIStKyAUDu+etK6zbfFP1L1A3cSYFt2nS?=
 =?us-ascii?Q?p6wJC8W0Szo0wWP+xShAR3X322SokrsZLc6y3mUNUswzTItG44V7ETSUH3AW?=
 =?us-ascii?Q?zjrSi1QpKrtMVaRt5tS81ISufOFp0gzFo/rlRzQtey+MCgxFfJM8nyBtqLMH?=
 =?us-ascii?Q?C4MToYilE1I1OzOlJbO2fHgXk9/D8da8UAcSqQNnwBd5fNDX+8zse4yFN2zw?=
 =?us-ascii?Q?l/VQ38EaLN3T0s2EQNR+fuI5iyhdxI6NV/uhtPb+deUD+khwoVripxs8zz/z?=
 =?us-ascii?Q?FeQTEkG+7kB+ghM77XC1XjghEwNzKfGvyyRa8VFOnWTTr69/I7cqjxO+Dtf2?=
 =?us-ascii?Q?Idgg41L/0L39E5htRjxSwRNqckkZYXvhgXTGz2qtleTd6d4rZzI+sGDqDbXg?=
 =?us-ascii?Q?WJ9SImwOCT1zx/MdiSmmbC49dOKuq47xP/R2rWq8pWVhUMV7Bg+QyTRYUy72?=
 =?us-ascii?Q?TMt3xnpJoueQO8n75tcHLlGbzPj70T0BtFgY7Bj0NNEbndRyhW7pWLxK/QMO?=
 =?us-ascii?Q?s17fHHNrmpbExDCYqPJgGTWfrZ1Bp/jLbgI5b2SlKDkt8nFaLtElFqHwzRht?=
 =?us-ascii?Q?W6DVo5lbhXLk7Pyhthr8gCtwCzq5SQX5Aj8f58aFICrbK6o5cavAbNvHa07R?=
 =?us-ascii?Q?EEMU0DfqT4vfbByyemZEqgcqpGsjFU7kzspjVeTZc1STohEzlYHTo96eZ6F9?=
 =?us-ascii?Q?gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d97719-7d23-48e7-ce3c-08da9579df16
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 11:19:49.4147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzCSFrT/rItGajEqb8PldnYPlQywE0jKpaioLaEXTPg31PANjSRl4qEgkKjkQ5kGwBajmCAlFbgm+WN7K0jazA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4638
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 3/3] drm/i915: Invert if/else ladder for
 stolen init
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

On Thu, Sep 08, 2022 at 01:08:16PM -0700, Lucas De Marchi wrote:
> Continue converting the driver to the convention of last version first,
> extending it to the future platforms. Now, any GRAPHICS_VER >= 11 will
> be handled by the first branch.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 4f4c9461a23b..acc561c0f0aa 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -430,48 +430,29 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
>  	reserved_base = stolen_top;
>  	reserved_size = 0;
>  
> -	switch (GRAPHICS_VER(i915)) {
> -	case 2:
> -	case 3:
> -		break;
> -	case 4:
> -		if (!IS_G4X(i915))
> -			break;
> -		fallthrough;
> -	case 5:
> -		g4x_get_stolen_reserved(i915, uncore,
> +	if (GRAPHICS_VER(i915) >= 11) {
> +		icl_get_stolen_reserved(i915, uncore,
>  					&reserved_base, &reserved_size);
> -		break;
> -	case 6:
> -		gen6_get_stolen_reserved(i915, uncore,
> -					 &reserved_base, &reserved_size);
> -		break;
> -	case 7:
> -		if (IS_VALLEYVIEW(i915))
> -			vlv_get_stolen_reserved(i915, uncore,
> -						&reserved_base, &reserved_size);
> -		else
> -			gen7_get_stolen_reserved(i915, uncore,
> -						 &reserved_base, &reserved_size);
> -		break;
> -	case 8:
> -	case 9:
> +	} else if (GRAPHICS_VER(i915) >= 8) {
>  		if (IS_LP(i915))
>  			chv_get_stolen_reserved(i915, uncore,
>  						&reserved_base, &reserved_size);
>  		else
>  			bdw_get_stolen_reserved(i915, uncore,
>  						&reserved_base, &reserved_size);
> -		break;
> -	default:
> -		MISSING_CASE(GRAPHICS_VER(i915));
> -		fallthrough;
> -	case 11:
> -	case 12:
> -		icl_get_stolen_reserved(i915, uncore,
> -					&reserved_base,
> -					&reserved_size);
> -		break;
> +	} else if (GRAPHICS_VER(i915) >= 7) {
> +		if (IS_VALLEYVIEW(i915))
> +			vlv_get_stolen_reserved(i915, uncore,
> +						&reserved_base, &reserved_size);
> +		else
> +			gen7_get_stolen_reserved(i915, uncore,
> +						 &reserved_base, &reserved_size);
> +	} else if (GRAPHICS_VER(i915) >= 6) {
> +		gen6_get_stolen_reserved(i915, uncore,
> +					 &reserved_base, &reserved_size);
> +	} else if (GRAPHICS_VER(i915) >= 5 || IS_G4X(i915)) {
> +		g4x_get_stolen_reserved(i915, uncore,
> +					&reserved_base, &reserved_size);
>  	}
>  
>  	/*
> 
> -- 
> b4 0.10.0-dev-df873
