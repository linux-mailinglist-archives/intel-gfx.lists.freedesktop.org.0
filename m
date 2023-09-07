Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F653797D6E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 22:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6712110E09F;
	Thu,  7 Sep 2023 20:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32D8D10E09F;
 Thu,  7 Sep 2023 20:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694118929; x=1725654929;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Vw5ca05Uhg8ERZDJnBdWXwKr1Lp+j93x4wvJdrahCoM=;
 b=iHuWDywl7zLwsfux+PMXo/wNTPIDmQL5lfqu5L4TNhVIgu3PIBn2vxmS
 URsUFaNmJH41uzff+sYTUXLVhyfA+mQWB40HEJ2XY62VnLv6tCxZITl+y
 U60/UIgi2YpL0u1VstCe9Ug4y4xbZ7Bc6tgCvkNGOIHdTZB0wy4kkatfc
 tN/iqoe+gM6C1Jn7AnJcyfEMwY4Mw+Ao5R+XUXYkt/rNou8kZXJSo461K
 DhovcpSGag3d3494GdzCTrShmGJkH+ckbz4MNW2MlQMsowiSdsej86cEO
 yxPoTv2XUg42fz/zd7HFDGtRSz5LWIpgkWQcPBBINY0Pkg6ygz/udaWFQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="443886462"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="443886462"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 13:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="885344455"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="885344455"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 13:35:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 13:35:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 13:35:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 13:35:27 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 13:35:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oa9yUfYNz/Y61p0+l1b58wuqXPlqRWe1ahtGywEuu+SBCCMtsSvHcYnaGNDu6AKjnZq2i/c4GE2/seCk/IJQcNjRd+Kthz1byTfxk0TgyGCy1nEPgBa0yEws7hBx5mF45c1chq2Y8Z6WG77ordyqZ5Cz3cjcXE6jqUB+zT+3MTMbhosBKkNNhCCEFJu0/M5fe7wqL1dbE3GCCOhrYS6KdOxOYWEi09T5/BlikjZLPw50tvslqQPSMUYbp/Oxzf9oFN8rFA5z1HWj9A9/M2gEBQXNsfmWst9UidNsfIrKMeRW/PoafafCJ/amifFv4GpkudqhaspBuW0d1LrJ4QmGTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CTt2usAhAEvD0iMy0IHd22D8FILPvgUNoqJZ3+kRCAk=;
 b=lRF7ku35l8Oij6NUHmcugX5tmNd9BPjIoWjnOKwSyqATuUKpSJdZw+f9JqZPYawqN02j9qKmdvfEqFaH/aMqg4AZscgdEvXrmyPQTQ6rPyl77tKebSQwWrgiZ7uB2gQuPxfb43tDz7/j9AQ/3xk1jk1Z/EEj6qINKr66pywSMzOlBj1wQK5NNMn/DhGrVGbSopr9aFWJAjdM0KNLP9k1nCO+B0E2aQDaIcKpIkTScao4ZT9tfvJrcbhbwXbFngAbqr2ozpKbersXyre/qr+OsSwAitr7kaEs8OQUuWICqg12zNZfQjmIeQ5PYSeGQPUvF78W7K45JObgRfUNNkTfIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ1PR11MB6201.namprd11.prod.outlook.com (2603:10b6:a03:45c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Thu, 7 Sep
 2023 20:35:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 20:35:24 +0000
Date: Thu, 7 Sep 2023 15:35:21 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <5b7janzcwpckrxdaobgcswy6g2q6g3dw2bn7yde4mwrw6mxjaf@43j2einujdrk>
X-Patchwork-Hint: comment
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-2-lucas.demarchi@intel.com>
 <20230907160403.GI2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230907160403.GI2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR05CA0085.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ1PR11MB6201:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a26a64f-a666-4d7e-efee-08dbafe1f6b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: II7Cd18xgFjRXHhFQ1VF1acwrsRINKnUagLsjBRWcRUpVZ391pjPapFb34amFJDCWo6wCnZ1S+/WMVradnaz+lhDxuMft7cBEO23QYMVNvZirRlu2CZFNaqxnaq1F5DQLg9CpFhCAxD5LuMg5Z1UuNUrrW3/8TUR/Nw/Ew1VOutmYKUD/M6RsUd4EZVPxgv5Kl7g7wn8n5YCt5AkdoPcoIjS9+hp570xOZXUD/LIo0RoJdA9S6HeHeis1uOJA3SPZqlHIDcQ+PhUL9+KCr89EEhih1nITAUMGwmPg+VGkuA1oCZNaka9fdQsQJowWU8irpWd8GtjAkylP22yAUQCqYeIu9dK9uKw1xLafd4Z+WhHUJ3xDrL9L/5S2SmQ0eGlIrptEQ4wUdkMio03NNHJwLullOHVINbeSIKtNHBpBU4QAiDqjpFdYwij0E4zE255dyoCs5nIz1QSV7lvHF0CypODmtKsqqhyKBxy1KZqPwlXj6pSRYy7ZX8aLyi3Qp5xP3Cw+uzIJf1lSOifHTWmqGRE8E4t63S2dstP9FSBLmSCNygLovpqU8QXQg6EhtA6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(396003)(376002)(136003)(346002)(39860400002)(1800799009)(451199024)(186009)(38100700002)(82960400001)(33716001)(86362001)(316002)(6666004)(5660300002)(26005)(66946007)(66476007)(6636002)(6512007)(9686003)(4326008)(66556008)(478600001)(6862004)(450100002)(8936002)(41300700001)(8676002)(6506007)(2906002)(4744005)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q/kbzggcjAHZ+XIPbGj8Gsja+lOa+7lEyuaXdoODQ1ERjVer5xfGiQqLcE/3?=
 =?us-ascii?Q?le3lSjiOFGxVSF46yRZbGWaPCPdUEHU8sVzhF4OB+tm+UeJbmMLq0mZ4t4Ti?=
 =?us-ascii?Q?t/9G4NBKcOyKi06UhKiLIyxr/ZlAW7kDoqsaghGTlnSCyMekMwkxA9LLBH6J?=
 =?us-ascii?Q?2/yDcBFqZu3s+ngStNnJUgTLBYNhjn5tsG4yJnTXlP3wEZ8OYEX49mWqvSl5?=
 =?us-ascii?Q?uVapKpyvSjVegbU2MiqAxm44Rn/y/CkFXxDg0YjFzTna+QJLScoghC22IKsW?=
 =?us-ascii?Q?e0bQV74cYLWvvR42b+MCD6RgEgzPgJVk4nhxfaPEmE+Ju9KwJMnzyaMsQmuG?=
 =?us-ascii?Q?Yo9kyPTgkLGYtTO19IqVu0AQr4UhVAJeXs3nD72r43pXIte7Rq9vbW1XZdEn?=
 =?us-ascii?Q?VA4Zgyybj9Xz/5dgryRQDfTNDLnKtRblDtTuWn8FFsByVOKO61xZjhWFrZG/?=
 =?us-ascii?Q?GyZDFtbOfHeNXxFGLr/qfaLjHRVGXwg9+rNDotXT4op/Drbe7SkaAgheHc2Q?=
 =?us-ascii?Q?C8qrO0wAp1XOnrQw6XCKPI79gqHaqwnp4Q7qKY/OJwK+U3hBbjO00y9wVWHM?=
 =?us-ascii?Q?8HPJ8shHy1TyxKvimzEd+aUltXma/9C93DCWhNuI0ff7H0p7SQyWTNvzSgd4?=
 =?us-ascii?Q?1dluHEXz7h6Gkr1+Io8n9/jhlD1sebZ1sVKpREmuNV08OZRJnyBj5wE+MKJd?=
 =?us-ascii?Q?5dTZSqIy5vEXIMHl5SgiOmN/BlZwYFFLZDMERofLZealIrRjmoM5JXyUcfR2?=
 =?us-ascii?Q?0rI0ZD5CeFTHrxbURQo17fH7sayGcxQ24zUfNyMUG6CBF/vIgbpr5CIhfQZ4?=
 =?us-ascii?Q?tM6WP/8+bQcz7h/GH0UPEV4/FQYM9EmOtNA+HzOT0DTKoHfyxNYJ1GCU72HB?=
 =?us-ascii?Q?Y+596ym+PFF4+fE6Uz+HJ7pZIiEsKMEAx2l5dPT4o6UaJi5wZxikDvIifhZ8?=
 =?us-ascii?Q?U0mkUVHcaARsTVSD8X2dw+SNKKkNM2ZCKcC0Lbl5q9YhOyGbN81rzb83P4LH?=
 =?us-ascii?Q?ZDfVNoYCg0GsJ0Z0OKX8TJYdcj8F/gkcyeVor4GXa3uWRl0dIPDb7wCiFgfV?=
 =?us-ascii?Q?uaKhn8WYCTxI1ejbzvbPFCdhGFCLG2LC7Dq30hk+qe3wX+9c2oUhyCza/Z2i?=
 =?us-ascii?Q?ICNulxmz+dac1IzrDtt9TTHDmPZ6ZQGFhGLA6xOVkJ2E2k/9GLiou72jUKOl?=
 =?us-ascii?Q?LoeWKFaMF+rtBl3kUqrAFKnxF7pvLqMFQYUNxYz2zNuLj/OYyHLBE2ynVYWA?=
 =?us-ascii?Q?hu4zUzTewczXpuhdX8SyTJm+R/EyCAtrU8ATTASC4/8Jo5ysjlQ5pNUzApUp?=
 =?us-ascii?Q?Bmn5h9pSI1BWQkJlCg2ynfr+vLI6eWBpTbS53v3UZ5Y8VjL6Tb5V+bcgMeiB?=
 =?us-ascii?Q?A17LBUNTI5Q4gEb1/O5pefg2SL5aaFp1sfeCJgB3lEZAjDZDKVlbjLrg7Uvu?=
 =?us-ascii?Q?0k/ECf6Qg3Y1NRS5QP+YlgmhbVTi1EqddHD1e5n6X9BxoiOgj/u530pMIYhG?=
 =?us-ascii?Q?t8OH8605BgzEE0O47AislJGoUx+QUKRVv5FfSCdkMG8PWsa1R8EcOHTLtAzW?=
 =?us-ascii?Q?WCOPhTXM0l+Rdmvr8PI86F/+aFiIhMj2MX21wggKhVi67twOpQ/V96TDvO0w?=
 =?us-ascii?Q?Qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a26a64f-a666-4d7e-efee-08dbafe1f6b6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 20:35:24.6302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xIv7sVcZALO0W7wN+m+jq/mcU+rL73xkv66P9JOb4r3vUo7QTenl6Ec8RVkkQlqlefrspcPX9zfAwwbM1fFFHzesZ85yku4b2wVNeq+V23A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6201
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 01/27] drm/i915/xelpdp: Add
 XE_LPDP_FEATURES
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

On Thu, Sep 07, 2023 at 09:04:03AM -0700, Matt Roper wrote:
>On Thu, Sep 07, 2023 at 08:37:31AM -0700, Lucas De Marchi wrote:
>> Add a FEATURES macro for XE_LPD+ as this is expected to be the baseline
>> for Xe2_LPD and will allow to see the delta more easily.
>
>Would it be simpler to do
>
>        #define XE_LPDP_FEATURES \
>                XE_LPD_FEATURES \
>                /* additional deltas */
>
>so that it's more obvious what the deltas between Xe_LPD -> Xe_LPD+ are
>too?


remember the nightmare we had in i915 with multiple inheritance? In the
end we settled to have just one level - the struct has 1 _FEATURES and
overrides or set new fields. A _FEATURES is always the root, without
inheriting from others.

It may be more verbose, but it's easier to look for "is x enabled in
this platform?"

Lucas De Marchi
