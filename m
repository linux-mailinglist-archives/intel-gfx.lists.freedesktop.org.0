Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D257A14EB1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 12:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37D1D10E1BA;
	Fri, 17 Jan 2025 11:46:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m0BvlOvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39D110E1BA;
 Fri, 17 Jan 2025 11:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737114409; x=1768650409;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=L0Du8pGklW1lZ96GJacxI2PHE0hOTWECn+Zp00cXNZY=;
 b=m0BvlOvusFnqJUYbzxs20+Vir9PkEJKj/fybXlXeE0J0PhxxSf3gUXjc
 OfMmXW/vZaizFlfzsUI+H3ay58Rut6MvrZikEDj/M8Q0IMQBEK2TzUg9C
 HQstIawKQszGBxhIjOqDlyMGxSBxmbL4QgdaKlrs/u4wOdt8rcYOrcuZV
 q50GmX0DZElDHvBdiJgfsGGXjVIoY0PGfEkSfzXoH6HJYI8ZOW0lioira
 b8wAEmOZJQtntrevI2klsNREVrEdlnZEKI0Pg/mRW93q1OT7qxfGy0KHI
 01wqWqMbOESd338i49NitlWBqxgR8eniL5F4aXsgcNBNpPhmwM7vyKMCE g==;
X-CSE-ConnectionGUID: ZF3EJYImR9Cp/MNF0FRGfw==
X-CSE-MsgGUID: Q+dtvqJGQhKgXIgAPQBlIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48541103"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="48541103"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 03:46:49 -0800
X-CSE-ConnectionGUID: eeIa78HcQeuTBjaecss7aw==
X-CSE-MsgGUID: QqNqGbd6RqmjJu3ksmTt7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="105971245"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 03:46:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 03:46:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 03:46:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 03:46:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h/fCboarkpr8j+JvXU7UU3wZa+35Ie0uTzOYlCHijml02Bl2QH9Mk50MpFLQeqCPv46rXolHzBeOe0gTUxUlfdRusrzRebusDTq2i61iRAGvAc1EMqWS4DaWtbhmqvExbORHToKtb00mHQLc76z7zKEjIBZMztVwnRsF4o6u7HmGeNdrcc6hWZBVI7QQ1wr7Nch5D8VQ1XEwCURX6g2LFWUyY7PDOsRIGS6LxG+zopjoqapFYojK1bLUqeXXWN2LlCi1JBXE2pyly8zDgigYtGmDldvIbnTY0n3CjCyPUM31p6TiS22ose32aL3OTZivxZTFiZpFkxA7Oj3vxWBAUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zpGrfu/YgHYE23eGw2r4UGa28bsqXdfPPr8nkfCwurE=;
 b=j2eTz4kHuLn4ORerlrTqG3e508s9p39/hwHFBFZqX0CXwCNkhzKhxuSrUBpo/gVRmfKRHrRHg0NgmB5q8MHBnUXYFvJRIL1fUIFawXmsglJ8GaTG8jPrVyRh2O5jBqjR2xQ7u7VjMxztFFpL6cxIzdwXa6Jb56jJL1sAQFDJA0C8e3R07C9RWdoURQtTyQKQ5alYs1DEMvLH58QWJKQGCHASfG6dlEFcwza+RSy5y4ISORUPOl2s4Zg9Gk9XvXHJhWSgV59AVwYlruxf4FS/tTleOuIQ5IDgnp2ovX0x9tOy5UjeqVTrgsbmFEH/LMGwI8E5LQdeUISDfuT8L7XdTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7961.namprd11.prod.outlook.com (2603:10b6:510:244::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 11:46:46 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 11:46:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250113204306.112266-1-gustavo.sousa@intel.com>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
Subject: Re: [PATCH v2 0/3] drm/i915/dmc_wl: Track pipe interrupt registers
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Date: Fri, 17 Jan 2025 08:46:40 -0300
Message-ID: <173711440061.1912.4703706666148587283@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0235.namprd04.prod.outlook.com
 (2603:10b6:303:87::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7961:EE_
X-MS-Office365-Filtering-Correlation-Id: e68da976-739f-49b5-0d4d-08dd36ec9eb4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzJjWEVzSDd0Wnh0MHdDNDVJUXBJM2dMaXcwMnA0QTNGUFFEVmJYbmtidXJl?=
 =?utf-8?B?QTBiV2prQm9hZ0pPZTh4di9tY0N0T0N6MmdKUWt4ME9yTDBTL0dBbnlobXRh?=
 =?utf-8?B?Z0gxRlA0Skg1Tno5bkRSc2VTZ0wzeDAyL3ZKQ0JuOEZBSWV3YkMyazN0R3hs?=
 =?utf-8?B?RnJzNVFmUjhHR3MxaHZuQ2xtN1FvK2ZhTXRCNzI4YSt4SFo5L2ovdGZIQXFO?=
 =?utf-8?B?dk4rUjhwYjdNRWp6V3prVlNSRnZpRUdGdy8xbmNOYnNMZmthZ0tiUGpYR0li?=
 =?utf-8?B?L21WQ0FzOS8yUy9XUDJrTjJJbGtJZ0RSeG1JeUdXcXVMTGpTc0xYeHA1bTAx?=
 =?utf-8?B?OWlQcVNiUlM2bWRoUXJYUSs0dGdEcXZJRFd0czgvVTliSDg3dWgzdi9BcUV6?=
 =?utf-8?B?VkRHdXM0OE9rUWtZQ3dLdGlqTWYxU2Fqd0dhNDhxeUhyOEtoVWZZMlo4cGV0?=
 =?utf-8?B?bVZyek9Za1FzcU90R2JxZnZDNmQvOGhtWDlBTFlFZjlnV1hGZlhaV2VnQUEw?=
 =?utf-8?B?Nm83ZVdhcUwwOTk2cmFLMnBhclc0eVM5bWY4Tlg1NHJ6dDN0SXdXUXJnazB5?=
 =?utf-8?B?b2l3U3l0dGdPQ3c0ZXdBWU56Wmd6bTNaTjhEUW9uK2hvaWt4bFEzUDZlWEZE?=
 =?utf-8?B?eUFnWW1aNEtpZzM4M1Q3VUhqdi81djVXYWY3OU5kK0hmZHdoSm1tWE96Q1RH?=
 =?utf-8?B?bU5FdlNhNFY2Q2lxSWNJcVZuYTQxK3puamFtOTh2TEdEeFhlUDVxTDZpU1Z1?=
 =?utf-8?B?RWpEa1lyYzY2YmZ6ZmNQbi9FelRqUmY3amM4cmV0ODRYRStIQ2lCKzhHSks1?=
 =?utf-8?B?em03alBkd2h5dW53TksvNmJldWgvOVJUWmtFUVNXbDRSZnBTY0k1emw4cFMw?=
 =?utf-8?B?L1dYWmhPM0J6cnRBUWoxNHd0MElvTlgxMDNBNm8rSlJybG4yTGV4cFZSakdF?=
 =?utf-8?B?VjF6TnBFOThMaTh2MFZpNTZTR1QwcjRZbTZhOVdycTJ6ajJxRWZLS3dGS25h?=
 =?utf-8?B?YjNhdkMrUWtQK1YyV0w1YXVxS1hPNmdXS2dWc2pyTkNHeUlkcXRzbkJKMnp3?=
 =?utf-8?B?NzN6V0lZZzhrUGVLaVU2UE5ueWZ0WTk3ZDFJNzNQeEpBMXV0Ny9LWDZQQnVt?=
 =?utf-8?B?eUJGa1h3WEkyVXU4Rk9vVEtXWjgzb0RMT3YyZFlrYUhxWHlXT3lJRFVaZ2VI?=
 =?utf-8?B?RWxnQThkY3dLL2hIM2dYYTlxVytUVTB3NXh4aTVTVU9UZWZnaU52blhzS3Vj?=
 =?utf-8?B?NmJnOEhDMldEc0VPaHlYb3RsUGVoeFpVRXF3MWlEb0VtczlhekJCdlNXdmtB?=
 =?utf-8?B?UHE5OUF0ZzJPQzZoV29ST2luMFlBejYyV0V0ZlRhQnpoekJydi9vamlqY3NO?=
 =?utf-8?B?azl0S2N6NWM1NzBOeCtRVlBnS21ycHJ1dDVPSXZtZVVUNDEzbU9XSmdIT0RR?=
 =?utf-8?B?cXhFSTNERmdKTmwrNE84ZWdtVk5yZ3ZVUTVUQ1k3UmdKTkFpSEdjYStWMXJS?=
 =?utf-8?B?dEF0Y1FXRFVMd2M5R3ZwbWtXR2NQQUx0eFNGbm5QM21qd3p0LzlrTm1yWTY3?=
 =?utf-8?B?ZG4vYXd0Rnd5ZTNrQUo5b1ZVSFFPTnkzY3VCNytnNkRhbHdDaFVTTWZ2aFNr?=
 =?utf-8?B?bzVqd24yd2tEWXJDV2hjMU5OME5GLzFSdzZKTXhFV2hQY0pqb1VxVU5nT2ZG?=
 =?utf-8?B?TmxmOEJ5N0ZpV3dBT2lxUnZ1WDhDQXhENzFOYzB3YnF2bHlKMVZkVFVKOGx4?=
 =?utf-8?B?UTdzRWt3MVZvYkpMcytkcEFQOHVmZXJrSEttMGd0L2JEdlNHOHVIVDVNQ3ZG?=
 =?utf-8?B?L0dLTldVSGswVm1ySU9oM2ZnekZ4NFFoRFE0S2RGM3V0djJjT0VsYTBBVXl5?=
 =?utf-8?Q?2ZUuZuewbyq8f?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEpQSDdzejBnZXRWaVgxM1JyOGQ4WXRWOEZTL2pJdXNtaURDYzkvaFVhT3Bw?=
 =?utf-8?B?QVp0M1FRaEZ1S25kQ2tnVVFXM1lHOXg3bHVzVGZrRjJLQWpPK2tFVERpQkUy?=
 =?utf-8?B?SWh6NXdqK2huK0RSMWJWc3pJbENzcGtCZXRFYlZiNEpFM1gyRlVqZkg2UzVW?=
 =?utf-8?B?eHRFaUhodTR4NGp5dWQ2M3hka2d1b1BWaHByMGlEK1lLY0wxUlhCQ2s1Y1Vy?=
 =?utf-8?B?a0RiVC9ZTStjVjhTdFhIQlJNTGY3NTFtSHpvUHBId1ViWHl3RVo5V3hYZS9O?=
 =?utf-8?B?cjlEZExtd2ZEemVPdEQyRyt1bnhMeTJHWjVjWi9EejZNeE1yelVrNDFJdTh2?=
 =?utf-8?B?d0M3OFhNK0NYOEgrUFZhUG12aGNnRHZkRnFMNi9KVy8wZDhhNWNUQ0lSeHJM?=
 =?utf-8?B?RjFTc3lvVmJsN1hSOThWVzhWM2VyNzgvRjFyUVkrVDhxelRMQXI5TDc4cUVq?=
 =?utf-8?B?TktmRTgwSnZxMzNDSGNVd1kyS3hjQzdPRTFvOXBMNld3MEFzcDFiaE83Qk82?=
 =?utf-8?B?SmxBd0txcTg0ajZJTC83YTk0VENrUFdnbTNPUzVpTThwWWZ5NEJrNGlRMTVL?=
 =?utf-8?B?Sm5xbHBwU0V0azQxbitCTisrSm5ESmQvOWxvZVJxQmNxSitSRXN0S1E0OHFC?=
 =?utf-8?B?NjZabWc5d1NnS2d1cHNvMEYwTkFqWlYxRDBaSDczQ3ZnTmJLVGE5NEVzYW1M?=
 =?utf-8?B?M0FobURYODViQlN2cmY1Z0paNHFKbFlWbHk2UDhHbGcrcDFLaGhza0R5c0sv?=
 =?utf-8?B?b3B4L29jRWdnd01uRHhSWUltcGZuVWhwU3dWNWl6M3FBcnRFT25rSEM1MnFn?=
 =?utf-8?B?aDFOS2wrMzJpaTlscS9QRzhlV1E5SmRPNnBUQVF0Ym4xdURvZTZEaHl3aHdS?=
 =?utf-8?B?eUFQZTg0SGRKZ0ZVY0VhTGcrdzJ3M2dPR1BBeUF2TGtMZFprU1Rsa0hvYVl2?=
 =?utf-8?B?SHJOQWFScnFJYVRVQnU2L0dGL3U3ZWFCYnA4M1VIV1lodkdsbUNON2ZNV2Ft?=
 =?utf-8?B?dGQ0d1gyZVdzZFBOWURCY0I3NlF2NnZFcVY0K2MrdXFNUnhMUkV1K3l6WTlw?=
 =?utf-8?B?SnZwZnQvQVdULzlpOXNDNExueGMza3g2OWhBTDhHKzdESDg1SyszOFgzbVpq?=
 =?utf-8?B?L0tSbUFteS9MaG5idnkwa0lVM3QvVzI0cmF6K2Jwd1RmSjFqNysvMURDZk1J?=
 =?utf-8?B?RW9HODhha0ljQk94NjkzK1Y4b3VLNFJmdzZPZlhuN1pkWGpISjNxTkQzU3Ar?=
 =?utf-8?B?blloN1pHai9YMWxUZDJyTlFhekxiS2FoTXozOUpnV3lJa01IWG81c2tOVlMw?=
 =?utf-8?B?c0tnWVJ4MWI5cENSdEpZd3ZpNEg0a0Y5QjVKZ2l4UlFSVEEzWU9zWXZ2UGk1?=
 =?utf-8?B?MWwyRUZlOGd3dTU1L2lWUEtLdHhSN1pIZVNNWDMrbDFxaHgyRUt0Wis5Y1lx?=
 =?utf-8?B?YnJMM1ZmNGhiUHN5NkVKRnQzNTJISFN4dEl5Z1JRRWlITTBNdnFUR2tYOERW?=
 =?utf-8?B?RVJTeDFKUUxRU3JIeGtNWUY1elRoQjVrNUF3ZlVHRER0Q29nOXZ6L1h5bEd2?=
 =?utf-8?B?RHdxSk5vTVJpaENWYmJvR0QrVlc3M081bmRzTVppRFJMUTNCRlNDMXptUVF4?=
 =?utf-8?B?Y1NvWlhXK0hqb2draVZwMS9GNkxORzBEMC9qWDNUeG1ObEVQd2F4dHN6c2xE?=
 =?utf-8?B?Vm9FSXpCUHF5STNrL3FMMXZBK3JoR0pwWFlwY25MRExYT2FINGVGL0N1a25X?=
 =?utf-8?B?eEhSbTNuVlhkSFhFQjRRUGgyWm5uK3dINU1COWhZSjVBWUdCOU1PTVVCRHVt?=
 =?utf-8?B?MzJJditweXlYOVdFbjd1SnIwc2hjVmpwMlFPejk2VFJrNjJKMWI3MWdSNnNq?=
 =?utf-8?B?WHpUSTgzNnpOd0c5OTUyRi9yUEUyT2tEVmppdmw5K1F5SW5Xdm5tQXh4RVI3?=
 =?utf-8?B?Lzd2UUhBRklUSW9ZclJRakhPek9GQ0xncHlRK2hQMGtodTRFbi9QeWhhZnV6?=
 =?utf-8?B?OWxkb1dacXBlQnBqNWdiMkxKZkRmSmw1RUxmSy9XK0hvN3gzbDVOQ2lXM2FM?=
 =?utf-8?B?MVY0b0JBR2tKOGN2eGZtdzJVMnlrSlprUEtpaWRURUVVKy9HSW10cWRENDdJ?=
 =?utf-8?B?cm5ucnJYcEVyOXZmVXdWakZjb05NdjBDd3ZNWFhqaHFaMlhzZHdxdXN1ZXlE?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e68da976-739f-49b5-0d4d-08dd36ec9eb4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 11:46:46.0528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i0Zuql3O4CE/FwjyYzS1NB0ll9tMtrxpGsZn1ynaSfgY34m/9F4VJSXad1MTn2B3SUT9XMd9SlDCQs8SZZU8gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7961
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

Quoting Gustavo Sousa (2025-01-13 17:38:55-03:00)
>Pipe interrupt registers live in their respective pipes' power wells,
>which are below PG0. That means that they must also be tracked as
>registers that are powered-off during dynamic DC states.
>
>For that, we first convert the display IRQ code to use display-specific
>MMIO functions so that DMC wakelock checks are properly done and then
>add the range for pipe interrupts in the table checked by the DMC
>wakelock code.
>
>This series fixes vblank timeouts that were happening due to PIPE
>interrupt registers being accessed without the DMC wakelock.
>
>v2:
> - Change "drm/i915/display: Wrap IRQ-specific uncore functions" to have
>   the wrappers as static functions inside intel_display_irq.c.
>
>Gustavo Sousa (3):
>  drm/i915/display: Use display MMIO functions in intel_display_irq.c
>  drm/i915/display: Wrap IRQ-specific uncore functions
>  drm/i915/dmc_wl: Track pipe interrupt registers
>
> .../gpu/drm/i915/display/intel_display_irq.c  | 350 ++++++++++--------
> drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   1 +
> 2 files changed, 205 insertions(+), 146 deletions(-)


Pushed to drm-intel-next. Thank you all for the feedback/reviews.

--
Gustavo Sousa
