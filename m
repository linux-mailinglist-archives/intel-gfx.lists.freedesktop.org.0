Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2399DAAC121
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5210210E64E;
	Tue,  6 May 2025 10:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e40Aua5E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BAB810E645;
 Tue,  6 May 2025 10:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746526590; x=1778062590;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0fyP00K28iV5nePwOSvcYk5ez4uJi+Zx069mWl2y3Xo=;
 b=e40Aua5E8ap8wwnTiYHE5lf+vMzGJeIXxsIJJ8r3i+y03ds3oJ2rhdvH
 4fuGEUAoVzXKASj1D9INvV6MyLdpZ8fz4RmMGutOtMAMmbHmRbR3WQfJo
 PxoY5NlJbHX/DJ1O/5oXEQnvW5i1G0BW5BgjNz6PfqxCTyhi42AbXYyuw
 9nzLxRmKtuUSK4y9GtA6R7buQS74r8PrbR2RamcJBsx30zsS0xFrFIdlV
 G+bT47dt2WYGepmWY6ZpGui7t77kdebNrLBUHd2C9W+q2Enfdt94BjZze
 c6k1KMSdT0p81hvfXva4xJxpHnGkzteY6D+E7T14in0rn5LGJORPfYarG w==;
X-CSE-ConnectionGUID: rn0sY/mERquqbqXWOvrjyw==
X-CSE-MsgGUID: 1OMJDAshQBSVLqULs6Ucqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48196349"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48196349"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:16:29 -0700
X-CSE-ConnectionGUID: JItrzLeQShKfsDCexbesBg==
X-CSE-MsgGUID: 7FKDDTBBQmWgPBRfbFhGJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="136517869"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:16:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 03:16:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 03:16:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 03:16:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C0G5DEEFVgN7gancwn6Wd7GrHtGcARMmNWdHikIbv5cBjYEWgK9gcfdbLvfsMLmSZ01t0HeLzwi9An11CV5/BsUZF3ZLrDbqX3mNOkqxC8mLP9XpvlNZYGycKc8rnlVVwLZg2Wwm+d/DZl1Iok8Z/9q2xvLa2ePIOw2p99PpeeIZ6KPEveZiWUqUSWk+CLPVGdGKjgI+b+h9ppQyvn2tO+MnTx2u8+H74pyvcd1Y9XGw8nbHOdxqTeN7rCzAba6nSfev31u205NXvgKJnVIpN3otO1i2RE+YwLBTR2FA0WiLFlXQbC2TWh6WadBu5HzuEWf356tOPbAA6qn4JTwQSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rJTKoHDWMQBiDmqr4Vli2ywivvFutSBXqi20lEET6bg=;
 b=vdaFoVB/SoMEp240Jp+AtcRV8qO1J6b/+DLQtyN2DWijokEcc02PqSUf6cncMtOYKkL9p5X76wlOtkGgDqNRM/I5Zz9QNMeBld7nUOZJ4m1qFpm1Y9OhlbjO+6nrwe6SmQXN422lrXUlvohollGH1W49LdcfXtf0LYpmC6pCNjRbu3DB2iwFhQdQjVv7f2ho70TMBSfXpXhF86ZTA+zTx8PolV+ryRC1saXRTXfPzQYAioQ0NM6YMa2Psqh6ZO21nXHyUjMpFXdefJMDvoNx0kbPGjTDCEJGqUXEZywpv6ML21SRojpca8Wm1t7RmuDJPsy5wD+BLTkN4EeCXPBtCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB8045.namprd11.prod.outlook.com (2603:10b6:806:2fa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 6 May
 2025 10:16:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 10:16:20 +0000
Message-ID: <06f6730c-e0e9-422c-8d7c-f2d5068342e3@intel.com>
Date: Tue, 6 May 2025 15:46:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/12] drm/i915/dp_mst: Simplify computing the min/max
 compressed bpp limits
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-7-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-7-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0027.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB8045:EE_
X-MS-Office365-Filtering-Correlation-Id: 875699ce-0a92-4197-a2d3-08dd8c870bb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z21XbExTSS9INGc0S0tLck8rWWo1UDVIdG0rd0luWldkWGh1UEREdXFHM290?=
 =?utf-8?B?Wm03bnRLUmZoUTNvZ2QyZzNVdzRZZlowdFVyNWkyWWQzdTBKdlhicXNJTXV1?=
 =?utf-8?B?RXVWYVFVVWZJdXV4dFFpYkg2WGxoMG5ZdTlDYWtoNzBmUkpXMitmZzROM09H?=
 =?utf-8?B?b0NxQmFMekdTejZxanBTd1pHTWFKditzSC9kVDdyV05Lbk9taUtGYmRQakJa?=
 =?utf-8?B?aWsxOEhNMVNiRHNBdnZiRFlGQ2ZxdHdDU0NEVHR2dVh1M1BmTUpidFdiZHpi?=
 =?utf-8?B?UDZTaUlxNjNPTkg3U2hjOGZ4a2FhN1ZiVFllZDIzd1IvV0VDa21MNFpBZ056?=
 =?utf-8?B?TzNXQXFTSGhYYytQSkhnMXFxb1R4NmxBN3JXaDNYeEJhTWZEV2czRnNHK29S?=
 =?utf-8?B?aCtXOUM2ZzVKREFXWEFhQlB3akQxMEJEbENJTTVDZWhsTWJSY09OWG80Y2tL?=
 =?utf-8?B?QjUxMmdHRWtBSW1OejlPMkgydUhuYVlZWmg5SWxWZzJIQUJ0YVUwQ3Y3QUQz?=
 =?utf-8?B?UVZvQ2ZuMTZQblQ0TmpkT0xPeXVra2ZiMUZwZGgxeEV1aEFGWTRSU2NHVWpz?=
 =?utf-8?B?TlB0cGgwNEJ5a3BDQmJKV0ZnRzVxZytjTVh4NzA1dWVCcURCOGx3dzBBVVlT?=
 =?utf-8?B?TGFBVjlNUTJIY3dVN25VUlZhVkpoWTVvWjhTRG9JcmxlZUNYOHpqZ2hEN2pE?=
 =?utf-8?B?YU1SOE1ZcW1TTVBMY0lRVW0xQTRYRDVjM1V4Z1RLeGdHRkUrWnZnbytEWlFk?=
 =?utf-8?B?OFFXdWxWR0QydGMvWERjdGdobVVabGFaa1o0S0tRZDcxUk85MzdWVlFMaHZU?=
 =?utf-8?B?K3FIZDNTZlZnYjBEcE9PWDFSQktGSU04emNqS21HNU5tQVZaWGVsc3FhcVVv?=
 =?utf-8?B?QTZRZzJKeUZhWGNrUndnTEFVenBuTGVPb3p2YjNqL1k0ZkQ0enZUb3hiVkFU?=
 =?utf-8?B?LzIzM3NXWEFmRjdnaFdqZFNlaW1na084SFQ2Q0xrRm9SaWZ6ckNkcXAvS1FD?=
 =?utf-8?B?bzdOUEE4bTZOckdVdEt5ajUza1pNak5lOWhpZmtJRXZTVTEzektscDV4aWth?=
 =?utf-8?B?M2RnaGFhNXZSUWVVVG5CU0dnQ043cjZ2TlBmdmFmZXZ4LzNscFNLeW5MVm40?=
 =?utf-8?B?Z1R4WDJndG45NnB2a1JxTWFUWEp4Y2cwRGltYW9BaWdsdzkwdVVLdk1yS1NL?=
 =?utf-8?B?SXRUUUdmdkExaWNvZVRWOEVLeStyQktram54TERQcG9jT1AzYnpxQUcya3RV?=
 =?utf-8?B?RjJyQmFVTlBES2Zzem1RdUpXU2VSSkw5cTFCclZGRFVDUDJXYVNRZzdESWJn?=
 =?utf-8?B?RG15OGdhY0pWczc1YlRCWWxNUS9QbUlLRFZaaGI4NzBob1pHVUFzb244cGto?=
 =?utf-8?B?RGJlVUVRKzIzOGd1b1pWcGZlWkk1UEJNbStxeXhBdG5neGNDQi9LQm5OQ3hN?=
 =?utf-8?B?VmkzZEZ2UG9IckdEeHpId2tMa0ZXL2tFU2pkZDBaMXR0RnVrRGVNL1Q0ckZG?=
 =?utf-8?B?cWVzbUN4bm9uUXBDM1ZTMTRwOXEwRXFjYUhZV0MwNU5ucS9waTNYOW9oRllI?=
 =?utf-8?B?UEZ3V3JpNVVMVDBmcW5vQm1pRG1teDlOQ1BJSVgza25GbFV2dGVhbXlDZFBm?=
 =?utf-8?B?T0E0UWR4bEIzRXdwNDNJTElFZHJ3eWVJeUJmMHZCZVFIQ1BEaEZ4cTI2K3ZZ?=
 =?utf-8?B?cHRjcTRnYW5DVzVIeWRITTdIdXdaT1NGM08xbExoRzBxaGZqT0ROQlFBUlBE?=
 =?utf-8?B?bWM0OGJ1b0ZvMW9lOGl1YWsyckI2NTk4YWhPNmdFMHNXRW1WbWhSWVBQOEIz?=
 =?utf-8?B?M1MzeW9ZZEp0eExnR3ZNSWdCU1BIeXNQWXd5bUhLanBCSlhPSjNMYWZmajYx?=
 =?utf-8?B?V1NTQnlSZ3Y0eitJSC9tanYwRHR6aGtQcTA0V1BXc2prQVN2NXRHT3FETGdX?=
 =?utf-8?Q?vcW8YBp6W40=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDJzVUF4c2lqV292enBPRFJUY0xaMGdCaWpwWnJUN3hiS0h1SzR1SyswUFA3?=
 =?utf-8?B?ZFMyWUdtUE4wVzZsQjAxTzJxcjNnNVF5OXBNUWdhWk1rZHRJcTdzcFc1RGky?=
 =?utf-8?B?RmRvMitCbWs1TVNManRCVk9SUHVYekhOVWVBQU9MUUFoSHZBOHU5Y21GOXNQ?=
 =?utf-8?B?VnRjNlhiYUdPTmVIbm41SU90L0FiZDZUOHpKVWh4TW9nQjZBMnFRWlRSS3Rv?=
 =?utf-8?B?UGZzMlFwaThQODNLc1hpOUU2NmM2THFTS2d6QUEwSFVSMlVHTGliNkIxTmZy?=
 =?utf-8?B?Y083OVhzMGhrRzkwZ1luK2ZQa2NLeFZWZ1A4TUlZcE94M3YxZS9PM2JiOE9r?=
 =?utf-8?B?citkVDlPQ1JMaDA0WHVsNmludTE1OFFOcjFMeC9FTXBEblVNWEM0aVdBa05M?=
 =?utf-8?B?RWxjQTB2cVhjOXk0UjhMSmhMVHVoQzRscWZ3QjBvckJvNjQ1RjU5ZGRKQWFQ?=
 =?utf-8?B?SFNZbzNJSHg3UEZQc2FXejdTYnVTVGVQRUVhekovcHJXT1UxNTFRcXNva25o?=
 =?utf-8?B?NzBRejVtQ2Q1cjhTR2diYjVwWm1jZmhuNG9WdGdnbW0rWmhBeFVUZEptQnkz?=
 =?utf-8?B?b3NlYjZmL2hTWXdqaXA1NXhPakc3bzV4Mm5pSEpOMHlET3BjcXIvdDR5b25u?=
 =?utf-8?B?RncyWlJFZGZoWUJRbHo2MnJWT2daMU9KTGdXZWV2aEtRRjRha3E2T3crRmQw?=
 =?utf-8?B?MmlLT29LVVI2MG1oYzhmRFp2QnpFQUc3eHdralplSHo0cWFuRGZXVkEwUUZW?=
 =?utf-8?B?SmREWlNTbTNZcUhxMGwyRjg0WEIzR2Z6cjJnRXRtOHdZNnB5c2FtMEV3a0Jn?=
 =?utf-8?B?QXF2aHBvcEtOUkc4VlhtQXZ5blJtWmc4WVpXTFh6dWdNV045NjdjeWJZSnE2?=
 =?utf-8?B?V2tJcFprY3ZBWFlQOTY2SVFWend3b1RkYmE1bWlvT0drMElMNWRLR2QrVjN5?=
 =?utf-8?B?R05KRkFGL3FhMVk4RlVINU1vWmg5NldhTENPNTdoUkVYb0V6TDY1UUtzeTMx?=
 =?utf-8?B?N2FFV1hnY1Eyc2pnNG44dTU3WGtLVHV2QkVJOEdvM3I0YmxjbGFPVFlCZnZM?=
 =?utf-8?B?SXBzUkVrU2dzUXJqN3BvRE1nUExiVEhaa0pocTNPRW1RS2hGV2g0SGdLLzNi?=
 =?utf-8?B?L3BzbWRGS3AzZjVDejU5QTAvdWc5UHhTZm9JcytoMktYWlBQMzJKaHprYU1r?=
 =?utf-8?B?NEtXWXEwRktLTkRzb29DQ3pjdkJxTlpiZHp6TWgraTBSSHRvcHU3ZE9qSFFk?=
 =?utf-8?B?YTU3c0NxOE5zZUgwQnNGOGJXTVN5L1NPak95dUJWbkVzU2VBSTJuU1EvTTNr?=
 =?utf-8?B?aTc3bEpMUldoLzFzR3podzl4cUU1MC9ZYTljM2ZndG9xVGc1ZDlGR3QwUDda?=
 =?utf-8?B?ZSs0RWdSVHh1ZjdvTG5MNC9RM3M2bG9NYXFSYkRHM1cwQitmcHAycXlrSkpi?=
 =?utf-8?B?R2V5dkpEWWJneDU2T1ROM0lGNkszMlZ2ZHJqVkl1ZDZXL3BudC94VE1PWk1B?=
 =?utf-8?B?ZHl0K2EyUC9VTzFaMkw4aHdHU2tOeW1BUmlMaU1DaTRhRUVwd0hwek95eEdI?=
 =?utf-8?B?eENFcjMydmU5V0ZQaGl1QWZYNDBMQ2x1WWprNlVROHdKUDJqSjAzUFg0NDJk?=
 =?utf-8?B?ejcrTUM4QlZ3R0VYSS90WGxEYUVXQTNObWFLQ3l0WnBPZ2NTcW5KeGlQT3Za?=
 =?utf-8?B?eWl0N1EwQnI5LzJTR0tpM2FOWjlyK0VVUTk2VVY0MTVwZzRVVzRzNndHTkhH?=
 =?utf-8?B?NTFOdGZkWjhwZ001SUdjTzNDWU8wRnJLR3lnamNTWFJuMHJ0SWhkYms1WTZJ?=
 =?utf-8?B?L1d2bVNaNE9ZNy9sRXg0UEtoU0s4OU1wM1BFVFA5T3I0Qml2RDRqTUhuQnB5?=
 =?utf-8?B?RDlZT2xCL0Mzd29jYXhRU0NiRkExcG5TUVlqTWJ6UXZ5TW5rRit5UFFHbTZn?=
 =?utf-8?B?cE1IZ1NmVXg3WWN0VnJLM05tcWR2b21BNUw3cHRnYUtBUjdoNnEyc01MeEZ5?=
 =?utf-8?B?WG1DU20zTzhjcFFDcCtqQ2tVK3FNYnNGR05XZ1p6VkZJVlZRbzhUSUI3Sjl6?=
 =?utf-8?B?czJGcEFaYzhLOTh0RGJoVmJnNitobFplT0pIbFJSZmNZTmpZZnlNYzQ5dEJo?=
 =?utf-8?B?SlV5N1kvK3VzaWxGM2pLQ3NMT3dLdmJvVGU0NmRnVHBPM1RlZVlqNW5paCtj?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 875699ce-0a92-4197-a2d3-08dd8c870bb2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 10:16:20.2479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FBUlbvo9Xgu20Ws956Ly9xlDuinoPxoLSAjJQEu7fqyirp8eOShR4YLcyYplxedAXTlbsGMOrMEYyeJ0gl7HzxTAdt220NcDL5xQ/5YEWsI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8045
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Adjusting the compressed bpp range min/max limits in
> intel_dp_dsc_nearest_valid_bpp() is unnecessary:
>
> - The source/sink min/max values are enforced already by the
>    link_config_limits::min_bpp_x16/max_bpp_x16 values computed early in
>    intel_dp_compute_config_link_bpp_limits().
> - The fixed set of valid bpps are enforced already - for all bpps in the
>    min .. max range by intel_dp_dsc_valid_compressed_bpp() called from
>    intel_dp_mtp_tu_compute_config().
>
> The only thing needed is limiting max compressed bpp below the
> uncompressed pipe bpp, do that one thing only instead of calling
> intel_dp_dsc_nearest_valid_bpp().

