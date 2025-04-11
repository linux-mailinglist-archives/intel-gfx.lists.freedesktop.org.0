Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8FBA86065
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 16:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80CA10E263;
	Fri, 11 Apr 2025 14:21:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="euEbogLw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1DD10E263;
 Fri, 11 Apr 2025 14:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744381318; x=1775917318;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=n2UnzdmUE/f1wx6GJQacSuQOcMFp6FefKSyXpDYDUpY=;
 b=euEbogLwYwJdcrO1dA0nUeIm7nNL8wVPWhwMZj709SMuIPU02H6Fzmgd
 Tjs8eCwMxcNpItp6zjEZZdLn1+s9gazPkBNjBEblzygneNRwmM4CviO+6
 jjYYjcTermL7REJhPM0KxVjE431m+oVK9mrWmA0j27rZ4GPo9fuYq+7qm
 Uol0MitkYTmP1Qwo52HNF+vJCEaSPOihZP/4svwFCHRIF8nTvCjygxnvv
 X/UVM+gw0J5FBZhnbVUMLtRIy0myZqYd+XGWGDVeAeoTL6NMa04uDI/33
 R6qcNyDs0MaerXKUfRIvF9R9j2rlOz45tG+QQpemmPoDRnKqAXxAE4EGq A==;
X-CSE-ConnectionGUID: 3oPz1RB3TUGXbkTMIFsy5w==
X-CSE-MsgGUID: 28BaYGRzQea3CemJtbysrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="46098225"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="46098225"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:21:57 -0700
X-CSE-ConnectionGUID: cXxnkZi3RLWU1jdh62rRvA==
X-CSE-MsgGUID: BeG4Bni0Q6W6sy6mphYcOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="129559079"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:21:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 07:21:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 07:21:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 07:21:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lW0Wrt6FU6bsM3Zole1VRy7Su0JkCH6P//KqAk+qu6QwFpdmEKZr04X7tfsNWI8KrFBeaDYkq/whC+f6O9Y8nV2MGTkhcRsTz0Z6t0MaQ5FKqCAnsAXP+wiB6UqnumE7BFm4HvNx/y5gNnesmr1djAvyxa3ywtoQIq6q80edssl1SS8mzKmNiXR4V3y8J93h448ZNy7h8CSueJTodeaa3QhgzpmXKg8C75RuRASd2Cfzuoy9yHJ1KudfSEt47HHqp0nEOPMxk5+WvgOAA48ipYK0m3GvavrAznD0Ekk4CB4aYcSGEmb2jjdul2lXqk8ZPVR6t3eBG/QHPgBOGAhOZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n2UnzdmUE/f1wx6GJQacSuQOcMFp6FefKSyXpDYDUpY=;
 b=iO6rv3BzalV1SZPHTLDbXvTnYvCUSqeytlg1fU7O8fPBiAP5TIGBX4e6o+kUb1TYleRvBXzdwsBrp5NbCFwhxefn4bHPIZVzkB+ZyB1fpCcnBLUA+TcsqEWsYTPjiwJMAFp94dHkApllnMlJuPQFJHAETquVNNan9wARCBFDdxqXGWSl8hMSNdwuKACS8UJ8u3xtiDk9sBnmfDEtP/QaYf7rg5ro+e635JfxcMDnfOQq95JB5+jN9N4GOEenaUMdsCqY7dsS4AVw9+yKajrCHK2WHE9OrXX28YQLtuLHPgZdPlMLjOM7KK7g3ar8VCZBJ5O4sWNAuPNwGAzAYZSO4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Fri, 11 Apr
 2025 14:21:54 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8606.033; Fri, 11 Apr 2025
 14:21:54 +0000
