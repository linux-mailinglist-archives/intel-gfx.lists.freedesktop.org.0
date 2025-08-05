Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5EB1B2AC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 13:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7813410E262;
	Tue,  5 Aug 2025 11:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/iVEUmc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8127410E655
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 11:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754394132; x=1785930132;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=QMGYZlj5NumOOgmAWP00AqJWCf7zQiorc4Y+caHA48g=;
 b=C/iVEUmcFS29GcbiNXyqMJFCLnW6nM+SFLxk3LDG/umsUnAfyIYUEhAB
 KyKgPW9RYI6XbBJnnY8szFHD75z7d9o2KvRQs7zsrl+jkMNLJyWXPIpzj
 gQnlcG25EHq+cdDth3z121a3ZVCDswb7w+H6vc1Q8flslToFipst/jwKN
 4iQaT9QmaIDjcmgMLLe/p+WUDhNnZMqXH5UyrpQ0N4ekpPZId0zmD7e6g
 /kAdqbPXJ5Bc2ciVe9J8Fp9IV9vwG3emN6O3LAymZF7niDjYLJ6ndAL9p
 XSChf8+HKmJR+QaXKzh2Zyst4j0KhIdWapEJYgAR7VQzkv2G273iP5iDi g==;
X-CSE-ConnectionGUID: Wt4NEbseRkSkGu10co1s8Q==
X-CSE-MsgGUID: alMQqYLpScOd98CxJOwinw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56578974"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56578974"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:42:12 -0700
X-CSE-ConnectionGUID: 0Lt1Y2RCQseHO75AgvwXUA==
X-CSE-MsgGUID: oUGaXp1MTiWD6XKuQ6+ceA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164140452"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:42:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:42:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 04:42:10 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:42:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p57pQAUeChUEccZyWsZCKnhYqLYhgg+rgHYrthUXvLRhxTE2/SCreNa4htE+3qq45oErsiZD6UkPPm1X2n7bqjb4QdUvGqRzfZgKbapgCFHMNHxnis3BuYo+iyGyibdmEapNUYPbG0SldfZD2eizVkjR9Uo4OHhgZ6mxPvyitWLCVl0NzAFtfJyS8e/3flJ4MGAbH+YtAHaFCT25GV4zTVu3JpG+3tcTLZ5zpFGuHnvjdSDE7LwNizEaxDnHTElzZRe4QGa9QUTIj9ToPQbRFeXSgpn5L1p52Ls17ZuqzK33RrDtbqHQeKT939G4YWOOkbnX/azBNAIFEyYqZQHQkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTxZ7xRCFD/yAsgHByEQYIGFX6kV3hkNHGs2CJT6h+k=;
 b=JfatOWL11dwMcFLSyjg6hLUIUkFoyfYCD7BnM4b4A970Crtsrz9zJtuVnVYrkQ0PBFERTWVNPqxIsVGaFgE5u9HkLyKA3EJOX+0p20hS6OZUwks9Hp8Ccp5Jp1V2ibS4xEeXPLpSgj0ILSPhNKqiSobFu3JCyTi8iDrQQEfmcnJ9zSlKxFTgCYBiHJV8DiL3IY6mxnMShpPsClLatJVEKdULBuGMHUSdjPs9S/U65sM5XIkMLao6KBb3iiTkr52Z7Y1FD46rPvF7k6CjZBI0dDhi9gjztuIlU9Ep4rgZ/+OwavCgvqmnLAirKtoKc0+duKYPf5/0Y5T6oPyMl4SICg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB7086.namprd11.prod.outlook.com (2603:10b6:806:2b3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Tue, 5 Aug
 2025 11:41:48 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 11:41:48 +0000
Date: Tue, 5 Aug 2025 11:41:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: [PATCH v3] drm/i915/gt: Protect against overflow in active_engine()
Message-ID: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DB9PR05CA0004.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::9) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB7086:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b7fa142-0179-42b2-63a0-08ddd4150f8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2llWUs4aFd0Yk5odjNkMFZHcWZKT3RrdHNnNk5DbHNnZGdCbTFCUUxKdXlr?=
 =?utf-8?B?aWFxclhQcU9zbHZuQ1VOUWc5cTE3UmxqLzluSTFxd2J5OUtzZnNLVnJ4eHht?=
 =?utf-8?B?c0dhankrTzhkTy9tWTR0QTRXVjdnVFlWcUpFRU5zSkIvOGd5MjNMZ04vc3Jn?=
 =?utf-8?B?ejY3SzBxNjg2cWtkb3dNbERXc3U3WFJMbGFXaVl3UUpxSmpqSmk3d3l1M3dX?=
 =?utf-8?B?ZkQ2dkI4VWpVejhlY3NNMVVvdDFuV1dJNE5NZjBCa3BDaGtkNDhaZTBEYkt3?=
 =?utf-8?B?UDNTc3Nia251YmQ5YkJRcHFMaEZodk5Xb1k1WXVuaTB6Yk9LRWV5MzJibWVk?=
 =?utf-8?B?djRJbTVKak0wT3IvRDNxRmVESWsvckg0R1pqUmVpOGpHN3doZ3VRTnlMZEV0?=
 =?utf-8?B?MksyU1dsRXJ3UTBxK0VyZ25IVnFSN0ZyWUtZU0lIcDZtZ1ZJbjNwWWxwb0E4?=
 =?utf-8?B?MHdHM2YwMGx0bkhiYi9tODJVRzdCN2NUZUVqTW14S1NIZHg1b3FxSWlkYllZ?=
 =?utf-8?B?TWNvSmd0SEVOYlJhRnh3MjEvZTJXRXJ2YXVlZ0pOc215VW9OOXUweGZBVFU5?=
 =?utf-8?B?Z09kc2t1RjJ1aktYdk91TFZ1LzhFZUNBaVZQc3MrWlFoMkpLeGY1cW5ON3ZL?=
 =?utf-8?B?MlpURS9pb04vK0xTYXJMVHNIaDB4VXc0SmFOTGpOcjBScjBSckloMGhGY3J1?=
 =?utf-8?B?ekZPc3M3ZWdVYjFhcWtCTDlrQVNZdTZLMjFHSGNLdFdZYytXNVNTNXFGRjlM?=
 =?utf-8?B?THNQbjVKUk9pZW5JZTlQZm1DUkFQZ0ViWW54L3JzOElmVmx4eXVoTHNrSnpN?=
 =?utf-8?B?UENsalZaSTNadTNYNGhHSzdhUTRudWIyTEVtbzQ2RUZkVldKbkc4UHBIK0tN?=
 =?utf-8?B?ejdFNVpNNXhveWEyY2lnSFlBM1RueWxwbS9SVUNYVW5FMEZxMFNScnFhUHJR?=
 =?utf-8?B?VHEwVHljcml2YUZvdzZtU1hzVlFxNFlPbDVyM0Z0S09RWWVST2pCOC93MTRI?=
 =?utf-8?B?OTd5a28vZkc0MWpNZE1jQVhQclpEK0ZYd3VQKzZSL1IxVHIzc0FsZmFPUkdT?=
 =?utf-8?B?cHpJaVY1aXM0RmtPZWprTXRkMEl0YjJrMzJKWE5jcFJyaVJOT0xNb0tRWEZM?=
 =?utf-8?B?ZEpZUDJIVWloZDArdjNaVmdsa3NGd2wvd2d0aU84Q0pqYkdQZTdNcGlBbUU2?=
 =?utf-8?B?cWpFYTJ6UzNtUW9GOHNkdUVJUWdTS3ZCWXM1RnJlVmhkMnVjOGRsRUNJTXJD?=
 =?utf-8?B?SzFkdnIycVBIaWFSMk9tdTdVTjRMQ3BGeVlJQ3F4Tldmb0NVeVlxaXpDVU01?=
 =?utf-8?B?djJHRG0zRHNWK0RuWUJvd1hhbTV2RTBINjZRQm9zM0dPaDNPM1ZTTlM1Ymgv?=
 =?utf-8?B?SmpkdEZNSXpuVGdNTVEyNHpSNThNc2xQdk03RzlEcDNxTUhmZ1Jld3pQUlQy?=
 =?utf-8?B?cEJrdUxnVlgvaURlL3dqeU9VTFpFL1V1YXp2MFRqcFVxdHFIZUlmUkFaNXJi?=
 =?utf-8?B?TytFYS9SN0dvZE4zaXo5ai9GYTU5Q045SUNNeTR2SUI3cHBwN21pRHZZZkNJ?=
 =?utf-8?B?WTlpNUlOWjVxaDVHbStkNTBIVHk3cG9YdkJsSEpnb3J6Nmp0Vy8yL2Z5LzU5?=
 =?utf-8?B?eEZlejJEVkxmQVA4cEtYSGhJVXFreEtNWURyL1EvekRQTmNtQUttTU00ZkRC?=
 =?utf-8?B?U3ZyZTlWRGJTUDFKaDQwSjM4czBnd2t2Y1ZSN0tEWUJWbm1SY3RpWVhjMHVr?=
 =?utf-8?B?VWJBV3NTK1JqcVdRRnF6OGJwMURsaEx2aWMvQS9xZXBzVW9BMnIyRWhVWk13?=
 =?utf-8?B?TXBhRHJSSFh3WkRtSGxJUkRRM1k0RDJDK3U3UncrenY0VWtScHllMEZRNHN3?=
 =?utf-8?B?R054SGM1elMxL3ZDMU1ESkh6UXU4MGFPQnlKb1loVGlVT21Sbk5leWZqME90?=
 =?utf-8?Q?lSzMAOkZ41w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkpJb0JjeEp6aHVKSFV6d3VSZVNkc3QxZlVDcTNxczRIVzBWekRXKzErT3ZF?=
 =?utf-8?B?Qm14MlFOcTlFUlZlekx1cGV0L3NzL0l0SExvWFNyYzNVa0Vvdk5OTzhVZTd5?=
 =?utf-8?B?MWtybHRneWRyTHFvcHBIOTBRZE8zTXh5SU41T3h5NThkMDJ5YUpjTDNiUVV6?=
 =?utf-8?B?ZGxudEVoWW13L1JYQVlGZ25aQVBzcW9wMkJJSUE3dTlYZmMrTWk3RC9VdWFs?=
 =?utf-8?B?VnpCMjk1ZUQ3Wlp2L0tiZmFFZ0NoSVhqMnpmaCtFVW9xRm90YWNncE9TWS95?=
 =?utf-8?B?SlRsQlpjcXUvQUY3YWloaVVOV25iazczMHcxSUJZRjRGNlg3aWdkRUZHdzVW?=
 =?utf-8?B?T1BBdFhxRjNCUGtGYVVhTjRQT0dGNHhCd0NseWlvdDg5T1MxcUVrNmVJMkpa?=
 =?utf-8?B?ZW9FVlBPNi9qNmxCNGp5bjhxcDZ3cFNJY1Fkem5pbllUT3BFdkplQ0M3SHd1?=
 =?utf-8?B?MTZQQnNLNVp0V1FlV1pRTTdWWXFibzQ2V0thQmFqZEhjNU45UXV0M0tCWUY0?=
 =?utf-8?B?RUNqdEdqNjYrcS9TcXNQVXUzNG92bXE4N1BFY0d4M3dVd3h5dEp6ak5yd3NB?=
 =?utf-8?B?U0tRTlBVd3c0bEdoUm42SldIcVlQcHpMMjZFNUg3cmp0UXUza2tiWGNUVzU3?=
 =?utf-8?B?bThhTldMaDd1MUVtSGQvV3NhbENjMHVMcnBIWC9CU05IeWtEWE5zM3JTS2Rs?=
 =?utf-8?B?ekhDWlFkYzRlOVBxMlJCbjBtZURQSlFObXlwVlBLcTE2NWNTNmVTcXEzczln?=
 =?utf-8?B?ZmtrRXl5L3Nkam1uYS95bDZIMkFRajFzZzFqTFkyUkpjL0tpdmRZQUdKaWQz?=
 =?utf-8?B?dDJMSDB2c1NiT0EzZS8wbmd6cCtJaTNYOUNGeG4rdy9WeDJyN01QVWVVMit1?=
 =?utf-8?B?a3gvWldBdTBWRG9SREdHNFVLUHdPdjBXWWRGSzBnZU9UUm1DWVlBK21pOFBx?=
 =?utf-8?B?dlgzaXZzNU5hTUk3c3NjRm5tSndzbUxwb0w1SnJLaTh1VDg4SXVwSUtiZ0xC?=
 =?utf-8?B?SitKTG80QnZzMExoa2RhN1JzSlBZME56WlhLUkhNT3lyaUtwb0dUUFBZVmo4?=
 =?utf-8?B?MnpPNjdLZE5wU0RTNG15TXlnKzVFQUhvZmlNc25IWHZGOFZQaFhYdDR3NFJN?=
 =?utf-8?B?N3BDOUdLZC9VTFpPSzBOeTMyYkUrRllhQm44NGZQQ1IxdHJTR3plZkdEZnht?=
 =?utf-8?B?ZzdzSnNyVzFEakVEazZwTmhyNTVvRnUxaXZzSXFvMzY3VEorbmhNNjJqcWlZ?=
 =?utf-8?B?d1FHVjJ0ZUdQai81dzVMcEJqd21RcDJSc2xReXhrekx3SXdkTkRrQ3RCaHBq?=
 =?utf-8?B?NzZjUi9Xbi9DVWpaMWZzS1pVTlBVcnFINlV5K1lVdzFWVE9zUkJ1WlpXRG5k?=
 =?utf-8?B?OEloODB5T1NVaC9IamY2aFJhZG1RVE04SVorVFBOTDl6Z0JncFpGYi9OUjEz?=
 =?utf-8?B?UEdmM1NBdWIrS2M5L0o4UE0xMS93WFIxbEsyS1ZDOXJEenNNb3NVNVBMTDFT?=
 =?utf-8?B?MG0rWXBmbjRjcDNVNk81NGhPR21RWkFxblQwY0hLVDhxTnhxbzRrSUxRZXRM?=
 =?utf-8?B?VTJjaHZmWk45WTZlWkg1N0dGZmpBY3NKazluazhhUFpUQ00wZVJPaWx4aEtk?=
 =?utf-8?B?ZjEzRlB5aU9kMkdoSTdPSko5S29SKzNnS0d4dGtwSjBQbENuNVZMNGVFUjBJ?=
 =?utf-8?B?R0ovd09NcVF6SGNQbkZ0b21OOU1mazYyaHI2WHZrQloxTFgrVlgxRE9BMHVY?=
 =?utf-8?B?a1prZVh1SHRBLzJmcWRvb3oyWXhIdDZUNHBEK29kczNGb0F1UWJkeHlhWjBX?=
 =?utf-8?B?UWRteVI3RXVjWkJydVk2RGxsN05ZTUdMQWx0N0g4WHF2MHhIYWZGYzdFUFBX?=
 =?utf-8?B?NW9jRXlnK1d4NS9DelR2WUFwTXNNWlBocVVEbFUxcENWTWxKS1NlVTV1ZUFr?=
 =?utf-8?B?U1dkVjhjMGdsaWFxRmxyKzNvRmpuSWw3Q21IWEJJZU1lYmhKQWtNMkJKMTN3?=
 =?utf-8?B?a0RHRm1RYWxnTzV1UnJpOVBVZmV5NWVwM3lyYUtCV3JoVURVZTlrS0hpTVJ2?=
 =?utf-8?B?VnNDa3JXaUFkU25scVlGNFZPNHh6YmYrUDF2bVB5SHJmK215TXVIYitOZzY5?=
 =?utf-8?B?RFlNRmFvVGkyb1djdHFoQ3BPYTVpT2w1ZkRuVnFMSGR6cjc4UkV0UWhEcDFv?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7fa142-0179-42b2-63a0-08ddd4150f8c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 11:41:48.0021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Yf5VNb+U0AK34LmY9IkxO4a3QI69J7O/cYt+PyUGhjokJxZ+EQxfALM9VHD5za68gC47vauIUaFcSkFz2dpgATZfT3vrWxdfUR3H4IHodw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7086
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

It is unlikely, but possible for the first call to
intel_context_create() to fail with -ENOMEM, which would result
in entering the following code block and decrementing "count",
when it is set to 0 (initial condition in the for loop).

Protect from overflowing the variable by checking for 0 value
of "count" before entering the loop.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

v2:
 * remove unlikely() - Jani
 * replace "while" with "do while" - Andi

v3:
 * use additional check for 0 value instead of changes to the
   "while" loop - Andi

 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index f057c16410e7..619c70c54ef9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -904,6 +904,8 @@ static void active_engine(struct kthread_work *work)
 			arg->result = PTR_ERR(ce[count]);
 			pr_err("[%s] Create context #%ld failed: %d!\n",
 			       engine->name, count, arg->result);
+			if (!count)
+				return;
 			while (--count)
 				intel_context_put(ce[count]);
 			return;
-- 
2.34.1

-- 
Best Regards,
Krzysztof
