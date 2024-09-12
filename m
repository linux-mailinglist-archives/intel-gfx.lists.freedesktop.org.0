Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 089E59772D2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 22:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0576210EC51;
	Thu, 12 Sep 2024 20:43:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z3ijOkkA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D934B10EC50;
 Thu, 12 Sep 2024 20:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726173783; x=1757709783;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=1wv2NJRCZMLh9FXqur9Z4AAI5/+698OSK4Cfv4EMlUM=;
 b=Z3ijOkkABbYFx/9uIN2fWvPaW3/Ikj+HDmVAbTj54Lnx+FFe2or9Y0hU
 +2O2dIRWVK2Pd5RMjNVxnE2zEFW7Y7Ln4y0qale+wM5WokUuELiYT+XOO
 VAV5P5nS7hlviVVmZfAFg3rMEBmXhhAQm91IV0/1ehszUirYsXhkOJBNZ
 jv7XcPV0n73KmeUukymuAXK7bXPkyMKgSbHFuSg4ulltkIngRWT97tRkh
 o9V1QEwqEB1/i+xuwXraiWqVRIkp0Jn8FuFxsSq+Gj7rYT7ga1ShWvOC+
 sIu6xn7lJouC1xqpKveTWwlO8X/uGW/lSxAKYHuUp2nWUg2GAqAb0TjWr Q==;
