Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09414C87492
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 23:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615B810E46C;
	Tue, 25 Nov 2025 22:04:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="In3RzzEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CB910E46C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 22:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764108297; x=1795644297;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F4WP4o8nIoY9S6H5yLvSCl5B1vUFVCMu7N1NeYv4038=;
 b=In3RzzEcNXdY6uhB5VgOOwkUAELPEMFlnWBtuKXOjhm2aAOyqXmAabyt
 OPxJdDpcwkVrO+QUt32+akGYbHGKV67RPelI4vzD3gEFhGDBRoDLQgx2o
 Yd6rSVJUowCgm62258zVt5GzqZAx5ObN5M2BDJ3BbYJt3dtAIogAytOO3
 u/nFEC/FJayH6sxNlWT7rhsjCQCqz+UNwr11XE63Yw3WqV07v82NQR6mw
 sH39fLxK24UZRPXdZ8Qnd+ome1lVB+0++T0Fi+H6tQePS3MiaSsqhv7Zi
 UQ+62IryBBxo1X4px7W2kyHgAkL4RR4rW3KbcT7243SXwvKTJOKBKF3Tz Q==;
X-CSE-ConnectionGUID: fr0EvdNmQ0SPCbuJTzlhKA==
X-CSE-MsgGUID: 0mgQZEj7R66gzwQLNNEfIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66296228"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="66296228"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:01:37 -0800
X-CSE-ConnectionGUID: AI+8gCDNQiWH6N7dGeG/zw==
X-CSE-MsgGUID: SkfITna0TOuLh6ELZ7quyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="193203447"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:01:03 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:00:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 14:00:59 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:00:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q8qhp1inFGC2x5rT5Z3nf+cDY5Mka/XjECbVM1h4XrQJK2NNeifKoPY8eHnDwWeGUgF0WE4XFPaXwZPBERyLJf6/sHbzYdfTKcT5dg7RwfSsoyPp93J4RnPAzJXOBJ8idL7FC7IZlHP23e7kZnkNUayqewtDbqzV4ZbR5WVNhLmemYaftHV6eUlX/3+PQcuS1LVfxu8PL/e7xJMpzuTCk992rv5nZBGyhtLv+KFj2xE4AKS+zKhhj3JbdIu++FIOqXxK4Fh1gWAQEOEKMFu54zT+h1+A7ooYHedD2/yDo+FloQv23IXgqf46xd8Fj/oeZ4UrgDfblAAPEyv1ULAQLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0YYwk3z9IfLPmV99xx8OCB2oCl5XMLPqHqHtLXdfa4=;
 b=Om9OyW9ypvWtHp2jREWqHHPa9QvcsKP/s01rtUdcXv4lYg6jVV+j7yxOix+nN854i6w9KQHQZ9rD/HLvPCJRLJhXXCtR7uOzqsDT7vbWVKnFHI61AEQR9THIZcAeaXglSLGagtPm0FDs2HTPLM44wEg4qWrHD5drKsA1EjxVKa/2BdrHd6sZscQmZYQylHJHvJ83At2+KbrgNaa/9lP/lJ2ki7tDiMQhDehyXNHOqoDPhkSk6/7qXDwQLriXibL/GylAE3iOOgd3BD2+LNlt6IE9jQ29NU5wlk7vqY+oUA9kXFDfEATQYeQqxpPKe7hqjgSFHJMxUIVhcKMx8H+tRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CH0PR11MB5235.namprd11.prod.outlook.com (2603:10b6:610:e2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 22:00:55 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87%5]) with mapi id 15.20.9343.009; Tue, 25 Nov 2025
 22:00:55 +0000
Message-ID: <09aaeb7e-35b4-4a7a-9471-6bb0c247f2ed@intel.com>
Date: Tue, 25 Nov 2025 14:00:54 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] mei: me: Export the PCI ID list
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <gregkh@linuxfoundation.org>, Alexander Usyskin
 <alexander.usyskin@intel.com>
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
 <20251114201431.1135031-5-daniele.ceraolospurio@intel.com>
 <632d00475a9dc4e878d7145834a70028ab298f95@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <632d00475a9dc4e878d7145834a70028ab298f95@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ2PR07CA0011.namprd07.prod.outlook.com
 (2603:10b6:a03:505::20) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CH0PR11MB5235:EE_
