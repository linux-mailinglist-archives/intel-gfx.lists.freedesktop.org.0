Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHRLIFltgGmV8AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:24:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FEECA150
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:24:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD9510E3D1;
	Mon,  2 Feb 2026 09:24:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdvPmcIw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E5810E3CB;
 Mon,  2 Feb 2026 09:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770024278; x=1801560278;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P5uxyestYJ3GMgoxqB80qtSTs9BDsSZAwG9D6isBCAs=;
 b=IdvPmcIwRN88gE8THTfxxzK8gYNtyWkW7yCGvk+aEWpR0VvjdIjCyHWC
 nLBhmj9bcegsJ5CD4LSEeHRsofB8AMLeYcF4hyXIaQNK+EQ/Qb7SllCtr
 rJN3WkCWvzPtNdxugA0LlCy8yOB26Bt0gzXudwMOLDVQcU0k1FY1ayl3h
 prANV5TdeyxfjDGSvywkpKe3aY3J0KYAz9ukyDPAfaF2GfptkhLbUrltn
 nVu2ZPCQq0P8lfpMQJxYxPgPEKJjbj9ioyLGfMj17dEveEt8KfxWK8zIj
 5vaMmzmDhGM3jzE+k4TLn7mSI473AsV90STWShN+C1f9e/Ulm5/WGkJRv Q==;
X-CSE-ConnectionGUID: wgzWyWd4RteCdS418q1J2A==
X-CSE-MsgGUID: sl3SB0/KSEOiwApThNMXgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="82604229"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="82604229"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:24:38 -0800
X-CSE-ConnectionGUID: IBapEbcgTbSGws6lppkKIg==
X-CSE-MsgGUID: sFxdoXZtRj6Nz7sYew9Vow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="208571646"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:24:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:24:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 01:24:37 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:24:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zBcUshqbTp7HzKzFMku7r2F88G8LkbzDxFVzC9W17m+gpZd7QWa9WBII1sWXQ/EBxJHfWo2LuUz3/TKe+jJvSAxF/iaKiYOkdwWenWx3tfjZ2wgACXxeDNupLycyIhGS1ff9JV+uV4iuxhOH3k2wD2dVD8FDrY61YQgZOfwhmih8YhgFmwj00xiX9z4aPwTbL96VfIPsv7K0ImWTbEXb1pc0xQv+Qk4ZDAKyUi2Z4GbGyNeAHQtsihZsfx8s91FdMKXpAKzxLf5rD0hxh5G7Akuyw+nghpns8/7bvZ6tHcS4AO68SHQES+GJQwwRk9AqAWGEepOHeOW7DFJ55/SPSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vkLkZS/2WiCaLH2VzfPIsgo+KVNwYAZIkybg/raMN8s=;
 b=UZj7H9Qg9sG7enU4wTL0+HHw7CBp+egBrQ4hH75jpqGVh4dpRFvbzUtXkU8gdMxqzg2kAgPyU/3TlLqiwAlG2AlgonzCUejapB2QicrnLwSYQIGahc72MPQFxsMft3cqOImeKL38oYRYdJ5q3yRm0hTBkT28RiBT9WqxmXNnRNYO5JqhWl1b+zXpvYSNzt5d4CUAqkifBddl1qXzXaM0Q1m2QrwtrGZEZ//p5a7R4XCm5QOYPpWDQb7PCP1D3ga6cncyZ4gEQiolQdTPMQf84ssfQQAmIMeSbhS+oJef+ydGE1e4+RC9DI/KJQVU1l8J7FAWVYumBuA3yDIPCze3Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6256.namprd11.prod.outlook.com (2603:10b6:208:3c3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 09:24:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Mon, 2 Feb 2026
 09:24:32 +0000
Message-ID: <87caf4d2-df09-45a5-83bf-b4705d293e8c@intel.com>
Date: Mon, 2 Feb 2026 14:54:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/17] drm/i915/dp: Rework pipe joiner logic in mode_valid
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
 <20260130081812.32087-5-ankit.k.nautiyal@intel.com>
 <aYBi67v7ks4V3C1e@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aYBi67v7ks4V3C1e@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6256:EE_
