Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC87E969180
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 04:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE8710E3AC;
	Tue,  3 Sep 2024 02:41:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kf4X+LNW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E8010E2D0;
 Tue,  3 Sep 2024 02:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725331308; x=1756867308;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Di4cHQmQYf7EQRoS28I+343SIhWZukf15cqSz6d3Ors=;
 b=Kf4X+LNWMYCNvOrSO5qn6mxzfA17yrlQZhpYp7uIlId1brpOgDL2DYvj
 JSfGuRFuL8m1jWqv/BpfQ+a2HjhcMGy9qXMhiMoWx8SqOIaDP5nmgqzMr
 LQng25dVrxw2g6tEi/78+AdDzMsEKIqa25H1ZpWDKDVXuEYV5xLDBasoS
 i1q1nKKyVsXfT95leZZwTli6am89W3GVam9qRSumRY16E0Nu9QWFSvUrT
 RfwWr0zvYAENVJCJ6prFRR9TjCA8s5sB1N+1shUl1sQvrbnzqQRhmBDVL
 4KAeLFGt0VewwQQLRWqGM5NuZJLWLs4rjDdKFpUL9zYhTK3ZoIHpmb1Za w==;
X-CSE-ConnectionGUID: Bi4TpYPASwKhVDHTpZWR/Q==
X-CSE-MsgGUID: CJ3FhuMFTi22Ct6wnLmizw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="23716748"
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="23716748"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 19:41:47 -0700
X-CSE-ConnectionGUID: fEe5OYY2S8KKwnjVxrvkYw==
X-CSE-MsgGUID: J5s8DDCuTC6MuhClxX33OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="69127860"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 19:41:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 19:41:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 19:41:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 19:41:46 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 19:41:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PcGJaARwxvCyLgWF36p2SteO1UOfNPcRMXNJnyEUiimlSkkIDMM2WvKBIHoSxMiquApMdqwNXof7Af8XTgxNLZwQSJJdgB8lDIt+WCggz+dVEZz2YAPthvBTwtpWWVBzfvWcxQPDtWa0h/ggiRMjiWo3XGoVr0PeAcwkUeqea6wJWlugxz+3qsKzeoqEB+IGlTmfMZ8D1ySWcGQ9AC7wdyWg/DwJd0hw9eosJmTZ4h9AhN36c203x6OUTlVbY31miRYUFwzWvDvsgZYBaIJF0a3xZBEWTZ7pNc9zIx0vkgSP1yG/qpfzj3gC8eGPMpaGEFQ77BGWkP8h1AI4F67ElA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Di4cHQmQYf7EQRoS28I+343SIhWZukf15cqSz6d3Ors=;
 b=JizXDaPg3xmo3L3fGNhxS8ycaFejJzuAYMx1ra2PCFArdHwCNjlsjiiG9goC4VasaoO8mZnEtUYwUrWSHXbKYG0GMhUiO0pNE/JugKlIoeZTE6OGLbff306BdqE6y3fTxWquUBeVvEbsjV4VmwzA3v1Lr4UH4sQfr2X4244WkrEF3Hj5YTp+7MZFwkSPwWMZzTqSfm1jExGO9U/vnv86QQwQiRosQpgmmnG4s5yO9TlSyBSvUMgLPL76pEvfbGF/l8feCXEQfp9XSQfYwC07zNPnTBPb5jm28VHvH1yIj1dgJifD+bkow5ZqXvJ+8LxxnJ7jyaYmlPyNLV1W3eUVDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 02:41:44 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 02:41:43 +0000
