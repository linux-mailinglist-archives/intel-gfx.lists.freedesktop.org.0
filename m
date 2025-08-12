Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916FBB22364
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 11:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8832F10E5D7;
	Tue, 12 Aug 2025 09:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EM3aj/vV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66CA710E5D4;
 Tue, 12 Aug 2025 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754991606; x=1786527606;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=YBJcDxx/KjzlxhlgApINNJC3QWoHa7WqAwUh/807r7Y=;
 b=EM3aj/vVSm/+NuL+l1/a2tuTZM5Yr2+q8vO3w2CwgQrpARLXToDD6HP1
 VxWTw+iu55/3F9fv5VM77MjzV4ckgUdgi5EbH2PofR81ZJ1f8niJz2mT2
 uAQcg+aOMKiW8tzj/3cvyZvjTJFA3AFD9Y1Vrk+8yXtyOGGECawhl2QGu
 b/II3MTukqCqHjPRvgOJNE3VO1WutDVkZHRkZlz0foX/NBQEgc6nZ/Gle
 LSa82pZfbCOAbw5zAsAAwVp6fJ2PwsYOgncKUGh4bL5fPGA/iU92tDnCH
 AuEEAo+bNuyS0p5WCrSy69F3vhlP01fVSSx4r/k21/fFnHU4ac8rWY9B0 A==;
