Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A553BB17219
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 15:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6CD10E118;
	Thu, 31 Jul 2025 13:32:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RCwEcCsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30C5710E118;
 Thu, 31 Jul 2025 13:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753968775; x=1785504775;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=17DSLr3MPP2vFcl6gYxHfJPF42T+o+7ys65cKLO8Q9c=;
 b=RCwEcCsEQM5V2kZCy0NQT4yjzFPXLaTZDQDOdQ4vIr1Ar/aSKGYCpP4W
 b+eqW56UU/07WyS5X2XT0OgJaEmYSFJiYKN0PyeWNKdRejjPPiJyB3SuW
 Ixwif4r0XPbGF5n1KFXiwDTTDdaY2RbshlkW3tBwLDq6+ywdwvqV3OeFR
 uX9DbnhtElVakzwveruA1NnLLX7VYV/re7okqojL2xkh/nFDcD1Fq0PE5
 q2wvkTzoXPkOGrm3CroUy6jg4iKaJpgIVGMseZID50WuPoCRoqDfL2kM8
 tsnkDM3Fzc0d4hjALv6lTugHXOVjulER2d+jdWZ/DRvSUm5SCZtBke01B g==;
X-CSE-ConnectionGUID: mc7tAYHRTWyqFZ3PNYEdqA==
X-CSE-MsgGUID: FZYzSp7gQLaOql2VDY8gBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="55360131"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="55360131"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:32:55 -0700
X-CSE-ConnectionGUID: LShIdREmTYCdPLCN25FTbw==
X-CSE-MsgGUID: 2jW4mrLTTH6T9aQrbVrXPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="186950545"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:32:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:32:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 06:32:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.75)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:32:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uJP3LvG+pf2BVMC/8QVkEQmzmttmRWWEGkPa1qh567KeWBOmgWtU/dpigxzetBeB1lFEUPZE3oZqrwrku6dlISiB0k/fWbw4ztSJNjMOwn8lFLwikNSOM7OmoTz05V9dFmTGC81bgyXD73nDFv5NgnCiHOkRN9AjXJuzbo4UUsBUFFNKzqNaR1o8nzxiOBv6KyaZaPtzeTtt2ZlfLJrKh8kKA/VrfklHxiHoRQpQFYmav17AmejpndXragLfcKM17ch9vUzLW8IC2fuhxXLzYjRDTh1BTnYkt3tdlJQVGlEY0v25IyocmdXbJnGPbEMLwjeReayrekaQZeIHkWCiLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7snml6TcFmQOwEruFEZ+8SFvNI7xYCTt6XnppZ5TOo=;
 b=M2aIJzksCpWe/CzRZLftzwR9cHsrMdBRYpChgOElbvAzDIzcAn/+nCYAHJf+KgxiN8gItgMw986ipEwJl96OwiQLy8yjnquY9DGjutsDR7OfcaeifLaFYetOwB0YB3+hIIhO7obwU3uWbZUDCkS3v3I+kPGkV2tarhZUeoLgt1noGNnXU1LUcmlWt+xPJnIVcbtPaSLjmKgm5nbSjBG93OxVzRcac6f74msNrr6OTLTJ9HXKuol84aI/bxZHQgIqD0IhCKw73af0IHYVY+ZrrZvAejYQ6BTF7mUXmv36OnFPidYBx3gnGYPlFTloJHzJ5m720QvBYg5mBjO1L1+s5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7927.namprd11.prod.outlook.com (2603:10b6:8:fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Thu, 31 Jul
 2025 13:32:49 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Thu, 31 Jul 2025
 13:32:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1fe3d5ac314dd644573e9f59941e4c7f1d57b05d.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
 <1fe3d5ac314dd644573e9f59941e4c7f1d57b05d.1753956266.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 7/7] drm/i915/dsi: use intel_de_wait_custom() instead
 of wait_for_us()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 31 Jul 2025 10:32:44 -0300