Makes sense.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
>   drivers/gpu/drm/i915/display/intel_dp.h     | 2 --
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +-----
>   3 files changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5c206faadf93a..42b45598a0134 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -846,7 +846,7 @@ small_joiner_ram_size_bits(struct intel_display *display)
>   		return 6144 * 8;
>   }
>   
> -u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
> +static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
>   {
>   	u32 bits_per_pixel = bpp;
>   	int i;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index a9dd9ed1afc9d..3206c86adaba6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -174,8 +174,6 @@ bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>   			   const struct intel_connector *connector,
>   			   const struct intel_crtc_state *crtc_state);
>   
> -u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp);
> -
>   void intel_ddi_update_pipe(struct intel_atomic_state *state,
>   			   struct intel_encoder *encoder,
>   			   const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 77acac8963e27..23bb9aa554fc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -513,11 +513,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>   	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
>   		    min_compressed_bpp, max_compressed_bpp);
>   
> -	/* Align compressed bpps according to our own constraints */
> -	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, max_compressed_bpp,
> -							    crtc_state->pipe_bpp);
> -	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
> -							    crtc_state->pipe_bpp);
> +	max_compressed_bpp = min(max_compressed_bpp, crtc_state->pipe_bpp - 1);
>   
>   	crtc_state->lane_count = limits->max_lane_count;
>   	crtc_state->port_clock = limits->max_rate;