Date: Mon, 2 Sep 2024 21:41:41 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 0/8] drm/i915 & drm/xe: shared PCI ID macros
Message-ID: <bslcjve463mplypyr7logylpnkq3asfbalg2a43h3kl5cckefp@wzjcpnaw26ah>
References: <cover.1725297097.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <cover.1725297097.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0259.namprd04.prod.outlook.com
 (2603:10b6:303:88::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA3PR11MB8073:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b72c55d-6db6-4728-f891-08dccbc1f285
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?65oZerJGsw/Bo7IDBtiKXr4vQQ9WZiOhosXE2Es1DbZogQAJ2RcSOF8wt/1g?=
 =?us-ascii?Q?cd0Yu9sgtD0D1FlnH3hEB8OHwaLd055EoADn/Rgjv2G9goRKCRoHQq4S0LTZ?=
 =?us-ascii?Q?EanYI+gZkrpaEKvfKFGOf1qwaEeMtGXoxLE99OJJuTQI3GJ9aB/l+IOKw0r5?=
 =?us-ascii?Q?kZqlIyxjguArcRxkWkmUf74SvkrhWNpDq7UIEgNC6XS+ICiHxGfkIsXNnmui?=
 =?us-ascii?Q?xhoyK5InueZyd1DeCBXvDoQZFQspO+uaQKfOK0TLkpowoyNcbVTlDUd4219e?=
 =?us-ascii?Q?HlE45408sbHQlyFARw3EeAaR82Ie5qynQy8j3iYDNcOYyyJzyYUCucpPAFdn?=
 =?us-ascii?Q?z3U49lKXSKiOVngbu3mlumxc5LqtQZhoAIVXOe65PSUylI2ggKSbCK/aYjDa?=
 =?us-ascii?Q?Va752ZWKva2yCt/3EBFC/E5njd4Xg3oGz3LG6Egn3JaIhn3U+HxxztGF9IVU?=
 =?us-ascii?Q?/O0joDKws76Cf3bRi8GKxM84hxK7JXw6Il4H8ciNOojUkoVE57s2JTcpzSRx?=
 =?us-ascii?Q?jtR8DB7PdMMM7Q5VR8TzPYQqjQcwJW0KpQ2OFbEmSk1TKVMJV+eE2JcF5h1G?=
 =?us-ascii?Q?4/drsPq53mDSml8R8ZC5P7IYhyPNo4TNMRaG4wrHZK4nyCP4yc2KBbJd0c4K?=
 =?us-ascii?Q?Q+xNn/JhJRFLRvYS4oLJw79kzfHx5O43sd0BSdv1+P229OwOos0hpwPD+SKx?=
 =?us-ascii?Q?B2EF+MgTnJoJPxl4DnReyq7dCHOZEFbJyO7Z1ZPcCp85+muUEDGK59f/HEKJ?=
 =?us-ascii?Q?m2jefG7U8OEtoL5YPz34L2D540etCwPAnBgIAWL1wQXGXvW+SYXObwsV+Dm2?=
 =?us-ascii?Q?qf6N3qJtEABOg+YvgFrELkhLFE9rawDjvhIaJe6a2WWjm0dJwF+m41hlyjga?=
 =?us-ascii?Q?i0BasNz11U540pFXKPk72erTfmYY+aQLMsBUKnGD0cjCi3/ph2UTcBZu2lNh?=
 =?us-ascii?Q?CG5ZHLeTKXN7fOP8XehnqymNaeOH5VfXG9XV2zZ0VxRx1UNGj99a/v3EeG51?=
 =?us-ascii?Q?x8cjsTKxz7ds/6U7xsksqlN/RUAAyV38h60iI4CP3agdZ6yTXXa+GxHDpnut?=
 =?us-ascii?Q?FS9DkwQq1GujpA7j+Grd4NjxHvLma9yDRJmgXxip5j/tyDCO2UGdeSPokdXT?=
 =?us-ascii?Q?lMb2+H4XkB8I7HuVQ81xaXKqWd7W1vuxKm8BIh3svFuVVB/bm6QgDf+d36ws?=
 =?us-ascii?Q?7jJEAfNeut6F5o2yrnLK896UU4J57aFbsBmpaYOqaoZ/PiEJRbXzrLQuUwA/?=
 =?us-ascii?Q?z71XsEz+nt9hioAPEd8guUYxqC9b1iuBx4n5PR/GTVAdPotnwUurc/TQMsDN?=
 =?us-ascii?Q?G5toiPKW0yqUJF1Ub1bUgS4apb4UxtCkreu0/gGm3hfReA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l9z/lVRvk7rq6lzuPxfA12XMsC9ozgAb4nfHS7PxnEUbpy5gMPqhg2J3q+gU?=
 =?us-ascii?Q?Oi3ZZzcUU2k0WSP0IEGGJgKyJj71snME1KpdD3+lGtOojYK7leYDNG1LKmtr?=
 =?us-ascii?Q?g/5BWEHLjBQXQ9TYs/ynqWfwvpz46wh8jF4U12Kb45vy+MKEa3dNuoPcFXSV?=
 =?us-ascii?Q?DaluUo9LuKZhBtoA58/3gN2HUG/zIScUxj4/nk+kaf8vog995/JDNh7mY9kb?=
 =?us-ascii?Q?x6z+U1A46XsA5eJXZ9+ooJHgpEqsz0dawdtvO1c5kAsAa5JsUM6P7Q0RqnRD?=
 =?us-ascii?Q?oDEkAgVZ9/Ubh9qGAXXpuKeQ7vuqgFPN/+Q1tS0vprbb3Ahua7HQ4UHpjYza?=
 =?us-ascii?Q?h4fgSnQtY5TxILWACdfImm14eUJi2yunJaSnISkE0yra6JbVwYfXkxinkZMK?=
 =?us-ascii?Q?Yhti3rEhko3wKv9xLmgWodHxl/7dwXiUFB4UpcNLhBRUW9ihg3NQGI6rEvoE?=
 =?us-ascii?Q?v/2J3oBn6zd0YIbk6AQJMVFeuAGiqcV5WqMadzwTb2af1lcZGWD6DoAmOHGN?=
 =?us-ascii?Q?mbyLOWxEM7pfV8xhqjiW9VC5ojSBZ608eS/Uwm24JcsBnXuE2gLS2JR0eI1h?=
 =?us-ascii?Q?2oAEy7dWOsYV/iFDLP9OdC2Ksu9X2xjC092mC3LLH6Q6lcMHF5TawEOSgRL7?=
 =?us-ascii?Q?tCx+3MU0PTNw7ZIxHJ5B+f3t5I5ftXX+BSUxlr8sOvqK1NyIuyE2Hz6w3htZ?=
 =?us-ascii?Q?N142XljK4Gf91G7cT2EHRR+8/YlXjaBNt2YQQvyvKiE/Exr/CoSIYaMitUIp?=
 =?us-ascii?Q?Oq+r3UCPl7LQQ56aOUfrCujRYujuaRrzH8dshobyonxLUb17tIh2SPEyfZ4u?=
 =?us-ascii?Q?JVqdEoGBGIIvquZgdyizN3cDRZAvRrVsEDzc/8Nn26aI6227zAG+ZZmVLLUh?=
 =?us-ascii?Q?yJASVRbm7qiISmqrEujLGX+nDMkkl33kd5n9j+UnU5YiyYvdz0lec+/aHeus?=
 =?us-ascii?Q?L4kVHHuKsamqF+iYSgMpA41dUaq1U35um816IBJxV8Hdk33ehCL1AypGArjK?=
 =?us-ascii?Q?oF70s5wahlSIERJ/WA3aTpOArWKhstg6ny+lYvRunM/oYdGUxKm52LVM/mHj?=
 =?us-ascii?Q?lAlOvwEmgKLG4/fenNPZjb/FQGve/1KD3amWpTjPugyawvAmGhLrn1/mQbxi?=
 =?us-ascii?Q?ybeLB2P/ay/g/OY1Q9l3KsC45e0DHeOdy6QOIpQdHk281KmQd/Us8NOlp8rC?=
 =?us-ascii?Q?+jQ60Juy0WiGszjO3HgAnC8At6I7ujQVoF4aK1dnaTd3xkhtK+08FnTNoKm2?=
 =?us-ascii?Q?qtMB0hMN16qk11hB86Mi4BGm+H9kvDteeTISMQqqpRx082aVWHBdn0uG7cSO?=
 =?us-ascii?Q?ja+xALT+lAnnqFV1Z5YShCFcRF2FheOkcy0xk2GaWQoj7t6a3Wrtf0sPWQ42?=
 =?us-ascii?Q?IYJ3blY1kjX5IcZ9ya6UE1x1+sL1PheYKROSVN6doUvlC3qnr5V+4YUnwSqV?=
 =?us-ascii?Q?jVj7giEv6UYWUBPkV1nPLYsihpgND2u9weSeGlzHOCavkI/8qoGWVRayuIKw?=
 =?us-ascii?Q?Z5YgpKOMyGLTwd8qiMLilcWYOvKugwZYV/mkhyHBJFqKWRWK+kr3ZeSEdnS/?=
 =?us-ascii?Q?YA1NKjxz4/ewSX/Eebt/xfTGTvd/ZRqNR/9Ufn6i4uEQYoEmjzvCYhNmigbz?=
 =?us-ascii?Q?Kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b72c55d-6db6-4728-f891-08dccbc1f285
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 02:41:43.8664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J56cgDlQPHXAWtX6XywuOIMWgJZMiUF7myNR2IsXEA1SbDz29oTIO+iG6wXSoe7EziiSvkxm5iTe0L13K0eTReb85e6cfFN/cy0vg8nP+/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
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

On Mon, Sep 02, 2024 at 08:13:59PM GMT, Jani Nikula wrote:
>There's considerable overlap in i915 and xe PCI ID macros, and (as can
>be seen in this series) they get updated out of sync. With i915 display
>continuing to use PCI IDs for platforms that i915 core does not support,

humn.. but display is not using a separate device. It's rather the same
that we bind to the xe driver. Why does i915 need to know the PCI ID?

>but xe does, the duplication will just increase. Just use a single file
>for all of them.

I'd expect PCI IDs to stop being added in one header and start to be
added in another.

Lucas De Marchi
