Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA218C2D875
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:47:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A73910E4C2;
	Mon,  3 Nov 2025 17:47:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHCfgOUc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D1D10E4C0;
 Mon,  3 Nov 2025 17:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762192058; x=1793728058;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g6MTSTYEbCOxL4q/G8SFkuZ/h0mOI6ZkMDFQ2YqsvpQ=;
 b=bHCfgOUcS/K0AIbMtS0K5SWEVZ8SqIIylIvX/1Nspg3BrvEmy7bsSu6z
 Z2217LEK1cvvP3RmyltBO+Gv8JR69taSnGjN2Vn/sKlmEXKln8zxETfc+
 LRpAVa21ifpoTA/W0t3sFagrCW2opkThOMm8S6FO2cEsPtF4rXUsDS23C
 0yyXVMRUryeOMmXdQ4y0VeHUJzYtfECeRifzyYhwQllHi/g453iN3eTuP
 TJe0Y0BDOWfpWHBl9jqNCnCwujMoCUyDgXCCFSQ41BTuKAs17W4NZWszj
 fxYXjyckFFi45000DrE2u5Vz5dNgQ3grHzg3rIK4J8ar7NaBskA7H7/5O g==;
X-CSE-ConnectionGUID: Qz+xACJASw2SlyvXtT2TIg==
X-CSE-MsgGUID: 6mu16rP4SQ6SX+pfY7xUPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81683532"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="81683532"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:47:38 -0800
X-CSE-ConnectionGUID: wfXDrtTXQUWNAXDdLilA/Q==
X-CSE-MsgGUID: a4Hacj/9TfW8tlaIn2Thvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="192089635"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:47:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:47:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 09:47:37 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.20) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:47:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C2b33/SYNWrUmCZsPS27QhvGE8YjqcGYppxVLiGgrrCecOetCfCBsRTWanUDXjtDZ97zYluW8KRXS2ysE/8hnoMigVE1feThNrhV3z9lBWGkvVsvG8/CBBmeBU5TqSumMZR7ig3SDrZ+jukcOryuCmR/Wz1ZSGqtIzxtc1Mu67cqcqARgVLCjAnQ/0+XRxzsGqsV8HAs9xpPuGP4hG2B1N2wEirfkk42rmVq1/Bc3Csj7quRZbUF/K8XLb9atOKlCatmGJxbvlCNVGZlynrR+YhT316//M9BnfjipfltOHNJlhZf3FecWNfMWYeuYOiE5ttUCm1uZlm4wLhXPCzybw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VkGWg159d4sSj+58cIdkPv0kmsbwTAXwexIrTxg1LTo=;
 b=vxMWE2nfaSiPMKSkB+7FXDvf9a46hVUXSjddLGz7u2RTLoOJ5vpgS/Q/dzHk5xRaEJllXnIZFXXyBNi55MdXzU8oKiVyk9MWJs0XoDDWdagnvzhUP1Rlxhhd5XMlYu58Rz12Ok8lmfYrbv/r+L9T4DuzLA2ikSxT6RAvw/Wm1aYXiHRKn9F4gdayfat2M5pUEaOKZnxfouhqxaErQQy8phKKZYEYzY+grp/xo7OfzENfKx1pUzc1rM8kl082LwDbbPTX3NWvH5qLbwWjtYtPmeM+sLuRL0I4pzCHESJGD6nH14aJFgWEAvbwPjFZvcG1G4TAttdzNhbAd5jZlVLr8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA3PR11MB7609.namprd11.prod.outlook.com (2603:10b6:806:319::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 17:47:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 17:47:35 +0000
Date: Mon, 3 Nov 2025 09:47:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 18/29] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
Message-ID: <20251103174731.GG2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-18-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-18-00e87b510ae7@intel.com>
X-ClientProxiedBy: SJ0PR05CA0153.namprd05.prod.outlook.com
 (2603:10b6:a03:339::8) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA3PR11MB7609:EE_