Message-ID: <175396876480.2011.14943315692896280615@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0266.namprd04.prod.outlook.com
 (2603:10b6:303:88::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7927:EE_
X-MS-Office365-Filtering-Correlation-Id: c6a2b7fb-e8a5-49a0-2894-08ddd036bdb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2VHSmp6L1pLb3VUUzhWZFNsVVJJeXJPaHVuendZV0pSeGhiWVNDV1JZZ1RO?=
 =?utf-8?B?NDF6dTlEYUZOQ1Vnb1hIZ21lcjdFcE1rdWZZajVHeTFRQ05LQnhYLzV5aUQy?=
 =?utf-8?B?anJ1UVExZHQ2Z1hmRUg2ajdzeVdtYW9BRXpiYnAwcVMwWmZIdkxIZjJQeW02?=
 =?utf-8?B?MnozT3ZoRVJsa0NYcDBjNG9OdnVsUjZGSW9tUDA5MWczQ3RpSVFSTWxuRmND?=
 =?utf-8?B?T2NrZ1hhS3UwaFZkeUM5RHNXVXN2U21ra21TcEVxTXVoQXBZZTNuOHI4cjBm?=
 =?utf-8?B?dmtTMk84TEt4NUNlVHVUckd3aUh4RldaNVZNdUd5T3BHSHRLaDNJV0MxNkoz?=
 =?utf-8?B?Z2pXT0VVa0gzYnc5a1U1UHZRc0FGNXVQaFdiSVlZMmV6YVkwOHJta2p0RFRO?=
 =?utf-8?B?YVhwbGdYbldDb3V6elZHYzNEU1ZUVHdYbEdGcjVHcEZuclViZ0RZWUF5bUVj?=
 =?utf-8?B?b3ZNTDNIYXJDME9KbTJrays4U1JHZFpNbi9BYlNzOG9SQ29PdDdXSXlaSHNF?=
 =?utf-8?B?clpWZU5lRHVacTZUckRxT21zQ3RpUkZFUndSb256WkZySWo3V2MvandpSTUv?=
 =?utf-8?B?QmRQS2NZOWFoTHRyL01xVUJCOVI2RjA2RVdOVlBKaEtTRXlXZERLZHlkS3Vv?=
 =?utf-8?B?V01XcDBlUkVOYzVFb2RPMCtjUFdic2U1T2ZoVllNYm9XbUJEWktIalcyRmFu?=
 =?utf-8?B?bkdXOTFqaGk2R2c4RUNWaEdKNWZvNkEyZGRJNTJrK0lUNkVzSnlyS0I2WVBX?=
 =?utf-8?B?UXpyVEM1dVNkMG9ZRnhsS05WT3VscjBISzdlc3ErUzlyejZBN3I0UjJHN1Rn?=
 =?utf-8?B?Q3JpN3BuT3JiNys3SXd0QjZBc3I0V2NtVkRHQmRFd2xnbGJzTzhOcExlRWtN?=
 =?utf-8?B?b3Z6UXMwS3FHS3JCTGE4aFVPYytZM0JaeThKR3YyUVdqNytlR3FxOVIvNUNs?=
 =?utf-8?B?cXJ0MEIyVmR0bjJIeEpWYlh2alFneVNsaUtuM3lwbXhsL0Z2VkhWa294cGM5?=
 =?utf-8?B?dXppZWw1UDZWcHJqS0F1QlJFZ3RLL3dBOHoxNUN3QmpKWGZuOHlUYk0rbEdT?=
 =?utf-8?B?bnlGWEtzUW9jZTVoN1Z6azJJNFhoRnFxdHhXb2Z5elBkNXA5YkR5OXc2QUtN?=
 =?utf-8?B?dU5pckdjRmVqVXk1TDF2cnBuMXVJWFY4ejhETGhlRlllK04vY2REeEdiL21Q?=
 =?utf-8?B?eU56ZTk5aXlpeXBnSm5LOFU5Z21DN1RVV0xDWFdkMld6MjdBVE9sTTJJZXow?=
 =?utf-8?B?a1k3MGpGQTJZcUFJSDdya2RqSTFqR2V5aDgrYzVQNGJhQmlCellGcURYYU1l?=
 =?utf-8?B?bW9hVzljUUI2TnBGQ1Q1bEx3TU10OUcyVEJnV3lKYmtLZTU2aGFhQ0Jhbjl5?=
 =?utf-8?B?dndzSDVHU2l3SDExNmFCQ1R0MGlwTHhkdU0rNEtFazdpQndyd3FXSUk5S255?=
 =?utf-8?B?RGpwOXZSVDNvNS9KTzNqOG9KRnZuMTluOWIyU2pRa3NZcms1K3pGaGxoL2Y4?=
 =?utf-8?B?bTZEczJWeVBDUmRSRGloRGxrVFdVSDgvTy90bm90aTlqQ0tlbm4wRXNLM3VP?=
 =?utf-8?B?Q2p4V0V4ekxROEtVWnBYUldKV2w1UGIxR3lrSEo2YzVqVkRtYmJ4bVNidXNl?=
 =?utf-8?B?ZXBzNFBiSHU0WUZhUzJRRWQ1M2VYWTlqcDAwdGh5bng3d2Z5UGplMHcyemwz?=
 =?utf-8?B?TGhlSndQZjFIVk5vajJ6MTV3NWIrcVBhY2hBbWVQQWFoZFNzZE1HcnBzMjVH?=
 =?utf-8?B?cHNHZmRrZFJEZ2tqWGh6dFVDb0F0Qi9ZU2lWVjdrL0ZCZFdVR0h5eWhHNUVC?=
 =?utf-8?B?YythK204NEN5NkZjcG9TcEI3R0NNZzNjbkFWTk1PekRJelI1VjI4RE9weDhm?=
 =?utf-8?B?RzhwYkhZMC83ZjhDbkN4MkFtNC9PWEZFbURJQThvTUk1Zk5ybXlKcnJtQ0RO?=
 =?utf-8?Q?Up81vyjcG3w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlMzdTdCUUdSeXRQOElYOENERk9aaDJGeWpmRnhKZVhTd3BCaTZHOXdLSkVj?=
 =?utf-8?B?a0R2RC95Z3gxZEd6cER3OFFxUUF6aHViOE9jcm5jOEVOSTA3QjlJWHUxeStJ?=
 =?utf-8?B?SlJmajFsa2pIanFpeEFlZk0xYjU5aXNhUFB2Q2g5dEFSQSthcndheVJJZElE?=
 =?utf-8?B?QVdNUEFyMnlSQVNWWS9rckhJYmtWR0IxRytDVE1vTktVVnViUHVZaTJ3ajZr?=
 =?utf-8?B?UTRobmVVMmNXYW9HMGoyelREcjh3c2NVZVBiYUxaMUJ6OTZjb1RTdTM3NU0x?=
 =?utf-8?B?ZUN2bVN5Y3c0VXlPcjdySXV6N1BQMGphYU83L2hyc0tiT0dtY0VLVVZhaDMy?=
 =?utf-8?B?OUdIUzcvc3VkTnVWWXBWU2dHVnlwbitZS0ZZYnF5OUovUXBqNmNIN0dLbnpY?=
 =?utf-8?B?Q1JyOUZvUFRDNHExc2YvNnZRZFVZODQ5SGErRVozeTE3dGwzYzBiMzQ1NWs3?=
 =?utf-8?B?NkIxcGlBUzE2VXk1Um5xWXFMV3UrbHhKYm4yUHdGcEZ4RVVwZmJZQ0hka0R2?=
 =?utf-8?B?Nmd6Mk4xdkdNbDdyWm4xT0JRSVlYdkp1QzRldnVaTnVhb0FZS1VZZ1NvZXI5?=
 =?utf-8?B?dFkwTjV2TklrWmI1Rjl1eFhrRFVRTm5ncllTNnJ2MkQxYnJYTjlyWVkzL01k?=
 =?utf-8?B?NzdkMEs0MkhNOSs0d3phMDEzK0dNVUtUVy91ZFVKbFBZbFNNamc0YnRUZDNI?=
 =?utf-8?B?OHlZTk5RcUdUVzF3Q1hJdFFabGpWN3VVakx6d0g3NFVoaGVJbDFQY1JQWnlL?=
 =?utf-8?B?SVlldVlSVnN0b3JjVzhydThsMUZGS2tjWVAxWnZiRjlzZjczc3BteDFxMVpy?=
 =?utf-8?B?c0VNYkc4cDRkeGZJRlNESzA1NGlLMVliemJoeDlDVG0xdDBUMTd3MG1YeGR6?=
 =?utf-8?B?MlAzY3BqQ1p4TERoN0ZJamhYWjRleDhGRUpJZU1xT1V2VXEvcEVoZlVJbmQv?=
 =?utf-8?B?cEVMMC9Fc0M4OWwzT3pXTkh0RVd2dTZuMmFWMDNSb3IxN1dmY1B1UW9Mbkxm?=
 =?utf-8?B?L1AxdjlsQWF0Yi9OUVQxTm5FeWUrWDBaWFVjcnpJS2NTUTNRTnU0MWZQQ2t1?=
 =?utf-8?B?bCtSTHQ1elpyVWhuVVJVOTFoVDBIaGJoWkM5M0U3a2xMYUdVajNFazU4bUhr?=
 =?utf-8?B?ZUcwblhLV1REVFRKQTVoK25MbjFIYXF5OFBVaVM5UGR6ZktzN2ptM2oxMDZS?=
 =?utf-8?B?NEFpOE0ya3kxdWZaZ2I5RCs2ckZLcFdsVlNleWJyMmJmZzhyRU1USWhzMitY?=
 =?utf-8?B?d1BxTVpHdE1iYklGWllRdEZPMWZoZG04UGtURWFtaFBpdnZEOS9LZ2w2WDEr?=
 =?utf-8?B?cTJJSW9Pc1pjOVBPekg5SVhOWml3STFGMkVhalJKbnRyOUdDa0s4L1hzZHo0?=
 =?utf-8?B?RDFEdmNzd1N1Tk9sZUt6TnhaVkxTZlVyQXZRS05MZ2d3UWNOSFBVbGhyOG0w?=
 =?utf-8?B?cDV2Tm1iYU1BQmhVVmRqbjJoV2xISVVyL0ZjdXpnZHE1ck1mRzd6N3M3UUc3?=
 =?utf-8?B?eUY1cEpPZEc1OXZDT2NUNGJtdlFKSmM3aFUxTnJEYVBaempjeng1bjdkS2Mw?=
 =?utf-8?B?RktuYUk0UmFPcE9EWUpKMmcvb0VyZGh3dmdkQmp1VGw1a3BReGF5Q3F3L1pV?=
 =?utf-8?B?eVhhSWhsT29TdlJiNzNsNnE3bWlqWjVTMkwrd1dVUStqOW1ySi9RZzl6dFRE?=
 =?utf-8?B?YVRzdlRVYlAvUjlnTGdSSlJESlYyMElDVUVTWlpkd2Z5VzZEbkd0K1pzQ0hB?=
 =?utf-8?B?a0ZhQ0F4V3lKb0F3UjFvSW9tWjg4a3BidFhSLzdsSXhEWGlLa1BRNldlMitM?=
 =?utf-8?B?WktoajdDS3JlQ1FXT2NRZG84YnUxM3p2ZWx5TEQ0c2huQ3NoRW42U3d1alJs?=
 =?utf-8?B?Q0lkMGpyTTc4Sk1ZU0tzcERlNERuVDhyTTMwMTNMdXBEOUpyYU9IUWVXZ1dY?=
 =?utf-8?B?U0t6MjY3NEJwNHNGcmRFMjE5b091eE16alBlV3ZwcGdLeU9lK01vK1llRE5O?=
 =?utf-8?B?QkJzajVGQ0JPdExmeTFEZEpMNTh3ZU41c2FmR0tQOW9ZUFcxbWpHeW9JSm5I?=
 =?utf-8?B?SmlEQXlBRldTWUJyN083L3FUNHgrK2k5SEJSUy9ORFN5TUNtQ1JnVUEvNG8y?=
 =?utf-8?B?aXpIUHYzZnlxOWV1RytOVWZZTTNLQmphd0gvd0VXdFY4NnRqRmxXR0x2Qjlo?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6a2b7fb-e8a5-49a0-2894-08ddd036bdb6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 13:32:48.9841 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DXf0JgjsoILD8XIFtSguv+GdukBibMscNiHyKOVTvzFRHhrCeMsWnKoZvGwVBWVzbT5tjssROwkqSqs0PLxiYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7927
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

Quoting Jani Nikula (2025-07-31 07:05:14-03:00)
>Prefer the register read specific wait function over i915 wait_for_us().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/icl_dsi.c | 41 ++++++++++++++++++--------
> 1 file changed, 28 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915=
/display/icl_dsi.c
>index 8d9cb73a93a7..44310984bb57 100644
>--- a/drivers/gpu/drm/i915/display/icl_dsi.c
>+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>@@ -137,8 +137,11 @@ static void wait_for_cmds_dispatched_to_panel(struct =
intel_encoder *encoder)
>         /* wait for LP TX in progress bit to be cleared */
>         for_each_dsi_port(port, intel_dsi->ports) {
>                 dsi_trans =3D dsi_port_to_transcoder(port);
>-                if (wait_for_us(!(intel_de_read(display, DSI_LP_MSG(dsi_t=
rans)) &
>-                                  LPTX_IN_PROGRESS), 20))
>+
>+                ret =3D intel_de_wait_custom(display, DSI_LP_MSG(dsi_tran=
s),
>+                                           LPTX_IN_PROGRESS, 0,
>+                                           20, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm, "LPTX bit not cleared\n");
>         }
> }
>@@ -516,13 +519,15 @@ static void gen11_dsi_enable_ddi_buffer(struct intel=
_encoder *encoder)
>         struct intel_display *display =3D to_intel_display(encoder);
>         struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>         enum port port;
>+        int ret;
>=20
>         for_each_dsi_port(port, intel_dsi->ports) {
>                 intel_de_rmw(display, DDI_BUF_CTL(port), 0, DDI_BUF_CTL_E=
NABLE);
>=20
>-                if (wait_for_us(!(intel_de_read(display, DDI_BUF_CTL(port=
)) &
>-                                  DDI_BUF_IS_IDLE),
>-                                  500))
>+                ret =3D intel_de_wait_custom(display, DDI_BUF_CTL(port),
>+                                           DDI_BUF_IS_IDLE, 0,
>+                                           500, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm, "DDI port:%c buffer idle\n"=
,
>                                 port_name(port));
>         }
>@@ -838,9 +843,14 @@ gen11_dsi_configure_transcoder(struct intel_encoder *=
encoder,
>=20
>         /* wait for link ready */
>         for_each_dsi_port(port, intel_dsi->ports) {
>+                int ret;
>+
>                 dsi_trans =3D dsi_port_to_transcoder(port);
>-                if (wait_for_us((intel_de_read(display, DSI_TRANS_FUNC_CO=
NF(dsi_trans)) &
>-                                 LINK_READY), 2500))
>+
>+                ret =3D intel_de_wait_custom(display, DSI_TRANS_FUNC_CONF=
(dsi_trans),
>+                                           LINK_READY, LINK_READY,
>+                                           2500, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm, "DSI link not ready\n");
>         }
> }
>@@ -1321,6 +1331,7 @@ static void gen11_dsi_deconfigure_trancoder(struct i=
ntel_encoder *encoder)
>         enum port port;
>         enum transcoder dsi_trans;
>         u32 tmp;
>+        int ret;
>=20
>         /* disable periodic update mode */
>         if (is_cmd_mode(intel_dsi)) {
>@@ -1337,9 +1348,10 @@ static void gen11_dsi_deconfigure_trancoder(struct =
intel_encoder *encoder)
>                 tmp &=3D ~LINK_ULPS_TYPE_LP11;
>                 intel_de_write(display, DSI_LP_MSG(dsi_trans), tmp);
>=20
>-                if (wait_for_us((intel_de_read(display, DSI_LP_MSG(dsi_tr=
ans)) &
>-                                 LINK_IN_ULPS),
>-                                10))
>+                ret =3D intel_de_wait_custom(display, DSI_LP_MSG(dsi_tran=
s),
>+                                           LINK_IN_ULPS, LINK_IN_ULPS,
>+                                           10, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm, "DSI link not in ULPS\n");
>         }
>=20
>@@ -1367,14 +1379,17 @@ static void gen11_dsi_disable_port(struct intel_en=
coder *encoder)
>         struct intel_display *display =3D to_intel_display(encoder);
>         struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>         enum port port;
>+        int ret;
>=20
>         gen11_dsi_ungate_clocks(encoder);
>         for_each_dsi_port(port, intel_dsi->ports) {
>                 intel_de_rmw(display, DDI_BUF_CTL(port), DDI_BUF_CTL_ENAB=
LE, 0);
>=20
>-                if (wait_for_us((intel_de_read(display, DDI_BUF_CTL(port)=
) &
>-                                 DDI_BUF_IS_IDLE),
>-                                 8))
>+                ret =3D intel_de_wait_custom(display, DDI_BUF_CTL(port),
>+                                           DDI_BUF_IS_IDLE, DDI_BUF_IS_ID=
LE,
>+                                           8, 0, NULL);
>+
>+                if (ret)
>                         drm_err(display->drm,
>                                 "DDI port:%c buffer not idle\n",
>                                 port_name(port));
>--=20
>2.39.5
>
