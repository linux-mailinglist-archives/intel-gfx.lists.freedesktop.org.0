Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E786B97CA19
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9409510E6ED;
	Thu, 19 Sep 2024 13:20:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lKS5PhiL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2D810E6E9;
 Thu, 19 Sep 2024 13:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726752057; x=1758288057;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7xm0e1BixPanw5PTGUiIR/IvC4aOcSJRF/9k1zL//dQ=;
 b=lKS5PhiLcQJ2zvXddf+UkAgcKE0KB8sbgaewryR5FrAreLMH9WQsx2zH
 qxwouBvf8DyoIdhRrUFfW3trdjeJVWllBjY38t0se7Zo/9pQeYAXGG+MU
 DDVE+3JwtnC77rFuWI6HvS1tk8n0q6Zf9lswKDpwF+DwqWks5dFh7I7UT
 6u/FpE51Ly0HW6E6xc57UGHzckhSgWovDtmZRJgGKcGdz92CFPwRjQJ0s
 0N0Zw+YRrnMV0JFoNh3ke6Wa5tHa86WNNcLI/vSkqcM20x8I/O8y8j+jW
 Lzy+yGVPUPREYso6ViwW6DvUamcs7pDB9u2VKiJsGeBsh2iOSeTLMQ1O+ g==;
X-CSE-ConnectionGUID: moJ0Nsb1QlechkyCI46JYg==
X-CSE-MsgGUID: yH9V3UTHRDi0cYbfU9gFVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25862708"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25862708"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:20:57 -0700
X-CSE-ConnectionGUID: +gGrk68WT4OdfLVQ8Bs7KA==
X-CSE-MsgGUID: F6G8j09bRxOmFIEiwyKrag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74722898"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 06:20:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 06:20:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GmzDmCRraQ9lCAJNXWgraiLL8bmZ2XZfego0M2R4en2B//szkxlwnFuChfUU1DNMNSl3ybIf23ubmlgeHKP+Mx+3TT62oCiForZ9TAMhyHjFY0ttlEMmeOJrTvZVPSJrHnFkFIMs+yG1OwxDweTebS3TIsRDq6Lf7YBVKoDq6Ol/ROcM0/ak37mfgmUHbdoZc95pNJQ75LopBOPaLtN4H0Ug+KiYHn27Sxaxp483xtQ9m5/qW1RIjNbl5nvtNqBhukUPbSneGT5BHjefz6+xJOz2+v01w5/Qqn7OwruNgGTmCOX+fxAVMLk2JAbPIS9rC8T/r9TREJ8dPDHNHPo6tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7xm0e1BixPanw5PTGUiIR/IvC4aOcSJRF/9k1zL//dQ=;
 b=cpopJ3CsDgj+KHTagQS461UhOJPSDFAPKtoV8H6+QSFJLdP8spx1hLT18vwYQVyQ0xcGgJU0IJ2PVgwqbxjJrAtuUx6ZgP5bfe6DSsVKbYUJ/0XmGpWWLwjKbKMaL7S2J9J9XGVMt5uWLFKE36KIJALjUumefP9OPt+6nAtoEzp1O3vXKOPBSy18ARcvN4K82j1pxZkOW2+35v0jch/+f+x6CyR3HW8FJG9ekF3XfImqWmlepb61o2Rsmdt0LL8x2QFuLrXA9V7bdquGFlCarmWX0qHvUAM7XhTWoPCOBJs9J9DmXm/afbtfG91AM/RFDA0rsQIsR85Rm/Katyt9qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Thu, 19 Sep
 2024 13:20:53 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7982.016; Thu, 19 Sep 2024
 13:20:53 +0000
Date: Thu, 19 Sep 2024 08:20:50 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 12/22] drm/xe/display: stop using intel_fb_obj() in
 xe_fb_pin.c