X-CSE-ConnectionGUID: qRtQjYmfRtKQ3XgFF8Ierw==
X-CSE-MsgGUID: T7pfpVQ5QmKJ4FTnynPFYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="25181147"
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="25181147"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 13:43:03 -0700
X-CSE-ConnectionGUID: XbpQKPqNScGbecgm2Csg0g==
X-CSE-MsgGUID: dYRq9Fw9QKObDHEHgtpsPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="71937701"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 13:43:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 13:43:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 13:43:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 13:43:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 13:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eO6Wokp+1ptyievFA0b3fd2oHe99dkTgpcVRbZ2k37JrvbOtFwnSRaKqVTwFxl+2PQsgJ9Jrqxqh7th4shvbqt78NaEsP55Kf3l5H9oa1Ig763O+1w3CtYtXIO14Le/joJq3b3NdQSS+OCPdSJR87wQB7AwN2pX8rXkYjQ7/LV1rDIZrj0q3+8jfIY/hvyA6MZQWrGSiNRLpKxeXuprvkCiC14DYnRzc1u/AOTWQxtR93nmw4fj/PD2zuyoObWwj/rp+1ZD2d5BNLEJ1SUqPDxsBFR9LnmrCrt2Zx1Gd2zi0hTPPw0Ip2PxMUMYj3btVi234b30cEkUgmu/GGTtm9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FJZuOnPsMMuGVjaTCxOoTDeGtCI0+U+LkBjizom/RYY=;
 b=hepq54/sq+BtWChxzsSyhx018/7XH8qwL0m76EfDTgEnWUo/y4ODGFEwHWzpy7jO4bd6mDMeGgURbcAeGyOv3gbQVLl+VikYHxEiFU7mRy3/F09cvDkSbfQ/l3GTLs70xDxZqtjrKYS/NMGYE+IhSS2K10mdQ4dBSDO4Lg/e0WtiUKW0Py0Yy3wBdR1X8vu22rN5rT1nPwBqt9MkQx4fgkVVI3ttHGZ2sMR8dDnEgwmXts/xxDEG03PFkq8WwnmaX/FoHGU2sybgP2psqjQSTs4vOI+hP2A3DaI6EG6wmg91NA7j4vhRlwqwKHgpxlLynqBmwTH0U71+N9pOEcAPBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA0PR11MB7379.namprd11.prod.outlook.com (2603:10b6:208:431::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Thu, 12 Sep
 2024 20:42:55 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 20:42:55 +0000
Date: Thu, 12 Sep 2024 15:42:52 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Upadhyay, Tejas"
 <tejas.upadhyay@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Teres Alexis, Alan Previn"
 <alan.previn.teres.alexis@intel.com>, "Winkler, Tomas"
 <tomas.winkler@intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>, "linux-modules@vger.kernel.org"
 <linux-modules@vger.kernel.org>, Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Message-ID: <txrby642v75jkffzgsc3a6k5hdkcv3ebf3wuksg4v6ojgpcpvh@uwsjr4ihmi7i>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
 <ZuBfwqpIX4HAGwb1@intel.com>
 <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
 <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
 <b3gmlgx6tl5uyzsdsp6q36blhzchvhpvno25tvwrj6nnu23dmz@rkacgyjoxsru>
 <DM4PR11MB5293DCB20388C7BA5950369A9D642@DM4PR11MB5293.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB5293DCB20388C7BA5950369A9D642@DM4PR11MB5293.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0133.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA0PR11MB7379:EE_
X-MS-Office365-Filtering-Correlation-Id: ae71065a-6ce2-46d6-fcb9-08dcd36b7a90
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?a5dDeLMgIR5im9BoxOQbhcNnK2hO334ZcogQuenYuaJfLzZ2PqP0P+S5QM?=
 =?iso-8859-1?Q?KOXZSvkYvIz5xbaq5IWMMNE1yvSBDcD2UkCv/wJyNQyIqcvRGtZ+U8hmYG?=
 =?iso-8859-1?Q?L9gf55KkRMFfSzus7f8Mltw3aZKFlTOeu6MHdk16sc/YmNC0S+8XxmaIyS?=
 =?iso-8859-1?Q?pViaQUSMWZ1wSvs1D5EkfLlqyWoBoRJiOe2a4KFh6m2gslT+IXDrtv59yd?=
 =?iso-8859-1?Q?bl5EmyKgqP5tjwaBJSmGvSuV5KZxOxu5p60nJBdU50WS/ndBpbH2LmTLe3?=
 =?iso-8859-1?Q?AesH21aK/pzwZv2zel+AKRsGPHs6mqWMathkEJTsSSZwpV3oPKMV1aaDg9?=
 =?iso-8859-1?Q?66qzeGdr2qkVUEPk0knCMkqpbMzpRjot2UD5qVEYYX5fqTwOaRBBhmiSDJ?=
 =?iso-8859-1?Q?ri5GcUhkBaE66BaCUNTJedHn3OQCiMdnlWssywxaYZiH2WQUgoNGzrxnWf?=
 =?iso-8859-1?Q?DbPd22IoB6QZlW6WUB56ip7g7knlxRo7qCUnaM+isZxXT9wgvn3YT34sgK?=
 =?iso-8859-1?Q?DMVpzA3Dy32vqdUovTOd62oAFABb3gyTlulCv3et/4+EI7t8BfxbEQiaz1?=
 =?iso-8859-1?Q?74yrT3ETXlBol34g0u6hukGOf+O9Zhwhqr+RD6MXtu3qqIzpWwafVgob0B?=
 =?iso-8859-1?Q?OJ5I97s7Nsb2C3yeioHn5Y+A1KKprxFrga5gkK8NYWR95Leur8D50dDjyl?=
 =?iso-8859-1?Q?M7NNMlGLqTFdQh6nFB5r1JStQjhBzc1SLEpbQL9RZ+QZqpcQLwAS30ffgx?=
 =?iso-8859-1?Q?e0+OcJuSdAB/WwsnCttJ08UdWnA4OjimIt4z3FWtfLcBAcrcVAdMhKHnhn?=
 =?iso-8859-1?Q?ZprNtso/EIu1O/V0oVsumYWAebylHz5JdXlDBLa3aVxduG9VRh7bqk1xnS?=
 =?iso-8859-1?Q?F9DgJQBMnHeJNWI2odiQ5zwlopXxem9wdBKVMdNdqgXJL3dtMy5rFiD8Ow?=
 =?iso-8859-1?Q?MTJlN4mQECLWQtHs6ecVjQ+cBRGOfmVgIO73yd5fIhLumaxeCyRrFLD75t?=
 =?iso-8859-1?Q?hyddzQPzb78LksprY4cPmEbq4usr+n8wDM0HgmKzutA7+BEk8Kh3Q2v9Hz?=
 =?iso-8859-1?Q?IQDsvlseGJrsWwISqLL33PwqwwOsNpOu5cXT5USTVKgHDwsfrDzgL3lwI7?=
 =?iso-8859-1?Q?6FOeBKcwOThkAQr9N9+4nYhDGMDeQxCWvGNHxn1MmzBuYvuvgX5J+df6xh?=
 =?iso-8859-1?Q?q+WseGDKsBzCsWlq2VBo5TGjnKDV6f+oZ/m+BhHctxaSAZ3f/Al3FDcBvt?=
 =?iso-8859-1?Q?aCPrQcKSnWhgULx/7g+OFWCPlgj2QwUmyfBMbZnM+h3B04B4CNZJ78bx3A?=
 =?iso-8859-1?Q?IEG7addplLlqvvGhIsCtpDXkITk1ElL2+k4zqphPRuBGHaY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?cER3kMPNgeydVs0zRTTRnWWkYh2r4ctvQG4cGDLsbCkEthFgnEDSYAeNfV?=
 =?iso-8859-1?Q?9lZBcgr9JeH3m1SMiWSgLjidp5Uaj7dyBH8p3JSSkSE/0J9tjTJQP/y3js?=
 =?iso-8859-1?Q?yjAoKRQd3crdOdG7l/2Kh0Jhp+Mdhb+0qTDjhISFh6wn5dZJH16+4ueyfe?=
 =?iso-8859-1?Q?y5yilfFzSDe4JLVO+YiPwRJIzA9d1ZRogSYrsGfBfwly3l34JlPPk1Fn/X?=
 =?iso-8859-1?Q?VCauT+SRmgunNtrS2sZ+AFm82uFSn62kJqGItSV6sa4TME4e5yJZwmeMAx?=
 =?iso-8859-1?Q?qiOs96SLIbpU8qkVsHAEZPPOY6e7b2BenhD/Uji0IG+qocwB6oeIjpfVG8?=
 =?iso-8859-1?Q?pUVUyQ/UVNN70XCF+forU/DQ0Dwlnv8wn7mfE03mcxX9U4LDebtKF8PnYg?=
 =?iso-8859-1?Q?/V9l95t8H+g2g0JAa+DPVxoP5oAHYYxqP9X2P9EKZmzp475orPJZyqAXVi?=
 =?iso-8859-1?Q?oOG4OtUZlVSR4MjK8/FAYVtbP4AOBx/hvBiA1vJv5BoRaEM64IbQREVLxH?=
 =?iso-8859-1?Q?m8odsl9A+m2SKylTwUuQfrfRb9utSd/iC/tlopch6/fkIrSHYQd6ZGsd0x?=
 =?iso-8859-1?Q?OF+K2kK7tuic263JOCyLJcBsSKsf6y200U1mS69CqzpGIk+j490c2F26Iv?=
 =?iso-8859-1?Q?OID9tXc5HDbsXUXPQAT8Uw2TefyHlbNJ0+Jv/UqF++8z6fj4mMLxgOu3/H?=
 =?iso-8859-1?Q?cfYyiYM++C+3L4nnWb4gBYyo+QXa8kovKZVXDh++LjwHD6s8UEKF9IZ7la?=
 =?iso-8859-1?Q?ZGJ1chsJLJxQDgfWf6q1Jh+kGX75WgDER+dU3VullHK1zefrz8ytXjj5Fc?=
 =?iso-8859-1?Q?YG3HAE3VNZU1TWon2EZJYbEyWSPnzeV32GPRSEqAIprKzUNtYkbbPy0NeS?=
 =?iso-8859-1?Q?08Im0CmRx9ZnV5Colse5RhdLH2pRHToZwio71Tmsb9VkRvl/JagN1pvar5?=
 =?iso-8859-1?Q?hwCHDtqGklNE7Lw/KEdY7+EGddO2mDQWwsPg8i1jw0Q8iYUCz0YhS/bucr?=
 =?iso-8859-1?Q?Dg61AXlEY3T4bQ1RhTw8ES/1yUjLSIs/MEB8GtoYwXyCfe50t/KsHpWTut?=
 =?iso-8859-1?Q?r+UwnD3WWwYjfVm58u/o07LaGHoQuKdcs4ooRfS1Le5t15YgwXDy7RW5+3?=
 =?iso-8859-1?Q?0NIr4Efv0C1r8QfR36eY1NHPmRpURcT9OVn7xKe4ff+Xq02AXIz8aqiSX/?=
 =?iso-8859-1?Q?Bs2OeJE+8t7yiWMNui3lvjKziGXAy95hjAKb6fTfMIf8naplHOUwhyKu8J?=
 =?iso-8859-1?Q?wLTAoolgrtPCkOBQTp7nvOeFoWhIsprO01wFtSB5FORkrrLhJNBxL6z+f6?=
 =?iso-8859-1?Q?jKfnMENPqwaiR5kRpoH46MmnM3vROo+MLtG+CN24AF7tXYksdxMsJSjKTN?=
 =?iso-8859-1?Q?hmywztCv5pLByF+ya80mVUsumTFuQxRhxMWdDZJSnGia8wNTnMVEphzyxE?=
 =?iso-8859-1?Q?MsO/DJHlOcxhgVvg3y2NdaQvzKaCXw83+DA6uetUYmw6IO7l4HFe4lptt/?=
 =?iso-8859-1?Q?J6v0mlLtQzPmk8dJ/EXrphor2GujwnNpzbLTRKvZDlnsrXUuACj3XYbNYg?=
 =?iso-8859-1?Q?Mr21oiBxGvsCNesp9OU2dSpqfesArk9JX0tJ5eSIxO0zEuh8ZcX/LMKg8r?=
 =?iso-8859-1?Q?vfeHH51huJnFfblwoMym2nHSqib/izGBjmTz6rYYMd3I/f0R2dsSLKmA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae71065a-6ce2-46d6-fcb9-08dcd36b7a90
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 20:42:55.4392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4JCjczDLRbPXOwLQ1AnPO2DxltICNVd7P7k0QvjPV/jIzuADS5wXzaaKy237A7yM5UvSNZZAilacHYhUQqAOmQbH5U/S6jmVswKWP0u1XcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7379
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

On Thu, Sep 12, 2024 at 11:58:37AM GMT, Bommu, Krishnaiah wrote:
>
>
>> -----Original Message-----
>> From: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Sent: Wednesday, September 11, 2024 9:49 PM
>> To: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>
>> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; intel-xe@lists.freedesktop.org; intel-
>> gfx@lists.freedesktop.org; Kamil Konieczny <kamil.konieczny@linux.intel.com>;
>> Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>; Upadhyay, Tejas
>> <tejas.upadhyay@intel.com>; Tvrtko Ursulin <tursulin@ursulin.net>; Joonas
>> Lahtinen <joonas.lahtinen@linux.intel.com>; Nikula, Jani
>> <jani.nikula@intel.com>; Thomas Hellström
>> <thomas.hellstrom@linux.intel.com>; Teres Alexis, Alan Previn
>> <alan.previn.teres.alexis@intel.com>; Winkler, Tomas
>> <tomas.winkler@intel.com>; Usyskin, Alexander
>> <alexander.usyskin@intel.com>; linux-modules@vger.kernel.org; Luis
>> Chamberlain <mcgrof@kernel.org>
>> Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI
>> Modules for i915/Xe Driver
>>
>> + linux-modules
>> + Luis
>>
>> On Wed, Sep 11, 2024 at 01:00:47AM GMT, Bommu, Krishnaiah wrote:
>> >
>> >
>> >> -----Original Message-----
>> >> From: De Marchi, Lucas <lucas.demarchi@intel.com>
>> >> Sent: Tuesday, September 10, 2024 9:13 PM
>> >> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> >> Cc: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; intel-
>> >> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kamil
>> >> Konieczny <kamil.konieczny@linux.intel.com>; Ceraolo Spurio, Daniele
>> >> <daniele.ceraolospurio@intel.com>; Upadhyay, Tejas
>> >> <tejas.upadhyay@intel.com>; Tvrtko Ursulin <tursulin@ursulin.net>;
>> >> Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Nikula, Jani
>> >> <jani.nikula@intel.com>; Thomas Hellström
>> >> <thomas.hellstrom@linux.intel.com>; Teres Alexis, Alan Previn
>> >> <alan.previn.teres.alexis@intel.com>; Winkler, Tomas
>> >> <tomas.winkler@intel.com>; Usyskin, Alexander
>> >> <alexander.usyskin@intel.com>
>> >> Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI
>> >> Modules for i915/Xe Driver
>> >>
>> >> On Tue, Sep 10, 2024 at 11:03:30AM GMT, Rodrigo Vivi wrote:
>> >> >On Mon, Sep 09, 2024 at 09:33:17AM +0530, Bommu Krishnaiah wrote:
>> >> >> This update addresses the unload/reload sequence of MEI modules in
>> >> >> relation to the i915/Xe graphics driver. On platforms where the
>> >> >> MEI hardware is integrated with the graphics device (e.g.,
>> >> >> DG2/BMG), the i915/xe driver is depend on the MEI modules.
>> >> >> Conversely, on newer platforms like MTL and LNL, where the MEI
>> >> >> hardware is separate, this
>> >> dependency does not exist.
>> >> >>
>> >> >> The changes introduced ensure that MEI modules are unloaded and
>> >> >> reloaded in the correct order based on platform-specific
>> >> >> dependencies. This is achieved by adding a MODULE_SOFTDEP
>> >> >> directive to
>> >> the i915 and Xe module code.
>> >>
>> >>
>> >> can you explain what causes the modules to be loaded today? Also, is
>> >> this to fix anything related to *loading* order or just unload?
>> >>
>> >> >>
>> >> >> These changes enhance the robustness of MEI module handling across
>> >> >> different hardware platforms, ensuring that the i915/Xe driver can
>> >> >> be cleanly unloaded and reloaded without issues.
>> >> >>
>> >> >> v2: updated commit message
>> >> >>
>> >> >> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> >> >> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> >> >> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> >> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >> >> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
>> >> >> ---
>> >> >>  drivers/gpu/drm/i915/i915_module.c | 2 ++
>> >> >>  drivers/gpu/drm/xe/xe_module.c     | 2 ++
>> >> >>  2 files changed, 4 insertions(+)
>> >> >>
>> >> >> diff --git a/drivers/gpu/drm/i915/i915_module.c
>> >> >> b/drivers/gpu/drm/i915/i915_module.c
>> >> >> index 65acd7bf75d0..2ad079ad35db 100644
>> >> >> --- a/drivers/gpu/drm/i915/i915_module.c
>> >> >> +++ b/drivers/gpu/drm/i915/i915_module.c
>> >> >> @@ -75,6 +75,8 @@ static const struct {  };  static int
>> >> >> init_progress;
>> >> >>
>> >> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
>> >> >> +
>> >> >>  static int __init i915_init(void)  {
>> >> >>  	int err, i;
>> >> >> diff --git a/drivers/gpu/drm/xe/xe_module.c
>> >> >> b/drivers/gpu/drm/xe/xe_module.c index bfc3deebdaa2..5633ea1841b7
>> >> >> 100644
>> >> >> --- a/drivers/gpu/drm/xe/xe_module.c
>> >> >> +++ b/drivers/gpu/drm/xe/xe_module.c
>> >> >> @@ -127,6 +127,8 @@ static void xe_call_exit_func(unsigned int i)
>> >> >>  	init_funcs[i].exit();
>> >> >>  }
>> >> >>
>> >> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
>> >> >
>> >> >I'm honestly not very comfortable with this.
>> >> >
>> >> >1. This is not true for every device supported by these modules.
>> >> >2. This is not true for every (and the most basic) functionality of these
>> drivers.
>> >> >
>> >> >Shouldn't this be done in the the mei side?
>> >>
>> >> I don't think it's possible to do from the mei side. Would mei depend
>> >> on both xe and i915 (and thus cause both to be loaded regardless of
>> >> the platform?). For a runtime dependency like this that depends on
>> >> the platform, I think the best way would be a weakdep + either a
>> >> request_module() or something else that causes the module to load (is
>> >> that what comp_* is doing today?)
>> >>
>> >> >
>> >> >Couldn't at probe we identify the need of them and if needed we
>> >> >return -EPROBE to attempt a retry after the mei drivers were probed?
>> >>
>> >> I'm not sure this is fixing anything for probe. I think we already
>> >> wait on the other component to be ready without blocking the rest of the
>> driver functionality.
>> >>
>> >> A weakdep wouldn't cause the module to be loaded where it's not
>> >> needed, but need some clarification if this is trying to fix anything load-
>> related or just unload.
>> >
>> >This change is fixing unload.
>> >During xe load I am seeing mei_gsc modules was loaded, but not unloaded
>> >during the unload xe
>>
>> so, first thing: if things are correct in the kernel, we shouldn't need to
>> **unload** the module after unbinding the device. Why are we unloading xe
>> and the other modules for tests?
>
>While running gta@xe_module_load@reload-no-display I see failure, to address this failure I have this changes, previously I am trying to fix from IGT, but as per igt review suggestion I am trying to fix issue in kernel,
>IGT patch: https://patchwork.freedesktop.org/series/137343/


it seems a mistake in igt to try to remove the mei_gsc module.
As a dgfx, it's even worse - what happens if another card is using the
module? What happens if I have a RPL + BMG and i915 driving the former
while xe drives the latter?

You shouldn't need to remove it.  This works for me with BMG (unbinding
all drivers for simplicity since we are removing the module... but if we
don't remove the module, then we can test with the only device we care
about):


