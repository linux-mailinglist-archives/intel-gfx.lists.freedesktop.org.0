Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LEWqL5eXL2rnCwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 08:11:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC2A683AC3
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 08:11:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nuS4KuLw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81A310E1CA;
	Mon, 15 Jun 2026 06:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA44C10E1CA;
 Mon, 15 Jun 2026 06:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781503891; x=1813039891;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JEDGxNJlL17RdIBPx2wgG4qfu5zInGFtv+LBkZ6Rm1o=;
 b=nuS4KuLwgw5rkzGBttqhiRecaPRUsDDESVnJXB7BMof9iJ2j8WoSb/Xn
 EkeoS1k+vkwWwjaC4EwgKuy6wOp9kdGdTHLlOFyBmSoLypOi154PSnTyR
 vcI5Rwi9/gGsC2gkkl/hWJ9TMYcbI5Uj2yKvItkZoQAQj7ZJf9p7nxqw+
 T5gGCpm0bOKo7a3apS1ntGRTdM0DfGwtl96vlGZwWiLTzHTFyAZ0Gxx5M
 fbfXFFUMpTvM1oFLdlQsKd2v0bDggK57Ib4D0X4hZxN0rod7hd4M5j3OM
 3xzANOgXfDcPoLz1VxVCSboA06I5SybVip6fZHrNOytJg8suVgMK5dQdq Q==;
