Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C08B1A3E5
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83FA10E209;
	Mon,  4 Aug 2025 13:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+D9GbzY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2EA10E1FA;
 Mon,  4 Aug 2025 13:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754315611; x=1785851611;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xhIt03y/vgkMjtrLPxirOD8vv9zrcftOQB38ZL1wJ2w=;
 b=l+D9GbzYcmTaUMTuCsCm5BRRRyPqkQkQNJaWNG+ooNt/XJQ3CfB+j/qu
 0r800ULGeMNPFxbzcmIJwscoDESK5trxa+wVMyAa5GY35vnJ5W6oqQEW8
 Fa1Nexe+szBbCxS1ywHrhlarLeRFcMj8m9y/eIsX+TH4Z9sq830xYRKWR
 VHKX8ROtUQf8Y4vJZGlgcysGrFg5ab5/C2qag0NzvbAEdXhBDaoFM86oq
 iLTXKfj5RQtwcT+lYE5blCkvpQlKd2F2zOOB5JZmC2KQdicYjZquCB8Wd
 iKgnIwTbSIiMiG9wICWkLaqBAfB79F7lvgQYRIHrqoappaq0VSMwJfHo5 A==;
X-CSE-ConnectionGUID: G0b9UeRYTASF7f2v9hxSsw==
X-CSE-MsgGUID: l2WV/jNISxKlAEpKl/ZCsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56449300"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56449300"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:53:31 -0700
X-CSE-ConnectionGUID: NNDpRI59T6CGqFr+xciqVg==
X-CSE-MsgGUID: sGKkrDOTRDiQEp1kzkOERA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163432178"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:53:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 06:53:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 06:53:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.55)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 06:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=goWYit1fKxIdKRjMLGJVvGk21oUKWIvmoZ7dzSHc8GgmJx1gpLYr6Xk940PDoGhq6K6We3aj0frbpOSGl6OzYmidU1P2o2ZCOlq1BCVpY0hhibJWLMJDc5t74KxYgCn14IlnqPKibLj6vDrReT2t1+VvXqMtlzps5GMroCCxhu3Z2Awb/UuNpxb4X7vWYmkvRwcLERycyE2NM1wpEoH50ek3BOrIijY938J6jrKCYVHXhMrq+Y0I+tFh7helBN8RzHRub7HbKOXQSyooZptrD2BlcVRaLRWSXahj0GHN+hd6Pj6JKSqjcZ6pGQNmgqK85OwldGog/JStr/3AHC+EqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7LwmNLXtyEe7ppOHqipKYmYJlGedYfSTH0j+a0LSo/w=;
 b=ork25y9vhZH5RydAt3fOQtPbMS7NH89LQtStaLeSNg9sFQrr2YrI8vemzH7HFlawNeESPVZMjnp4J4PkEo43aO8UWSSpEq9oHBXmvm1cmA+O7bSO5bsuMAHKyge7+yj86bDaeIMDGN/Eess7I5qCBqgPXA/BrYrFvzFIlkvP6eLQ5tnp2jbfYCtRXByssJ89R0U66f0QEh/HXQv1hL+lhGec1kpA67LYB09uh1GjnhmV4q+A1/e+rE+QL/76/U8hE961Pqic68Xnqsl4HCIXxuSb0ETiZSLfhCcIsfX5lCzaU/F+Xlon7cVicLcWTqAZvYnZc7kZmGjqXpFmPlN6yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6461.namprd11.prod.outlook.com (2603:10b6:930:33::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.18; Mon, 4 Aug
 2025 13:53:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 13:53:29 +0000
Message-ID: <4ead382b-4412-423e-925c-408fb3068ead@intel.com>
Date: Mon, 4 Aug 2025 19:23:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/i915/vrr: Use static guardband to support
 seamless LRR switching
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
 <20250707043321.97343-3-ankit.k.nautiyal@intel.com>
 <IA1PR11MB634814954B8239F663BFADF8B256A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB634814954B8239F663BFADF8B256A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6461:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c1c9deb-d7c4-4cf6-78bd-08ddd35e4a7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFNIVENYVSs1VmFYMG85TXpTSThWdy95bTRYT2Z1QkpEdk1DTmpMZ0NCaitt?=
 =?utf-8?B?bU51WnRtRkxZL2x1NzlPS0hLQndKckVOL2EzRUtFYWhyMVZ4Z3hUTDBhQmsr?=
 =?utf-8?B?Y0RXWTdQNXUxNlVxb0NnbTEwSVdteGJMRlkxRXhIbTUvVEZrc1EyUGZDUFhz?=
 =?utf-8?B?aC9zWDkxRDRMZlpVdlJKTDNBaGJVNFRBZ0o1cmNXUnUwL1Erd2R5OVoyc0k0?=
 =?utf-8?B?TlFMQWNGOG5sUm5MQlp0Wko3MEdGMlNVZURWRkk0Qlc4RElzOVk1NzdlSWpL?=
 =?utf-8?B?U0FpdnlUUzBCKzE2a0dvVVpwdEZHbDY0NjlkaUhXakppeUZIOWltTVpDVE9v?=
 =?utf-8?B?RFlkUkJqTmhUbmV2THNselNnOFVYSkZWajEwTHZHRlZCSWZYMi9PTGlIdHdm?=
 =?utf-8?B?ZWxjTlltcHpVVEhTT2l4akVaTkJuY2NLV3ZpSVpvV0VKTkhEV1FUQk51cDNk?=
 =?utf-8?B?UVJHOWNxcjZGaEZYSExmc3J2ZnNEUVJSeThjRjF0NGd4bHNtSkYrSU9ISkha?=
 =?utf-8?B?VHZ0Rnl1aWYwR3lPbFdlZWRsYUdiekExOEtxUjJaa21sQ0pzNWJCelprdnZM?=
 =?utf-8?B?SUFQN1lOUUpndHlocFpVZk9YOVB6V3J3ZG9Nc2Y2bmQrWVpncTgzTkwyMzlh?=
 =?utf-8?B?M1VGWmRROEkxT3VtSnJleWh3YjVDNnkzNWNUMkpPUTZ3cHo4ZEhmY25JYWJS?=
 =?utf-8?B?YzUzMWJIMTFBNGNqaFBzKzJHTitQakluZldTV3ZqYUR4TVkxdXF6VFVoNWx4?=
 =?utf-8?B?eHBHRkFpMzlUcWdKUGJzNytITlQ4cDNReWJsa09GTDhQcHdVVFF4WHFRaHYy?=
 =?utf-8?B?aDNtSVZ2akY1bFdSV1NqMm1XbjhTWkIwV3lPTjBITUl2K0dYU2paUDUzd3lq?=
 =?utf-8?B?MUFkN1REd2U2S25hODFlTVc2bXk2K2o0MDRYWXhhTkVNTCtSUDVZSFRJL0xl?=
 =?utf-8?B?YWloanJtMUV2NlQvc0ZxTU9DRGk4RUpGRHV2akFzNWFvcW9janptd0pUUXJK?=
 =?utf-8?B?WE5KaG80Nkx4WXR1STdKMHBraDRsMm1CNXE3NUlhNzJrNHgvNHVnU05maTFR?=
 =?utf-8?B?YzV5RFgxK0duc1NCODZiYStxRmdmanhMQ2hrSG9FM0srVWswdWFkWk9OWGlD?=
 =?utf-8?B?d1VzcWdMcUhEdVBvZlZ3NW81Q3lDanBEU00zcDczbkRqcHJMR0RyNEN5Njlm?=
 =?utf-8?B?WEdJc0VKM1BaRk04Vm9SS0R1ek1UcC83am96QnZEaU1CS21TeHZPekc4Zm12?=
 =?utf-8?B?Mi90YXZLMCtWaXo2Q29SR0JOaDVuTm8yMm9BUThKWHB5eDd2SUd5UHZLZ3Nz?=
 =?utf-8?B?YTRXVkNGck9aaExrZDU5NkVDWllVQWdjd0FJTWpQUGhFMFQ4bzNnblkrQ3cy?=
 =?utf-8?B?bmk1VUJCcjZ0eVhBWUJJQnpnL1pxcUJ3bVhORzNqeGU5dWVIdkY2Vm9VK0lU?=
 =?utf-8?B?dHpXUWdlY1A4enAyK2FlNzdNRGluQXh1VkI0SHZDU21Mc2FDWUJ2REgvQUt5?=
 =?utf-8?B?RjJMaGtqK2kzTVdzc3ZPR1JjYnlHOXNDZ3ZXeEpoU0ZidlJaS1gzYUlaVXZT?=
 =?utf-8?B?MzZKWWkvSmJSNUZlSUd5bTdUUXptSHVBaDJiVnE4NVhQM1U3cW5nSnBqZEpE?=
 =?utf-8?B?R1VIYmFGM0lhNTlBRDFVbm9rclpHZDVzeFFGeEo3aktMZkdxVFI4d1N6ZkFM?=
 =?utf-8?B?K1VnQ3Z1YTZEb2NCV2piYzRybi84UVBMekZ3MlU4RllWRFYrYXFFeTAzOC9n?=
 =?utf-8?B?dTlrYnZXK0pqUGdIY2YyOFdrRDE0RWI2Ti9GRmkvZ2YwU2RaRFFXZHlUMDZq?=
 =?utf-8?B?VGo1Ukx2Qm5PSS9FUHlFQ0tmWW45Z0JVWnQwNmhGdnpiaEtWM3o4SC91NmpW?=
 =?utf-8?B?MTdHN0ZuRW9rR2lJVmdjZ3JaYmwreDY3NzI5cWFJWW5KOFpqc2FranBlZHRC?=
 =?utf-8?Q?R5GyPer7OY4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHpOMjBQK043cGtHWllmWlJhZ2haZXZ6a0RUWmJUQTIwWjZOZEpQZm53RzhS?=
 =?utf-8?B?R2ppTWwvYjVtRTFvTi9WMlFUSFZpeG1rOXFVV24vNld1SEVhWEpCRVJucXZK?=
 =?utf-8?B?VHpIb0ZuRGh1ejhQZitMZmVsZGJ4QkVHRkc3ZGRsOFhuL2d1ZlhVUTlMbUtJ?=
 =?utf-8?B?S3NZWkJPNFk0dldxOUJQTXBNaG5ZSzhPVXlndFlNZXJiZHNwb0pmd3NCa2ty?=
 =?utf-8?B?eEd1OC95cUREZGdHTTltcUc4dW9NMGlJSlV6dFBxRTZPQmNOc0w0V3duNE9N?=
 =?utf-8?B?emtxb0RlangxSTYrTkZld1JadENzVjRLaFhyU0NHQi8vUjIyV1FDYW1QZXhu?=
 =?utf-8?B?REE1UlpiNmEwaStuWVBpaDRBZEMrNzczTXJZTEV5S1gxS2RER3F3Znhva0kw?=
 =?utf-8?B?bExqczNaa2hqZUFnODFsWHpHbmhxVjV6SUxlYWVYMFQ3RXFnc0NMK0laMTBm?=
 =?utf-8?B?Q1oxT0I2em9aTWxoWkRGY1E4NnVhYS96d3JiWGdEU0pLZzVlem1hcUZrZ1ZL?=
 =?utf-8?B?NmlJaTBHMHdhTWtzVG9DeDZMT2R3bUF2TlAwVjd0MVBsaTJKMUs4MnNBK3hS?=
 =?utf-8?B?dEtjWUExM0g3UVoyemw2ZzdQeHIzKzBDMTVDVnhlWlA3Sm93bXh0YUtHT3Rw?=
 =?utf-8?B?cytob3RSNHNEakRLUDlneFV6MkZjWVpWdnRzeGdhTEF5OTBPNUlsaURRZG96?=
 =?utf-8?B?TDNhVlZ5Z2NHOXhvZWM4dHRkOUV2WEc4YWhLQityaWZLemNBZXlzcS9ZWWhG?=
 =?utf-8?B?ZmdGcU9QbHFCTko0T05HelE2OGtjYkNjcnFHUGVZRStEeitEZTRSZnF4QzhN?=
 =?utf-8?B?NjgwdVJrM2RCWEQwTzZUc25IOHkzck52TDhxb1ZyenBKdHZzV3UybEJwZm5H?=
 =?utf-8?B?RkNEU2l4MWlUZmJ3dzljY3gzQlVkREt1RWI3akwxYmZIY0dsVDBwWUw3ek42?=
 =?utf-8?B?LzlSYnI3bjBmekREWXh4NnVqVmlkSlI4ek5LVHYxTXlRNG9DeGhmVWo2YmJu?=
 =?utf-8?B?MUk2NlpBajNVMWFieCtwTVFKcWFHV0dwN1NuOHpRSmdqWi9wWVlLM0xVbkVv?=
 =?utf-8?B?Z24wOGhUNDlJbkg3bGVvRC8rZlNQc3RSeGNmMHVJRmo2UWdFN3l5MUZWRU85?=
 =?utf-8?B?cnB6aUFrcHJ4MVBKSVA1M3R0VTVSa1ErSWVCbTMyeThBdlBLbjQxWDZPcmxW?=
 =?utf-8?B?QnEvQ0lJQ2ZGVGcvTWR2a2U1MWwxQ3ppQ0haWk5Pb043MVEvREVSbjBLVkta?=
 =?utf-8?B?MkZqZUl3eWhJREV1aUU5QXZlKzNPV1Q2eUNRMC9vKy9QYUpmdE5iMW9CNnZM?=
 =?utf-8?B?dVM4dVNZK0pUNFVpNGEvK2xvRGV4YjU2ZUdydHhuVHErS2lkU21pb2hPejZm?=
 =?utf-8?B?OUJXTVBlOGZYdDdVRS9HN29UL3lWenY4ZE02dm5RQTBFWHloMHBhdzI2YlZ6?=
 =?utf-8?B?bFBiSE9iQVZYVGs5ckhmcld5TENybTNUWVcxaUhrMFFtYklzR2pqY2pMeW5l?=
 =?utf-8?B?ak5KUHJUQVhPZFlqWmNiZGovVWRQN1kzVk41WnZhb3RyYzFYaFJNWnQ3N3RJ?=
 =?utf-8?B?WUUrT3Y0WmVJMlpNU1JqdVluR3l3QkRKdzd4S0FKcHpqQlBETEVlWGc0UlRH?=
 =?utf-8?B?V1phNXBuQXJUREdrWFhhVCtpL2wvemg5b2t2c0UzeHNmT2NWNnE5SWlRekR6?=
 =?utf-8?B?NldQcXhkcnBVUmxRMXhPdFNKdUNYaXhJMEJZUG56N1A2aVppS080UE90Wkl3?=
 =?utf-8?B?MjJ4R0ZWQ3BYM1NpTVQyL2NkUXEvMExXajBLVC95YWlTZW5vN1BxQlVYdEp2?=
 =?utf-8?B?THN2NlNWa2wvN25meER3YkVvdHNpcXZ5U0JENzJVNG4wc0lsWlgycjEzQnRm?=
 =?utf-8?B?VXREblROb01sakMyRW9NTEhzYituWi9YZ291SitXT1BlS3NTd2JpSU1mRXdz?=
 =?utf-8?B?TjV1bmJoNzI0Y0JZaGhtWmtFU2dBd3JPMWJDbnU3bzFUaWRDZm9Scm9paDBu?=
 =?utf-8?B?VEJDampxT1F1bXRKQlN4U2hTUDlURkhQR3lDVDV6N3g1aGhWSXk0KytrUDFF?=
 =?utf-8?B?Zk9ITGpSc2dVSmxMcmhhdXVjWDF3Nlg3aitUekUzV1dNNG5Iam0rTmUvTGdj?=
 =?utf-8?B?bmk1VzVFdk9BNVBoMFQwRmR1WDhRbndyYkE2endKYzY0Q2V5VkRjM25MSjdX?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1c9deb-d7c4-4cf6-78bd-08ddd35e4a7f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 13:53:29.0555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 98WU+YqzYPIU0aHoB3TRrTRN0JQQ4RsaqacC/IHJ14ESUk6+iJIkmM0O5FSAELPPgO0vfEgFj6RZl3dA121lr0BPp7iXFMqBS2gq44lbbBY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6461
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


On 7/16/2025 2:52 PM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: 07 July 2025 11:33
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH 2/4] drm/i915/vrr: Use static guardband to support seamless
>> LRR switching
>>
>> In the current VRR implementation, vrr.vmin and vrr.guardband are set such
>> that they do not need to change when switching from fixed refresh rate to
>> variable refresh rate. Specifically, vrr.guardband is always set to match the
>> vblank length. This approach works for most cases, but not for LRR, where the
>> guardband would need to change while the VRR timing generator is still active.
>>
>> With the VRR TG always active, live updates to guardband are unsafe and not
>> recommended. To ensure hardware safety, guardband was moved out of the
>> !fastset block, meaning any change now requires a full modeset.
>> This breaks seamless LRR switching, which was previously supported.
>>
>> Since the problem arises from guardband being matched to the vblank length,
>> solution is to use a minimal, sufficient static value, instead. So we use a static
>> guardband defined during mode-set that fits within the smallest expected
>> vblank and remains unchanged in case of features like LRR where vtotal
>> changes. To compute this minimum guardband we take into account
>> latencies/delays due to different features as mentioned in the Bspec.
>>
>> Bspec: 70151
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>>   drivers/gpu/drm/i915/display/intel_psr.c     | 41 ++++++++++
>>   drivers/gpu/drm/i915/display/intel_psr.h     |  2 +
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 79 +++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +-
>>   5 files changed, 123 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 456fc4b04cda..c09f0a7f1fc1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4754,7 +4754,6 @@ intel_modeset_pipe_config_late(struct
>> intel_atomic_state *state,
>>   	struct drm_connector *connector;
>>   	int i;
>>
>> -	intel_vrr_compute_config_late(crtc_state);
>>
>>   	for_each_new_connector_in_state(&state->base, connector,
>>   					conn_state, i) {
>> @@ -4766,6 +4765,7 @@ intel_modeset_pipe_config_late(struct
>> intel_atomic_state *state,
>>   		    !encoder->compute_config_late)
>>   			continue;
>>
>> +		intel_vrr_compute_config_late(crtc_state, conn_state);
>>   		ret = encoder->compute_config_late(encoder, crtc_state,
>>   						   conn_state);
>>   		if (ret)
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index ae9053919211..e44c95093dc2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -33,6 +33,7 @@
>>   #include "intel_atomic.h"
>>   #include "intel_crtc.h"
>>   #include "intel_cursor_regs.h"
>> +#include "intel_cx0_phy.h"
>>   #include "intel_ddi.h"
>>   #include "intel_de.h"
>>   #include "intel_display_irq.h"
>> @@ -4270,3 +4271,43 @@ bool intel_psr_needs_alpm_aux_less(struct
>> intel_dp *intel_dp,  {
>>   	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;  }
>> +
>> +int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
>> +					    struct intel_crtc_state *crtc_state) {
>> +#define PHY_ESTABLISHMENT_PERIOD_MS	50000
>> +#define TFW_EXIT_LATENCY_MS		20000
>> +#define FAST_WAKE_LATENCY_MS		12000 /* Preamble: 8us; PHY
>> wake: 4us */
>> +#define LFPS_PERIOD_MS			800
>> +#define SILENCE_MAX_MS			180
>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> +	int linkrate_mhz = crtc_state->port_clock / 1000;
>> +	int io_buffer_wake_ms;
>> +	int clock_data_switch_ms;
>> +	int aux_wake_latency_us;
>> +	int auxless_latency_us;
>> +	int time_ml_phy_lock_ms;
>> +	int num_ml_phy_lock;
>> +
>> +	io_buffer_wake_ms = intel_encoder_is_c10phy(encoder) ? 9790 :
>> 14790;
>> +
>> +	aux_wake_latency_us =
>> +		DIV_ROUND_UP(io_buffer_wake_ms +
>> TFW_EXIT_LATENCY_MS +
>> +FAST_WAKE_LATENCY_MS, 1000);
>> +
>> +	/*
>> +	 * TPS4 length = 252
>> +	 * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
>> +	 * Number ML_PHY_LOCK = ( 7 + CEILING( 6.5us / tML_PHY_LOCK ) + 1)
>> +	 * t2 = Number ML_PHY_LOCK * tML_PHY_LOCK
>> +	 * tCDS term  = 2 * t2
>> +	 * =>tCDS_term  = 2 * (7 * (252 * (10 /linkrate))+6.5)
>> +	 */
>> +	time_ml_phy_lock_ms = (1000 * 252 * 10) / linkrate_mhz;
>> +	num_ml_phy_lock = 7 + DIV_ROUND_UP(6500 * 1000,
>> time_ml_phy_lock_ms) / 1000 + 1;
>> +	clock_data_switch_ms = 2 * time_ml_phy_lock_ms *
>> num_ml_phy_lock;
>> +
>> +	auxless_latency_us = (LFPS_PERIOD_MS  + SILENCE_MAX_MS +
>> PHY_ESTABLISHMENT_PERIOD_MS +
>> +			      clock_data_switch_ms) / 1000;
>> +
>> +	return max(aux_wake_latency_us, auxless_latency_us); }
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
>> b/drivers/gpu/drm/i915/display/intel_psr.h
>> index 9b061a22361f..42277842af01 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -81,5 +81,7 @@ void intel_psr_debugfs_register(struct intel_display
>> *display);  bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct
>> intel_crtc_state *crtc_state);  bool intel_psr_needs_alpm_aux_less(struct
>> intel_dp *intel_dp,
>>   				   const struct intel_crtc_state *crtc_state);
>> +int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
>> +					    struct intel_crtc_state *crtc_state);
>>
>>   #endif /* __INTEL_PSR_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 46a85720411f..b73d99877ce3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -10,6 +10,8 @@
>>   #include "intel_display_regs.h"
>>   #include "intel_display_types.h"
>>   #include "intel_dp.h"
>> +#include "intel_panel.h"
>> +#include "intel_psr.h"
>>   #include "intel_vrr.h"
>>   #include "intel_vrr_regs.h"
>>
>> @@ -413,15 +415,88 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>>   	}
>>   }
>>
>> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>> +static
>> +int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
>> +				struct intel_connector *connector)
>> +{
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	struct intel_dp *intel_dp;
>> +	int dsc_prefill_time = 0;
>> +	int psr2_pr_latency = 0;
>> +	int scaler_prefill_time;
>> +	int wm0_prefill_time;
>> +	int sdp_latency = 0;
>> +	int guardband_us;
>> +	int linetime_us;
>> +	int guardband;
>> +	int vblank_us;
>> +	int pm_delay;
>> +
>> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>> +				   adjusted_mode->crtc_clock);
>> +
>> +	/* Assuming max wm0 lines = 4 */
>> +	wm0_prefill_time = 4 * linetime_us + 20;
>> +
>> +	/*
>> +	 * Assuming both scaler enabled.
>> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
>> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
>> +	 */
>> +	scaler_prefill_time = 4 * 2 * 2 * linetime_us;
>> +
>> +	if (crtc_state->dsc.compression_enable)
>> +		dsc_prefill_time = (3 * 2 * 2 * 2 * linetime_us) / 2;
> Can we devide these all calculations into small separate static functions ?
>
> And also, we are already having part of these implementations like dsc prefill time and scaler prefill time calculated, can we utilize them so that duplications can be avoided ?
>
> Or if we want to use this, then we also need to revert them from skl_is_vblank_too_short ? As now we are already taking care of those latencies to here.