X-CSE-ConnectionGUID: 7JU4wcreS66kq9xydxJCoQ==
X-CSE-MsgGUID: Vm1BomPtQs2DHLUE+231JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57182268"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57182268"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 02:40:05 -0700
X-CSE-ConnectionGUID: f91UkUV2TH+dAvO5GBm1AQ==
X-CSE-MsgGUID: SMYnS4bTTFGBz8yWGEVRAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170371218"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 02:40:05 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 02:40:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 12 Aug 2025 02:40:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.56)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 02:40:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YUxtmNeVCsD0BAqRGLZ2m4GjX+IEQeANsSp/c8RxrPRLxQll+2pWgqt4FDUbnwqNo48CLHC2dUanhIvOnYfQ8a9/mo4K/2NXubDviNdnIQ4ZugND7UlI0LILFXd+vVaJZeeDOaNrZV0otN0NnVXnE1Y4tnep3LDCyuk+RWoTAtJakgdzItr0C7z+HsL3i3Ja1PA/mpV9vUwfHu7l30fjqqAEMyLAE5nqyoF08wT81QgU9pZIc6UWYhEgsYflyOjE8f7MyzMB/wFb0Fv7KjdvDJ5VVcPZzPzrXjmcdkJB/xTh0mmjUaKZrm0PMKOTrtJ4b4xHaYIHf3c1E68jr9V3+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7p244eQcTW9nbu0M2UsOZ0a2GdURsUev0PHZOGVK0o=;
 b=YBHN+Kx5p1U9sR0pgGoVrh6WZeEXSVCs6sp8OqC0Y+3DJLqtpr51zAMAaXGE7NiZVKv4wiV3BZWfmWI4aqN6MufFbdEqEZQO7WgDzEB5w8mxwo2wcw+/ahFPaCf5mmK6O46FDqhZOU05RuoeyIhb2b2kgw1PU3UZRvl8aTnGrjWjT15JlFJ2uiOhwDssh1XYc4Ej1Nhar2qbBBJeOlZRLpr1Xq3yaYQ0+HquImerFbdIBipfaGEaLCDeIy0EYFqnigLVjDVoYowJnANpa9VJvyFrAA5s6gOl+gLtBow59snScW827LP9Ee700Mn6F9KEwMo5aU0I68pC/3RJjeNPsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB5958.namprd11.prod.outlook.com (2603:10b6:510:1e1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Tue, 12 Aug
 2025 09:39:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 09:39:58 +0000
Date: Tue, 12 Aug 2025 12:39:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, Luciano Coelho
 <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Ftc?= =?utf-8?Q?=3A?= Fix
 enabled/disconnected DP-alt sink handling (rev4)
Message-ID: <aJsL5RgVMOaSYYFT@ideak-desk>
References: <20250811080152.906216-1-imre.deak@intel.com>
 <175498373249.229281.1609675058692175984@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175498373249.229281.1609675058692175984@1538d3639d33>
X-ClientProxiedBy: DB6PR0301CA0086.eurprd03.prod.outlook.com
 (2603:10a6:6:30::33) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB5958:EE_
X-MS-Office365-Filtering-Correlation-Id: 0eb9d331-e5d1-487f-6c77-08ddd9843362
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Kay3pCPUvSMMz9QjQJtI1Zaeo1bNmUMsfH+DEHpDJe/v6CYSN0u4JSDpE2Lp?=
 =?us-ascii?Q?VcSuK45DSViBM7Kn8ZkIx/dCAksikjJtiMe64sUc270f1VhJqVyDK4Yk86Tv?=
 =?us-ascii?Q?UGvzVtsNwFUjpsqXWjJdNemWBzg1Veqzb1Ge+WrxqIqxCfwMTxtGmhsAQ2Yc?=
 =?us-ascii?Q?nRLGeNu1AZwwr49Yec3czH3szWPQE+uGe6PV0gXJKBytH+vOjFVzMtiArUFT?=
 =?us-ascii?Q?ij1jTQcH5NLcHrEls98c0ue9ADJI+g+0e118nGAk+SPzMm52A5bi3z+KVsEE?=
 =?us-ascii?Q?4hzHVPHTymO7Yhw2LvaAoQEZ3bUptbfX2jji+Y4X0yX3ngxJv9PW8t6/cYJ1?=
 =?us-ascii?Q?foHNtHZIrjOkVy2mVq9ZYPXd2bKHIASy5VDap/otvGCCga0Bs2T+1/gaFh8p?=
 =?us-ascii?Q?o5bcl+QI7e6kpuKwsbKuvWKvjdFya7uqr+y010HHC57HHKmR57v+wTfANo0u?=
 =?us-ascii?Q?iOdsn8DZBgo+kF5i7g1BmwT+8xVrrfFqzl8xkfOLycfF6CA4uND+07F77d01?=
 =?us-ascii?Q?XPMZeKaIRMMRvpgW5BMa7dtbEmG9mJTZs6req9gjxGJ5cSwe/OiHqly6sKPT?=
 =?us-ascii?Q?uGEm6rEgmkUnzxgzQ7fz4nIZPKprHHXZLR1tcbAbNnkRGe6Q4xY/iNKuoOmH?=
 =?us-ascii?Q?eBgTiHzTW0mh51PHmAIWGmB1SVaTUy4jBRET1ssEAKRwDciErsmIm1p6+kyP?=
 =?us-ascii?Q?PjkznG4maHap+G7YfTUWxKoCva+GxF/iaRgqdXFMzp4zwrtEphv5MadtMjld?=
 =?us-ascii?Q?pI7eaaRxOuTm/6vm4FhW37HAodMpzPhMl2qeZUWHZ9yRUcaqc15LnFgE3reI?=
 =?us-ascii?Q?qOvKy6L3vbms4kiJBt5gXbAJ2IbRCCAYq5CNdvxXNN0NmT12J/IE6U1uK/8o?=
 =?us-ascii?Q?QEsRK2ukQYzSX7pg4XNkQWizBsF0Ppu1I4iRTscSY9LCL0Slq9EmHxer+iFV?=
 =?us-ascii?Q?wAsYs1X8cY34ApYqTnaiiQJv0q7BSAbpJeJq7rhKk1FSofpMb+77lUw5BNpV?=
 =?us-ascii?Q?UXTqeAiBgXlw4KZ3IvbS9YxPdIQ1zdmrSo1AiNDowUjKV/mGZTYJlel+wPHt?=
 =?us-ascii?Q?+dTileBH2P77bOJLFnCnx3xbP4L8R8qwlh197SQpcHOAaaC1rvoTW+Vb1CY2?=
 =?us-ascii?Q?dm02kYlBPCDlR/aO2UhxcSa7iI/gzHskxgz+0xVpCEFbQ6NMjYgGKi6C20T6?=
 =?us-ascii?Q?TnUNua0/ME1zDvriw2AmmKb/HvUeLUPWiU6UTFPXaH8OoQOBFmtAXcZT1Zsn?=
 =?us-ascii?Q?i1j8Uh0CBXlMWtgYZrWgKFYZAOGJ7NVZfzY5QQgK+nsIwJZqS9BrEgAHIFDL?=
 =?us-ascii?Q?L9oJjavWWX74mGiHO1yFSB4LWrcgW0qd/7qwO0U/+FtBmwx2XPQQkDGLcycq?=
 =?us-ascii?Q?J+Z/aYQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6dSuE46STkyrqnMJRbP4qMwLqMrwf4B3cqbxZMSkJGRWMkE0GbDlTwVWFPY+?=
 =?us-ascii?Q?ItZAY8czKCwyblE0K4/qusPmuwgiiXwcOHzSRv6tqZ9Fcn3s/y/gljZ+k4Zy?=
 =?us-ascii?Q?//dEmJNwbJp3DjP0bsR+mvSj5mU9FFJRC7iswgvWOcU5fN++OigXfFNEvqZH?=
 =?us-ascii?Q?ojjV/uVLFid01+WGf2WRazQf+F4vCMmu9iCfqNa31tZtDYY6vPLDYyIgS4aN?=
 =?us-ascii?Q?1yCqXhlJjrHWYDaTgrYJ9+yv54sB5wlRco+dBRMzrB3I5dSOZIFOeHekrwuB?=
 =?us-ascii?Q?Ag55I/bWsBhYbb6VKrrhf6bSP2ZhQpWiiW/alU69N5iWBYdlkGCmzERIJbld?=
 =?us-ascii?Q?dZls4rGeFIbK2POS5jygjzeltVfPDVpbj8ULr1JSSVlzIwbVSl34SpfVAfsh?=
 =?us-ascii?Q?IVAW8Lg6IPKlnjUtxrQrwXuUidK5on95CwAKF2RCHtBkvdIi30+lvr7nX3SH?=
 =?us-ascii?Q?Cpk3ht4lcrbpMX3HpVLAuCVCm4Bw3Vmm+tBVLp3AAnUT2670m8WDC+0gKpvv?=
 =?us-ascii?Q?U/4PZtKJXHThHbDbMJjREKvCGUYkt9SPOgkL3ojYtVywMxQbRugm09sDhAdK?=
 =?us-ascii?Q?wNN+1LPku4QWmG/dEIWqn1MxwwReBLn3ZgAsWPOQNGn4NiVV/TmqPhBQprVV?=
 =?us-ascii?Q?J28oEgSzZoP91vkO06WcCKm8fB6Lg9Uh1AHanAoYy4O/YeiZEMFAYLb9dPIF?=
 =?us-ascii?Q?cFh7pz8pF47rkvzQT8PBeXPeLoGnmeY0e21KfNdJ1E3mJHAu4unUcmPl2TMt?=
 =?us-ascii?Q?PWrlGk8C8LLaZlbEHNLCPg/FemdZxAGGp17j/Gj5w/KZOCaW7UrEcDmqHXVn?=
 =?us-ascii?Q?lFm7HZaKYNRrbA6lUJeBYsZIGIlgOoQt2om57xSQ7spvxX2PhzrHIha3v2ba?=
 =?us-ascii?Q?UVmRuW0FXd9NeqvDQT63TmaIAkjjuYD7BOpIXrk6MZ1dgHsh9We8pJivpk/x?=
 =?us-ascii?Q?+mX7Lb9OynAVb2A5OpGlTLXLfoUOZK3NLMh16spiyI2l0TVjf8499oMhDlOw?=
 =?us-ascii?Q?J6kiiIuHC4jsOq6+B+zlK9FpVSBC0Dj3K7iiG0IrILSWWEtlMRDNZAYkvIGH?=
 =?us-ascii?Q?+prAH2kFAeGiey/iw6BjSFA8npw4aXuSdjGiB5FBijP10dBbg6Eda7vwzALx?=
 =?us-ascii?Q?wb3c8a4b9UQDC0luoqSYzcyRN5Q6C5AEXV+GWHR018qAICC4f3y91SVcDdD7?=
 =?us-ascii?Q?QZZIvM6Z1mqTIFl2MqcG6Ay8q/e7Y33BrPZOacXSv29GWcYI/00A10cxOuWf?=
 =?us-ascii?Q?CVfqybvMh9do1+1rzzfyIhVNVzsawuxvXuNd1g+fzhTv7GaRU2UJ5m8NbJCH?=
 =?us-ascii?Q?AUNx3K5SToWcvenToKGnlZoA6fqLmTNtaUdCklq44KK2bgYN89Xw3sdOxv00?=
 =?us-ascii?Q?SMOzp76S2nXe140niMbbRwort+Np36weK2wYaA7Sy86HIY9j+dqv6fmLiDXd?=
 =?us-ascii?Q?KT3Bi7x5Ctwrt8NYz74Mzm6Er9Z2DMNUXsrF3cfI1FtkM3lS4Ob0I+yjL15j?=
 =?us-ascii?Q?DGD14omdCfwejA/HxBtkh++PnkuodorB9iWGIYzBgGlyIbHWBD1sv18QfL1c?=
 =?us-ascii?Q?Z9XdfUrUX8dTkLY/6tnB1zdtYqxOmrGZG0aFrIOeo9JjrCH9Dsd1f7oqqDSA?=
 =?us-ascii?Q?JiVZE8aNbMBgg7yS6gU5RXE2d3TTQ7H7ic3EpdhAp7Mi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb9d331-e5d1-487f-6c77-08ddd9843362
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 09:39:58.6833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rh39xFOmHb9LsU3z7f7QUTc8byn/twvXmpYpPXU/XKoa1Iz4qVPeQAmhMmeDX5I+ZPbaBPpCvu3pk6MIBxIquQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5958
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 12, 2025 at 07:28:52AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Fix enabled/disconnected DP-alt sink handling (rev4)
> URL   : https://patchwork.freedesktop.org/series/152515/
> State : failure

Thanks for the reviews, patchset is pushed to drm-intel-next. While
applying I added the one-liner code comment requested by Jani to
tc_phy_owned_by_display().

The failures are unrelated to the changes, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16975_full -> Patchwork_152515v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_152515v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_152515v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_152515v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_schedule@wide@rcs0:
>     - shard-glk11:        NOTRUN -> [FAIL][1] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk11/igt@gem_exec_schedule@wide@rcs0.html

There is no TypeC PHY on glk, so the TypeC changes in the patchset are
not related to the failure. The failure is:

(gem_exec_schedule:2206) CRITICAL: Test assertion failure function wide, file ../tests/intel/gem_exec_schedule.c:2294:
(gem_exec_schedule:2206) CRITICAL: Failed assertion: result_read[n] == ctx[n]->id
(gem_exec_schedule:2206) CRITICAL: error: 0 != 0x25c

and looks similar to the - already closed
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10516

Unfortunately can't check previous, still occuring instances of this
issue, since all the err.txt and out.txt files in the CI archives I
see are empty.

> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html

No TypeC PHYs on rkl, so the changes are unrelated to the failure. The
failure is due to the system not system suspending or resuming, it
happened multiple times during the same CI run, both in GEM and KMS
tests and also happened in the same way many times in earlier CI_DRM
runs on rkl systems.

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_16975_full and Patchwork_152515v4_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_busy@extended-modeset-hang-oldfb@pipe-b:
>     - Statuses : 2 pass(s)
>     - Exec time: [5.99, 10.71] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_152515v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][3] ([i915#6230])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@api_intel_bb@crc32.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu-1:       NOTRUN -> [SKIP][4] ([i915#7697])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#3555] / [i915#9323])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2-9:        NOTRUN -> [INCOMPLETE][6] ([i915#13356])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_ccs@suspend-resume.html
>     - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2-9:        NOTRUN -> [INCOMPLETE][8] ([i915#12392])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#6335])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8555])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-rkl:          [PASS][12] -> [INCOMPLETE][13] ([i915#13390])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_eio@in-flight-suspend.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-3/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#4812]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#8555])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#4525])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#4525])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#4525])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3539] / [i915#4852]) +4 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3539])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-active:
>     - shard-dg2-9:        NOTRUN -> [SKIP][22] ([i915#3281]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#3281]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3281]) +11 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#3281])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4537] / [i915#4812]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][27] ([i915#11441] / [i915#13196]) +1 other test incomplete
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk11/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority-all:
>     - shard-rkl:          [PASS][28] -> [DMESG-WARN][29] ([i915#12964]) +9 other tests dmesg-warn
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_exec_whisper@basic-queues-priority-all.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4860])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#2190])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#4613]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-glk:          NOTRUN -> [SKIP][33] ([i915#4613]) +4 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk5/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#4613]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@random-engines@lmem0:
>     - shard-dg1:          [PASS][35] -> [ABORT][36] ([i915#14804]) +1 other test abort
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-17/igt@gem_lmem_swapping@random-engines@lmem0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-18/igt@gem_lmem_swapping@random-engines@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4613])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4077]) +10 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#4077]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg2-9:        NOTRUN -> [SKIP][40] ([i915#4083])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4083]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3282]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#3282]) +4 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu-1:       NOTRUN -> [WARN][44] ([i915#2658])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html
>     - shard-glk10:        NOTRUN -> [WARN][45] ([i915#14702] / [i915#2658])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk10/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#13398])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4270]) +3 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-rkl:          [PASS][48] -> [TIMEOUT][49] ([i915#12917] / [i915#12964])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-rkl:          [PASS][50] -> [SKIP][51] ([i915#14544] / [i915#4270])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#3282]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#5190] / [i915#8428]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5190] / [i915#8428]) +6 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4079])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8411])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4885])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_blits@basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#4077]) +2 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_tiled_blits@basic.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3297]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#3297] / [i915#3323])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#3282] / [i915#3297])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#3297] / [i915#4880]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3297] / [i915#4880])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#3297])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@gem_userptr_blits@unsync-unmap-cycles.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#3297])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][66] ([i915#13356] / [i915#14586])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk5/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#2856])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#2527]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-glk10:        NOTRUN -> [FAIL][69] ([i915#14806])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk10/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#2527] / [i915#2856]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_drm_fdinfo@busy-idle@vcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#14073]) +7 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@i915_drm_fdinfo@busy-idle@vcs0.html
> 
>   * igt@i915_drm_fdinfo@busy@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#14073]) +15 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@i915_drm_fdinfo@busy@vecs1.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#14118])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@i915_drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#6412])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#8399])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#8399])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-dg2:          NOTRUN -> [ABORT][77] ([i915#14385])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][78] -> [SKIP][79] ([i915#7984])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-mtlp-3/igt@i915_power@sanity.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-7/igt@i915_power@sanity.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#6245])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#5723])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [PASS][82] -> [DMESG-FAIL][83] ([i915#12061]) +1 other test dmesg-fail
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-2/igt@i915_selftest@live@workarounds.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][84] ([i915#4817])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk11/igt@i915_suspend@basic-s3-without-i915.html
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][85] ([i915#4817] / [i915#7443])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][86] ([i915#4817]) +1 other test incomplete
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][87] ([i915#4817])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk10/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4212]) +2 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][89] ([i915#12964]) +4 other tests dmesg-warn
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@modeset-transition:
>     - shard-glk:          [PASS][90] -> [ABORT][91] ([i915#14804]) +4 other tests abort
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-glk9/igt@kms_atomic_transition@modeset-transition.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk9/igt@kms_atomic_transition@modeset-transition.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
>     - shard-glk:          NOTRUN -> [ABORT][92] ([i915#14804]) +1 other test abort
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk6/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#5286])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#5286]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#5286])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][96] +3 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3638])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4538] / [i915#5190]) +11 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg1:          [PASS][99] -> [DMESG-WARN][100] ([i915#4391] / [i915#4423])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-19/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-14/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][101] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#5190])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#12313])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][104] ([i915#10307] / [i915#6095]) +19 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#6095]) +44 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#12313])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#12805])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#14098] / [i915#6095]) +39 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          [PASS][110] -> [INCOMPLETE][111] ([i915#12796]) +1 other test incomplete
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#6095]) +8 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#6095]) +14 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#12313])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#10307] / [i915#6095]) +131 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#12313])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#12313])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#12313])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#6095]) +37 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#6095]) +91 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#3742])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#13781]) +4 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#13783]) +3 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#11151] / [i915#7828]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][126] +10 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#11151] / [i915#7828]) +7 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-glk11:        NOTRUN -> [SKIP][128] +190 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk11/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#11151] / [i915#7828]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-fast:
>     - shard-dg2-9:        NOTRUN -> [SKIP][130] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@ctm-0-25:
>     - shard-rkl:          [PASS][132] -> [SKIP][133] ([i915#12655] / [i915#14544])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_color@ctm-0-25.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_color@ctm-0-25.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#3116] / [i915#3299])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#3116])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3299])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][137] ([i915#9424])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_content_protection@lic-type-1.html
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#6944] / [i915#9424])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#7118] / [i915#9424])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3555]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-snb:          NOTRUN -> [SKIP][141] +12 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-snb5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][142] ([i915#13566])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#13049]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#13049]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - shard-rkl:          [PASS][145] -> [SKIP][146] ([i915#11190] / [i915#14544]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - shard-glk11:        NOTRUN -> [SKIP][147] ([i915#11190])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
>     - shard-tglu-1:       NOTRUN -> [FAIL][148] ([i915#14786])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#13046] / [i915#5354]) +3 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][150] +30 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][151] ([i915#13046] / [i915#5354]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][152] +5 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#9809])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@forked-bo:
>     - shard-glk11:        NOTRUN -> [ABORT][154] ([i915#14804]) +1 other test abort
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk11/igt@kms_cursor_legacy@forked-bo.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#9067])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#9067])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#4103] / [i915#4213]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@torture-move:
>     - shard-glk10:        NOTRUN -> [ABORT][158] ([i915#14804]) +1 other test abort
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk10/igt@kms_cursor_legacy@torture-move.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#9833])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#13749])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#13748])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-rkl:          [PASS][162] -> [SKIP][163] ([i915#14544]) +46 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_draw_crc@draw-method-mmap-gtt.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#8812])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#3555] / [i915#3840])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-rkl:          [PASS][166] -> [SKIP][167] ([i915#14544] / [i915#14561])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_fbcon_fbt@fbc.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#2065] / [i915#4854])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_feature_discovery@chamelium.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][169] ([i915#4854])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#1839])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#658])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#4881])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#9934]) +4 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#9934])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#3637] / [i915#9934])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_flip@2x-flip-vs-fences.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][176] ([i915#8381])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#3637] / [i915#9934])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#9934])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#3637] / [i915#9934]) +5 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - shard-tglu:         [PASS][180] -> [FAIL][181] ([i915#10826]) +1 other test fail
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-tglu-4/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a4:
>     - shard-dg1:          [PASS][182] -> [FAIL][183] ([i915#13027]) +1 other test fail
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a4.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-rkl:          [PASS][184] -> [INCOMPLETE][185] ([i915#6113])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-7/igt@kms_flip@flip-vs-suspend.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][186] ([i915#6113])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-3/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-rkl:          [PASS][187] -> [SKIP][188] ([i915#14544] / [i915#3637]) +6 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_flip@plain-flip-ts-check.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
>     - shard-rkl:          [PASS][190] -> [SKIP][191] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#2672] / [i915#3555]) +1 other test skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#2672] / [i915#3555])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#2672] / [i915#3555] / [i915#5190])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#2672]) +2 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#2672]) +5 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>     - shard-glk10:        NOTRUN -> [SKIP][200] +131 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [FAIL][201] ([i915#6880])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#1825])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
>     - shard-rkl:          [PASS][203] -> [SKIP][204] ([i915#14544] / [i915#1849] / [i915#5354]) +10 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#8708])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][206] ([i915#8708]) +4 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#8708]) +19 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#1825]) +8 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#5439])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][210] ([i915#3458]) +7 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#5354]) +21 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][212] ([i915#5354]) +7 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#3458]) +9 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#3023]) +7 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][215] +56 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#3555] / [i915#8228])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [PASS][217] -> [SKIP][218] ([i915#3555] / [i915#8228])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@kms_hdr@static-swap.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-1/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3555] / [i915#8228])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#3555] / [i915#8228])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_invalid_mode@clock-too-high:
>     - shard-rkl:          [PASS][221] -> [SKIP][222] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_invalid_mode@clock-too-high.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_invalid_mode@clock-too-high.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#10656])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#12388])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][225] ([i915#13688])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#12339])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#6301])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@read-crc:
>     - shard-glk10:        NOTRUN -> [SKIP][228] ([i915#11190])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk10/igt@kms_pipe_crc_basic@read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][229] ([i915#13476])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane@pixel-format-source-clamping:
>     - shard-rkl:          [PASS][230] -> [SKIP][231] ([i915#14544] / [i915#8825]) +1 other test skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane@pixel-format-source-clamping.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-rkl:          [PASS][232] -> [SKIP][233] ([i915#14544] / [i915#7294]) +1 other test skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-basic.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html
>     - shard-glk:          NOTRUN -> [FAIL][234] ([i915#12178])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk9/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][235] ([i915#7862]) +1 other test fail
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk9/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#13958])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#13958])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-tglu-1:       NOTRUN -> [SKIP][238] ([i915#13958])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#14259])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [PASS][240] -> [SKIP][241] ([i915#6953] / [i915#9423])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
>     - shard-rkl:          [PASS][242] -> [SKIP][243] ([i915#14544] / [i915#8152])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
>     - shard-rkl:          [PASS][244] -> [SKIP][245] ([i915#12247] / [i915#14544]) +4 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#12247]) +3 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:
>     - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#12247]) +1 other test skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#3555])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#12247]) +3 other tests skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation:
>     - shard-glk:          NOTRUN -> [SKIP][250] +260 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
>     - shard-rkl:          [PASS][251] -> [SKIP][252] ([i915#14544] / [i915#6953] / [i915#8152])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75:
>     - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>     - shard-rkl:          [PASS][255] -> [SKIP][256] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [PASS][257] -> [SKIP][258] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-rkl:          [PASS][259] -> [SKIP][260] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) +1 other test skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][261] ([i915#9685])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#3828])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@fences:
>     - shard-rkl:          [PASS][263] -> [SKIP][264] ([i915#14544] / [i915#1849])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_pm_rpm@fences.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_pm_rpm@fences.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#9519]) +1 other test skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][266] -> [SKIP][267] ([i915#14544] / [i915#9519])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-dg1:          [PASS][268] -> [DMESG-WARN][269] ([i915#4423])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-19/igt@kms_pm_rpm@system-suspend-modeset.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-14/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#6524] / [i915#6805]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][271] ([i915#11520]) +10 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][272] ([i915#11520]) +5 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][273] ([i915#11520]) +2 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
>     - shard-glk11:        NOTRUN -> [SKIP][274] ([i915#11520]) +3 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk11/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#11520]) +2 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][276] ([i915#11520]) +2 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-snb:          NOTRUN -> [SKIP][277] ([i915#11520])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-snb5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#11520]) +6 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#11520]) +3 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2-9:        NOTRUN -> [SKIP][280] ([i915#9683])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#9683])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#9683])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-primary-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][283] ([i915#9688]) +2 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_psr@fbc-pr-primary-blt.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][284] ([i915#1072] / [i915#9732]) +6 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-plane-move:
>     - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#9732]) +6 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_psr@fbc-psr2-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr2-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_psr@fbc-psr2-suspend.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][287] ([i915#9732]) +15 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#1072] / [i915#9732]) +16 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#9685])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][290] ([i915#9685])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#9685])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#12755])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#5190])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#5289])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#5289])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][296] ([i915#5289])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-tglu-1:       NOTRUN -> [SKIP][297] ([i915#3555]) +6 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
>     - shard-dg2:          NOTRUN -> [ABORT][298] ([i915#13179]) +1 other test abort
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#3555] / [i915#8809]) +1 other test skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#8623])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][301] ([i915#8623])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][302] ([i915#12276]) +1 other test incomplete
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk9/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][303] ([i915#12276])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-3/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-tglu-1:       NOTRUN -> [SKIP][304] ([i915#9906])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#9906]) +1 other test skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#2437])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#2437] / [i915#9412])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@kms_writeback@writeback-check-output-xrgb2101010.html
>     - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#2437] / [i915#9412])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][309] ([i915#2437]) +2 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-tglu-1:       NOTRUN -> [SKIP][310] ([i915#2437] / [i915#9412])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#2437] / [i915#9412])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-dg2-9:        NOTRUN -> [FAIL][312] ([i915#9100]) +1 other test fail
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@perf@non-zero-reason.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-glk:          NOTRUN -> [FAIL][313] ([i915#14433])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk5/igt@perf_pmu@module-unload.html
>     - shard-dg2:          NOTRUN -> [FAIL][314] ([i915#14433])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-tglu-1:       NOTRUN -> [SKIP][315] ([i915#8516]) +1 other test skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#3291] / [i915#3708])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#3708] / [i915#4077])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][318] ([i915#3708]) +1 other test skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][319] ([i915#9917])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-4:
>     - shard-tglu:         NOTRUN -> [FAIL][320] ([i915#12910]) +9 other tests fail
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-3/igt@sriov_basic@bind-unbind-vf@vf-4.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][321] ([i915#12910]) +9 other tests fail
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-all.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#9917])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2-9:        NOTRUN -> [SKIP][323] ([i915#4818])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@write:
>     - shard-rkl:          [SKIP][324] ([i915#14544] / [i915#2582]) -> [PASS][325]
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@fbdev@write.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@fbdev@write.html
> 
>   * igt@gem_caching@writes:
>     - shard-rkl:          [DMESG-WARN][326] ([i915#12917] / [i915#12964]) -> [PASS][327]
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_caching@writes.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gem_caching@writes.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-rkl:          [INCOMPLETE][328] ([i915#13304]) -> [PASS][329] +1 other test pass
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][330] ([i915#5493]) -> [PASS][331] +1 other test pass
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-rkl:          [TIMEOUT][332] ([i915#12917] / [i915#12964]) -> [PASS][333] +1 other test pass
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          ([PASS][334], [PASS][335], [PASS][336], [PASS][337], [PASS][338], [PASS][339], [PASS][340], [PASS][341], [PASS][342], [PASS][343], [PASS][344], [PASS][345], [PASS][346], [DMESG-WARN][347], [PASS][348], [PASS][349], [PASS][350], [PASS][351], [PASS][352], [PASS][353], [PASS][354]) ([i915#14559]) -> ([PASS][355], [PASS][356], [PASS][357], [PASS][358], [PASS][359], [PASS][360], [PASS][361], [PASS][362], [PASS][363], [PASS][364], [PASS][365], [PASS][366], [PASS][367], [PASS][368], [PASS][369], [PASS][370], [PASS][371], [PASS][372], [PASS][373], [PASS][374], [PASS][375])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-5/igt@i915_module_load@load.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-8/igt@i915_module_load@load.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-2/igt@i915_module_load@load.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-6/igt@i915_module_load@load.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-1/igt@i915_module_load@load.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-3/igt@i915_module_load@load.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-3/igt@i915_module_load@load.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-7/igt@i915_module_load@load.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-6/igt@i915_module_load@load.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@i915_module_load@load.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-8/igt@i915_module_load@load.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-3/igt@i915_module_load@load.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-10/igt@i915_module_load@load.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-2/igt@i915_module_load@load.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-4/igt@i915_module_load@load.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@i915_module_load@load.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-5/igt@i915_module_load@load.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-4/igt@i915_module_load@load.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-7/igt@i915_module_load@load.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@i915_module_load@load.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-1/igt@i915_module_load@load.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@i915_module_load@load.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-1/igt@i915_module_load@load.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@i915_module_load@load.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@i915_module_load@load.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-2/igt@i915_module_load@load.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@i915_module_load@load.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-2/igt@i915_module_load@load.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-2/igt@i915_module_load@load.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@i915_module_load@load.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-7/igt@i915_module_load@load.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-1/igt@i915_module_load@load.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@i915_module_load@load.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@i915_module_load@load.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-4/igt@i915_module_load@load.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-5/igt@i915_module_load@load.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-3/igt@i915_module_load@load.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-4/igt@i915_module_load@load.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-5/igt@i915_module_load@load.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-8/igt@i915_module_load@load.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-7/igt@i915_module_load@load.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-dg1:          [DMESG-WARN][376] ([i915#13029] / [i915#14545]) -> [PASS][377]
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-12/igt@i915_module_load@reload-no-display.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-17/igt@i915_module_load@reload-no-display.html
> 
>   * igt@kms_busy@basic:
>     - shard-rkl:          [SKIP][378] ([i915#11190] / [i915#14544]) -> [PASS][379] +2 other tests pass
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_busy@basic.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_busy@basic.html
> 
>   * igt@kms_color@ctm-negative:
>     - shard-rkl:          [SKIP][380] ([i915#12655] / [i915#14544]) -> [PASS][381] +2 other tests pass
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_color@ctm-negative.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_color@ctm-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg2:          [SKIP][382] ([i915#3555]) -> [PASS][383]
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#3637]) -> [PASS][385] +11 other tests pass
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#3555]) -> [PASS][387] +3 other tests pass
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][389] +10 other tests pass
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          [FAIL][390] ([i915#6880]) -> [PASS][391] +1 other test pass
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_invalid_mode@int-max-clock:
>     - shard-rkl:          [SKIP][392] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][393]
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_invalid_mode@int-max-clock.html
> 
>   * igt@kms_invalid_mode@overflow-vrefresh:
>     - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#8826]) -> [PASS][395]
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_invalid_mode@overflow-vrefresh.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [INCOMPLETE][396] ([i915#14412]) -> [PASS][397] +1 other test pass
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane@plane-position-hole:
>     - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#8825]) -> [PASS][399]
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane@plane-position-hole.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_plane@plane-position-hole.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-tglu:         [ABORT][400] ([i915#14804]) -> [PASS][401] +1 other test pass
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-tglu-2/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-min:
>     - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#7294]) -> [PASS][403] +2 other tests pass
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-min.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_alpha_blend@constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
>     - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#8152]) -> [PASS][405]
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
>     - shard-glk:          [ABORT][406] ([i915#14804]) -> [PASS][407] +2 other tests pass
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-glk5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-glk6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling:
>     - shard-rkl:          [SKIP][408] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][409]
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
>     - shard-rkl:          [SKIP][410] ([i915#12247] / [i915#14544]) -> [PASS][411] +3 other tests pass
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
>     - shard-rkl:          [SKIP][412] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][413]
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [SKIP][414] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][415] +3 other tests pass
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20:
>     - shard-rkl:          [SKIP][416] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][417]
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [SKIP][418] ([i915#9340]) -> [PASS][419]
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [SKIP][420] ([i915#12916] / [i915#14544]) -> [PASS][421]
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][422] ([i915#14544] / [i915#9519]) -> [PASS][423]
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-dg2:          [ABORT][424] ([i915#10553] / [i915#8213]) -> [PASS][425]
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-10/igt@kms_pm_rpm@system-suspend-modeset.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-11/igt@kms_pm_rpm@system-suspend-modeset.html
>     - shard-rkl:          [INCOMPLETE][426] ([i915#14419]) -> [PASS][427]
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-rkl:          [SKIP][428] ([i915#14544]) -> [PASS][429] +54 other tests pass
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted-signaled:
>     - shard-snb:          [ABORT][430] ([i915#14804]) -> [PASS][431]
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-snb4/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted-signaled.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-snb5/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted-signaled.html
> 
>   * igt@sysfs_heartbeat_interval@nopreempt:
>     - shard-rkl:          [DMESG-WARN][432] ([i915#12964]) -> [PASS][433] +11 other tests pass
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@sysfs_heartbeat_interval@nopreempt.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@sysfs_heartbeat_interval@nopreempt.html
> 
>   * igt@testdisplay:
>     - shard-dg1:          [DMESG-WARN][434] ([i915#4423]) -> [PASS][435] +1 other test pass
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-13/igt@testdisplay.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-19/igt@testdisplay.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][436] ([i915#8411]) -> [SKIP][437] ([i915#14544] / [i915#8411])
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          [SKIP][438] ([i915#14544] / [i915#8411]) -> [SKIP][439] ([i915#8411])
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          [SKIP][440] ([i915#11078]) -> [SKIP][441] ([i915#11078] / [i915#14544])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@device_reset@cold-reset-bound.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          [SKIP][442] ([i915#3555] / [i915#9323]) -> [SKIP][443] ([i915#14544] / [i915#3555] / [i915#9323])
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_ccs@block-copy-compressed.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][444] ([i915#14544] / [i915#9323]) -> [SKIP][445] ([i915#9323]) +1 other test skip
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_ccs@suspend-resume.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          [SKIP][446] ([i915#14544] / [i915#280]) -> [SKIP][447] ([i915#280])
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          [SKIP][448] ([i915#280]) -> [SKIP][449] ([i915#14544] / [i915#280])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          [SKIP][450] ([i915#4525]) -> [SKIP][451] ([i915#14544] / [i915#4525])
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_exec_balancer@parallel.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-rkl:          [SKIP][452] ([i915#14544] / [i915#4525]) -> [SKIP][453] ([i915#4525])
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-rkl:          [SKIP][454] ([i915#14544] / [i915#6334]) -> [SKIP][455] ([i915#6334]) +1 other test skip
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-rkl:          [SKIP][456] ([i915#3281]) -> [SKIP][457] ([i915#14544] / [i915#3281]) +9 other tests skip
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_exec_reloc@basic-active.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - shard-rkl:          [SKIP][458] ([i915#14544] / [i915#3281]) -> [SKIP][459] ([i915#3281]) +4 other tests skip
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_exec_reloc@basic-write-gtt.html
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          [SKIP][460] ([i915#2190]) -> [SKIP][461] ([i915#14544] / [i915#2190])
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_huc_copy@huc-copy.html
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          [SKIP][462] ([i915#4613] / [i915#7582]) -> [SKIP][463] ([i915#14544] / [i915#4613] / [i915#7582])
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_lmem_evict@dontneed-evict-race.html
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          [SKIP][464] ([i915#4613]) -> [SKIP][465] ([i915#14544] / [i915#4613]) +2 other tests skip
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-rkl:          [SKIP][466] ([i915#14544] / [i915#4613]) -> [SKIP][467] ([i915#4613]) +2 other tests skip
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_lmem_swapping@massive.html
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][468] ([i915#14544] / [i915#284]) -> [SKIP][469] ([i915#284])
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_media_vme.html
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@gem_media_vme.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          [SKIP][470] ([i915#14544] / [i915#3282]) -> [SKIP][471] ([i915#3282]) +4 other tests skip
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          [SKIP][472] ([i915#13717]) -> [TIMEOUT][473] ([i915#12917] / [i915#12964])
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          [SKIP][474] ([i915#4270]) -> [TIMEOUT][475] ([i915#12917] / [i915#12964])
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-rkl:          [SKIP][476] ([i915#3282]) -> [SKIP][477] ([i915#14544] / [i915#3282]) +1 other test skip
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_readwrite@new-obj.html
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          [SKIP][478] ([i915#3281] / [i915#3297]) -> [SKIP][479] ([i915#14544] / [i915#3281] / [i915#3297])
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@gem_userptr_blits@relocations.html
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          [SKIP][480] ([i915#14544] / [i915#3297]) -> [SKIP][481] ([i915#3297]) +4 other tests skip
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap.html
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          [SKIP][482] ([i915#3297]) -> [SKIP][483] ([i915#14544] / [i915#3297]) +1 other test skip
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-rkl:          [SKIP][484] ([i915#14544] / [i915#2527]) -> [SKIP][485] ([i915#2527]) +1 other test skip
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@gen9_exec_parse@cmd-crossing-page.html
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          [SKIP][486] ([i915#2527]) -> [SKIP][487] ([i915#14544] / [i915#2527]) +2 other tests skip
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          [SKIP][488] ([i915#14544] / [i915#8399]) -> [SKIP][489] ([i915#8399])
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          [SKIP][490] ([i915#8399]) -> [SKIP][491] ([i915#14544] / [i915#8399])
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@i915_pm_freq_api@freq-reset-multiple.html
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          [SKIP][492] ([i915#14498]) -> [SKIP][493] ([i915#14498] / [i915#14544])
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [SKIP][494] ([i915#7984]) -> [SKIP][495] ([i915#14544] / [i915#7984])
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@i915_power@sanity.html
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@i915_power@sanity.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          [SKIP][496] ([i915#6245]) -> [SKIP][497] ([i915#14544] / [i915#6245])
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@i915_query@hwconfig_table.html
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@i915_query@hwconfig_table.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          [SKIP][498] ([i915#12454] / [i915#12712]) -> [SKIP][499] ([i915#12454] / [i915#12712] / [i915#14544])
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          [SKIP][500] ([i915#9531]) -> [SKIP][501] ([i915#14544])
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-rkl:          [SKIP][502] ([i915#14544]) -> [SKIP][503] ([i915#5286]) +4 other tests skip
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][504] ([i915#5286]) -> [SKIP][505] ([i915#14544]) +5 other tests skip
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][506] ([i915#14544]) -> [SKIP][507] ([i915#3638]) +4 other tests skip
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][508] ([i915#3638]) -> [SKIP][509] ([i915#14544]) +1 other test skip
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][510] ([i915#14544]) -> [SKIP][511] +20 other tests skip
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][512] ([i915#14544]) -> [SKIP][513] ([i915#12313]) +3 other tests skip
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][514] ([i915#14098] / [i915#6095]) -> [SKIP][515] ([i915#6095]) +4 other tests skip
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-3/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:
>     - shard-mtlp:         [ABORT][516] ([i915#14804]) -> [SKIP][517] ([i915#6095]) +1 other test skip
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-mtlp-7/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-mtlp-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4:
>     - shard-dg1:          [SKIP][518] ([i915#6095]) -> [SKIP][519] ([i915#4423] / [i915#6095]) +1 other test skip
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-15/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4.html
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-19/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs:
>     - shard-rkl:          [SKIP][520] ([i915#14098] / [i915#6095]) -> [SKIP][521] ([i915#14544]) +8 other tests skip
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs.html
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:
>     - shard-rkl:          [SKIP][522] ([i915#14544]) -> [SKIP][523] ([i915#14098] / [i915#6095]) +14 other tests skip
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][524] ([i915#3742]) -> [SKIP][525] ([i915#14544] / [i915#3742])
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_cdclk@mode-transition.html
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          [SKIP][526] ([i915#14544] / [i915#3742]) -> [SKIP][527] ([i915#3742])
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-rkl:          [SKIP][528] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][529] ([i915#11151] / [i915#7828]) +9 other tests skip
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-rkl:          [SKIP][530] ([i915#11151] / [i915#7828]) -> [SKIP][531] ([i915#11151] / [i915#14544] / [i915#7828]) +7 other tests skip
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd.html
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [FAIL][532] ([i915#7173]) -> [SKIP][533] ([i915#7118] / [i915#9424])
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@kms_content_protection@legacy.html
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          [SKIP][534] ([i915#14544]) -> [SKIP][535] ([i915#9424])
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_content_protection@lic-type-0.html
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][536] ([i915#9424]) -> [SKIP][537] ([i915#14544])
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_content_protection@lic-type-1.html
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][538] ([i915#9424]) -> [SKIP][539] ([i915#9433])
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-15/igt@kms_content_protection@mei-interface.html
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [FAIL][540] ([i915#7173]) -> [SKIP][541] ([i915#7118])
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@kms_content_protection@srm.html
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-5/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          [SKIP][542] ([i915#7118] / [i915#9424]) -> [SKIP][543] ([i915#14544]) +1 other test skip
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_content_protection@type1.html
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          [SKIP][544] ([i915#14544]) -> [SKIP][545] ([i915#13049]) +1 other test skip
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-rkl:          [SKIP][546] ([i915#14544]) -> [SKIP][547] ([i915#3555]) +5 other tests skip
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-rkl:          [SKIP][548] ([i915#14544]) -> [FAIL][549] ([i915#13566])
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_cursor_crc@cursor-random-256x85.html
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          [SKIP][550] ([i915#13049]) -> [SKIP][551] ([i915#14544]) +1 other test skip
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][552] -> [SKIP][553] ([i915#14544]) +17 other tests skip
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          [SKIP][554] ([i915#9067]) -> [SKIP][555] ([i915#14544])
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          [SKIP][556] ([i915#14544]) -> [SKIP][557] ([i915#4103])
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          [SKIP][558] ([i915#1257]) -> [SKIP][559] ([i915#1257] / [i915#14544])
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_dp_aux_dev.html
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          [SKIP][560] ([i915#14544]) -> [SKIP][561] ([i915#13749])
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          [SKIP][562] ([i915#14544]) -> [SKIP][563] ([i915#3840])
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          [SKIP][564] ([i915#14544]) -> [SKIP][565] ([i915#3555] / [i915#3840])
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          [SKIP][566] ([i915#3840] / [i915#9053]) -> [SKIP][567] ([i915#14544])
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][568] ([i915#4854]) -> [SKIP][569] ([i915#14544] / [i915#4854])
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_feature_discovery@chamelium.html
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          [SKIP][570] ([i915#14544] / [i915#658]) -> [SKIP][571] ([i915#658])
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_feature_discovery@psr1.html
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-rkl:          [SKIP][572] ([i915#9934]) -> [SKIP][573] ([i915#14544] / [i915#9934]) +4 other tests skip
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_flip@2x-absolute-wf_vblank.html
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-rkl:          [SKIP][574] ([i915#14544] / [i915#9934]) -> [SKIP][575] ([i915#9934]) +7 other tests skip
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@flip-vs-panning-vs-hang:
>     - shard-rkl:          [DMESG-WARN][576] ([i915#12964]) -> [SKIP][577] ([i915#14544] / [i915#3637])
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_flip@flip-vs-panning-vs-hang.html
>    [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_flip@flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][578] ([i915#2672] / [i915#3555]) -> [SKIP][579] ([i915#14544] / [i915#3555]) +3 other tests skip
>    [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>    [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][580] ([i915#14544] / [i915#3555]) -> [SKIP][581] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-rkl:          [SKIP][582] ([i915#3023]) -> [SKIP][583] ([i915#14544] / [i915#1849] / [i915#5354]) +15 other tests skip
>    [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
>    [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][584] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][585] ([i915#3023]) +23 other tests skip
>    [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][586] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][587] ([i915#1825]) +34 other tests skip
>    [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][588] ([i915#1825]) -> [SKIP][589] ([i915#14544] / [i915#1849] / [i915#5354]) +27 other tests skip
>    [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
>    [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          [SKIP][590] ([i915#5439]) -> [SKIP][591] ([i915#14544] / [i915#1849] / [i915#5354])
>    [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>    [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [SKIP][592] ([i915#3555] / [i915#8228]) -> [SKIP][593] ([i915#14544])
>    [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_hdr@bpc-switch-dpms.html
>    [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          [SKIP][594] ([i915#14544]) -> [SKIP][595] ([i915#3555] / [i915#8228])
>    [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
>    [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][596] ([i915#14544]) -> [SKIP][597] ([i915#12713])
>    [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
>    [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          [SKIP][598] ([i915#12388] / [i915#14544]) -> [SKIP][599] ([i915#12388])
>    [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
>    [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          [SKIP][600] ([i915#12394]) -> [SKIP][601] ([i915#12394] / [i915#14544])
>    [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_joiner@basic-force-ultra-joiner.html
>    [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          [SKIP][602] ([i915#13522] / [i915#14544]) -> [SKIP][603] ([i915#13522])
>    [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
>    [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][604] ([i915#14544] / [i915#4070] / [i915#4816]) -> [SKIP][605] ([i915#1839] / [i915#4816])
>    [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][606] ([i915#6301]) -> [SKIP][607] ([i915#14544])
>    [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html
>    [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-dg1:          [SKIP][608] ([i915#13958] / [i915#4423]) -> [SKIP][609] ([i915#13958])
>    [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-13/igt@kms_plane_multiple@2x-tiling-4.html
>    [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          [SKIP][610] ([i915#14544] / [i915#3555] / [i915#8152]) -> [SKIP][611] ([i915#3555])
>    [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
>     - shard-rkl:          [SKIP][612] ([i915#12247] / [i915#14544]) -> [SKIP][613] ([i915#12247]) +1 other test skip
>    [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
>    [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          [SKIP][614] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][615] ([i915#12247]) +2 other tests skip
>    [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
>    [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          [SKIP][616] ([i915#14544] / [i915#5354]) -> [SKIP][617] ([i915#5354])
>    [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_pm_backlight@fade.html
>    [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][618] ([i915#5354]) -> [SKIP][619] ([i915#14544] / [i915#5354])
>    [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_pm_backlight@fade-with-dpms.html
>    [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][620] ([i915#3361]) -> [FAIL][621] ([i915#9295])
>    [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
>    [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          [SKIP][622] ([i915#8430]) -> [SKIP][623] ([i915#14544] / [i915#8430])
>    [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html
>    [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-rkl:          [SKIP][624] ([i915#12916] / [i915#14544]) -> [SKIP][625] ([i915#12916])
>    [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
>    [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          [SKIP][626] ([i915#14544] / [i915#6524]) -> [SKIP][627] ([i915#6524])
>    [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
>    [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][628] ([i915#11520] / [i915#14544]) -> [SKIP][629] ([i915#11520]) +7 other tests skip
>    [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
>    [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          [SKIP][630] ([i915#11520]) -> [SKIP][631] ([i915#11520] / [i915#14544]) +6 other tests skip
>    [630]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
>    [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          [SKIP][632] ([i915#14544] / [i915#9683]) -> [SKIP][633] ([i915#9683]) +1 other test skip
>    [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
>    [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-pr-sprite-plane-onoff:
>     - shard-rkl:          [SKIP][634] ([i915#1072] / [i915#9732]) -> [SKIP][635] ([i915#1072] / [i915#14544] / [i915#9732]) +19 other tests skip
>    [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
>    [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr2-no-drrs:
>     - shard-dg1:          [SKIP][636] ([i915#1072] / [i915#9732]) -> [SKIP][637] ([i915#1072] / [i915#4423] / [i915#9732])
>    [636]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-16/igt@kms_psr@fbc-psr2-no-drrs.html
>    [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-12/igt@kms_psr@fbc-psr2-no-drrs.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          [SKIP][638] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][639] ([i915#1072] / [i915#9732]) +19 other tests skip
>    [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
>    [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          [SKIP][640] ([i915#9685]) -> [SKIP][641] ([i915#14544] / [i915#9685])
>    [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          [SKIP][642] ([i915#14544]) -> [SKIP][643] ([i915#5289])
>    [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-rkl:          [SKIP][644] ([i915#14544] / [i915#3555]) -> [SKIP][645] ([i915#3555])
>    [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
>    [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          [SKIP][646] ([i915#8623]) -> [ABORT][647] ([i915#14804])
>    [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@ts-continuation-idle-hang:
>     - shard-rkl:          [SKIP][648] ([i915#14544]) -> [DMESG-WARN][649] ([i915#12964]) +1 other test dmesg-warn
>    [648]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_vblank@ts-continuation-idle-hang.html
>    [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@kms_vblank@ts-continuation-idle-hang.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][650] ([i915#3555]) -> [SKIP][651] ([i915#14544]) +2 other tests skip
>    [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_vrr@flip-dpms.html
>    [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          [SKIP][652] ([i915#3555] / [i915#9906]) -> [SKIP][653] ([i915#14544])
>    [652]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@kms_vrr@negative-basic.html
>    [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][654] ([i915#14544]) -> [SKIP][655] ([i915#9906]) +1 other test skip
>    [654]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg1:          [SKIP][656] ([i915#2437] / [i915#9412]) -> [SKIP][657] ([i915#2437] / [i915#4423] / [i915#9412])
>    [656]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-dg1-19/igt@kms_writeback@writeback-check-output-xrgb2101010.html
>    [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-dg1-14/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          [SKIP][658] ([i915#2437]) -> [SKIP][659] ([i915#14544] / [i915#2437])
>    [658]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html
>    [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          [SKIP][660] ([i915#14544] / [i915#2437]) -> [SKIP][661] ([i915#2437])
>    [660]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html
>    [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][662] ([i915#2433]) -> [SKIP][663] ([i915#14544] / [i915#2433])
>    [662]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@perf@unprivileged-single-ctx-counters.html
>    [663]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          [SKIP][664] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][665] ([i915#3291] / [i915#3708])
>    [664]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@prime_vgem@basic-write.html
>    [665]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][666] ([i915#14544] / [i915#3708]) -> [SKIP][667] ([i915#3708])
>    [666]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
>    [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-4/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          [SKIP][668] ([i915#14544] / [i915#9917]) -> [SKIP][669] ([i915#9917]) +2 other tests skip
>    [668]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
>    [669]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-2/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-rkl:          [SKIP][670] ([i915#9917]) -> [SKIP][671] ([i915#14544] / [i915#9917])
>    [670]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
>    [671]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14385]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14385
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14559]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14559
>   [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14786
>   [i915#14804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804
>   [i915#14806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14806
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16975 -> Patchwork_152515v4
> 
>   CI-20190529: 20190529
>   CI_DRM_16975: b0354f42f0b7052682bfcc2f53b0aa023b6f68d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8489: 4972020ea0f3d0ac8a0d7dd4f5419119b1b30995 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_152515v4: b0354f42f0b7052682bfcc2f53b0aa023b6f68d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/index.html