X-MS-Office365-Filtering-Correlation-Id: a3b1ce92-8c33-4824-1c48-08de623cdf59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SHg2WEYrVHE2VndyL3JlL21MTW9neitVYW1ZYjVtSDFMZTNGbHJUNXZuUmR4?=
 =?utf-8?B?VU1FODdGbDRzRjIzQzFmd1dHeFFZVDEybk5xZ2l4UjNKR3Uvc3ZEVUNMQjZX?=
 =?utf-8?B?YzNqa0VsV2dTNnNMSXBnMitvZlNZQ0ZsVzA2eWw5bXFiWTYrRmY4MGVwZDJL?=
 =?utf-8?B?ZzM2bWJBKzl4WmJTTWpCWkd0M3FXOUhJSUhrTkQwdWViSWVibk5TQTBmK0tP?=
 =?utf-8?B?aEkxdEdHZHhnQmREcy9mcUpvTythM0dab2ZwN3ROR2MrK09LOEtmWllGNDl2?=
 =?utf-8?B?ajV4dWEvT2tZdDdHbFVEUk9XSUEremF3anhZTURRWUg5eWdVV1phdU9Gb3Fs?=
 =?utf-8?B?cnk3MnAyUXlwbEpXTzJud1h4NHdVNHFqSmRuWEc4ZWFxcTBKVWdSVzFVOWFi?=
 =?utf-8?B?dm0vVDJDZXFnUHFuZXNqa3ZoWExKQk5qVk9TSncwZlBLVVlnMVlvZ0xtS1Qw?=
 =?utf-8?B?YlVLZXdRUlpVRFpFU2d0TWxoN3VFVjh5U0FOR1Y2UXBadnVZT2UyTXFaM21S?=
 =?utf-8?B?RlBSS0dYUFk3N1Zjck9jYjc0ZTd0Q0dQakhwVEZjMUQ3ZnhmV3NDTCtWZTVK?=
 =?utf-8?B?TGN5VWdnaXVmS0hzTHBSdTd4cWYxUjNxemNkNHpWQ1dnUXVvcnMrWldwdEhk?=
 =?utf-8?B?Z3N6MFgrRDJrWmx5NUI4NVpJeVNaMkYrYnUwU2gwTUY3WkxPRFlleC9vc2g4?=
 =?utf-8?B?cG9ZRmxnOWlxajVFSnNaTTAzWTBTUm1iTkJEWjd2aWtIUVljZm1IQmJyZXhK?=
 =?utf-8?B?VVh4cjdJNnYyRk9wOUFnTEJuc0kyRm94M2RKYlZYL3FuWXJlbHpkc0tjMDg3?=
 =?utf-8?B?NjhRcWx5c21qQ0ZsbzlFYVBXQzNnc3NpVFN6Q2ZZYzRoK1dOeDFLcXdFUXJy?=
 =?utf-8?B?MlJBbGNETElBUThBODVDRzRILzIxNjdhclFVZEFmMHNlYkREaWw5dTNmMVZL?=
 =?utf-8?B?eURGU05zOWdtUE0vR1BzTUxNVTZLeDhCdHpQSmk2NWFHNGxLSE12bkFBMzR2?=
 =?utf-8?B?SDhwU2x1dUxadzdVNjBDNXJZSmNtOVJQSmx1OTdHT09ka1BXWnNVZDBPdGZ6?=
 =?utf-8?B?Y2UzMVR3TE03Z1U0N2FSb2x1dWlFdkJMNGhPUktjWXBZaU1Iam9YVkwrR3pD?=
 =?utf-8?B?enVML05IVmVjZWc2WFQ5OGxQQXBvVEFxOHFQTk5MUVZqWnk2bktKY3ZlRmxW?=
 =?utf-8?B?eWZXNHhNUk93MEY4MW5IWm5NVXB4RFZXMFBLRlg5cSs3d0EvTXVORW12dXNa?=
 =?utf-8?B?b1crVEdXUFBUL1Q3bG1TSERUeEpUcWtqWnBOMmpzN2czZTdENGJjTTZpak4r?=
 =?utf-8?B?N2JrZkN1SkU5cU1ramZQRExqbjNzM3hEaERxY3ZybGhVcXBpeTlRZWFYOTJt?=
 =?utf-8?B?UncrdUMzWnQ5R3VndzBYMDYwRTJ0UEJVVTZxaEJucmRBeUI5ZFJJRUQ5UXJ6?=
 =?utf-8?B?SDltOFFKK2tOcUhYQ2VhSlZjYjZOZU54SFVJSWcwL2Fib2c1SUU1b1N3UWpZ?=
 =?utf-8?B?YmttRVBZQnRsOUFIMWd1RzhXdjJnMWNYL05LSEZTM2FMNVYrQzJOQXFXS0tv?=
 =?utf-8?B?aWZiUDUrcEkwdVVyK2tlTHlTUHhUQTRaQ0JNQ2lRSEdkQzgwMjZTSFdSTU1M?=
 =?utf-8?B?b2RBYU1DN3lqQzhSbjhvWnBSL09SSSt4U0hNRHFBaE5PWnFqYU1MbzlOTlRr?=
 =?utf-8?B?KysxRkE5S0p1a3oxQUx0R0dyanp1M2thTUtCUmdPeWdSUTI3aTlpWVQ0YkNj?=
 =?utf-8?B?dDl4aW0wNW9hQk1QaHowdXhET01oYTFCRnBqQzFFck4wREE2QkdSd2lUNlF1?=
 =?utf-8?B?ZTZnYVJpMldiVGNoMzlkQjJicWFYbHVuUDFnVU9vemJQaDFtck93WFExS2Zj?=
 =?utf-8?B?TjFsc3VHSUs0OTYyenA5d2dVOVZkR1JFQ2lvQjRUbm1hTWczZ0RlQk5zdjFa?=
 =?utf-8?B?ODVMQXYyNW9iYXZrOS9KV1h5SWlXMEM3b3hKN1VWNmZEZUhzUWd3L3ZmTXJk?=
 =?utf-8?B?dS9YblQzODRwUHcyTFU0b2RtamtMSXNFcm1MT2JHTCtIbEVRcWY1SGhvVFZZ?=
 =?utf-8?B?NkNUOEo5K1pZTDEzWllZdnZPckpBWjJFL0NtVG1WUzhpZk9yRWE5dnI3TWFx?=
 =?utf-8?Q?xvA8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGhUaDBkVEx6eUYwSEtCL0xROW9wWUdDMnlCak94Z2JlKzQzL0prWStoY2pM?=
 =?utf-8?B?VkJKRUJxRHluT0xpOGNXSCtDcmZwMGxjQTVIT2o3OHRIZEFCNEgxTSs5Lzgr?=
 =?utf-8?B?Zk1WRk9wOWxjVTFBcTFIN3B2SzNUR1J6SWpYRFV3NDVQWVVRZUhvM3RiT1p6?=
 =?utf-8?B?STg3KzlBY05XQTBaeml1KzNncHkrTEZUMDdUMVNyRVJickttdjgvQVZnZ3hk?=
 =?utf-8?B?Ky94V2hwSFY0NDA3Q2xIUVhDcmZ1Zk5QM1VXcFBEY1ZPcklwVkFwYzcrUFRK?=
 =?utf-8?B?YnpvQWY4eUZYYnh6TzVqTHZoSWY4SEtqSnJSdVFGYjJFSTZwNGlBOEJWVTFZ?=
 =?utf-8?B?bmFaTlNPSlh5WlFYOHpZOVNiWjJadGowYkd6Z21yYysyRHZNVlZUS1JMOHEx?=
 =?utf-8?B?eURnOWtqUW9ocUwxbTZWMzJnL3JZRnZCRHgvSklHZTNyQzJIZFRKWU5rVE54?=
 =?utf-8?B?bXdJYzB1NUxweGdKK0kyZ3VJazEvYnlydWZJd2I4SStXZG1Sc3R5cXpwNS9I?=
 =?utf-8?B?ZmkvY1hXazNhN0FYVWpFRjhJQjc1RDJ4RS9ZSDV5Nitid05LOGZhSkU3QWRu?=
 =?utf-8?B?b2RlUnR4ckovS1BEb05oeGx2bk5LcnVDK0xVUEpFUi9TWnhIWG9ROVZFeG1v?=
 =?utf-8?B?MTNuMUtpbFlIaFNZamRLMkVuT1ZuMGlyMGhydEVvOHNUYmNZMjhDU2MzREVz?=
 =?utf-8?B?cXFFWlFnYnRFU2QyZmJxNW1MMHdYbEh3dyszK1VTL1hhTTgxV3hIbjc1SkM0?=
 =?utf-8?B?czFjdWxyb1UzQno3S3RabTJsT3FRQnpDeUVyeEYwZnlycTQ3NU1wTU1LaThq?=
 =?utf-8?B?aHpVL1VWYllhK1lYRUM1azlRZ0xVeU1xTHA3R2NPMTB3NzY5NFlWMmh4YzlI?=
 =?utf-8?B?SVdVMlh4VXR5TTBTL0ZnRGVYTnc1NmY0cDJWSDR4UElJd3FBSzk1eXhZRGJB?=
 =?utf-8?B?QXZkYmpoWmRJTmZDTE9uU1hMbXI4djZJZGlYY0Z5cmhBdUE5YlZSMHJSV2h2?=
 =?utf-8?B?TCtEcU9FOHdubVpyTmdvWjRBWUk2VDAxZW9CSUE0ZlJaNTA4WWozZ0ZtQVlT?=
 =?utf-8?B?TEt5K0FRWEVaRyt0S055VFpXZHNZY2NYM2h0cmVmYmluY2piQ1N5MWN5cFRu?=
 =?utf-8?B?TzN6QzVFZFd4L1dNSUtXbFVIRm1XekhxZUNUVHNvWm9KNmd6SjdLUHhzemFv?=
 =?utf-8?B?dzVkdEY2KzlSZkU3K2t5eTBpakx2NEhBbFg2aUYwdkRyaDlrMVo3OXJQL2NI?=
 =?utf-8?B?NkJpaVhsRk5KSGFmcjBzSWd3YnJzcnF3QUhwQkcyWGNtWnJHclpzRnN1VkJm?=
 =?utf-8?B?a285T1pJVU1UU2lsS0tRSGdmMmI5QVVvUE5ERmtIK2hPNUZHRWVZb1JNRnBn?=
 =?utf-8?B?VGZGUEhjZWwvREtPRTdaaWdneGlJWGE5blRvUE5YNDdVRWt0OG1CV0U3ajll?=
 =?utf-8?B?akJLejY1OWRhbDBjQzlDMVplT3NBYzdlN3c2Y1ZMdEFzZ0w4SisxUlI3MjBy?=
 =?utf-8?B?NHlqWHcrZCs2SHFFaVB4OFQzdG5SWUpSdE9TMGVBazNpQTRadlNzZVM0UERo?=
 =?utf-8?B?dlNjZHl0TXpjblIzOXN6Z1Qzb3ZkQzRIS2hicUsxdURkb1lhemI4MkF1cVda?=
 =?utf-8?B?MEl0d1RKYTJ2UHVxeldQQk5xMzV2bUZFZkl2cFdhZUN3clNyWTcxTWJva2wz?=
 =?utf-8?B?b0VpOGt5ZXRqbzRJS3B4YisvcWFlSWhFK0F3R2k3a1FIUFNBY00rMEFqQVoz?=
 =?utf-8?B?OUhSTWorbzFCQUNPNUk3bVI4WUFac1ZOc3Y1T0hVNEM5eFZaaUM5YWlnQTFL?=
 =?utf-8?B?VWRDKzA3bXdJazVjSGw2ZURvZytkTDhhMFFJOHdzRjkxV0hYeUtoNHRScW5k?=
 =?utf-8?B?SzlqZEtzNHMzZUt0S1RJcnRHUkhyOTdnK3VmdnUvM0k0TUJrYVlJazFRLyt5?=
 =?utf-8?B?NGhTTkI5VWdQZXNaZE9PL3BXMkVvT3FrSEFUK05lUnhmRVZJSHNZWnR3ZjEz?=
 =?utf-8?B?R2YwNzVqVWVsbzJmZTRiVVF2TlZyQThZSzZTc2prb2NIazVXUnlkLytSaHl3?=
 =?utf-8?B?cU5BbHRBTEtrZm9GdTRldkdUN3BESmlxYWtwRmFaWDNmUk92dHZtUi9nbnN6?=
 =?utf-8?B?OGJ1Tm5lK3hrTnhQbzVZU1RRT2s2dWpVS2dyQkJJVUdYSW4wa3BYUzUyTnQv?=
 =?utf-8?B?QnhadVpLSnpEbWxpVW5wSlZBTU9qS2RHOWY1em53ck5XV2E5dE9xclB2eCtl?=
 =?utf-8?B?TWVkcGJZQWNqSmlvS2lpeGRDcStkYzF0Y3VUMzI2RzErSHJQeENxMWhhOUxQ?=
 =?utf-8?B?TU05eGN0T0orVDZVa0RoUXNOb2xZTkdzb0srUmlGcUNtd0NmZmpKVW9qVnRH?=
 =?utf-8?Q?quzIpU0fnsi0bGUU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b1ce92-8c33-4824-1c48-08de623cdf59
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 09:24:32.1762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f1jTKAGzczr20qYSDMhGFeQjulfE1rvu5IZn5lvvwT3KhnQdfW5Fz+NRH5uGS+i7lKrFuYEsUeEgOFMM+Pri7KdsKHq3XsKE9rnMuJuqS+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6256
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 82FEECA150
X-Rspamd-Action: no action