Thanks Mitul for the comments. I agree with the suggestions. I have made 
separate functions for these in the new version.

You are right, we need to check the guardband. Earlier we were checking 
for vblank since guardband was matched to vblank length.

With optimized guardband we need to remove these checks.

I have removed the changes from skl_is_vblank_too_short and added a new 
check for guardband in the next version.

Thanks & Regards,

Ankit

>
>> +
>> +	pm_delay = crtc_state->framestart_delay +
>> +		   display->sagv.block_time_us +
>> +		   wm0_prefill_time +
>> +		   scaler_prefill_time +
>> +		   dsc_prefill_time;
>> +
>> +	switch (connector->base.connector_type) {
>> +	case DRM_MODE_CONNECTOR_eDP:
>> +	case DRM_MODE_CONNECTOR_DisplayPort:
>> +		intel_dp = intel_attached_dp(connector);
>> +		psr2_pr_latency =
>> intel_psr_compute_max_link_wake_latency(intel_dp, crtc_state);
>> +		/* Assuming VSC_EXT is required */
>> +		sdp_latency = 10 * linetime_us;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +
>> +	guardband_us = max(sdp_latency, psr2_pr_latency);
>> +	guardband_us = max(guardband_us, pm_delay);
>> +	vblank_us = (adjusted_mode->crtc_vtotal -
>> +adjusted_mode->crtc_vblank_start) * linetime_us;
>> +
>> +	if (vblank_us > 0 && guardband_us > vblank_us) {
>> +		drm_dbg_kms(display->drm, "guardband_us %dus  > vblank_us
>> %dus\n", guardband_us, vblank_us);
>> +		guardband_us = vblank_us;
>> +	}
>> +
>> +	guardband = DIV_ROUND_UP(guardband_us, linetime_us);
>> +	return guardband;
>> +}
>> +
>> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
>> +				   struct drm_connector_state *conn_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	const struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> +	struct intel_connector *connector =
>> +		to_intel_connector(conn_state->connector);
>>
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>>
>> -	if (DISPLAY_VER(display) >= 13) {
>> +	if (intel_vrr_always_use_vrr_tg(display)) {
>> +		crtc_state->vrr.guardband =
>> intel_vrr_compute_guardband(crtc_state, connector);
>> +		if (crtc_state->uapi.vrr_enabled)
>> +			crtc_state->vrr.flipline = crtc_state->vrr.guardband +
>> +						   adjusted_mode-
>>> crtc_vblank_start;
>> +	} else if (DISPLAY_VER(display) >= 13) {
>>   		crtc_state->vrr.guardband =
>>   			crtc_state->vrr.vmin - adjusted_mode-
>>> crtc_vblank_start;
>>   	} else {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
>> b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 38bf9996b883..4b15c2838492 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -21,7 +21,8 @@ bool intel_vrr_possible(const struct intel_crtc_state
>> *crtc_state);  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>> void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   			      struct drm_connector_state *conn_state); -void
>> intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
>> +				   struct drm_connector_state *conn_state);
>>   void intel_vrr_set_transcoder_timings(const struct intel_crtc_state
>> *crtc_state);  void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>> void intel_vrr_send_push(struct intel_dsb *dsb,
>> --
>> 2.45.2