X-MS-Office365-Filtering-Correlation-Id: 62cb463f-5b90-487a-9be9-08de1b011211
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oSkwr5u3XjkNZ/XpRUm85OphFmwkQkdvUhRVcRK1S7phg1NBhv1KiWzyEBmL?=
 =?us-ascii?Q?IwfNoIQM6VkqAn1Kro3LYT0ySu8wPXobE1jXMzBPeZvglT/EcKD0DPC42gQE?=
 =?us-ascii?Q?cf381XC8whYm5tZYlJDf3YPDteCcgFE94JyR2aVRfGIQbtJt9yfG58sXBmBV?=
 =?us-ascii?Q?mDifauXFAzR3T9MqRYX8FZhsHsoB7vTNnj+a1wYH3o/XDDIKlSynehg4ozWl?=
 =?us-ascii?Q?whxPH2aumcYMeUCAikKHRyIYowOvXmusVNN2BfdIKMhwOqqZwwVXduS71BrR?=
 =?us-ascii?Q?ON/OmFg4w8E81Inhwte9jIl0aOn3KLqU4cONW48z1UPOLfQNru2fh2ej8gpa?=
 =?us-ascii?Q?k5Lg9tz6I9HwdOWTfT5FF7XiqBagd8gO4rv5nvnROUHP8cbKERdKQ3Gj7mvN?=
 =?us-ascii?Q?vwg1GohhRg/NdPGCYP0MJ15kUQVi72aKvSU6ZvgHMhnCy09GjyaQJAyr2nGN?=
 =?us-ascii?Q?s7jj98sgCQTYrRSYoVPCCW1UeGw+BqhzCvygGdmayzEpn5An64DmJN+TCCj1?=
 =?us-ascii?Q?3bi1bRofX0aQQmwOeouazVH40ZpB755a3t2yNlLfU6o6tQL7lIP3RabS53Xf?=
 =?us-ascii?Q?3zdsFtiNxOFNkdVgUseRzaJwD0HUgMKA+hb6Lf8yR1IaLp3YCorzaZzIZHHj?=
 =?us-ascii?Q?98nJ8L2mvjazkzm3OmjB/CTomLluvESezFnzafj9Ehe/AeKP7506cGSjRCbK?=
 =?us-ascii?Q?QTw9QWX/OgnI5qTPhqAIQUr/6QbIqtLjdJnKygQRmgNZMvEae/k6HJxhGwwA?=
 =?us-ascii?Q?QbVFxK4d/TbNo0JD3xGnPns4iz8F+49YA24kNtwSRCGptyaonc7QuVO2gLei?=
 =?us-ascii?Q?JcBRm8x0xTmlmdo5sLpidK7pgxiHJycKfX1othhxEPe1V4pjAZ7Fl2aVLT0V?=
 =?us-ascii?Q?vzDR5OwNfgEuBgfQM/OXfJofb6oNfe4Mlk310XnWVT6cKhilBvFXy6NYxhzK?=
 =?us-ascii?Q?O1kfESRSbmNzQJCKxXS2Biz8cm4M+/W7oBYVKWLYLUl+xAJwKcGFzVmzeoG5?=
 =?us-ascii?Q?n5TkClibvanq61tvgPEPChql75MzD66oL+WYzNA6euhHCY6ykfu+7c0SzbBI?=
 =?us-ascii?Q?0a/SaO6qt6A/LCqP/+lkGWU9Ym7N/VU8qSEilXqK+6DSClvKWyKI5LjVSO6c?=
 =?us-ascii?Q?Kg6ccOXzeFiYpzC1O19DTx4jr4Xa5FEVPJQVoyIzI9h8fWOkYNAPDVTo+Ahz?=
 =?us-ascii?Q?gNrN66fHVEBXV1wL+ckxJ1AgOEZ+mMW1adjdUrg4t82yzjgUiljXhilCjwY0?=
 =?us-ascii?Q?NIGgi4GDx3ZfXv44oPwoQm56rXdgQ0SXGJSe+97W9LCazxTGlRpO5knawRsu?=
 =?us-ascii?Q?fgR+eh8T3Z8Tx4g700RyRIOF2G6Il8xAX0SRGFL6oLiUw52doAncXnOOe3zq?=
 =?us-ascii?Q?Y7DkbrQS5cX5FQ2KisAO85CWRQNvY0RVkWNZsJ0d+BZUJivBh8258WmQb/IO?=
 =?us-ascii?Q?uvLeQWo/vF/VXkoWR515OhSOeDR4+Fpj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BTsz9gCzIfHMrKViZPHiffcBwkGJ2LfIGAPEWIN/3qK0wekR/Ip4iU6jCou9?=
 =?us-ascii?Q?wLGQLNbo24Sye7Q945DtQPjMPmzVOqpbF3bgs1ygOZAlVvdbDqlHIS4V+C9a?=
 =?us-ascii?Q?thvNuO7cNsm1VzICjqud2FBHWaJmWDParyjAyaZkn7JCT++fGH1vzEorTWBl?=
 =?us-ascii?Q?FL91nXX8uHW+AqFPBD2BYff+FnI1P8CKWFbVQtqug8kUL8IQFvmjzMQQ77pT?=
 =?us-ascii?Q?vaNaTmWvyBH1/oQS00iGg2/Pvjxm22iyirJAGcMUU9HDwf/dfHq8DJK+Rmu6?=
 =?us-ascii?Q?06vLNVliLrOX/Pau4+X/hPHb/ii/QricoIE/ckLbol0AZkBdI1mFaQMp4ufQ?=
 =?us-ascii?Q?ULg5TVkEvg2fl6mv8X9igWZEzJRbxpDIx1ic60Wqbs0luboXWT9NBHjzqylS?=
 =?us-ascii?Q?l7RFy78Zuspo0o/RPpCPfG6xOQ3eaBQzxXgetuDjUbdb3ZDqLHGwq9QUwRYc?=
 =?us-ascii?Q?5qyVXu//hZURIEegMmTsr22DeFjxjRU1QPksMfrLSRHneqVyYrx5ttqry7/Z?=
 =?us-ascii?Q?mFP/jpATrth2bQ8qeWMa0+9cMhsHQv6uOugvN+RN0DlHWgLhz639YyOKhD+k?=
 =?us-ascii?Q?J+2+AUGpW7O1MObFKernJD/OxFaFFarkfX+Ra3zKxLLBedFd2YmVzj2j2wTx?=
 =?us-ascii?Q?I6nzNygyinxN5Neclw/qwzLaR0Sr/blxAORiwIpi/U1+4XI1LT9tNVqrN8E+?=
 =?us-ascii?Q?7EPjGocgRM6KKBJ3HzDLkNEMNrDF0c+3YIltwg6KL5eLCQsnnr7tBfs0peuX?=
 =?us-ascii?Q?NELYnBhEss2MUUUH/j92z8lH+v4NwkcPvJ4/lW2DDHJTx3R+4+vmqk5rfiMk?=
 =?us-ascii?Q?SEyX0fKy01Y/HPH+zvnQ5GuNaiY82B+YEuwc1Qs7fhl0mJosRUKR1MScKfx7?=
 =?us-ascii?Q?FHuxnV2TROLC0etXeew5mBbFoGBTssQitC4gA0z+W5LkQ9C3+u9uR7JoduxU?=
 =?us-ascii?Q?WxyVMORDVOifXjFboP265niZNlP1mTxHhYxyun0CQVbjBMeTu7H4+zO8Tfnv?=
 =?us-ascii?Q?tWnpkfy2ZOEEinZzN8WzPyizrbbpdVTBXeVVjtyKuLuJDzFl+kq4kX7405MT?=
 =?us-ascii?Q?l1eLoXBIjaePHVoMpKTxsLz0YUx4SpqMqsYg8q9NVnD0UInvGH9Mwn7iaUmX?=
 =?us-ascii?Q?uCNV3+SKnGLcuJYcGY8mr/wAtWBvH6r/QbVNI5Z/u2JuD5W1rAAUXFKk9aQV?=
 =?us-ascii?Q?baN/dGvn4zUMBMTcYLUBCYq8yB22MLDQ66oLTe5nWL2tcdRTrUHDg/IPRAkF?=
 =?us-ascii?Q?6QfdxPLnOFax62gOfa6IEiuPHqG44gAPkee14weNPNkRdrB+uMm43ZpyrVnd?=
 =?us-ascii?Q?2qk6ykZYFNfl2sLHsrNWh0zL1xKCwZPVfjK/yOt2pCQgCPaVzZPe9s4+Lui0?=
 =?us-ascii?Q?6LOSsHhw4ZWqHAHQ/9jrWH+1YVeBWTE5yibs38lTxz4+lv+yvTV6/KHcE1r3?=
 =?us-ascii?Q?nLyMCfpuCyIGJgnQOTWixf1z34Gxni0UoVcI4YLt3d2rxGy+sx0zc7zUfvuC?=
 =?us-ascii?Q?jP0vNnHPS+7M5PNvxcA5KyqM6mQWzLPEtQQWFGJjIBIU7uM7EaguhN0sPQz1?=
 =?us-ascii?Q?up5awHAaDwBS2ZOBHFbjOunhk7qxczZpoEpPhT5zqq0dCATmke9m+V3jAzYu?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62cb463f-5b90-487a-9be9-08de1b011211
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 17:47:34.6931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UMy0XQMgRNGtHUsXPpNW9sDY8g2Y9+wFvGOpaAm/J1R3hrPrJt4xx4XBTCDPD4s6Y8slTwXQKyKw6y5d8zV9EqPTEzcJ31+sZsgAbBJPO3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7609
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