X-CSE-ConnectionGUID: 1391JBF7QWabzpfUyfS++A==
X-CSE-MsgGUID: QXaKkvOFSGyxDHLJ4Iz91Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="99812634"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="99812634"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 23:11:29 -0700
X-CSE-ConnectionGUID: 22Ms9DXITyahUl7Z9uQUwg==
X-CSE-MsgGUID: KAQ9S6wfRoawU+BBbSC0qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="243228932"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 23:11:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 23:11:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 23:11:28 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 23:11:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SWFl0jiHd6qTsiBBVeALvE3ocKnZuQE8sxcXrQZACp4Y4evDxQ1n/HvmCuRe88tGzZyaZ+EfVcSZooJe1ftsQJuBfWXlN26M1IYAxhfGm/F5Og/BsXAnhQBipQnsNhLbvXjwNupAYiHJQPveUGdDo6eAqfIoNJv+uaOaBhfgxqUsSXX/xWfqIKzVNF3jVm2ENL4WbbLQ2co2hxDVZS7EGMt84Xl7qfYVdQI2elShPx/uTHA/1tzKghzbrG93/R+A7RZ0a1kOSvt8l2lqvBqihU8k50lV3t2jA0cSM0yPBsqT7o9yZ4mYiPjbZCdODOWEytL72elOb/846w2nPyhiCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1sVJzrJgccOaj3vMuYzyJhTIgx8xY+4Ppie48TaClPg=;
 b=A8MJYGL5YdC0ILnp2PGRpJMgIrH2MOe5BlGOFev6rGKV9TKmUZzkjwi0j2LCGUV8FtHWc8cmXxl0Wgn01z3nut5iZnaUr2XTw/UblObpG/BWf/kFwbdmyl83NSTwm8w1FGAH6bl974h85P7adV6UvYJ7QivYK6IZZE2mf4/vGtgBVsCoLPx/MyzJU9JcURpxYIwBs275e/uN4Fwxmse9l8nuU8+TSogn25XZUk55E6RGR8EkWFdsSEc21LA7RFzxZsJvm6RkIt5x0yXeXrt1lMx7ooosNrPzxyNcQFQlSdHvHxnyTo4Fr8hTULlSffL8V2L554KsgmF+XYGtCYDjEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7639.namprd11.prod.outlook.com (2603:10b6:806:32a::14)
 by IA1PR11MB7367.namprd11.prod.outlook.com (2603:10b6:208:421::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 06:11:25 +0000
Received: from SN7PR11MB7639.namprd11.prod.outlook.com
 ([fe80::1d9f:d286:449a:a8b9]) by SN7PR11MB7639.namprd11.prod.outlook.com
 ([fe80::1d9f:d286:449a:a8b9%4]) with mapi id 15.21.0092.006; Mon, 15 Jun 2026
 06:11:25 +0000
Message-ID: <9ce24ff5-efab-4089-92d7-709862d68e6d@intel.com>
Date: Mon, 15 Jun 2026 11:41:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/15] xhci: dbc: serialize enabling and disabling dbc
To: Mathias Nyman <mathias.nyman@linux.intel.com>, <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, <ravitejax.veesam@intel.com>
References: <20260603091132.1110849-1-mathias.nyman@linux.intel.com>
 <20260603091132.1110849-9-mathias.nyman@linux.intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260603091132.1110849-9-mathias.nyman@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0012.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::11) To SN7PR11MB7639.namprd11.prod.outlook.com
 (2603:10b6:806:32a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7639:EE_|IA1PR11MB7367:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a60a8cd-6d3a-418a-dadd-08decaa4ee3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|13003099007|18002099003|22082099003|4143699003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: REi8qfSR2OGWovAvv4dIZ654cLwYTLviKy73W0cuwfeoGeiTDd5LORX1fHui5BtuZPFVWj8Wyjd9qM/hYweowLivDIxZvtRo1C7W8MdHm4dAkw7svPT4dxUGPJHMSgdF8qoaO9SymfQrPdeWwZ2PZ8kYSYHexmQsw06TrX8QGeDUI0PBH+M+sm0W5t5uXtHrvhR9IJ60syOOB1STRuBjVrz5izxLEYI46DnX0iycJ92J2tZZy1zeapsC17WN4v1KoYUaUf1lKkNh8RB0LZCNRi+3792HjLCY4KHeQ8QLGScOurUHYIig7/QCpV8eYX5SbzoDvV6dok8C8MSao3JeF8NPH3DFMeMWZAfe80ylCGavcFCVKNdVrw9q8JxxcJKPK5/1eIPE8UCR+XHy49b9T2Go21WT3hQhIiA+nQDu2bL7yx+fUPhAvO3U4I2pKeheVKag+29Ize1ajD7wvgPx2y+68Qp770whmpc4TajhEpQKl6YAA6UbhVIt8w/L8WU+37HOgGOGhez1h82E/jWLTv/H1dU7emrGGkWk9cv2yRDbxiXL1LuFfoGBUfI6ZuFBNvIA9JwirlodNphEjGnNMKieq6kOCc0lq6iZZb4yG8RogxQaQH/Stjbwx7/SQG+QfQdRwv6YwdIO3wlUwCwe/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7639.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(13003099007)(18002099003)(22082099003)(4143699003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V200Q0o5NThnSXRWVnBPbVUvS3c1TGdtc0RwQ2F0UW5wYStTeWp2MmQzV0hl?=
 =?utf-8?B?c2dnekdGZ3pETE95bzBqVkplWDQyNk9QZmNRdWtZRGlTSG5TK2MvTGJYeWc1?=
 =?utf-8?B?SDcwU0dmY1N0VEUvVzkwZkRIaXZoRXBTSTZ3NGcyVGRWdW51OXZzWHFLUEwr?=
 =?utf-8?B?bW9QRDBBeHhRUmFBZlFSZXpEMFBaMmxBWkhqby9kdTFGUVZDVTlkUUM4T3h6?=
 =?utf-8?B?ZE5xOHg5ZUpDM3JWV2x2NTlXbXlNeHpIUVBnUlVQNHJwZXhXb3NwMmIxc3ht?=
 =?utf-8?B?bGtVbGlFZGc4bzl4eThtMCsvNjJzNVU5T1V3NUJZMUdzaFdEclVnUjZWY1VL?=
 =?utf-8?B?a3NKN0Y2M1hTSDFXTEhoTGRrcUpWNWtmWWhOMHFJMlB5b2o3Ty9nY0xQWXo0?=
 =?utf-8?B?alJrVFMwU0FvWXVGb0VKQjRFYmcyR2pYeWlENkZxbmgxUi9RSEZtK3FEWlha?=
 =?utf-8?B?N3VBaCt0VVZhblV2L3AxeVJKT3k1emQ5SXR3ekV6bExFZk5nMkVRR1U3VWlt?=
 =?utf-8?B?QzJRNVgzbkpJaFljM3hkVm5VWHFHQldQeUNHWllLejQvR20zakdJK3hOQ20x?=
 =?utf-8?B?QlFoWmltVGtvazVDL0duQjd5SklsZ25VQlUzQWoyOVZEMEhoKzIyTjRIL0VY?=
 =?utf-8?B?R3dDeHNXR202UzBoVjNadHlkekF4VTlSM2Z6RU9DRzhDNEJDYXdBOFlQcTNY?=
 =?utf-8?B?Z1lkYjFMKy9zM0NOL2FKS2xsOHp2UzEzaldhTytLMjJPK3kwVjVhYk1aL3gv?=
 =?utf-8?B?N1BHcGZINDlPNzJCQXBZb1UvR3dtbjZEUmFobHcvaDYxdHdPQ1FiUkd0cG9B?=
 =?utf-8?B?b0dIQVhQNGxBS2xOd3g5MnFxUG9GaG5EUDdhdUZja2tLOVBBbUxPcjhxa01Y?=
 =?utf-8?B?UXJoaU1tNlZ0WmZvclMzcGNEZi85ZU9oR0c4RjAwVmptcy9RNW5URndrdkZQ?=
 =?utf-8?B?cElnZWhlKy9RZUhqSTQyS21PN1A0elp6U1ZUT09PbndiMXdDTkJZZVphMll3?=
 =?utf-8?B?M29lNXNjQVNhamFCYmRoTHNuOU5odzhkR1JHU3hZa2syRVhIeDlCVTcweDAx?=
 =?utf-8?B?WGdHYWpyVkppNmRzZ1MzdVBkSGRTRHU3MktrNGpPN1haYm82cVJJdVJKRkVq?=
 =?utf-8?B?VnJIVmpMVGNQZVJ0MmVDU2FaRUdmM1QxUjQyS1QxejZCK1REQVdEbmpRS3lO?=
 =?utf-8?B?QVhSRGNDdUxUTlQ0VWVNTmt5RDQ1ZFA5Z3hDWXNJVFFjRzhhVzRvc3l3REZ1?=
 =?utf-8?B?Q0laSUh3YW9sYmhFN1ZGaXhZSXBCR2ZiOXhGbzhrU0NHYXYrcGVRSG12SVpu?=
 =?utf-8?B?ejJCeGhpbWFWcE5KR3g3OTB0SkNGWlh6ZDNPSlNjU1YyRk1aNVhCNlA3M0xp?=
 =?utf-8?B?SWxIbVJHdmpsYThIMnBLZGozdFA3MklGZmtzWmxhSWJYWDExcFoyblBhMWFE?=
 =?utf-8?B?S2hzbGpUWmlodDkxWGJjNnRIWkF4UlUrZXoyUDNyTHI1VzBQOWllc0FtVDRW?=
 =?utf-8?B?a0dwZWJBeGdRYTF0UlBKM21td0tiYVEyZ2VUT0cxWGx0SjFRai9vTXRITVFs?=
 =?utf-8?B?TU5yTndCbTNXbXVhZUZJa0tCRXNndVZleUVkRXdGQjg0aGVmUEwxZGlPeVJh?=
 =?utf-8?B?cXhmcmd6dThrbFBMVE5KcTVORzlsNlBNMkJkSDVZbnFjMllSUXp2WXBNbUJB?=
 =?utf-8?B?enFmcGFERk5qZ0V3N2hxcG5ZWjNndGxaaFB2UDV5R1VMRG1JUDR0WXc5eFpF?=
 =?utf-8?B?akdycFRrYnU3TzdFNVg2emNSSmQ5Zk1odmg4SEdPTjhmTUU3aU1PL00zSVhL?=
 =?utf-8?B?aXZyaEwxS2hQc09teTh5MGRxUE1zT1JTYlQ5YUxFMlgzQXQxNDhiSlVkWDJC?=
 =?utf-8?B?WUJEdzZRTDJpc2JYancrWTNmek9Zcy9Bb04weW9sSWVzVm5scmMxaWhLeWRP?=
 =?utf-8?B?NHFMUURIU0xzellzUEx2aUdvbHFnM3Rub0xsUjU3QmxPTU83WTVFRGIvdzlY?=
 =?utf-8?B?dGFnRGt0bHRCWGhTR2wyaXNYUDg1ZHdQUjdtVVNaczM5dUdlVGlHd1hLaTk5?=
 =?utf-8?B?ZUl3djMvdzh0VGtmL3p5eEJETDBYWTVOV29CTEdPN0hhSzdLb21lMS9pWHg4?=
 =?utf-8?B?S3haSWFnZTNGVmNURVlwYjRReXZITzVhbHJuazJaTzBSbUQzYjgwcE5oZEEv?=
 =?utf-8?B?NHQyWTlNYUJVeWQ4SzNWTVZDWW1SQVU1TWRUYkhXUitMUXBCWEFGUzVzdmFQ?=
 =?utf-8?B?TjVpd25EZEYxWExkTDN1V3Y1d3F4STRDYTVEblhaeG9FbEJYV0FRLzg0dGlS?=
 =?utf-8?B?RitzanNoMSt2MllJQ3VCMzYyOTJRUXJZVHVXZVdRTktzejJXVGR4anF4UDhS?=
 =?utf-8?Q?P1xTrgnWweHMahfQ=3D?=
X-Exchange-RoutingPolicyChecked: AgoI4vMdLxw34FbW/SVmaKaKkaxy2q7djzlV4qz+xpwbkrbrOi/s+GlZVuHxlf0MaU5w5ngK16zz4VXBYV1l57PG0q1+rZqA7G/gCXLUpWu3uSGwzmRzvJf+85PWrwn0X2ErJk2fisV16MFI54OsKNHVnPmeZDukhpxFMobAaJVYhtl6PZ8OPr779whORdWbHcpiNc6B6ufiwMGi8csLKk6P+t4vOPuryZo24BhH/lBxUDStUYIWJ6YkrAXc/iggliTvm7Bq56euvw06iH39jekxnVDDPeit/Yh1BDwAUK1TV5DhHoxy5WinHMDxlDybg8gv/rWD4IH8W6SprerUKg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a60a8cd-6d3a-418a-dadd-08decaa4ee3d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7639.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 06:11:25.6800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hv4Rc1Py1spmTLRtFBTvTO3G17ZbR9+Ut9EHfdmtUk2k8GFThyMMyRwW2VvZF7Z2OL/jQOHWMHD8VTQLLqTJPi0B1oxhZtbVhcFVP8d9FDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7367
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1CC2A683AC3


Hello Mathias,

On 6/3/2026 2:41 PM, Mathias Nyman wrote:
> DbC can be enabled and disabled via sysfs, serialize those
> with a mutex to make sure everything is done in the correct
> order.
> 
> remove xhci_do_dbc_stop() and integrate the register write and
> dbc->state setting into xhci_do_stop()
> 

This patch seems to cause a regression in our CI. [1]

We could not revert the patch because of merge conflicts but resetting 
to the parent commit seems to heal the issue.

Could you please check why the patch causes this regression and provide
a fix if necessary?

==
Chaitanya

[1] 
https://intel-gfx-ci.01.org/tree/xe-linux-next/xe-linux-next-20260611/bat-lnl-2/boot0.txt

Bisect log:

git bisect start
# status: waiting for both good and bad commits
# good: [382f7d3b4c9740ac06199207796ed9b71582c7c5] Merge remote-tracking 
branch 'regulator/for-7.2' into regulator-next
git bisect good 382f7d3b4c9740ac06199207796ed9b71582c7c5
# status: waiting for bad commit, 1 good commit known
# bad: [49e02880ec0a8c378e811bc9d85da188d7c6204c] Add linux-next 
specific files for 20260609
git bisect bad 49e02880ec0a8c378e811bc9d85da188d7c6204c
# skip: [821165b2f4b76644407d4e5284d9c41363e7caec] Merge branch 'master' 
of 
https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth-next.git
git bisect skip 821165b2f4b76644407d4e5284d9c41363e7caec
# good: [5c65b96b549ea2dcfde497436bf9e048deb87758] Bluetooth: hci_sync: 
reject oversized Broadcast Announcement prepend
git bisect good 5c65b96b549ea2dcfde497436bf9e048deb87758
# good: [c17dfc8bb0b61ed36b984449eae8f246878052eb] m68k: coldfire: 
select legacy gpiolib interface for mcfqspi
git bisect good c17dfc8bb0b61ed36b984449eae8f246878052eb
# good: [28db4b2625174a47b3f6b79d996b0804aaae8ab2] wifi: iwlwifi: mld: 
fix NAN max channel switch time unit
git bisect good 28db4b2625174a47b3f6b79d996b0804aaae8ab2
# skip: [4fdfc0229a10464e8b2a4a56d9aeec8a4057a424] Merge branch 
'spi-nor/next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
git bisect skip 4fdfc0229a10464e8b2a4a56d9aeec8a4057a424
# good: [ce0e10c130c30ad480d83b32d8508183113d585e] staging: rtl8723bs: 
move constant to right side of test in comparison
git bisect good ce0e10c130c30ad480d83b32d8508183113d585e
# skip: [9755c6cf85febe7756c6dddb6405b16bb393783c] Merge branch 
'nand/next' of https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
git bisect skip 9755c6cf85febe7756c6dddb6405b16bb393783c
# good: [fe017012c5825f22bd856249e4f3cf57e31027b8] Merge tag 
'drm-intel-gt-next-2026-05-29' of 
https://gitlab.freedesktop.org/drm/i915/kernel into drm-next
git bisect good fe017012c5825f22bd856249e4f3cf57e31027b8
# skip: [ff34647c5266a05cbd0a4807cb0333b3a3856194] Merge branch 'main' 
of https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git
git bisect skip ff34647c5266a05cbd0a4807cb0333b3a3856194
# good: [1389ab9bf9f627d4daed86f492091b00f110aa86] PCI: loongson: Do not 
ignore downstream devices on external bridges
git bisect good 1389ab9bf9f627d4daed86f492091b00f110aa86
# good: [fb1758e74b8061aacfbce7bbb7a7cc650537e167] crypto: ccp - Do not 
initialize SNP for SEV ioctls
git bisect good fb1758e74b8061aacfbce7bbb7a7cc650537e167
# good: [79e33ddc62c03cce6c29f0792454e1d618228acf] Merge patch series 
"cleanup block-style layouts exports"
git bisect good 79e33ddc62c03cce6c29f0792454e1d618228acf
# good: [ddf9d68a368d8cae5510923a99bd2d9a7275a091] media: i2c: adv7604: 
Add range checks for chip info
git bisect good ddf9d68a368d8cae5510923a99bd2d9a7275a091
# good: [764f409b840ab400253215e765a72b903feb6afd] phy: qcom-qmp: Use 
explicit QSERDES COM v2 register definitions
git bisect good 764f409b840ab400253215e765a72b903feb6afd
# good: [b5b481063f5a68ef8361ba025bf655fc451f5d93] arm64: dts: amlogic: 
meson-gxl-s905d-phicomm-n1: add bluetooth node
git bisect good b5b481063f5a68ef8361ba025bf655fc451f5d93
# good: [057bb70f531c3e33c18c067716f39f8413b252aa] RDMA/uverbs: Push out 
CQ buffer umem processing into a helper
git bisect good 057bb70f531c3e33c18c067716f39f8413b252aa
# good: [6e302107d9c9fcfee48db57b175e82de39301645] can: virtio: Fix 
comment in UAPI header
git bisect good 6e302107d9c9fcfee48db57b175e82de39301645
# good: [95937cbb6d51e0c6f8ac937bd043fb3b442391ec] arm64: dts: mediatek: 
mt8192-asurada: Fix SPI-NOR flash compatible
git bisect good 95937cbb6d51e0c6f8ac937bd043fb3b442391ec
# good: [52ae64602394bc9a8e7b67f5e4e70c56e31699a7] phy: 
phy-can-transceiver: Drop unused include
git bisect good 52ae64602394bc9a8e7b67f5e4e70c56e31699a7
# good: [d8eb890079d19e4b5ac8073038c4fea006992e00] media: rockchip: rga: 
use card type to specify rga type
git bisect good d8eb890079d19e4b5ac8073038c4fea006992e00
# skip: [0f8575ca3a10c62d352be357c54d949b9d181fcd] Merge branch 
'for-next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git
git bisect skip 0f8575ca3a10c62d352be357c54d949b9d181fcd
# good: [fc13a4b9b9c8cb0b8e5ba54b21712d00f810496c] firmware: samsung: 
acpm: Add devm_acpm_get_by_phandle helper
git bisect good fc13a4b9b9c8cb0b8e5ba54b21712d00f810496c
# good: [91f5d698478f3d07230cf9ca4dfaf67e0316a53d] cpufreq: governor: 
Fix data races on per-CPU idle/nice baselines
git bisect good 91f5d698478f3d07230cf9ca4dfaf67e0316a53d
# good: [106ce4a01c179b8de664767cf5c7367210b66dba] dt-bindings: net: 
starfive,jh7110-dwmac: Remove jh8100
git bisect good 106ce4a01c179b8de664767cf5c7367210b66dba
# good: [a1b94131042930114d0257c44362ee16bca18f4a] dt-bindings: 
firmware: qcom,scm: Document SCM for Nord SoC
git bisect good a1b94131042930114d0257c44362ee16bca18f4a
# good: [1b203f7677100fa761f87641f35e72fe4e31a429] Merge branch 
'net-mdio-realtek-rtl9300-refactor-initialization-and-port-lookup'
git bisect good 1b203f7677100fa761f87641f35e72fe4e31a429
# skip: [534ed190a0f1997553d0ee91403b361134f23f9d] Merge branch 
'for-next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless-next.git
git bisect skip 534ed190a0f1997553d0ee91403b361134f23f9d
# good: [b2362b824f977a0a08f8d16c36510cabd6f58ce8] iio: light: vcnl4000: 
drop enum id table in favor of chip structs
git bisect good b2362b824f977a0a08f8d16c36510cabd6f58ce8
# good: [9893f32976b5dd8ca6ed43a97794531d8d49981e] staging: rtl8723bs: 
fix unbalanced braces in 3 files
git bisect good 9893f32976b5dd8ca6ed43a97794531d8d49981e
# good: [deb02080ca5d3f015cf71e56067a39ef2f141998] drm/amdgpu/userq: 
remove amdgpu_userq_create/destroy_object wrapper
git bisect good deb02080ca5d3f015cf71e56067a39ef2f141998
# good: [4503ca234c1c5995609f77ce41e66d0f8e08cbfd] arm64: dts: 
imx91-11x11-evk: add reset gpios for ethernet PHYs
git bisect good 4503ca234c1c5995609f77ce41e66d0f8e08cbfd
# good: [650fd10092529ca2dea85cb39b35a995808fd6dd] Bluetooth: l2cap: fix 
MPS check in l2cap_ecred_reconf_req
git bisect good 650fd10092529ca2dea85cb39b35a995808fd6dd
# good: [a4c6d5d146157228bc03429cf7926d8a14072c84] gpu: nova-core: 
enable GA100
git bisect good a4c6d5d146157228bc03429cf7926d8a14072c84
# good: [859e49597088b445173ed45cf4c4a44aff5e3f5a] perf callchain: Don't 
pass evsel and sample
git bisect good 859e49597088b445173ed45cf4c4a44aff5e3f5a
# good: [8bdb0b3830eaf588fcd7c76c1893d05d871600d2] usb: typec: 
intel_pmc_mux: combine kzalloc + kcalloc
git bisect good 8bdb0b3830eaf588fcd7c76c1893d05d871600d2
# good: [3b0ed04bc852887a9164e1bbf521652e8ef3eb92] fbdev: s3fb: fix 
potential memory leak in s3_pci_probe()
git bisect good 3b0ed04bc852887a9164e1bbf521652e8ef3eb92
# good: [d8a4cef90b1a4ae9196a5bfba683eb9a0c75acdc] clk: spacemit: k3: 
Switch to pll2_d6 as parent for PCIe clock
git bisect good d8a4cef90b1a4ae9196a5bfba683eb9a0c75acdc
# good: [b008ad40670b67e1cf6cfaa0692d830fc70dd94a] arm64: dts: renesas: 
salvator-common: Rename clk-multiplier to clock-controller
git bisect good b008ad40670b67e1cf6cfaa0692d830fc70dd94a
# good: [206bb143689e493a7ebb0f2259e462c35125a89a] gpu: nova-core: 
Blackwell: compute PMU-reserved framebuffer size
git bisect good 206bb143689e493a7ebb0f2259e462c35125a89a
# bad: [c029eea1cd96fa3653b4461c0ca7d5a360ead289] Merge branch 
'tty-next' of https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git
git bisect bad c029eea1cd96fa3653b4461c0ca7d5a360ead289
# skip: [611be4400f3b3a82f864749ead45c32e16d34833] Merge branch 'next' 
of https://git.kernel.org/pub/scm/linux/kernel/git/ulfh/linux-pm.git
git bisect skip 611be4400f3b3a82f864749ead45c32e16d34833
# good: [09d555136e011b7a083f1f7b40b86b6894e94a3f] Bluetooth: btrtl: fix 
RTL8761B/BU broken LE extended scan
git bisect good 09d555136e011b7a083f1f7b40b86b6894e94a3f
# good: [48b68337bf6523f16b2afbb0d3e059eb211e3c85] firewire: core: 
append _auto suffix for non-once iso resource operations
git bisect good 48b68337bf6523f16b2afbb0d3e059eb211e3c85
# good: [552ad802cad94bd759f85c170d07cc53f7d5deb9] Merge branch 
'bpf-extend-btf-uapi-vlen-kinds-to-use-unused-bits'
git bisect good 552ad802cad94bd759f85c170d07cc53f7d5deb9
# skip: [956fef287b67de54fd2c863f1452e7e64fbe2fa3] Merge branch 
'devfreq-next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git
git bisect skip 956fef287b67de54fd2c863f1452e7e64fbe2fa3
# good: [e6eff926482d0f6ebe038a15348158682f5711a0] buffer: Remove 
mark_buffer_async_write()
git bisect good e6eff926482d0f6ebe038a15348158682f5711a0
# good: [b7b0f9bb1acc4e8f7becbd39aaa1db1c0539da87] ASoC: cs35l56: 
Replace open-coded SoundWire regmap with generic regmap-sdw
git bisect good b7b0f9bb1acc4e8f7becbd39aaa1db1c0539da87
# skip: [7cceaa0da03cbd23e4831511a5e813ca7ead8bce] Merge branch 
'linux-next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
git bisect skip 7cceaa0da03cbd23e4831511a5e813ca7ead8bce
# good: [19f5e1ab965ab995794ea43866ae78fb02b381b0] Merge branch 
'for-linux-next' of https://gitlab.freedesktop.org/drm/i915/kernel.git
git bisect good 19f5e1ab965ab995794ea43866ae78fb02b381b0
# good: [957d69dbe13b4c5452374f58859a179e9297ae32] Merge branch 
'for-next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git
git bisect good 957d69dbe13b4c5452374f58859a179e9297ae32
# good: [74edfb4e12192b69c463bd9c3761ef753cee27d2] Merge branch 'next' 
of git://git.kernel.org/pub/scm/virt/kvm/kvm.git
git bisect good 74edfb4e12192b69c463bd9c3761ef753cee27d2
# good: [be8c98cace3802ed8cb5f5a6fce0587db6349aea] Merge branch 
'for-next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/tj/sched_ext.git
git bisect good be8c98cace3802ed8cb5f5a6fce0587db6349aea
# good: [927ff9df74b956bdccc8e9ac94ef483251cb484b] Merge branch 
'driver-core-next' of 
https://git.kernel.org/pub/scm/linux/kernel/git/driver-core/driver-core.git
git bisect good 927ff9df74b956bdccc8e9ac94ef483251cb484b
# bad: [bc35c68502637e8be9f03033a52b9cf086d7cc36] Merge branch 
'usb-next' of https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
git bisect bad bc35c68502637e8be9f03033a52b9cf086d7cc36
# good: [7fd6fb1fe40b992b2c39c3f586624ad93ee66c22] dt-bindings: usb: 
ci-hdrc-usb2: allow up to 3 clocks for qcom,ci-hdrc
git bisect good 7fd6fb1fe40b992b2c39c3f586624ad93ee66c22
# good: [22d91cef94b5b86cff0d68ebfce7741740672704] usb: cdnsp: Add 
support for device-only configuration
git bisect good 22d91cef94b5b86cff0d68ebfce7741740672704
# bad: [520058b73ba336380ecf7ea412263de9a7573df8] xhci: dbc: serialize 
enabling and disabling dbc
git bisect bad 520058b73ba336380ecf7ea412263de9a7573df8
# good: [d20405dcdfb616cbae5c3e17e790a969ea03469d] usb: xhci: Remove 
skip_isoc_td()
git bisect good d20405dcdfb616cbae5c3e17e790a969ea03469d
# good: [e765ab012f73717238c95ab9c34bfc3c767fa48c] usb: xhci: Improve 
Soft Retries after short transfers
git bisect good e765ab012f73717238c95ab9c34bfc3c767fa48c
# good: [dc2ff8ba9b9093eb0564407e46e71520b054fc85] xhci: dbc: Fix sysfs 
ABI Documentation for xhci dbc states
git bisect good dc2ff8ba9b9093eb0564407e46e71520b054fc85
# first bad commit: [520058b73ba336380ecf7ea412263de9a7573df8] xhci: 
dbc: serialize enabling and disabling dbc

> Signed-off-by: Mathias Nyman <mathias.nyman@linux.intel.com>
> ---
>   drivers/usb/host/xhci-dbgcap.c | 66 ++++++++++++++++++++--------------
>   drivers/usb/host/xhci-dbgcap.h |  1 +
>   2 files changed, 40 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/usb/host/xhci-dbgcap.c b/drivers/usb/host/xhci-dbgcap.c
> index 6a9f73fecb73..49ae546c4103 100644
> --- a/drivers/usb/host/xhci-dbgcap.c
> +++ b/drivers/usb/host/xhci-dbgcap.c
> @@ -661,17 +661,6 @@ static int xhci_do_dbc_start(struct xhci_dbc *dbc)
>   	return 0;
>   }
>   
> -static int xhci_do_dbc_stop(struct xhci_dbc *dbc)
> -{
> -	if (dbc->state == DS_DISABLED)
> -		return -EINVAL;
> -
> -	writel(0, &dbc->regs->control);
> -	dbc->state = DS_DISABLED;
> -
> -	return 0;
> -}
> -
>   static int xhci_dbc_start(struct xhci_dbc *dbc)
>   {
>   	int			ret;
> @@ -683,29 +672,37 @@ static int xhci_dbc_start(struct xhci_dbc *dbc)
>   
>   	spin_lock_irqsave(&dbc->lock, flags);
>   	ret = xhci_do_dbc_start(dbc);
> +	if (ret)
> +		goto err_unlock;
> +
>   	spin_unlock_irqrestore(&dbc->lock, flags);
>   
> -	if (ret) {
> -		pm_runtime_put(dbc->dev); /* note this was self.controller */
> -		return ret;
> -	}
> +	mod_delayed_work(system_percpu_wq, &dbc->event_work,
> +			 msecs_to_jiffies(dbc->poll_interval));
>   
> -	return mod_delayed_work(system_percpu_wq, &dbc->event_work,
> -				msecs_to_jiffies(dbc->poll_interval));
> +	return 0;
> +
> +err_unlock:
> +
> +	spin_unlock_irqrestore(&dbc->lock, flags);
> +	pm_runtime_put(dbc->dev); /* note this was self.controller */
> +
> +	return ret;
>   }
>   
>   static void xhci_dbc_stop(struct xhci_dbc *dbc)
>   {
> -	int ret;
>   	unsigned long		flags;
>   
>   	WARN_ON(!dbc);
>   
> +	spin_lock(&dbc->lock);
> +
>   	switch (dbc->state) {
>   	case DS_DISABLED:
> +		spin_unlock(&dbc->lock);
>   		return;
>   	case DS_CONFIGURED:
> -		spin_lock(&dbc->lock);
>   		xhci_dbc_flush_requests(dbc);
>   		spin_unlock(&dbc->lock);
>   
> @@ -713,19 +710,20 @@ static void xhci_dbc_stop(struct xhci_dbc *dbc)
>   			dbc->driver->disconnect(dbc);
>   		break;
>   	default:
> +		spin_unlock(&dbc->lock);
>   		break;
>   	}
>   
>   	cancel_delayed_work_sync(&dbc->event_work);
>   
>   	spin_lock_irqsave(&dbc->lock, flags);
> -	ret = xhci_do_dbc_stop(dbc);
> +	writel(0, &dbc->regs->control);
> +	dbc->state = DS_DISABLED;
>   	spin_unlock_irqrestore(&dbc->lock, flags);
> -	if (ret)
> -		return;
>   
>   	xhci_dbc_mem_cleanup(dbc);
> -	pm_runtime_put_sync(dbc->dev); /* note, was self.controller */
> +
> +	pm_runtime_put(dbc->dev); /* note, was self.controller */
>   }
>   
>   static void
> @@ -1072,12 +1070,17 @@ static ssize_t dbc_store(struct device *dev,
>   	xhci = hcd_to_xhci(dev_get_drvdata(dev));
>   	dbc = xhci->dbc;
>   
> -	if (sysfs_streq(buf, "enable"))
> +	if (sysfs_streq(buf, "enable")) {
> +		mutex_lock(&dbc->enable_mutex);
>   		xhci_dbc_start(dbc);
> -	else if (sysfs_streq(buf, "disable"))
> +		mutex_unlock(&dbc->enable_mutex);
> +	} else if (sysfs_streq(buf, "disable")) {
> +		mutex_lock(&dbc->enable_mutex);
>   		xhci_dbc_stop(dbc);
> -	else
> +		mutex_unlock(&dbc->enable_mutex);
> +	} else {
>   		return -EINVAL;
> +	}
>   
>   	return count;
>   }
> @@ -1443,6 +1446,7 @@ xhci_alloc_dbc(struct device *dev, void __iomem *base, const struct dbc_driver *
>   
>   	INIT_DELAYED_WORK(&dbc->event_work, xhci_dbc_handle_events);
>   	spin_lock_init(&dbc->lock);
> +	mutex_init(&dbc->enable_mutex);
>   
>   	ret = sysfs_create_groups(&dev->kobj, dbc_dev_groups);
>   	if (ret)
> @@ -1460,8 +1464,9 @@ void xhci_dbc_remove(struct xhci_dbc *dbc)
>   	if (!dbc)
>   		return;
>   	/* stop hw, stop wq and call dbc->ops->stop() */
> +	mutex_lock(&dbc->enable_mutex);
>   	xhci_dbc_stop(dbc);
> -
> +	mutex_unlock(&dbc->enable_mutex);
>   	/* remove sysfs files */
>   	sysfs_remove_groups(&dbc->dev->kobj, dbc_dev_groups);
>   
> @@ -1514,6 +1519,8 @@ int xhci_dbc_suspend(struct xhci_hcd *xhci)
>   	if (!dbc)
>   		return 0;
>   
> +	mutex_lock(&dbc->enable_mutex);
> +
>   	switch (dbc->state) {
>   	case DS_ENABLED:
>   	case DS_CONNECTED:
> @@ -1525,6 +1532,7 @@ int xhci_dbc_suspend(struct xhci_hcd *xhci)
>   	}
>   
>   	xhci_dbc_stop(dbc);
> +	mutex_unlock(&dbc->enable_mutex);
>   
>   	return 0;
>   }
> @@ -1537,11 +1545,15 @@ int xhci_dbc_resume(struct xhci_hcd *xhci)
>   	if (!dbc)
>   		return 0;
>   
> +	mutex_lock(&dbc->enable_mutex);
> +
>   	if (dbc->resume_required) {
>   		dbc->resume_required = 0;
>   		xhci_dbc_start(dbc);
>   	}
>   
> +	mutex_unlock(&dbc->enable_mutex);
> +
>   	return ret;
>   }
>   #endif /* CONFIG_PM */
> diff --git a/drivers/usb/host/xhci-dbgcap.h b/drivers/usb/host/xhci-dbgcap.h
> index 20ae4e7617f2..f4c0169a1b4d 100644
> --- a/drivers/usb/host/xhci-dbgcap.h
> +++ b/drivers/usb/host/xhci-dbgcap.h
> @@ -140,6 +140,7 @@ struct dbc_driver {
>   
>   struct xhci_dbc {
>   	spinlock_t			lock;		/* device access */
> +	struct mutex			enable_mutex;
>   	struct device			*dev;
>   	struct xhci_hcd			*xhci;
>   	struct dbc_regs __iomem		*regs;

