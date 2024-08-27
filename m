Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4619613E5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 18:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C1610E37B;
	Tue, 27 Aug 2024 16:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RUZxyiDu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3D310E21F;
 Tue, 27 Aug 2024 16:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724775794; x=1756311794;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=yYQvdD1PNGcVLEImCwPKrjmCLXjl0X+44NH9H9wUd8Q=;
 b=RUZxyiDuqsEqzkCc5rolptBtbe7XGdtGsv9FRR+7v6R5CSP9nMvPZIaO
 VPZKerxDhAlPFjlIK68x/afPqSwkUGFt+9LDEDjeJIg65H8viSRsePjt4
 l2QpnyP3MwM5eUFJyi9NrM9y7L0KBt4WVdxCXiRFv97fq8FPzZyAjNc5x
 pg/Xxu7LKy6V7yGaYaZudbAxTFV/6nBR0Al9+fIBdhm84ZjYOk303sfLk
 3g871xepwIhEcZgVzq+LvEa3lRjBrBKjVRNJkeJfRO46iLUPd485MHa46
 Ii6PxJcS9r/tYWo/3uj2t799Z5B/IFw8Uw82EASU6JY3WATHQnEZRuYDz A==;
X-CSE-ConnectionGUID: a1eh4PMOQOeBIriuH+JEKQ==
X-CSE-MsgGUID: 4+Rb+mZ+Ste9ekRuXJV91w==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="48650836"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="48650836"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 09:23:13 -0700
X-CSE-ConnectionGUID: CV6FoKHySVO0j2s16FJebg==
X-CSE-MsgGUID: eSgwbmmgQZSwQi3j/B1pxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="63420231"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 09:23:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 09:23:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 09:23:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 09:23:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ehqcmD3CbGqNePOPTIppxK4UP8MJWdioKePRsRLdjjNVMztHCOAbTRf4yr83hyU0lQasQv0TAJaKQZeN5m0sp/yMaTYR/MvWk18TaVEi/OI0JS7VqpuLliVOmnjB82cOF7NjGsSxRu822Xw7eKxYj/GsMlGtz5DjmEgrid5B/dhUlpWvLQjqXI/dDe8iAG++t8mwXtY4eDrw4VcHxQO1zc8zTByKjhk4Fb5A9T9iEf3mrO35CGdWEOEDOyM/FpOxCKN7AMynhDQXwec1iAiUCVkCHCkvTTC1rIZA3QAPsU24oFEugfeNv/0HhbhdawNLS1t6W2+QyMN6KJF5+xoh3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RONrgjCkJwupn7dARWx1BhxzcSFT6xrWOBVH2u9Zhuc=;
 b=BYQDxrgg6zn88cPnaqZhBYoG9xIbgHtvyNVpfZcJqE/WhAo/R86KCQKOatdOANdrWLC6JvhZiXwPkbHXtlEdfJrKTqhNnbC4QoY0VQvSaXXqdk8UY0J6hL12fM0IfCjN238PIwZSSbNSCycyBFvuRVjsxMMpPqu7SAuagcfX1FSOIcoOkqreyL301sR8koe6Eut8C8XVQ8ye6Wa4od9+TCpN7eP6W6OwU5Td8VHqbwYWmCtfuU8S5dgxKRUCDbZieDxMzOg9b6ceta83HeTEh2IBLI9Qk1SlvDgti/diwH9PTHwLHWgzZx1cMKjj6KKyLx481DmSnjJTofazZxCI7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA1PR11MB8593.namprd11.prod.outlook.com (2603:10b6:806:3ab::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 16:23:10 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Tue, 27 Aug 2024
 16:23:10 +0000
Date: Tue, 27 Aug 2024 12:23:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?=
 <juha-pekka.heikkila@intel.com>
Subject: Re: [PATCH v6 2/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
Message-ID: <Zs39aiYNqB_Fg9AP@intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
 <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:303:8f::27) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA1PR11MB8593:EE_
X-MS-Office365-Filtering-Correlation-Id: 36ffc9bc-398f-4e06-250d-08dcc6b48ab5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3JBQXZUcFJRWUFHTzdXeEpncGEzMkgrdDdvaFNGN0FOQmpSekpDTU16K01X?=
 =?utf-8?B?OW1xWnh6eWdIRUgwOUtreEZJSUF0Z1Z1MUdnNHM2M3ZxNGdqcGFnNSsycWc3?=
 =?utf-8?B?STk4c3VieGpPWUhsbERIcHFJbzErNU9DTTF6czFybjl1dE9OaXIrelN2eThl?=
 =?utf-8?B?S3dwMGhCZlBxZzVSL0Z0eklOYzdnNDJnTUR6TjBtYTBYSE1EQTdoM3BQWEth?=
 =?utf-8?B?c2d0aTYxWlNzMTk5MGRZLyszWnhoZWlOblhMbXVWQ0FkQy9LbDNQSVFEeUk5?=
 =?utf-8?B?cVpXWlQyb1psVVNsdE16WGdVMGg0dDJEQUhxZWZTK2swOE1IamtZZXhGdVd1?=
 =?utf-8?B?dUNLU3FUcDZTZEMwb050bXZ4OENGY0xKSDFBTWlxZVBGaFhFUUNKbkRjcFBp?=
 =?utf-8?B?RlVWQkF5Z2l4QzdpdndFVkZMZWJHSFZFZ1J6cXZuMUY0V2ordU1Bd0tnTnlp?=
 =?utf-8?B?Z3NwTDRTbitMQ0hNMnRFNFhxNXI5cEkrUU80ZHJpMFViV2NEZXl0em13WDdz?=
 =?utf-8?B?SGQvTmM3Skh3WEdxMHRXbmxsNVpOcVRHNTB4T3VFY0pXaGc0c056Rlo0TzNl?=
 =?utf-8?B?blk2RVcwaCt6UTlIazNya2prb29OQjJKU2wydElJWGJzb1lnb3pzSFRzcnVO?=
 =?utf-8?B?Z05memo5cThUdWVyWUxBeWY0bjRDS000VnhpWnR6UGxuR0Z2dlhES2sxeXlw?=
 =?utf-8?B?Tk5rbVhxeHgxRU5vbk1WNW9XaFhIY3pQMDJsb0dOTzltemxobW1BNGhtcTlm?=
 =?utf-8?B?enJldDZBdVRYbFlNZGJyU0Y5UWlZNFJQU1VKdnBodkQzVW5WdWhYZHVjcXFZ?=
 =?utf-8?B?SFZINnNFWDlodnMxd0pzZDVSZG9ZdlhWaE5tSHg0Z1ZjR2pqemptVnpQNXFw?=
 =?utf-8?B?clRuUU80Ri9SQ1QrRkZDOERZUTE0N3Q2Ukh1VjdVUzR4TXltVytIb2pRZUpI?=
 =?utf-8?B?S1IrcXJFZmE4RnFJTFVlRFovQnU3S2JIeEdVaG1QN21pUDNVQ1l3T3NLcHVB?=
 =?utf-8?B?VHNpSVNmY1FVNkJKZkV0N0RYUE9nTlVMZGh1SW5wYzhITkJsR1JZSlhMRkhR?=
 =?utf-8?B?eTQ0Mnczc2RUZ2RtVm9RdDBmK0ZDcjJVS2p6cDlnelBIcXF0U0s3ZFNrN0lE?=
 =?utf-8?B?VFBWT2ttNVdGN1NNL2pyS2lpaU5rSkdvZGJxWEw2czRraXk5dEZqL1ZZcDFE?=
 =?utf-8?B?dXcvS2NnM3Q0Nm5NR2kveFFNQXVGOW5XNDc5elJ5dk9mVUY5ZEk3N2JlSEly?=
 =?utf-8?B?K1ZvSk5KUmFWRG9YL2Vzd3ZudUxjSUNOTVltNzZMdjVJejF1Rk1NTGhIb3lZ?=
 =?utf-8?B?N3dCWlhPd1h4Q1JHYnlYQTA2TnY3NHJkNHVyL2lDZnEwcCtuK01IRklsZi9H?=
 =?utf-8?B?NURLeDhtWVRBd0hyNm5FdzRPTjA2K2k5MENVNDZIVUJpQ05pWG9aTE54WmNL?=
 =?utf-8?B?T1ZWU28zZDJVVXZ3aHlLTVl2N0hHckR4bDhOSVcwZ1dsQXVERVpXTDRHTkhq?=
 =?utf-8?B?VVVXZW5IYjFqbmc1ZzE5WTRYN0pLWDNEUnFuME1aaFdWWVdhaXZhaWorMFJ5?=
 =?utf-8?B?SEVCSXpRSWVzSTVnSXUyRFhUU1RqNDQ0S2V4aG42OGNvMmQzL2drRmR3Zk9P?=
 =?utf-8?B?WkdHdzRQMmszMW41V1BxMGtXbU5EWEZDWnhURnJ3cWJ6VkNQcXVWWTBuNEhQ?=
 =?utf-8?B?ZHh0d2FheHlZVUo5aFF5RGUyWXVtZHBQblhibm5jblFvclRNVm1leDNnV2hC?=
 =?utf-8?B?N000ZmZhc0l2L0lONU1ZSlZTQ2lpUnJ5cDdlL3NITHM1TGU1Y0UrYUsvRnZk?=
 =?utf-8?B?RVcyUi9uNzliUEdQY3hhUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2FzWitPQ1VCUkhQWUVuOE5jbnVsLzdNSDNHTUd0YU1lMkNRQldNaGkzQ0w5?=
 =?utf-8?B?UnJ5RjBTeVRvWDFtR1ZpdmJCZEg0RjAyZC84QmNtYXJjN0ZwUHJBaGdPM3cr?=
 =?utf-8?B?TnlwZDJLSFhsdGkyeW5weEY1bGpHNnVWTnFyYzJIenJCWUVubmx1Wm9iT2c2?=
 =?utf-8?B?ZGRNZzBzK29yY0o4UUl3aU00ay9ObXJzdWhJS2VGSDRyMHZCZGYvQlJ4c1Bj?=
 =?utf-8?B?K3BEQVRySEZ6QUI1RkxTd0VpZFlHWnNsSjMrUzQ3QXZJYVgza3BkeFhFVkZ5?=
 =?utf-8?B?NDVmMXJ1TzFaNTF6Vk9kUm55R09UMzBZWmpGMVBwVUNnSDRCZzJrN2t0VWRi?=
 =?utf-8?B?S3k2WThjTjkvdnZzaVBnaEp5Rm9qVkpleVB6Wkh1YlNGZ3djZzZZeXdBUTVz?=
 =?utf-8?B?VmN5UGtZdlJtQWJYZnc1L0JlbWJVa2ZGTFM2ZlJhUkRwUEtjMktmVlhkcXJn?=
 =?utf-8?B?bE5wb3c5M0pqUXdYc2cvc25odG9qVXZwdm15bG94M3ZHTlZkMkFVaVVOWkly?=
 =?utf-8?B?dTUyZ21ydDlYbFI2OHdRdkZyT1VBdWVSZHNram5OTnVXWkcydGpjeWo4K1lp?=
 =?utf-8?B?OUxhNE1wRzFQcTZHMTgzYW9wWlNGSjVZRUFOeHdtaUkvMHFLYVNFemZMaTli?=
 =?utf-8?B?Wmw1bXQ1WGZzcWdTbTRJMHJSazJreGsvWE12dDNTZzZhM3VHd1hoNXdKdW0v?=
 =?utf-8?B?SkR4RzlPdFF5VktmTzQ4WVpOK2s4VG80YS9HZ1hQclZ3bTNVdXJ5RllkTjNy?=
 =?utf-8?B?bSs3YXR0VDZCK1BJYmNLNVRGcmtyZzNyV2xYb01WMGh3RWdCM0dwbUtRbVBB?=
 =?utf-8?B?UzlsOHhCOHNqN0REQnBGcmlKcUZDZWp4dENUUW1mUE93eGpSVUJFY3NpOFRn?=
 =?utf-8?B?SHdMZU1yOTdIcHB4cFJjZng2UkR5UHVkenRUaEtlby9aMkYwV0dVemU3UnA5?=
 =?utf-8?B?THhIaVN5MnVwcEtINkNGNGxXQkwrWmE1R3RDbG15MXR3M2lTeXhwL05kVHAz?=
 =?utf-8?B?a0x2VXp6UGE5cHNQNTAwaC9pYTdSaExRSWFuS296RG94NzBqeTE2NEtiMDg0?=
 =?utf-8?B?Zkt0bnFZanpaSDViTDZGc0MxWnpXdTJFQU9jRmJsRHdBVFlNUGYwZWRvT1Bu?=
 =?utf-8?B?dzZMbDJxYlF1dTgyZlgrUmtpOGZwZEdUOGw3ODgvOU1JWW4rQ20wYjBoeC9Y?=
 =?utf-8?B?eUViZDI2eHdSbUw3ckw4QkpPamlQbmZpMnl0Y3hhZ3BEaitEY0tsMVdBM3pp?=
 =?utf-8?B?TDA5NEJZb0NBYm5PMEUwcGNkWGg1WCs3Y1VGRlpOUDNOMGViL0w1RjdUTzdX?=
 =?utf-8?B?S2Q4NE95c3MzampPQXN6VVFxalpJaXM3dTg2NWc4RGdnRklYajM2TmpCaFNr?=
 =?utf-8?B?RU11NFNvSFQ0WjYwaHFuOXd3N004ZnpzYTA3aC9SY0JNS2VENExtTzBxeEVR?=
 =?utf-8?B?NkJpVms5cS9maG8ralJIOE9hUEJTZWR5YTRQU0NuUFFXMWNXUTdvRFZhM1BZ?=
 =?utf-8?B?NDB1ZmVpeWU2SjZ0WkgxN2FSdEc0MG95OXpHVmprZVYvTVRnVjZIK1JRNkpt?=
 =?utf-8?B?N2cxN2tzekhFSElvOUVWUzRIUDY5b1UzM1I4V1I2MUI5Zzg1cHc2NGVDcGVY?=
 =?utf-8?B?TGVXcVV0dkFmQ3lTM1hESytqb3NOejFud3NwYnpIUVhnNXk3QjJXbGtvc3JR?=
 =?utf-8?B?YkFkZFdWV0gySEY4ODlVWnAvcFRQczhBb29MZlJkc1lRNjJaUmV0SnRtcjNU?=
 =?utf-8?B?ZW1mNm4xZHJGZ3R0aW5PNkp4TjhWemgySE1weXRkZzdNVXJOVkxqSlNuc01x?=
 =?utf-8?B?STdyd3FhTENUTUNMR2ZraUtLY1JUL3lzZ0U0d05PR3JGOFlOWTZVaEpaeElE?=
 =?utf-8?B?eWkxMzEzbnJZYjAyREpOSjRaM1pvcFQvV2lNN1FzZTZLZUQwNWJUdEoxTDZM?=
 =?utf-8?B?aUNBK1hrcDBkUUJsNTY1RC8yZnBTelg0SzBJcWRXZmpiVlBaUFM3ZFBUdmYz?=
 =?utf-8?B?eWlqYXRMb0g1SW9qTnc3RWtlZ0pQMWltTjNjdnRCZHBnVDVMK2dQWFBlYVk0?=
 =?utf-8?B?b2JTY3I5V2dkTDBjc3crdklicTZneUltdG16Tjh3K1lCQlpxR3puT1A1T1p1?=
 =?utf-8?B?MzgxUkQzbG8za01SOUJ0dnhFM2dhZmd1eTNEN0Zwc0syOHJZd05PNkg5WVVU?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36ffc9bc-398f-4e06-250d-08dcc6b48ab5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 16:23:10.6786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9HF0uQ5+H5N2XUEuHvw6xcI20nU8cZe1aMO7gCLPqqsM+MBMZKaO7jr6ad2Rms5MC+b8dH+sVkQ2i7WOgNmlRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8593
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

On Mon, Aug 26, 2024 at 07:01:16PM +0200, Maarten Lankhorst wrote:
> For CCS formats on affected platforms, CCS can be used freely, but
> display engine requires a multiple of 64k physical pages. No other
> changes are needed.
> 
> At the BO creation time we don't know if the BO will be used for CCS
> or not. If the scanout flag is set, and the BO is a multiple of 64k,
> we take the safe route and force the physical alignment of 64k pages.
> 
> If the BO is not a multiple of 64k, or the scanout flag was not set
> at BO creation, we reject it for usage as CCS in display. The physical
> pages are likely not aligned correctly, and this will cause corruption
> when used as FB.
> 
> The scanout flag and size being a multiple of 64k are used together
> to enforce 64k physical placement.
> 
> VM_BIND is completely unaffected, mappings to a VM can still be aligned
> to 4k, just like for normal buffers.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> ---
>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  9 +++++++++
>  drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
>  drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
>  3 files changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index f835492f73fb4..63ce97cc4cfef 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -7,6 +7,7 @@
>  #include <drm/ttm/ttm_bo.h>
>  
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "intel_fb_bo.h"
>  #include "xe_bo.h"
>  
> @@ -28,6 +29,14 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>  	int ret;
>  
> +	/*
> +	 * Some modifiers require physical alignment of 64KiB VRAM pages;
> +	 * require that the BO in those cases is created correctly.
> +	 */
> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd->modifier[0]) &&
> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
> +		return -EINVAL;
> +
>  	xe_bo_get(bo);
>  
>  	ret = ttm_bo_reserve(&bo->ttm, true, false, NULL);
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index cbe7bf098970f..9d6632f92fa94 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -2019,6 +2019,13 @@ int xe_gem_create_ioctl(struct drm_device *dev, void *data,
>  
>  	bo_flags |= args->placement << (ffs(XE_BO_FLAG_SYSTEM) - 1);
>  
> +	/* CCS formats need physical placement at a 64K alignment in VRAM. */
> +	if ((bo_flags & XE_BO_FLAG_VRAM_MASK) &&
> +	    (bo_flags & XE_BO_FLAG_SCANOUT) &&
> +	    !(xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K) &&
> +	    IS_ALIGNED(args->size, SZ_64K))
> +		bo_flags |= XE_BO_FLAG_NEEDS_64K;
> +
>  	if (args->flags & DRM_XE_GEM_CREATE_FLAG_NEEDS_VISIBLE_VRAM) {
>  		if (XE_IOCTL_DBG(xe, !(bo_flags & XE_BO_FLAG_VRAM_MASK)))
>  			return -EINVAL;
> diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> index 4cc13eddb6b32..3eb76d874eb28 100644
> --- a/drivers/gpu/drm/xe/xe_vm.c
> +++ b/drivers/gpu/drm/xe/xe_vm.c
> @@ -2878,7 +2878,16 @@ static int xe_vm_bind_ioctl_validate_bo(struct xe_device *xe, struct xe_bo *bo,
>  		return -EINVAL;
>  	}
>  
> -	if (bo->flags & XE_BO_FLAG_INTERNAL_64K) {
> +	/*
> +	 * Some platforms require 64k VM_BIND alignment,
> +	 * specifically those with XE_VRAM_FLAGS_NEED64K.
> +	 *
> +	 * Other platforms may have BO's set to 64k physical placement,
> +	 * but can be mapped at 4k offsets anyway. This check is only
> +	 * there for the former case.
> +	 */
> +	if ((bo->flags & XE_BO_FLAG_INTERNAL_64K) &&
> +	    (xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)) {
>  		if (XE_IOCTL_DBG(xe, obj_offset &
>  				 XE_64K_PAGE_MASK) ||
>  		    XE_IOCTL_DBG(xe, addr & XE_64K_PAGE_MASK) ||
> -- 
> 2.45.2
> 