# modprobe xe
# unbind
Unbinding /sys/bus/pci/devices/0000:00:02.0 (8086:a782)... ok
Unbinding /sys/bus/pci/devices/0000:03:00.0 (8086:e20b)... ok
# lsmod | grep -e xe -e mei_gsc
xe                   3584000  0
drm_gpuvm              45056  1 xe
video                  77824  1 xe
i2c_algo_bit           12288  1 xe
drm_ttm_helper         16384  1 xe
gpu_sched              61440  1 xe
drm_suballoc_helper    16384  1 xe
drm_display_helper    270336  1 xe
drm_kunit_helpers      16384  1 xe
drm_buddy              20480  1 xe
ttm                   114688  2 drm_ttm_helper,xe
mei_gsc_proxy          16384  0
mei_gsc                12288  0
drm_exec               16384  2 drm_gpuvm,xe
kunit                  73728  2 xe,drm_kunit_helpers
drm_kms_helper        241664  4 drm_display_helper,drm_ttm_helper,xe,drm_kunit_helpers
mei_me                 65536  3 mei_gsc
mei                   167936  7 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_me
drm                   737280  11 gpu_sched,drm_kms_helper,drm_exec,drm_gpuvm,drm_suballoc_helper,drm_display_helper,drm_buddy,drm_ttm_helper,xe,drm_kunit_helpers,ttm
# modprobe -r xe
# modprobe xe probe_display=0
# unbind
Unbinding /sys/bus/pci/devices/0000:00:02.0 (8086:a782)... ok
Unbinding /sys/bus/pci/devices/0000:03:00.0 (8086:e20b)... ok
# modprobe -r xe
# modprobe xe