X-MS-Office365-Filtering-Correlation-Id: 23b97fd7-a820-4e06-d919-08de2c6e1b7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VnpmWXRCWk94RHdUdFA0T2trcXppd1JLamR4T2tYVGlHYWppWFMyWUZLU0tG?=
 =?utf-8?B?ZFBuTE13bVdlM2lidlhZd0pVWjNab3MyNWNndmo4ZGNMY05MTy9EajJEYVVG?=
 =?utf-8?B?alBrLzFzVGxjVmoyVEdHdWlFTERjQXJ6T2xNSnNTeTNrdWVZNjhHdE1aY2F2?=
 =?utf-8?B?MlVvazJQWWJ5N1ZZejRCYjZzb1FMdEJyOEdmS3hwZlNyVGIvK05xcVQydUlm?=
 =?utf-8?B?REhSQmpsMUFaenB0SWVFQUVPNzZueHk2T2pOWFU3dUxkYVJQYmZGQ28rUGFQ?=
 =?utf-8?B?ZGtXZ2Y1N2R0K2wxTkZJN09VdTAwcVRRc2dibDFGY3B1M05xTkgwV1VaMGtU?=
 =?utf-8?B?bzFmeGd6a3Bla29DYTdQUFgzOHhveTFuRGxuOXYvd3dzMENoTHlrb3lRTkdm?=
 =?utf-8?B?N2d0WUpQWnZCSmlmTUFUNmhRTElDUVRxYUpnN2RFeXdPTlk5R21uVHpyWnNh?=
 =?utf-8?B?RHlpdVBnUHhPSjE5ZHdsTDVrczhKM3RrVnRjS0lOMHNzNmkxbzUxQ3M4YzVv?=
 =?utf-8?B?bVlwOUQwQ3JuVzBSTDU4WkpmZjJhTlE0VmZXNElkYi9jVm1SMmVIZi9SZFpJ?=
 =?utf-8?B?KzVRTWUwVHp0OXJOYWE0eUx5K3Y3SHo0VmthWGJMZG1ZK3c0Smt4ZVdGaUZP?=
 =?utf-8?B?ZnBGSG1VZTU0SDI5a2VKbzRSa3RNY2lSbVF1cWwwMDV0QUltR2JKWVpYajl5?=
 =?utf-8?B?d290dmlBNEFta3ZyWDY2TDllS0pObXNOTkpUcVRSRGtZTit1SjhQcldIM2dI?=
 =?utf-8?B?N3RFMjlqSUNhQ2dFeklNYXdIemJ0WUJaOGI3VjFCOG9SUDRzWms5dHBLaEVM?=
 =?utf-8?B?aWxqWEp4QU96YW85ZjE4NUd6WWFtUVI3bUlTNTNyUklyelcxOENOWkpGMkpn?=
 =?utf-8?B?czhRd3AvZ3hKdHhBY29GNFFTV3ZpenU2bkF2cGJDQWFOV0V5bU1XYk42cHRE?=
 =?utf-8?B?d2dVNFdKNXk4TXBUcldrZEJpTGZva1g2SUJxVzlibzZZZ1FraG1LcFZBS2RD?=
 =?utf-8?B?Qy82eHhLTDllN2NVK0F6NWZXTlpzbUppWlYwOEFNS1EyTFVjclJTR0M5aWdu?=
 =?utf-8?B?SFZ5OGJpc2FlT2NRV1lyQ2lxK3M0MFVkRm4rUDYrbXVuSXVEVGZLOVVFSFov?=
 =?utf-8?B?S2JheTc1RmtHbk1JSlJVWmpaVzdtL0tFU2MzZWIvanR1RkFxUitTTG9LTnJz?=
 =?utf-8?B?KzdsR3J2dzZJTGpRSDY1VW50b2NiOGU2bTRDbnBmQW8wcXFBSUFWbkYvTlIw?=
 =?utf-8?B?dmkycjBMZkN2UTBrMHpwTnpHQmRNSkNmRkxRelduZTZxUVhuaGVVbHpLZGNN?=
 =?utf-8?B?RmpWeFdocFB3YndsQ1B5WG1NN2dLYjJmT2NDbUtINkM4eW1US1crZmVYMFJO?=
 =?utf-8?B?dE5lOGZFWVZKTUlTYk5vUG5Fa2VKeTZOdUdsczZLVHMwb252Q0ZEOTBiTG40?=
 =?utf-8?B?bDNBOFJzTVlJbU41WlU3bEVIRlA5SytnVmZxZUFhMG9ab1c3OXY0cU5aWFhj?=
 =?utf-8?B?d3dTNWMzWmNWckIwMmxuL2kvbjBPMUREbWQ1bitqMXBmVnhnckc0S3FZQmV1?=
 =?utf-8?B?Vm5ZVk8rQklGdndvYkVxMDkwNk9KaVU0S3FhcE5LRjQ5cU5ldjRSTmt6aVpj?=
 =?utf-8?B?cTBLME95M3oyTDZKdWFaNkpaRS9lZWFnaVpHcSt0b2tNcE9yWVUvN2gyWUhG?=
 =?utf-8?B?d012QkFyNkdtSVhDblY4a2Fsckc3T3ZWYS9OSkVTWEhzMSthUVpTVHBqRVFW?=
 =?utf-8?B?UDRMRmJxYVViMTJQOU05VG5xdEZnMHhmYnlwTitaRXlrN2daVWVoYmUySmhD?=
 =?utf-8?B?dS95L1FPYVpkcjlwWXlJMU9OMGFLRFQ1YVFFMVc0Q0tJb0V6amkxTUZWdzNI?=
 =?utf-8?B?QSt3WWpvMmx0NVlYYkRjdmRUQXlwWGlqL2YxUFQ0OXFBNnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjdrMkg3dFZTOWMyMmZ3SjN0T3dWanU4RnNVdWdxUlVTOUZpU0ptSFNXVldN?=
 =?utf-8?B?amFvaWhMQlNPUVZ1NWhPaTQzKzhqZlYvRGVldThzbnU4UUwvRDhuK0llUS9y?=
 =?utf-8?B?NHpTZ05wS3pJckx1TTBFUUs0M3hXK2J2SlVmbnNVWUcwNk4wTXVuZFpPM0tJ?=
 =?utf-8?B?WmIvRGF2NU8xdzVkNE9Mc3M1UTNESzlMUjZ3b094OXBKYkVPejVzazlXTFFO?=
 =?utf-8?B?STdrK1dBekVOeERnNzRzN0daWDUvcWZqZnRWZWZHSDMva21QMnlDZjRBM2t6?=
 =?utf-8?B?YjlIU0U4UWhmR2dtRFFWa3hDZloxdUpZVVJKdDNEMTZYZEo4dUFkUDVTcXQx?=
 =?utf-8?B?OHhKVmpFOEJiWit6a0pFejZIUXNmdUZrTytJZHFUcnMzYkdFem1FUktGMm9z?=
 =?utf-8?B?Ykp3Mk5XUDBYWGM5LzFtbGlLS3lnSTlQVVYxQjBVUEg2TkFnVmg3ODl4QWRL?=
 =?utf-8?B?dGlUSmE3djZBL1YzNU0va2ZqREhZT3dkUXR1b3NnRmNYRUh0cGo1RnhqYWhG?=
 =?utf-8?B?UWc2ZDN0ek83VTExeXhhRDRKQTNTUFZLQVdwYWJ4TFlkTkNnVWJ1Y3ZhbC9m?=
 =?utf-8?B?aTlzZjV5d0RheFp2SGVXM1BSWk5EZjI1b1V4L1V3bXQrM1JLRUhOUDJiSlNH?=
 =?utf-8?B?YmJFSk80ZnI4clN4R1dla01vTDN1aWhtYi9TSU5wc25CRm5qT0x1dXkrNFhz?=
 =?utf-8?B?YUwzOVppUE9zZEtpOGVDYTBxWnhrSXp2OElIRndOTkJ3UndpZmJhNlFTd2lp?=
 =?utf-8?B?MGcvV3ZsbHV2M0E0b1NOeTJOSnJpaDF0RE1xc0ZIZGRFQWorcDdDSXpaczYw?=
 =?utf-8?B?WGJTVzVOWU0zL3JvVE1RZURCQ3kweDk4cHRDRnFuK2F6d1VTS1dHYWQxbEFZ?=
 =?utf-8?B?YnpCMHBkRDFxMmkxTUExcUlQc0VtODMvOEUwbFFzUWVVUVE2bm5yem9TZTFG?=
 =?utf-8?B?RUlmcWozb1RseWZNSTVjS091U21nSTMyQUVzeWRodzVuWlVRNW9zVCt5VUpC?=
 =?utf-8?B?Zk1PMDZ4ZGFrdGNLckxncHhvbFY3T1JYcVlsUnZkUW1HcnEyY1IzSVJtRnJN?=
 =?utf-8?B?SVQrckk2dmtQMEN6M0JxSXpFbWRkZ2c4bG5odmVkYnhSbzNSOEdXT3VLeTNE?=
 =?utf-8?B?ZkN0dzRpakVpZlBucGthbldqQTY2ckFBR1MzWWVIVzZCRUU1OCszdE5leFVu?=
 =?utf-8?B?R241aG9NeTBialhTVE1GR21LallRb1BtTmFrb3ozWUJjdXVDVVpxRmtkTG1m?=
 =?utf-8?B?REcyeDk0ZXZldlBlWVdrM3FQVWZsTGtxdXJQWDZtRGQ2eVljbEZxOFVvWjh6?=
 =?utf-8?B?OEZUZStNdlliUVVjcVdRUy91SWVmTWd4U3ZYclU3VE5VZlRnL1NUNjJIUkF1?=
 =?utf-8?B?UUVFcWd3MWFiNW1UUVVJQXlLVVV1MlRKNVQvNjlveDJpRnViVDFDZUsxbmZw?=
 =?utf-8?B?L2NXcmRsQXFhaEF2dzE1eWRuZ3FDdUkydUhzZGVlTy9VQzYvcThOaHVvUWZ5?=
 =?utf-8?B?OWlUMHBJVWM5ZkpxMEhsU2taNEZGYk9SS1BpLzZrZUhIbDQ3T0NRZkZuZDA3?=
 =?utf-8?B?K0M3Z3BNdi9uTmRSbkJ1NVRyNFYrS2Q3VlVlWGVwcElRNi9qeGJ5NDBzazM4?=
 =?utf-8?B?SGRKQitjVitnZW0zazhLdzhjbXhDaFZmajEvSXVvREYwY0QvcEoyRnBSSDJt?=
 =?utf-8?B?aEtURStmRGNIajJWQUJRYWNTbjkwZi8wN0VHYUEreUVFd0hCZlZCaWtFSGEx?=
 =?utf-8?B?c1E1SkFENnpiZU9tUVRKVTFrMm1ZZ3pnUHdTRlRhbVA3VzB4UExTUHBFRHF6?=
 =?utf-8?B?WEJ5Vy9PMi9saUpEYWZLMkFTVjRpLzU3dGp6WGFjakl3dHhOaU41L3ZpeHd0?=
 =?utf-8?B?eHd4YzV6V1VhaExDWkFBeEF4NFB1cDZ5S25FeHk5cys2ZnVzRzN6WEpGdnZ1?=
 =?utf-8?B?ejFIcE4waEh0dzAyRWtiaVZiQXJmU1hscjYwaURoMDZYcVJsejkrVkZQZmRC?=
 =?utf-8?B?VUZZcEphTXdrdjJXRkg4R1VrdWVzMjN6bE93WlpuQzJ6RS96eDdaUFpHOGZC?=
 =?utf-8?B?NStGYmxwY3lsRVltYitMRGpSOTlzU1FJOTA4bUE3dzBJSW55dnVBM012SWIz?=
 =?utf-8?B?emRBS0IybklQdWl3c0tpcVUzMjFoc1J4OTY3N1ozWmtjZHFJaDFEVlhIVXdl?=
 =?utf-8?Q?Isqz/MxqgRAB/NW1tV071IY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b97fd7-a820-4e06-d919-08de2c6e1b7c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 22:00:55.4056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XtVhMSFUp9IhaCu1saDpxGXr+Hdal6mKZNOdRwvO8OWvUbKhiok1M6y1NuZUSZmq8hQsO9p7/J27dKJQW5tSaQFn76+uK1k0WXjKxsM+Yp8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5235
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