Date: Fri, 11 Apr 2025 09:21:51 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 4/4] drm/i915/pch: clean up includes
Message-ID: <bghxnbmquabzgzmj5iulughwjjpuahro7invnfwffwtj7gr2lb@avjmdwpmpffm>
References: <cover.1744364975.git.jani.nikula@intel.com>
 <68ec70f6880b7af19bc93b9817959299634a555d.1744364975.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <68ec70f6880b7af19bc93b9817959299634a555d.1744364975.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0316.namprd04.prod.outlook.com
 (2603:10b6:303:82::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: bb4571a2-29a1-4cac-2227-08dd7904354f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|27256017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QNrkLy/fycp/URRAruO08f1KCqI1PZhDB11+hC+fz4TNQXe9tsd1Q4nGzbuW?=
 =?us-ascii?Q?AueL68re5Wm/JLuWjmHfhsm8JyZhkV6h5Pe1eiN+TZ7NEwcP8CNy3RIpfVav?=
 =?us-ascii?Q?Qa+JYKdW3o0KsC9dshbfjRVKp0jqEIP69zqYDrD8E1CsEUSChFVo1hAwDOA+?=
 =?us-ascii?Q?v5pAZIrgbhUdvsVqsZBI4abA7iX2Rfn4XX5/TTKrDB0SQW1htoULmnEz/m/M?=
 =?us-ascii?Q?7E4ORY+ZjtV/V50fk6lUuu0wj9z/h09QH6+U0JW+joFX7aRN7x5s3PkGnGIA?=
 =?us-ascii?Q?waz5MlhzstpsGeMlQGGuYzMYaKBnD7rf1vEDmPnoACKBA/VQmzR9mMCLyBAQ?=
 =?us-ascii?Q?jG2k74NHO8ssGLEt9pVm9MgSlpO0p+/8VuG6nKkegu520FcmDo+IBzpxBES1?=
 =?us-ascii?Q?RF5XuVKLHtIgLJu2fYhapJkNM01H98JUH0cfsO1EaAvUmVduo1mXUO7/VtJr?=
 =?us-ascii?Q?/7TqZO1/KIs4FrlEQTSaI3xB4OY0figkVW2ddg+bsfPIvvTFqZPUzooM0X47?=
 =?us-ascii?Q?2Bq6qHHooMJCHNtKrjHAa4v3k7f3oc8O+zkcqSg32TYEA5UgqzagNW4fE/1q?=
 =?us-ascii?Q?1ScCPhQkhEWsu5fuvcXWT5nn5qfAhrU9ctVBA2tMXRbwz3ECJJoaEHfqLi77?=
 =?us-ascii?Q?sxH1gt6FTOV30G3NkqlfsYYYz74y+7ZhO14XQFC7Vml5QDSDghJlUSyEnus9?=
 =?us-ascii?Q?ZJ6uSUHVaQxUvKXzXaK7JXbXRKrVhXO8BjQdgOF7+A2x8Lqpo4vu3xiHhf/7?=
 =?us-ascii?Q?AHJm7OYbq89td8cKOPYGAf9c1xI97KeNCDUwUVKEHWFeLUXtaUYk5EB+AwuZ?=
 =?us-ascii?Q?DLTkqNz0vW1/p07JOzNV7GsYr9rYoJblxpQNlLaoQS++pEmbF+OJvIb1LtJl?=
 =?us-ascii?Q?cCa+nFNQadZpguS2mzLc9DZYwA7zFZEcWCYxUlgEUATV5oUkEH0OHvvg65IW?=
 =?us-ascii?Q?7ymnDG1EJ0EUsQahmVwE8Y3HUqSdjOYTJeY+Fd45vb3tguxC/xCcpZsJTS1r?=
 =?us-ascii?Q?CRGEh5f9HsYApQBShs5y3kYME/ctlnGESRWQ95UiNALBDkQsiD7SRj9ohuv0?=
 =?us-ascii?Q?gWCOXPzVk/BQdsdO1mA+SvNR3JKORVbw2IDznvfJWszlhLJ5P9iK3xUiQ4Y4?=
 =?us-ascii?Q?O3gsOMT4+kIKx7iatLfvQDZfhEcweWCE+k5J6u5MVGlv9QcWuj0aZ2krlzUZ?=
 =?us-ascii?Q?MVDe7WSolCVwdyK2jpPrVzBpDjsjURx9JVWDB1B1+FMaGp/4vqOui4fODag4?=
 =?us-ascii?Q?+fr0qJubgPXALZq1NsiqVNbGv7RYb33iVYYKHPizLrbu13FVJrk+SiFvpLS/?=
 =?us-ascii?Q?gONEe7CjERoW2NKAC09/HTcXzrD4wlq8j3Ebvc1MhcLoNyvd1yiR086WYB+R?=
 =?us-ascii?Q?4+YXZM+U4FbfbuRhNoDXDXVbZvwIcss0exEZs8ndJheJnQjEGAh7u829ZJWv?=
 =?us-ascii?Q?bE/zr6Iej8qt0s9Y3JwDcos9sINOhDV6uitOgOwZilNesBu8UJtzGA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9nSQsvYrn/U8hKjZ6tkH3iX+yEcXTaBD+1rzl22HjhSx9es9mhkyTkah+Zj0?=
 =?us-ascii?Q?kcglcgJCo3k/CXtmvxLroq6Qf+qSCQ6x1zk8VIMqm9Jrs1rh0HC+pr97hz3P?=
 =?us-ascii?Q?1PhaDL10yplDiOw4AMfnrUPFA/NVvDrXfWtkt97J3yHjYzmICLNMIjjP+Loi?=
 =?us-ascii?Q?7/ymg5g/9kxT4oFG0FGo3CuS9coiGoyoOS8WKvS9v962vvM/qIgSh5PME4sE?=
 =?us-ascii?Q?LmQFqbt9kDZYu8Blqu3rb7bzSrSqI6FjkDtXWP7ZKGXzeH3rgom2f+KCS1TR?=
 =?us-ascii?Q?V5E2AP9cvkEmExqFpZP+1YRWQf5/s3n8PCkFm3F+Gqap7CLmnhn8c5KspRC/?=
 =?us-ascii?Q?ueqWeAykHANq6DwJ3JSAmmGS1W4VLNeQ2KEkFCe7WJfytT4exA5EXW4RK8Pk?=
 =?us-ascii?Q?pj9DYvya2GZ4ZQghiX3afr8yadwSPGX44FqcroFKZRRghmXMCecyBsERYCJ3?=
 =?us-ascii?Q?9Wu/lN0r9QtQxd9DDCDOfvsgFliKEGNROovrbbMI/XCi5Ij+1TQ4wbPqTYEF?=
 =?us-ascii?Q?be7zCeo7yhBY4fNmrlAJeGjFdgxatHdP/NHWBsPdVBWx/8+3b9CStvUUAIU+?=
 =?us-ascii?Q?Id3TvNnve8CJpz2RO9r5bRtOGDqx/TyAmiYi1sNH8dO5WuLQetdwEV24tgJu?=
 =?us-ascii?Q?KexTXk9nvIHlDvwvUk8eLF6jG4XEy5F9iA0PT1ju5DFhmhrfx37EhfFheZs7?=
 =?us-ascii?Q?UHmy7LdSXafTcNe+XKzAhIVziHs0AlS6GF1wMaXQF00D5fKInFcP9zdTg04u?=
 =?us-ascii?Q?foxVNFzwNMG09+wrDPA616Z2UF9dAr3wJg0qR8LPIWut8tfxiTMCj5aoce0Q?=
 =?us-ascii?Q?EOxuZwGN7kfE2yfwxkBYNqakRdn1e2A4ytqeG7WRPDJVjLh0eUlwzhajanUz?=
 =?us-ascii?Q?tRC88BMCWj81g9h1tLKIF5J6hVUwGMP8wQnE6/MPA3YaSqdiI1RCKvnskcff?=
 =?us-ascii?Q?U1XiUdZ7peQgiDYP7tAeuhA0btZUZVleVT+XZeJHHYw23t2AN+ELp8Zexh/N?=
 =?us-ascii?Q?9BOXYcqj8rx8+y8WdTOLg5lOGaAqbt3xbTLor1+hTeove7upkeS/bXy82bXv?=
 =?us-ascii?Q?07MhFnesqtABiIG4q0o4Gumr4CfH0HAwTerxkY6W9OXdMP+SAgHUTm+uHNA2?=
 =?us-ascii?Q?Sd7nlUYc69ffVHallXNWNhW00U5bAqoGtADyopp+Nl1QVuD9X2WABNJN6P4I?=
 =?us-ascii?Q?7ZtDgXfKncpSfv9kp5/iFPm/HLem23m4d64El+o7mIvMFAGUZyxb9VYdtK/i?=
 =?us-ascii?Q?+Sc7mwEimJk3MECC/2cDVb6FKhE7dqkspACCWf0y7KtxHv2Fj4DgwsYhlepQ?=
 =?us-ascii?Q?ING+tv5vFfrs70Tdolhpm9NKk8iH3tr+i2VOmsKo1TMNM9beQx63ZXH9E6N3?=
 =?us-ascii?Q?oWHh1pMgkEgi2+P1I1PNgMm2YhKxF3E/ggQ+/DUJXqoQ7rODECGB3GOVXxoE?=
 =?us-ascii?Q?Szs1Ht5ECxL4W9VWL/9kxPynq+Yi+SHXeo/XB2w3EDQvb2ANLcgkADz+tbPo?=
 =?us-ascii?Q?sjEpoBjvf6jtb0qMx6R+9VDR2Iv098oCEaUmg3gKrB4LHTLRW5cW/VJHrx0c?=
 =?us-ascii?Q?OcchNFLfqXTD+mpcvxNYUZcmfgcyDqlnOI8x94h7OESLUF0YibI5L13nZAa2?=
 =?us-ascii?Q?lA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb4571a2-29a1-4cac-2227-08dd7904354f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 14:21:53.9291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3wfRzgLZyN9AoAz60Sem99Z1lV7snMYtZsfe3uXErh3uQgiM46mOz5q28w7xmyAQgkPLBVQXugYCgLGE+IATUOf77cML86cY776IEqDVec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 11, 2025 at 12:54:14PM +0300, Jani Nikula wrote:
>We no longer need i915_drv.h in intel_pch.c, and we no longer need
>intel_pch.h universally.
>
>With intel_pch.h being included from intel_display_core.h, it's still
>included pretty much everywhere, but there's no need to include it
>explicitly from i915_drv.h or xe_device_types.h.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