Message-ID: <4bzn3vgnwuf5lsip2p2elecw3j4l4iy3uja2mezhrtbkglswgd@smwrqhz5ya6c>
References: <cover.1726589119.git.jani.nikula@intel.com>
 <39f3d52cf156aecc4b2ed5cf1c9342b1c15143b4.1726589119.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <39f3d52cf156aecc4b2ed5cf1c9342b1c15143b4.1726589119.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P222CA0013.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: 68890482-597e-4098-aee8-08dcd8ade321
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jsE3xXKKAlx+hvn3A4CPw0jESoMyFgzP5S9cZvXAerbRElO+a6JgTwBXjGnJ?=
 =?us-ascii?Q?8A4t0mz/3z9ll3rzqUID16ugaP9VX/d35PZy6P/k6ZFwThQetYxkP8KFB3/4?=
 =?us-ascii?Q?3i3BOveKYN0lT8nGlCeovJV73b1F2+qrOQUtHSRS+BQf2wwoAu9lkQ/Jr5dk?=
 =?us-ascii?Q?mtTjqqTApKiMEWtp98v37AC7suiwFmvQbwXqy2Ig7OwQmWzTX+HRunjEoMnY?=
 =?us-ascii?Q?Pw4I2x6HHHx32SUcWIczDIJHKnr8gsYv6TbjxObeORqcapdyeIXpau2e9eHo?=
 =?us-ascii?Q?/EImdag8sa8ESAsi2u1VT3WFazwPsGV1HZOG33QhW3LDUfvbsyNrUyr/ytbY?=
 =?us-ascii?Q?Fw8HEo7hQUVXGXFKqxsspD69sRY6+BpVrCpXKUeFtA+VS60VPcsKqMNtvx0x?=
 =?us-ascii?Q?8QQZQIPlFH06Ny9YYI5wpg3U30+bzO2shchxuwzhAjbBLGBCDNMcynjSOGXu?=
 =?us-ascii?Q?P2hzsK/5E+HX1J6eiU9uZPuC546s+zdYDbmKCx/Q1NRQTIBbuTl8T07436Du?=
 =?us-ascii?Q?jeBrn0K3n2Q7N76eNnrrC/V4snZmukskQfgbYiNM2eXJscf59mkTGoiQCxMc?=
 =?us-ascii?Q?aey/oAwapGvV9ioqeCczG2RQ+kk3zR2jfyB0WIRPXehh6K9nS1fWkXpvqP4+?=
 =?us-ascii?Q?g4Vdtu+hNFjNUu0fIAL8jovqxs7yuJwTfUevKRovdUAUXbKr6ktw/iSJjLNX?=
 =?us-ascii?Q?cFr+aSwyJ/h7UBKrzNeaUJpZT3MaE636q4hl0h8iU4cQuXJ+p6SO+g94r1ME?=
 =?us-ascii?Q?HBHeQO3mdLU3UZqzbsz9wP9Se1eJ+FaGOurBObzjYVsMlYGL5MrmY6I8K2Gk?=
 =?us-ascii?Q?pMySBkBHZynXUE3kojJnsux2vuhyxyA/E2ARTd8KW3YGVg0P5dYLeStpp1g8?=
 =?us-ascii?Q?yW0EiNVgzPWoeeHNEjiA8IF48Tzi3bzJnw6iJvQTQwRcusX2/5gectB4a7VD?=
 =?us-ascii?Q?Kn0X0ip2m3Km2EtCcNUhJ5RmsR6fR32lEyXqgDQJDBS5x0cC+shJ9LjGUN+M?=
 =?us-ascii?Q?FfGDzECkrBHxQj3sggphEA4QyVMc+23t0/fyH3He2xdJvqbEVp/MWw094+34?=
 =?us-ascii?Q?IfqqrmuziyMR9ZJsLLOIOtV2QhxXZBIpolAJGYgyGnk/K1k9MH6PEX5GeSCK?=
 =?us-ascii?Q?oIVev7x1Dp++ijL2cSoPAb7syJb82q+Rgk1ArZl20qZD4nWdmiYNuqftIrLQ?=
 =?us-ascii?Q?d877rXZ3vTc9rmnwk2RWYB6PiafJ3lXVZUzfP2YlWg1IJCYm39FQPoG+X1eu?=
 =?us-ascii?Q?aUaS1c/1oIeUtcrwD67FhQj344+2Q+I2u20WwRJp7/MDrrLYpUw94pO912fD?=
 =?us-ascii?Q?zHhAcEB9i5kQE6hJFPBur+r5NZ7kHHJCu++fJmc6Lsikfg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cbaDc7WfmxdVG6bhV5WAfp0pkymBlJvUIstMvEH6N38eMsDuy8FkARFTVPKa?=
 =?us-ascii?Q?uD0nUYXHweELCjaRT0XFMw5DXflniglBe83C5/UtHjf6CN8v8jtJ9IorbSI6?=
 =?us-ascii?Q?9gFXAJ2Eu3ZrPC2F/uV/H27kv6CVHCgHR970FExtIQl04XfNboiumhF8RKge?=
 =?us-ascii?Q?9um6WKP6zxSmMjqzW6ZnIxBSeQELUbcdW46JW3NEGm6aHEFGweZq2wZgrUqN?=
 =?us-ascii?Q?eRFd3cCN3QxWI39tQDCZ53vREAr8B64K41b7c9stuOdFGdfa6BIpoEfibfJz?=
 =?us-ascii?Q?zoIEasOPpxTXzTWXi6vcI04VING4pklkHvDNj6pX9qSlhq0vrB4o/8o4WEwJ?=
 =?us-ascii?Q?iogTC2ms+HiBrUi5uuzblKwRm11vM93Ey7RET0rJJ4veCf2yAVOObv2fgNya?=
 =?us-ascii?Q?ubYzH3HC9k40X61hGLQ6m4FB27chEggtpEOspR8kuYzJlv0aY1gt4/h5YtyC?=
 =?us-ascii?Q?9XtstAlBTLQSqDN7EjG1Ybr1V8br1hnDqaqVbO9yKMdN5b/9byhXYcqod/Uy?=
 =?us-ascii?Q?B8cXZfThFN07UPlWVAEnE/9W0obJOYWIvI+pU09zIp62e6z017u9NyqPOZlf?=
 =?us-ascii?Q?vgR9s3Jpc613NGtovnfty78JjJerv+b6Fm9kCe4ulJIWnEriL+OoTlOS3Zrm?=
 =?us-ascii?Q?iSBO05A9yOKDvK2wBwIdRRnJ3WwINqn1nGtB/tbl06Zw1bqQu30JFs8H+HS6?=
 =?us-ascii?Q?iLpxtUExaq2TVj/PRiUZyrTu51r3znxuK7RqYCkdhBzG6gAtD7Exs3yxrlb+?=
 =?us-ascii?Q?fJ9Lb5CkFHnJP7d/zp/udNJB5TcbQXT75Zq690oa4PsjqvaOR+saBNVdUUY8?=
 =?us-ascii?Q?4b1Ezswr3vBKH4qL8t98IZwcEllaHp3pkC00a7qYz7FI7uR0uz3PuUDAI4e3?=
 =?us-ascii?Q?IWOk/a0re8wTPthyN/Si8c89UwIExW4M1qPfhRarXLjsldfA/b7FJfxV8Rm/?=
 =?us-ascii?Q?RCnLjedfGrUyrNCCfEQ/VTU/0Xtpzc6i5Plk/QR4cuqulWa6A9BpkEhFNXRw?=
 =?us-ascii?Q?cHxpH8oerdzTbqu2cgfA+yphi/0ZMajfKVgHEOhbslOaZinJTq9i0UAu4dqT?=
 =?us-ascii?Q?8yMfmumQVtMArtobMkYiP7EcqFSoFZHhOi7IWIppj5/WVYK7XBBBeHcIh1t+?=
 =?us-ascii?Q?t89lkWtwrK2dr9JaHtJ5oi0PdP9KpLQU4kfGSaysOdl/5BweFiEUpGTYkSs9?=
 =?us-ascii?Q?kd5dpElURDum7Nk6nGv3fIdJIPddkOZ+tjtShpbZ8nAgx0kpc8EjMmE64ndn?=
 =?us-ascii?Q?1nvuNZPIq5HwFjFaF0n8mHOIKk3s9ufXs7t/LItbTh9hCaeU7UDFhzsKzZFu?=
 =?us-ascii?Q?tukSfiY8PK8e7TXjoSHrRihNNy/0FlRC1K6XW7udaXD7nQ+4Cpk2KDSoJE6q?=
 =?us-ascii?Q?jal0JWYMLR0G8JAdkU/EnI9HUqmUjFXafF7auyBlMwbedFfU9M4ODNVD8H5w?=
 =?us-ascii?Q?4wvJvtK8kHKJSsFipwGidH4DSombv6OwC/R7XvNqYHw5lqdMWVAtRHg/Y7dj?=
 =?us-ascii?Q?ymy7EtqoxvATWZpTLvJ1UmRcyEkkzyXlpVlLTBlG3l802mWUlQY826LkAlCb?=
 =?us-ascii?Q?Odv6uOPldtgkHW9Zo2JmMJUoZd55J9RYOk2QUU8lvyLsob3PncURcjpEVSDn?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68890482-597e-4098-aee8-08dcd8ade321
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 13:20:53.2277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2XBqks6a8Uw4Kv9c9uovb7i5n12Lv66e0u2Td6Fz0gkZSvuKocIaoNYhzg4Yh7ysRS1uHEPkyS0HgI8J/SDCv48KTHbsHoB7zgjs/42Y0wo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
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

On Tue, Sep 17, 2024 at 07:13:51PM GMT, Jani Nikula wrote:
>intel_fb_obj() returns struct drm_i915_gem_object, which is not right
>for xe, and only works because xe defines
>-Ddrm_i915_gem_object=xe_bo. Switch to intel_fb_bo() and convert to
>struct xe_bo from there.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for merging through drm-intel.

Lucas De Marchi