I didn't check if mei_gsc continues to work after reload, but I guess so
as its refcount is incremented:

mei_gsc                12288  1


unbind function is this:

function unbind {
         vga="0300"
         display="0380"
         pci_vendor="8086"

         while read -r pci_slot class devid xxx; do
                 sysdev=/sys/bus/pci/devices/0000:$pci_slot

                 echo -n "Unbinding $sysdev ($devid)... "
                 if [ ! -e "$sysdev/driver" ]; then
                         echo "(skip: not bound)"
                         continue
                 fi

                 echo -n auto > ${sysdev}/power/control
                 echo -n "0000:$pci_slot" > $sysdev/driver/unbind
                 echo "ok"
         done <<<$(lspci -d ${pci_vendor}::${display} -n; lspci -d ${pci_vendor}::${vga} -n )
}


So... for igt: I *think* simply removing the array with modules to
unload first would fix it.

Lucas De Marchi

>
>> >root@DUT6127BMGFRD:/home/gta# lsmod | grep xe ------>>>just after
>> >system reboot root@DUT6127BMGFRD:/home/gta#
>> >root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
>> >mei_hdcp               28672  0
>> >mei_pxp                16384  0
>> >mei_me                 49152  2
>> >mei                   167936  5 mei_hdcp,mei_pxp,mei_me
>> >root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
>> >root@DUT6127BMGFRD:/home/gta# root@DUT6127BMGFRD:/home/gta#
>> modprobe xe
>> >root@DUT6127BMGFRD:/home/gta# root@DUT6127BMGFRD:/home/gta#
>> lsmod |
>> >grep mei
>> >mei_gsc_proxy          16384  0
>> >mei_gsc                12288  1
>>
>> 			       ^ which means there's one user, which
>> 			         should be xe
>>
>> >mei_hdcp               28672  0
>> >mei_pxp                16384  0
>> >mei_me                 49152  3 mei_gsc
>> >mei                   167936  8 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_me
>> >root@DUT6127BMGFRD:/home/gta#
>> >root@DUT6127BMGFRD:/home/gta#
>> >root@DUT6127BMGFRD:/home/gta#
>> >root@DUT6127BMGFRD:/home/gta# init 3
>> >root@DUT6127BMGFRD:/home/gta# echo -n auto >
>> >/sys/bus/pci/devices/0000\:03\:00.0/power/control
>> >root@DUT6127BMGFRD:/home/gta# echo -n "0000:03:00.0" >
>> >/sys/bus/pci/drivers/xe/unbind root@DUT6127BMGFRD:/home/gta#
>> modprobe
>> >-r xe root@DUT6127BMGFRD:/home/gta#
>> root@DUT6127BMGFRD:/home/gta# lsmod
>> >| grep xe root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
>> >mei_gsc_proxy          16384  0
>> >mei_gsc                12288  0
>>
>> 			       ^ great, so the refcount went to 0,
>> 			         confirming it was xe. It should go to 0
>> 				 even before you unload the module,
>> 				 when unbind.
>>
>> A couple of points:
>>
>> 1) why do we care about unloading mei_gsc. Just loading xe
>>     again (or even not even unloading it, just unbind/rebind),
>>     should still work if the xe <-> mei_gsc integration is done
>>     correctly.
>>
>> 2) If for some reason we do want to remove the module, then we will
>>     need some work in kernel/module/  to start tracking runtime module
>>     dependencies, i.e. when one module does a module_get(foo->owner), it
>>     would add to a list and output on sysfs together with the holders list.
>>     This way you would be able to track the runtime deps and remove them
>>     if their refcount went to 0 after removing xe.
>>
>> (2) is doable, but previous attempts were not successful [1]. Is  there something
>> else to make the simpler solution (1) to work?
>>
>
>Reference why I am doing this changes, please see review comments of this patch https://patchwork.freedesktop.org/series/137343/
>
>Regards,
>Krishna.
>
>> thanks
>> Lucas De Marchi
>>
>> [1] https://lore.kernel.org/linux-
>> modules/cover.1652113087.git.mchehab@kernel.org/
>>
>> >mei_hdcp               28672  0
>> >mei_pxp                16384  0
>> >mei_me                 49152  3 mei_gsc
>> >mei                   167936  7 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_me
>> >root@DUT6127BMGFRD:/home/gta#
>> >
>> >Regards,
>> >Krishna.
>> >
>> >>
>> >> Lucas De Marchi
>> >>
>> >> >
>> >> >Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>> >> >Cc: Tomas Winkler <tomas.winkler@intel.com>
>> >> >Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> >> >Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> >> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >> >Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> >> >Cc: Jani Nikula <jani.nikula@intel.com>
>> >> >Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> >> >Cc: Tvrtko Ursulin <tursulin@ursulin.net>
>> >> >
>> >> >> +
>> >> >>  static int __init xe_init(void)
>> >> >>  {
>> >> >>  	int err, i;
>> >> >> --
>> >> >> 2.25.1
>> >> >>