On 11/25/2025 2:26 AM, Jani Nikula wrote:
> On Fri, 14 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>> The intel GFX drivers (i915/xe) interface with the ME device for some of
>> their features (e.g. PXP, HDCP) via the component interface. Given that
>> the ME device can be hidden by BIOS/Coreboot, the GFX drivers need a
>> way to check if the device is available before attempting to bind the
>> component, otherwise they'll go ahead and initialize features that will
>> never work.
>> The simplest way to check if the ME device is available is to check the
>> available devices against the PCI ID list of the mei_me driver. To avoid
>> duplication, this patch exports the list, so that it can be used directly
>> from the GFX drivers.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> ---
>>   drivers/misc/mei/pci-me.c | 12 +++++++++++-
>>   include/linux/mei_me.h    | 15 +++++++++++++++
>>   2 files changed, 26 insertions(+), 1 deletion(-)
>>   create mode 100644 include/linux/mei_me.h
>>
>> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
>> index b017ff29dbd1..632756f9da66 100644
>> --- a/drivers/misc/mei/pci-me.c
>> +++ b/drivers/misc/mei/pci-me.c
>> @@ -18,6 +18,7 @@
>>   #include <linux/pm_runtime.h>
>>   
>>   #include <linux/mei.h>
>> +#include <linux/mei_me.h>
>>   
>>   #include "mei_dev.h"
>>   #include "client.h"
>> @@ -25,7 +26,7 @@
>>   #include "hw-me.h"
>>   
>>   /* mei_pci_tbl - PCI Device ID Table */
>> -static const struct pci_device_id mei_me_pci_tbl[] = {
>> +const struct pci_device_id mei_me_pci_tbl[] = {
>>   	{MEI_PCI_DEVICE(MEI_DEV_ID_82946GZ, MEI_ME_ICH_CFG)},
>>   	{MEI_PCI_DEVICE(MEI_DEV_ID_82G35, MEI_ME_ICH_CFG)},
>>   	{MEI_PCI_DEVICE(MEI_DEV_ID_82Q965, MEI_ME_ICH_CFG)},
>> @@ -135,6 +136,15 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
>>   
>>   MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
>>   
>> +/*
>> + * Other drivers (e.g., i915, xe) interface with the ME device for some of their
>> + * features (e.g., PXP, HDCP). However, the ME device can be unplugged via the
>> + * pci subsystem or hidden by BIOS/coreboot, so those drivers might want to
>> + * check if the device is available before initializing those features. To
>> + * allow them to perform such a check, we export the list of ME device IDs.
>> + */
>> +EXPORT_SYMBOL_GPL(mei_me_pci_tbl);
> Data is not an interface.
>
> Please add an exported helper function (with a sensible stub for
> CONFIG_INTEL_MEI_ME=n) and everything becomes much cleaner both mei and
> i915 side.

That is actually what I had in v2 [1], but Greg suggested to export the 
table directly instead. I am ok either way.

[1] https://patchwork.freedesktop.org/patch/674368/?series=151677&rev=2

Daniele

>
> BR,
> Jani.
>
>> +
>>   #ifdef CONFIG_PM
>>   static inline void mei_me_set_pm_domain(struct mei_device *dev);
>>   static inline void mei_me_unset_pm_domain(struct mei_device *dev);
>> diff --git a/include/linux/mei_me.h b/include/linux/mei_me.h
>> new file mode 100644
>> index 000000000000..48fd913a3d95
>> --- /dev/null
>> +++ b/include/linux/mei_me.h
>> @@ -0,0 +1,15 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (c) 2025, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#ifndef _LINUX_MEI_ME_H
>> +#define _LINUX_MEI_ME_H
>> +
>> +#include <linux/pci.h>
>> +
>> +#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
>> +extern const struct pci_device_id mei_me_pci_tbl[];
>> +#endif
>> +
>> +#endif /* _LINUX_MEI_ME_H */

