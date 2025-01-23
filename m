Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0051DA1AA4F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 20:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3B110E3E2;
	Thu, 23 Jan 2025 19:27:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MhzlYaCd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E55E10E89F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 19:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737660463; x=1769196463;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=I6/u3bWo/zHLlqMsgEeXF0PbYaVisWc1MmMGbNyeuKk=;
 b=MhzlYaCd+2uRC+rXR91R1a6SD8j6FUnrK6/M+D1r0kxiXtNlMYqcQf6i
 PySvky78FNAMOtKw8ibPNtEFWtJzo0dj7camy0+ivvUznyEOlz+fQVbAs
 8uEH8V1oDfT2J8gMx/dGsoeHR+yPqdVB3zyVkb3DYKwXpUO0r9ho9Syo9
 z2dJZLOhzUtJfF/y0AI8iG93IXd6Kx6DnAHbe+pxtUe9xmTUBII7YAO7l
 OOnEgq8J68/JyNR5KRh/1JLz/Uo+151XYIBEZi//2fOSXCHNQe4P0chig
 9sxUMNDNiE0GFfIwigABuXy1iPORMKUBEgYXcdAJUnYdqApu/zIc/JNSR g==;
X-CSE-ConnectionGUID: oh8cyAQQSMO4rhqmGVTdvw==
X-CSE-MsgGUID: InHD3Vy0SsSlHt3h0oPMlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="55727036"
X-IronPort-AV: E=Sophos;i="6.13,229,1732608000"; d="scan'208";a="55727036"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 11:27:41 -0800
X-CSE-ConnectionGUID: pwMLVq8pT1SuU4oB6hMmgg==
X-CSE-MsgGUID: bEvhfBCLTnCWqWJNxHTX5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112188146"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 11:27:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 11:27:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 11:27:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 11:26:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SzGFvH4OAN7Qqv/xPD7w7uA4D9ZjieZ48IwjCd8EANZhN6ITDIRqhDXPZvvCeGv6mjRm8fByI0TxtowYlegya3hyvk3w0rY7KpHAd9Ghkno6JMgd9v/GRqoLTZ56miGQR46/TLdtpn3iGd2yHJi5CrwjXLNmqs8140ShNiRf1ITUXFSgD2j9BSKxRJxFKuOrK4TOs8TU4GYhpKMcAfi3U0oZYTTcqpcC78Eq9BEYA0b9LMfeySLrK55e5iQaX46RCUePIvWqZfXcIs5TCfzeW/DHNQyHIb1M/JoBqWqZGn5Q1LDdL0SBzIWjcnLVF6irD5xy4yETe/0nzGuZpm8VCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pJFcAXG9HuxC1AGjE5S4QsJocoEjjD8ensg7psioq6Y=;
 b=yuniNDCUklv8p4WOt/saumoOAm5nEA7iNKwMSXyFC8PUNdzkppLom7SleQSGX7rBGFxzHeZ483RWifsLLHAZ5PzmXOaabj45OTjXJvN4cNX1wOYBs2wCZ6vSxuH4mkSm4t1MleXUS8tsT+fkWlmeEpazjbHnkQko7hQClkUw+eMTT5+LluVJ8KwzCMn60C0OacU5Rx/gLhYmjAUksKyjkcUPxxIUadtZHN42LJIg9CP3/JCnYlEKQ8kmxEZU6B1bAPRnAUNcHtoKr8DizYe1UkvZBFjkMuXofGlDurAfQVMrHCPug7IQhtuuoFEp2BZMPs4aA4+SnmvuIn7PnL2qlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB4679.namprd11.prod.outlook.com (2603:10b6:208:26b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 19:26:50 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 19:26:50 +0000
Date: Thu, 23 Jan 2025 13:26:46 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>
CC: "Liang, Kan" <kan.liang@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, "Peter Zijlstra (Intel)"
 <peterz@infradead.org>, Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
Message-ID: <y52hv23fcxko275wrmagxh3bnarbrwv7u4dwivni6cuvafgoje@zqliyy457k5g>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <c7e1fc84-5cbf-4196-8558-bc410ef378a8@ursulin.net>
 <3g4bxt5ehrhuyxz7y35h2znym55aufixjpzvytnfdehhg5edkm@bol7omhcgchg>
 <3a8dafc0-b9f1-43f0-b9a3-8d8dba8a15ed@ursulin.net>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3a8dafc0-b9f1-43f0-b9a3-8d8dba8a15ed@ursulin.net>
X-ClientProxiedBy: MW4PR03CA0343.namprd03.prod.outlook.com
 (2603:10b6:303:dc::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN2PR11MB4679:EE_
X-MS-Office365-Filtering-Correlation-Id: a67a3bac-3677-469e-c30a-08dd3be3e2a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?3MMgnfiKqUhNOnXgajMUau0R+jC/PK7jpNQ80GXIGRumK0x3dgflylVZd9?=
 =?iso-8859-1?Q?Y5toyiRbgHZaXD1N11wspz3jMoAQCbbifEmW+RqMPGB0dGzejYae59Kw3A?=
 =?iso-8859-1?Q?20A1Ymgq3MH4W8tCqmTK7RueThCPleALymLcwjdGudvPYmG5p0rysGdbt7?=
 =?iso-8859-1?Q?W87Wyqq5kvZslGjOI+J5zmOuV1Me6PrhB5IT7L4qADMRZJhAQIkj0qqKu6?=
 =?iso-8859-1?Q?mP9n4XVWhuD0+m9+kiC0rAD9C2chaX74/1qTUKs/z9knYt/LiJLKjnG/rf?=
 =?iso-8859-1?Q?TDHVx02IQz99Y5XvAVI5BZg6t+4qjQQc1P1bNlJM38XHpODTX+B1Zk7wJd?=
 =?iso-8859-1?Q?U0cJL0d/fwgAcGoQam/AZ/rwe4fF7AiLp8a+4MPzI27SYUre2y3xb5U/Qf?=
 =?iso-8859-1?Q?ABqxZhU4YAbTSCB6US8e08UZmWhT7zSgftAN6Wz1sWbTgheeBkIws0wRyc?=
 =?iso-8859-1?Q?vtleMdvQ23HG+euhq4QrCSvb0jul9LxxhCpylVSW/7UOC80NFkU1OVrstd?=
 =?iso-8859-1?Q?enOmhWUYeXjmigbaRKxqc8HG9xeL6/O/E6Eh+hjsdjWdSvrK+QhmiU6Cm6?=
 =?iso-8859-1?Q?4P1+p24WzO/B+6Ix0+vyl+FK3xFNHv+pChg9ofouWj9OpohsKsvW0YTl7A?=
 =?iso-8859-1?Q?ohrvG33jbm3Ref7S4FKsAIBufIv1V08YhyF7axVKcmf/3dRRGWIjGmnAOx?=
 =?iso-8859-1?Q?PsKgrWsMA7VH9NokOg13XHuMcaRb3genubplJqceJJo6aq5gzzW6fB5mL1?=
 =?iso-8859-1?Q?/NYlEvNgmRmKvJDnxAQPBJvYTHmSRuQZXy01Okq+RLLOk8yUOQ3SJ+Fx2Z?=
 =?iso-8859-1?Q?+TWogKbdS50U2fqsrBKXc0OadMQ16RpVybS8xyHDalkAvoCR/htOnoQ4Sb?=
 =?iso-8859-1?Q?wSZ0b9cEUB9k7LtkZld5A/Zu2dtLnFxkHoQh8MjQ5s5ESZOpRUyTKz5i/Y?=
 =?iso-8859-1?Q?ckcBY9k+RAtyEMkPyLZ0lQhUr57Lv3m5KbV9SajXw2bl26cd7qbxgGf/Rd?=
 =?iso-8859-1?Q?XP2dF3erKMwO7U9FZ2PidCQuGUIZO/YNaabFThTg9/zrIj70hmk4xfmF68?=
 =?iso-8859-1?Q?oXJqA88Rve3TWC3SgwfOtkHLuiSvVEBbj9tRfrH+jG4LBi26oFhD9vZyyF?=
 =?iso-8859-1?Q?1t4SNsEuhvNxSm12SdpkHeWkYWYejsW1m/qJpMSTjLHZQA3uwmJpCQiegS?=
 =?iso-8859-1?Q?TVzdnC3k3VTGwGD86QxqS4WD7H+E5WuPKCv9mxI6mqOn0plOD2aWaUO7gG?=
 =?iso-8859-1?Q?vpyHYjCG1IDp3u1c39XZ49sLs9t0PobOqTWkLl+lCnksXoQGJEahovrKsH?=
 =?iso-8859-1?Q?d7Ilxrt2Vru7dkuGU7MrC6UBMwKMGiry+JfDTBXREWQ74tnR1A9RY+ddlm?=
 =?iso-8859-1?Q?5nFD/doCGF9O84mEHHZRKHgvZxTXsi2g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?HQ+Tz15R/mnFbgswZdHmOal9dnpVPD5FJxXJpUpq/TPQEl9A9sxo34Tt6z?=
 =?iso-8859-1?Q?ni/WvGADtwg+YDyGw/l9l+OguaV/MWypM4RmmhpoN1kFaQBp1SXlbRPYoa?=
 =?iso-8859-1?Q?7fDEHva5nrzrdrDLIRS0FsHhcqFCXvVSsBR8YHKvEJQ+D2ol6vrZYM6Flc?=
 =?iso-8859-1?Q?WD0pSTTmUQD9GyXiiWzAITLKNKGnn7uXa9Cel8I60lis4oHPzQ3ZPkCj+G?=
 =?iso-8859-1?Q?VNE0fplbuMsdK+aXDkBvqEeH2pWgy8IPnz5Dc+WF1UvgSmiV1uUpKPbJZs?=
 =?iso-8859-1?Q?Pjay/8fVEDYh68iEud4HWs4ULnp/nhltWT3ni/rk065CGWRUtELqAkEul4?=
 =?iso-8859-1?Q?xGevI5v/+QftrLkwfoNQHBRjU/E7kthbdMUYsDjDegWl+ykEICkAiodTz1?=
 =?iso-8859-1?Q?FoeCrAO1DmPOAyjQ0cNrZEXuPummuyyfVU/mhvTXqCADenskwtM4zDloxB?=
 =?iso-8859-1?Q?9B6QLWnipC2h1ZuICOsK5BoXKpdCBMsWsPluhQq7OpNi1uYBMwMUi8kUAL?=
 =?iso-8859-1?Q?trIGaso+5isfBDisGY40poptehTNKWAo2AW0PPwX5293FKNu9ajgRqTghx?=
 =?iso-8859-1?Q?h29WHVu7vO65cxmnjhKQBhL884j2l0Iu++lETIzijb5AxgEGX381H66v0i?=
 =?iso-8859-1?Q?meXNIu8Q1Hl5CH6sfrT/UHPNC+V01tTUa0kd04CGo5+rqU/qtKSzUtn/S9?=
 =?iso-8859-1?Q?gqKv/swxMapbshI/b5wH7GlLn8bt5ZhAZtY8uO927CggUN8WmMjfvLlljt?=
 =?iso-8859-1?Q?H/m3KsZWAvVtTVTcvnsxXRE3RjFtQH5L3jS4QiWngDTze9G/lMelzYOcG1?=
 =?iso-8859-1?Q?NNbqLtKIj3cbdvt4QBzhO+3YB1kWXdpgZwW60Hq2dDTFLTzf/MUYLQEbUV?=
 =?iso-8859-1?Q?d0K76eIk/06TokfJRDqJr8p9iblbyslycMqmM/GL5Ngs6Z0UV7cBKN3Vh/?=
 =?iso-8859-1?Q?TFEY+Je9G97T7BLo/Nv+sLq0YCdpIWqIpQczatjvx84e0upTFXrfHkwgP1?=
 =?iso-8859-1?Q?u1hZHtwbKq826Tza1RKHPc9d5P00MPgn7xJJtUzi6kH1OetavF+1cGTuP8?=
 =?iso-8859-1?Q?i4h4yZar/+TL5kf6Bq0DcdFVgfETgGw6dGmauNM7EU8yeUeGeyjY6Bn49g?=
 =?iso-8859-1?Q?Jy6EshUO1LQvmk5jeyQNNJDm5FhWtv/Kvy1xqsp+rnfLeCv76L504tB2qw?=
 =?iso-8859-1?Q?8UFJe3RHNDV7YBLiVORbgF97j07FqbdkvbpdXvYug9nPiHRSpy02qGHWkD?=
 =?iso-8859-1?Q?4hHC5JAIIP8zZf2+4tHv3fIVsENXmJpxFk624P7YaCOaF73qUtOd5NCXvh?=
 =?iso-8859-1?Q?WbUcNq9eVDYBdRZhjArP0BifuI/paayOnFLc9RRXYxc4l+e62qjTL5Cwy3?=
 =?iso-8859-1?Q?MaUPKl5TvDDJJVJHy76YeNSVSe8fmeOSYU75KcTUwWsn/REEg2IvgI+vP5?=
 =?iso-8859-1?Q?yQQrmzlvb0BIuPcbZ2lxc6qJWfoZAPANKZi07o91hJykVUthHP0qCBlFfS?=
 =?iso-8859-1?Q?7ZC2HOropeq17S/7GkijayTv5f6iwx1HHixuebtr3SkpD0rd8Jl5A8tEQB?=
 =?iso-8859-1?Q?EsRtDNhszlA+K+e121zNLV0aOKNfkXu6PI0bNZopBiMJjWlHvJ+8enYlqz?=
 =?iso-8859-1?Q?EC/q2PSVlxx1lRBOj6yQ0eF6kDch2XuDmsFNGeuHUolRYM1DBQ6P5Q6g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a67a3bac-3677-469e-c30a-08dd3be3e2a0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 19:26:50.4160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9m+qKYHPg5TiqFV5E7Zc2wmQ83QnKvUGlrwFOTZi9fskvBOxmXUKyxsD31Y2WO+zutq15QZIH4veFXy2N3y/XpafNS+VLMvTX6FSZ888yQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4679
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

On Thu, Jan 23, 2025 at 06:06:29PM +0000, Tvrtko Ursulin wrote:
>
>On 23/01/2025 16:27, Lucas De Marchi wrote:
>>On Thu, Jan 23, 2025 at 09:43:35AM +0000, Tvrtko Ursulin wrote:
>>>
>>>On 20/01/2025 22:57, Lucas De Marchi wrote:
>>>>On Mon, Jan 20, 2025 at 10:08:39AM -0500, Liang, Kan wrote:
>>>>>
>>>>>
>>>>>On 2025-01-16 5:24 p.m., Lucas De Marchi wrote:
>>>>>>Since commit 4ba4f1afb6a9 ("perf: Generic hotplug support 
>>>>>>for a PMU with
>>>>>>a scope"), there's generic support for system-wide counters and
>>>>>>integration with cpu hotplug. Set our scope to PERF_PMU_SCOPE_SYS_WIDE
>>>>>>instead of all the boilerplate code for handling hotplug.
>>>>>>
>>>>>>Cc: Kan Liang <kan.liang@linux.intel.com>
>>>>>>Cc: Peter Zijlstra (Intel) <peterz@infradead.org>
>>>>>>Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>>>>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>>>---
>>>>>> drivers/gpu/drm/i915/i915_module.c |   2 -
>>>>>> drivers/gpu/drm/i915/i915_pmu.c    | 114 
>>>>>>+----------------------------
>>>>>> drivers/gpu/drm/i915/i915_pmu.h    |  11 ---
>>>>>> 3 files changed, 1 insertion(+), 126 deletions(-)
>>>>>>
>>>>>>diff --git a/drivers/gpu/drm/i915/i915_module.c 
>>>>>>b/drivers/gpu/drm/i915/i915_module.c
>>>>>>index 7ed6d70389af9..7affe07f84f45 100644
>>>>>>--- a/drivers/gpu/drm/i915/i915_module.c
>>>>>>+++ b/drivers/gpu/drm/i915/i915_module.c
>>>>>>@@ -71,8 +71,6 @@ static const struct {
>>>>>>     { .init = i915_vma_resource_module_init,
>>>>>>       .exit = i915_vma_resource_module_exit },
>>>>>>     { .init = i915_mock_selftests },
>>>>>>-    { .init = i915_pmu_init,
>>>>>>-      .exit = i915_pmu_exit },
>>>>>>     { .init = i915_pci_register_driver,
>>>>>>       .exit = i915_pci_unregister_driver },
>>>>>>     { .init = i915_perf_sysctl_register,
>>>>>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>>>>>b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>index e55db036be1bb..652964ef0643c 100644
>>>>>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>@@ -28,9 +28,6 @@
>>>>>>      BIT(I915_SAMPLE_WAIT) | \
>>>>>>      BIT(I915_SAMPLE_SEMA))
>>>>>>
>>>>>>-static cpumask_t i915_pmu_cpumask;
>>>>>>-static unsigned int i915_pmu_target_cpu = -1;
>>>>>>-
>>>>>> static struct i915_pmu *event_to_pmu(struct perf_event *event)
>>>>>> {
>>>>>>     return container_of(event->pmu, struct i915_pmu, base);
>>>>>>@@ -642,10 +639,6 @@ static int i915_pmu_event_init(struct 
>>>>>>perf_event *event)
>>>>>>     if (event->cpu < 0)
>>>>>>         return -EINVAL;
>>>>>>
>>>>>>-    /* only allow running on one cpu at a time */
>>>>>>-    if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>>>>>-        return -EINVAL;
>>>>>>-
>>>>>>     if (is_engine_event(event))
>>>>>>         ret = engine_event_init(event);
>>>>>>     else
>>>>>>@@ -940,23 +933,6 @@ static ssize_t 
>>>>>>i915_pmu_event_show(struct device *dev,
>>>>>>     return sprintf(buf, "config=0x%lx\n", eattr->val);
>>>>>> }
>>>>>>
>>>>>>-static ssize_t cpumask_show(struct device *dev,
>>>>>>-                struct device_attribute *attr, char *buf)
>>>>>>-{
>>>>>>-    return cpumap_print_to_pagebuf(true, buf, &i915_pmu_cpumask);
>>>>>>-}
>>>>>>-
>>>>>>-static DEVICE_ATTR_RO(cpumask);
>>>>>>-
>>>>>>-static struct attribute *i915_cpumask_attrs[] = {
>>>>>>-    &dev_attr_cpumask.attr,
>>>>>>-    NULL,
>>>>>>-};
>>>>>>-
>>>>>>-static const struct attribute_group i915_pmu_cpumask_attr_group = {
>>>>>>-    .attrs = i915_cpumask_attrs,
>>>>>>-};
>>>>>>-
>>>>>> #define __event(__counter, __name, __unit) \
>>>>>> { \
>>>>>>     .counter = (__counter), \
>>>>>>@@ -1173,92 +1149,12 @@ static void 
>>>>>>free_event_attributes(struct i915_pmu *pmu)
>>>>>>     pmu->pmu_attr = NULL;
>>>>>> }
>>>>>>
>>>>>>-static int i915_pmu_cpu_online(unsigned int cpu, struct 
>>>>>>hlist_node *node)
>>>>>>-{
>>>>>>-    struct i915_pmu *pmu = hlist_entry_safe(node, 
>>>>>>typeof(*pmu), cpuhp.node);
>>>>>>-
>>>>>>-    /* Select the first online CPU as a designated reader. */
>>>>>>-    if (cpumask_empty(&i915_pmu_cpumask))
>>>>>>-        cpumask_set_cpu(cpu, &i915_pmu_cpumask);
>>>>>>-
>>>>>>-    return 0;
>>>>>>-}
>>>>>>-
>>>>>>-static int i915_pmu_cpu_offline(unsigned int cpu, struct 
>>>>>>hlist_node *node)
>>>>>>-{
>>>>>>-    struct i915_pmu *pmu = hlist_entry_safe(node, 
>>>>>>typeof(*pmu), cpuhp.node);
>>>>>>-    unsigned int target = i915_pmu_target_cpu;
>>>>>>-
>>>>>>-    /*
>>>>>>-     * Unregistering an instance generates a CPU offline 
>>>>>>event which we must
>>>>>>-     * ignore to avoid incorrectly modifying the shared 
>>>>>>i915_pmu_cpumask.
>>>>>>-     */
>>>>>>-    if (!pmu->registered)
>>>>>>-        return 0;
>>>>>>-
>>>>>>-    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>-        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>>>>-
>>>>>
>>>>>I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>>>PMU, not a system-wide scope.
>>>>
>>>>counter is in a complete separate device - it doesn't depend on core or
>>>>die or pkg - not sure why it cared about topology_sibling_cpumask here.
>>>>
>>>>Also, in my tests it always chose cpu0 that is the boot cpu and can't be
>>>>offlined. Looking at our CI it seems this entire code is not tested at
>>>>all: the only test that in theory would exercise this just skips since
>>>>cpu0 can't go offline - https://intel-gfx-ci.01.org/tree/drm-tip/shards-all.html?testfilter=hotplug
>>>
>>>s/not tested at all/not currently tested/
>>>
>>>commit e59e74dc48a309cb848ffc3d76a0d61aa6803c05
>>>Author: Thomas Gleixner <tglx@linutronix.de>
>>>Date:   Fri May 12 23:07:04 2023 +0200
>>>
>>>   x86/topology: Remove CPU0 hotplug option
>>>
>>>So test worked for ~6 years and then transitioned to skip. :shrug:
>>
>>right, indeed looking at the CI repo I see it there:
>>
>>$ git grep CONFIG_BOOTPARAM_HOTPLUG_CPU0 
>>kconfig/debug:CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
>>kconfig/debug-kasan:CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
>>
>>$ git log --oneline -G CONFIG_BOOTPARAM_HOTPLUG_CPU0 kconfig/debug
>>3553bf4 kconfig: Dump current kconfigs used by CI
>>
>>
>>I sent this to igt yesterday:
>>https://patchwork.freedesktop.org/patch/633357/?series=143874&rev=1
>>
>>I will reword that commit message to note that it was actually tested
>>before that kernel commit. The test worked because it only tried to 
>>toggle the
>>cpu0 and thus a migration succeeded to a sibling cpu, right?
>
>No, it was off-lining all CPUs one by one.

right, I missed the cpu++ at the end

>
>If topology_sibling_cpumask is not right then maybe that did not show 
>because of the one by one nature? I mean if the test was trying to 
>offline multiple CPUs ie. leave multiple off lines, maybe then it 
>would break?

yes, I guess so.

>
>>For the kernel commit message I can add a comment about the counter
>>being indeed a system one and the use of topology_sibling_cpumask()
>>being wrong here. With that, can you review this patch?
>
>I don't know about this new system wide vs something else stuff. It 
>will not interfere with the fact there can be multiple instances of 
>the same PMU driver, one per device?

no. Each of them will do a separate call to perf_pmu_register() with a
different name. The cpumask attr is created on each of them and hotplug
handled individually (from the perf_pmu pov they are separate pmu
drivers).

Lucas De Marchi

>
>I can review but cannot promise it will be quick.
>
>Regards,
>
>Tvrtko
>
>>>
>>>Regards,
>>>
>>>Tvrtko
>>>
>>>>>
>>>>>>-        /* Migrate events if there is a valid target */
>>>>>>-        if (target < nr_cpu_ids) {
>>>>>>-            cpumask_set_cpu(target, &i915_pmu_cpumask);
>>>>>>-            i915_pmu_target_cpu = target;
>>>>>>-        }
>>>>>>-    }
>>>>>>-
>>>>>>-    if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
>>>>>>-        perf_pmu_migrate_context(&pmu->base, cpu, target);
>>>>>>-        pmu->cpuhp.cpu = target;
>>>>>>-    }
>>>>>>-
>>>>>>-    return 0;
>>>>>>-}
>>>>>>-
>>>>>>-static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
>>>>>>-
>>>>>>-int i915_pmu_init(void)
>>>>>>-{
>>>>>>-    int ret;
>>>>>>-
>>>>>>-    ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
>>>>>>-                      "perf/x86/intel/i915:online",
>>>>>>-                      i915_pmu_cpu_online,
>>>>>>-                      i915_pmu_cpu_offline);
>>>>>>-    if (ret < 0)
>>>>>>-        pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
>>>>>>-              ret);
>>>>>>-    else
>>>>>>-        cpuhp_state = ret;
>>>>>>-
>>>>>>-    return 0;
>>>>>>-}
>>>>>>-
>>>>>>-void i915_pmu_exit(void)
>>>>>>-{
>>>>>>-    if (cpuhp_state != CPUHP_INVALID)
>>>>>>-        cpuhp_remove_multi_state(cpuhp_state);
>>>>>>-}
>>>>>>-
>>>>>>-static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
>>>>>>-{
>>>>>>-    if (cpuhp_state == CPUHP_INVALID)
>>>>>>-        return -EINVAL;
>>>>>>-
>>>>>>-    return cpuhp_state_add_instance(cpuhp_state, &pmu->cpuhp.node);
>>>>>>-}
>>>>>>-
>>>>>>-static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
>>>>>>-{
>>>>>>-    cpuhp_state_remove_instance(cpuhp_state, &pmu->cpuhp.node);
>>>>>>-}
>>>>>>-
>>>>>> void i915_pmu_register(struct drm_i915_private *i915)
>>>>>> {
>>>>>>     struct i915_pmu *pmu = &i915->pmu;
>>>>>>     const struct attribute_group *attr_groups[] = {
>>>>>>         &i915_pmu_format_attr_group,
>>>>>>         &pmu->events_attr_group,
>>>>>>-        &i915_pmu_cpumask_attr_group,
>>>>>>         NULL
>>>>>>     };
>>>>>>     int ret = -ENOMEM;
>>>>>>@@ -1266,7 +1162,6 @@ void i915_pmu_register(struct 
>>>>>>drm_i915_private *i915)
>>>>>>     spin_lock_init(&pmu->lock);
>>>>>>     hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>>>>>>     pmu->timer.function = i915_sample;
>>>>>>-    pmu->cpuhp.cpu = -1;
>>>>>>     init_rc6(pmu);
>>>>>>
>>>>>>     if (IS_DGFX(i915)) {
>>>>>>@@ -1295,6 +1190,7 @@ void i915_pmu_register(struct 
>>>>>>drm_i915_private *i915)
>>>>>>
>>>>>>     pmu->base.module    = THIS_MODULE;
>>>>>>     pmu->base.task_ctx_nr    = perf_invalid_context;
>>>>>>+    pmu->base.scope        = PERF_PMU_SCOPE_SYS_WIDE;
>>>>>>     pmu->base.event_init    = i915_pmu_event_init;
>>>>>>     pmu->base.add        = i915_pmu_event_add;
>>>>>>     pmu->base.del        = i915_pmu_event_del;
>>>>>>@@ -1307,16 +1203,10 @@ void i915_pmu_register(struct 
>>>>>>drm_i915_private *i915)
>>>>>>     if (ret)
>>>>>>         goto err_groups;
>>>>>>
>>>>>>-    ret = i915_pmu_register_cpuhp_state(pmu);
>>>>>>-    if (ret)
>>>>>>-        goto err_unreg;
>>>>>>-
>>>>>>     pmu->registered = true;
>>>>>>
>>>>>>     return;
>>>>>>
>>>>>>-err_unreg:
>>>>>>-    perf_pmu_unregister(&pmu->base);
>>>>>> err_groups:
>>>>>>     kfree(pmu->base.attr_groups);
>>>>>> err_attr:
>>>>>>@@ -1340,8 +1230,6 @@ void i915_pmu_unregister(struct 
>>>>>>drm_i915_private *i915)
>>>>>>
>>>>>>     hrtimer_cancel(&pmu->timer);
>>>>>>
>>>>>>-    i915_pmu_unregister_cpuhp_state(pmu);
>>>>>>-
>>>>>>     perf_pmu_unregister(&pmu->base);
>>>>>>     kfree(pmu->base.attr_groups);
>>>>>>     if (IS_DGFX(i915))
>>>>>>diff --git a/drivers/gpu/drm/i915/i915_pmu.h 
>>>>>>b/drivers/gpu/drm/i915/i915_pmu.h
>>>>>>index 8e66d63d0c9f9..53bce3d8bfbaf 100644
>>>>>>--- a/drivers/gpu/drm/i915/i915_pmu.h
>>>>>>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>>>>>>@@ -56,13 +56,6 @@ struct i915_pmu_sample {
>>>>>> };
>>>>>>
>>>>>> struct i915_pmu {
>>>>>>-    /**
>>>>>>-     * @cpuhp: Struct used for CPU hotplug handling.
>>>>>>-     */
>>>>>>-    struct {
>>>>>>-        struct hlist_node node;
>>>>>>-        unsigned int cpu;
>>>>>>-    } cpuhp;
>>>>>>     /**
>>>>>>      * @base: PMU base.
>>>>>>      */
>>>>>>@@ -155,15 +148,11 @@ struct i915_pmu {
>>>>>> };
>>>>>>
>>>>>> #ifdef CONFIG_PERF_EVENTS
>>>>>>-int i915_pmu_init(void);
>>>>>>-void i915_pmu_exit(void);
>>>>>> void i915_pmu_register(struct drm_i915_private *i915);
>>>>>> void i915_pmu_unregister(struct drm_i915_private *i915);
>>>>>> void i915_pmu_gt_parked(struct intel_gt *gt);
>>>>>> void i915_pmu_gt_unparked(struct intel_gt *gt);
>>>>>> #else
>>>>>>-static inline int i915_pmu_init(void) { return 0; }
>>>>>>-static inline void i915_pmu_exit(void) {}
>>>>>> static inline void i915_pmu_register(struct 
>>>>>>drm_i915_private *i915) {}
>>>>>> static inline void i915_pmu_unregister(struct 
>>>>>>drm_i915_private *i915) {}
>>>>>> static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
>>>>>