On 2/2/2026 2:10 PM, Imre Deak wrote:
> On Fri, Jan 30, 2026 at 01:47:59PM +0530, Ankit Nautiyal wrote:
>> Currently in intel_dp_mode_valid(), we compute the number of joined pipes
>> required before deciding whether DSC is needed. This ordering prevents us
>> from accounting for DSC-related overhead when determining pipe
>> requirements.
>>
>> It is not possible to first decide whether DSC is needed and then compute
>> the required number of joined pipes, because the two depend on each other:
>>
>>   - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
>>     DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
>>
>>   - Whether a given pipe‑join configuration is sufficient depends on
>>     effective bandwidth, which itself changes when DSC is used.
>>
>> As a result, the only correct approach is to iterate candidate pipe counts.
>>
>> So, refactor the logic to start with a single pipe and incrementally try
>> additional pipes only if needed. While DSC overhead is not yet computed
>> here, this restructuring prepares the code to support that in a follow-up
>> changes.
>>
>> If a forced joiner configuration is present, we just check for that
>> configuration. If it fails, we bailout and return instead of trying with
>> other joiner configurations.
>>
>> v2:
>>   - Iterate over number of pipes to be joined instead of joiner
>>     candidates. (Jani)
>>   - Document the rationale of iterating over number of joined pipes.
>>     (Imre)
>> v3:
>>   - In case the force joiner configuration doesn't work, do not fallback
>>     to the normal routine, bailout instead of trying other joiner
>>     configurations. (Imre)
>> v4:
>>   - Use num_joined_pipes instead of num_pipes. (Imre)
>>   - Inititialize status before the loops starts. (Imre)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Imre Deak <imre.deak@intel.com>
> There is still one issue, see below.
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 135 ++++++++++++++++--------
>>   1 file changed, 89 insertions(+), 46 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4c3a1b6d0015..dbe63efc1694 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>>   	return true;
>>   }
>>   
>> +static
>> +bool intel_dp_can_join(struct intel_display *display,
>> +		       int num_joined_pipes)
>> +{
>> +	switch (num_joined_pipes) {
>> +	case 1:
>> +		return true;
>> +	case 2:
>> +		return HAS_BIGJOINER(display) ||
>> +		       HAS_UNCOMPRESSED_JOINER(display);
>> +	case 4:
>> +		return HAS_ULTRAJOINER(display);
>> +	default:
>> +		return false;
>> +	}
>> +}
>> +
>>   static enum drm_mode_status
>>   intel_dp_mode_valid(struct drm_connector *_connector,
>>   		    const struct drm_display_mode *mode)
>> @@ -1445,7 +1462,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	const struct drm_display_mode *fixed_mode;
>>   	int target_clock = mode->clock;
>>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	u16 dsc_max_compressed_bpp = 0;
>>   	u8 dsc_slice_count = 0;
>>   	enum drm_mode_status status;
>> @@ -1488,66 +1504,93 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   					   target_clock, mode->hdisplay,
>>   					   link_bpp_x16, 0);
>>   
>> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
>> -						     mode->hdisplay, target_clock);
>> -	max_dotclk *= num_joined_pipes;
>> +	/*
>> +	 * We cannot determine the required pipe‑join count before knowing whether
>> +	 * DSC is needed, nor can we determine DSC need without knowing the pipe
>> +	 * count.
>> +	 * Because of this dependency cycle, the only correct approach is to iterate
>> +	 * over candidate pipe counts and evaluate each combination.
>> +	 */
>> +	status = MODE_CLOCK_HIGH;
>> +	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
>> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>>   
>> -	if (target_clock > max_dotclk)
>> -		return MODE_CLOCK_HIGH;
>> +		if (connector->force_joined_pipes &&
>> +		    num_joined_pipes != connector->force_joined_pipes)
>> +			continue;
>>   
>> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>> -	if (status != MODE_OK)
>> -		return status;
>> +		if (!intel_dp_can_join(display, num_joined_pipes))
>> +			continue;
>>   
>> -	if (intel_dp_has_dsc(connector)) {
>> -		int pipe_bpp;
>> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
>> +			continue;
>>   
>> -		/*
>> -		 * TBD pass the connector BPC,
>> -		 * for now U8_MAX so that max BPC on that platform would be picked
>> -		 */
>> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>> +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>> +		if (status != MODE_OK)
>> +			continue;
> I missed it in my review of this particular patch, even though
> I did mention the similar issue elsewhere:
>
> status is guaranteed to be MODE_OK at this point and then ...


Oh yes this was not a problem earlier as I was setting status = 
MODE_CLOCK_HIGH inside the loop.

Thanks for catching this, will fix this in this patch and the patch#8 
and re-send.


Regards,

Ankit

>
>>   
>> -		/*
>> -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> -		 * integer value since we support only integer values of bpp.
>> -		 */
>> -		if (intel_dp_is_edp(intel_dp)) {
>> -			dsc_max_compressed_bpp =
>> -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>> +		if (intel_dp_has_dsc(connector)) {
>> +			int pipe_bpp;
>>   
>> -			dsc_slice_count =
>> -				intel_dp_dsc_get_slice_count(connector,
>> -							     target_clock,
>> -							     mode->hdisplay,
>> -							     num_joined_pipes);
>> +			/*
>> +			 * TBD pass the connector BPC,
>> +			 * for now U8_MAX so that max BPC on that platform would be picked
>> +			 */
>> +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>>   
>> -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
>> -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>> -			unsigned long bw_overhead_flags = 0;
>> +			/*
>> +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> +			 * integer value since we support only integer values of bpp.
>> +			 */
>> +			if (intel_dp_is_edp(intel_dp)) {
>> +				dsc_max_compressed_bpp =
>> +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>>   
>> -			if (!drm_dp_is_uhbr_rate(max_link_clock))
>> -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>> +				dsc_slice_count =
>> +					intel_dp_dsc_get_slice_count(connector,
>> +								     target_clock,
>> +								     mode->hdisplay,
>> +								     num_joined_pipes);
>>   
>> -			dsc = intel_dp_mode_valid_with_dsc(connector,
>> -							   max_link_clock, max_lanes,
>> -							   target_clock, mode->hdisplay,
>> -							   num_joined_pipes,
>> -							   output_format, pipe_bpp,
>> -							   bw_overhead_flags);
>> +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
>> +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>> +				unsigned long bw_overhead_flags = 0;
>> +
>> +				if (!drm_dp_is_uhbr_rate(max_link_clock))
>> +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>> +
>> +				dsc = intel_dp_mode_valid_with_dsc(connector,
>> +								   max_link_clock, max_lanes,
>> +								   target_clock, mode->hdisplay,
>> +								   num_joined_pipes,
>> +								   output_format, pipe_bpp,
>> +								   bw_overhead_flags);
>> +			}
>>   		}
>> +
>> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>> +			continue;
> ... this will continue with status == MODE_OK and the loop can terminate
> like that. So need a status = MODE_CLOCK_HIGH before continue.
>
>> +
>> +		if (mode_rate > max_rate && !dsc)
> This needs a status = MODE_CLOCK_HIGH as well.
>
> With the above fixed:
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
>> +			continue;
>> +
>> +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>> +		if (status != MODE_OK)
>> +			continue;
>> +
>> +		max_dotclk *= num_joined_pipes;
>> +
>> +		if (target_clock > max_dotclk) {
>> +			status = MODE_CLOCK_HIGH;
>> +			continue;
>> +		}
>> +
>> +		break;
>>   	}
>>   
>> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>> -		return MODE_CLOCK_HIGH;
>> -
>> -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>>   	if (status != MODE_OK)
>>   		return status;
>>   
>> -	if (mode_rate > max_rate && !dsc)
>> -		return MODE_CLOCK_HIGH;
>> -
>>   	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
>>   }
>>   
>> -- 
>> 2.45.2
>>