On Mon, Nov 03, 2025 at 02:18:09PM -0300, Gustavo Sousa wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Xe3p_LPD updated fields of registers MBUS_CTL and DBUF_CTL to
> accommodate for higher MDCLK:CDCLK ratios.  Update the code to use the
> new fields.
> 
> The field MBUS_TRANSLATION_THROTTLE_MIN_MASK was changed from range
> [15:13] to [16:13].  Since bit 16 is not reserved in previous display
> IPs and already used for something else, we can't simply extend the mask
> definition to include it, but rather define an Xe3p-specific mask and
> select the correct one to use based on the IP version.
> 
> Similarly, DBUF_MIN_TRACKER_STATE_SERVICE_MASK was changed from range
> [18:16] to [20:16]. For the same reasons stated above, it needs a
> Xe3p-specific mask definition.
> 
> v2:
>   - Keep definitions in the same line (i.e. without line continuation
>     breaks) for better readability. (Jani)
> v3:
>   - Keep mask fields sorted by the upper limit. (Matt)
>   - Extend commit message to indicate why we need Xe3p-specific
>     definitions of the masks instead of just extending the existing
>     ones. (Matt)
> 
> Bspec: 68868, 68872
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c      | 16 +++++--
>  drivers/gpu/drm/i915/display/skl_watermark_regs.h | 52 ++++++++++++-----------
>  2 files changed, 40 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index c888b0896d89..d20c88ebe919 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3479,7 +3479,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
>  	if (!HAS_MBUS_JOINING(display))
>  		return;
>  
> -	if (DISPLAY_VER(display) >= 20)
> +	if (DISPLAY_VER(display) >= 35)
> +		intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,
> +			     XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
> +	else if (DISPLAY_VER(display) >= 20)
>  		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
>  			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>  
> @@ -3490,9 +3493,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
>  		    ratio, str_yes_no(joined_mbus));
>  
>  	for_each_dbuf_slice(display, slice)
> -		intel_de_rmw(display, DBUF_CTL_S(slice),
> -			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> -			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> +		if (DISPLAY_VER(display) >= 35)
> +			intel_de_rmw(display, DBUF_CTL_S(slice),
> +				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> +		else
> +			intel_de_rmw(display, DBUF_CTL_S(slice),
> +				     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +				     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
>  }
>  
>  static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> index c5572fc0e847..abf56ac31105 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> @@ -32,16 +32,18 @@
>  #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
>  #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
>  
> -#define MBUS_CTL				_MMIO(0x4438C)
> -#define   MBUS_JOIN				REG_BIT(31)
> -#define   MBUS_HASHING_MODE_MASK		REG_BIT(30)
> -#define   MBUS_HASHING_MODE_2x2			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
> -#define   MBUS_HASHING_MODE_1x4			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
> -#define   MBUS_JOIN_PIPE_SELECT_MASK		REG_GENMASK(28, 26)
> -#define   MBUS_JOIN_PIPE_SELECT(pipe)		REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
> -#define   MBUS_JOIN_PIPE_SELECT_NONE		MBUS_JOIN_PIPE_SELECT(7)
> -#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
> -#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
> +#define MBUS_CTL					_MMIO(0x4438C)
> +#define   MBUS_JOIN					REG_BIT(31)
> +#define   MBUS_HASHING_MODE_MASK			REG_BIT(30)
> +#define   MBUS_HASHING_MODE_2x2				REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
> +#define   MBUS_HASHING_MODE_1x4				REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
> +#define   MBUS_JOIN_PIPE_SELECT_MASK			REG_GENMASK(28, 26)
> +#define   MBUS_JOIN_PIPE_SELECT(pipe)			REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
> +#define   MBUS_JOIN_PIPE_SELECT_NONE			MBUS_JOIN_PIPE_SELECT(7)
> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(16, 13)
> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
> +#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK		REG_GENMASK(15, 13)
> +#define   MBUS_TRANSLATION_THROTTLE_MIN(val)		REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
>  
>  /*
>   * The below are numbered starting from "S1" on gen11/gen12, but starting
> @@ -51,20 +53,22 @@
>   * way things will be named by the hardware team going forward, plus it's more
>   * consistent with how most of the rest of our registers are named.
>   */
> -#define _DBUF_CTL_S0				0x45008
> -#define _DBUF_CTL_S1				0x44FE8
> -#define _DBUF_CTL_S2				0x44300
> -#define _DBUF_CTL_S3				0x44304
> -#define DBUF_CTL_S(slice)			_MMIO(_PICK(slice, \
> -							    _DBUF_CTL_S0, \
> -							    _DBUF_CTL_S1, \
> -							    _DBUF_CTL_S2, \
> -							    _DBUF_CTL_S3))
> -#define  DBUF_POWER_REQUEST			REG_BIT(31)
> -#define  DBUF_POWER_STATE			REG_BIT(30)
> -#define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
> -#define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
> -#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
> +#define _DBUF_CTL_S0					0x45008
> +#define _DBUF_CTL_S1					0x44FE8
> +#define _DBUF_CTL_S2					0x44300
> +#define _DBUF_CTL_S3					0x44304
> +#define DBUF_CTL_S(slice)				_MMIO(_PICK(slice, \
> +								    _DBUF_CTL_S0, \
> +								    _DBUF_CTL_S1, \
> +								    _DBUF_CTL_S2, \
> +								    _DBUF_CTL_S3))
> +#define  DBUF_POWER_REQUEST				REG_BIT(31)
> +#define  DBUF_POWER_STATE				REG_BIT(30)
> +#define  DBUF_TRACKER_STATE_SERVICE_MASK		REG_GENMASK(23, 19)
> +#define  DBUF_TRACKER_STATE_SERVICE(x)			REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(20, 16)
> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x)
> +#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK		REG_GENMASK(18, 16) /* ADL-P+ */
>  #define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
>  
>  #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
