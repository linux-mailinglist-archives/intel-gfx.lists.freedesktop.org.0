Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 738DAA43BFA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 11:42:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350A510E611;
	Tue, 25 Feb 2025 10:42:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jczvfUu5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8A3210E611
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 10:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740480149; x=1772016149;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=vSajBp9nNwQkf18CjsL6P6cUxYymowA1GVOx7eKzVuk=;
 b=jczvfUu5zZwiszI9KquN3vmYJhb4PgRQvPeYhc/Sh28wEItfDrN++8Tp
 Fxib+i/07RZ418udWclYfywJ3FaQ14b/JT18cbnBs3KCCnba2aj+hcb/T
 6KQnQT+eAKaxv4q/n46WIZUG6OEiRquLBsYNsCAqOEke4cGgLiWPJl03S
 xdvWK7BlIRk65f9xxf8UMEFm4N27jRsd/E+RhVuW4tCLvONrr/HtF918k
 Ytd4apV1QeSrkbaqcUkGrHfIM/nzRRIza2nekkl21guXv3/tFoGsog5Qy
 UqcxUU84UlncBlbEwroNBgh7aoZFfMU2CfT40mjNP4SJFL8t2iU7jOKSD Q==;
X-CSE-ConnectionGUID: VbACNAPcS4C3hay9MNl+kQ==
X-CSE-MsgGUID: V1Cpq30UQaSP7qpKmhvv8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="52276666"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="52276666"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 02:42:29 -0800
X-CSE-ConnectionGUID: 9TASflUbSVW4kjhscSRJPw==
X-CSE-MsgGUID: XD9kEvxcTpuhT/FuCI0DXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="121328706"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 02:42:28 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 02:42:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 02:42:27 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 02:42:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KJRG9F10HS7w1UKLOL0YVqi+53g7vYcwCoPjE7Etab32orQumoBOJCiKBf9dgLOMVZUdTaB6woKJzN3nWpMihlFJGIfHGIAdFYq3VmlThyNwUyZjUB4067s014ravdpaw7bfdyUD0ZACk4joZMgxVxTqpiwApNAS6UIDjOEWbMJ8t0vR/QkxjyYolbgpXyYxzJnvP6MWEIz6ELFBFTLtSHml04wMFpojILvYCkPohAq4924EHbYB7/PlG8UfYQ+Jy0frGWdqZHed/sKekAFPsUCLXbxAdaDhhNDW+pNFP3Zzbu6EYiiiNcDDsumJk/98PKnIF5atBQWAEtAMg2D8QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u8XJQAB3kFIv5uLcmCTG85beyK4XTsNz+LTuuQErnpM=;
 b=RCOXpaT46LYWF2/dvr1FufNQGxzr/yvVxnaOo0+ovSje+ZF5Q2Fjlze+Io6FvNsPPOwW5Od3wfpyG5YuLaOuEHyC1yCaxdCu++ihzBvarA9sHtmK51XudQexL3ss6UYoq7FSVyldLPmLU6+VkZ/tlMCjg0a36GbEwPBIfbBOGsMxw0BQPI04lRTtKxUS1TGftFM3yb1s9oT62rhrysYWExGtXdmbuSMBfxHVeGon8YHFcjQkjVhgek5tzfwWFcqaWLHFqSab3d8FQOUy6NvuqAkAQ5gXE+Juhyizw1hU14aVRNCadqjHg6I5LEWGRcIlkgi5fRJzS79jgEcWTfdHgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by SJ0PR11MB6671.namprd11.prod.outlook.com (2603:10b6:a03:44b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 10:42:12 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 10:42:12 +0000
Date: Tue, 25 Feb 2025 11:41:56 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <krzysztof.karas@intel.com>, <andi.shyti@intel.com>,
 <krzysztof.niemiec@intel.com>, <janusz.krzysztofik@intel.com>
Subject: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VE1PR03CA0049.eurprd03.prod.outlook.com
 (2603:10a6:803:118::38) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|SJ0PR11MB6671:EE_
X-MS-Office365-Filtering-Correlation-Id: d98d147c-fb8b-4e66-733b-08dd55890fa0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlVnOTFhRVRuOXRaNTRWV0IzQzZrWUt0aFZWZWVVRVQrZkFWcTZaNm45cXF3?=
 =?utf-8?B?cXI0dnc0TVJKSnZKZVYxQmt5UGZMVHc2TGJzODJ3VUVicC9YV2RXUG1sLzY1?=
 =?utf-8?B?N0YzVzFmcGE5ZGlMbWFERmIwekVESkpkbzJqMDVBMlBML3ZyaTdPVm9zd0Qv?=
 =?utf-8?B?ZmFrZjRsaE4vMit2eVB2cE1TeGRSVUFYYkNyNUZNczEvMm16TFREVk44UXRP?=
 =?utf-8?B?VEdHb3FBamdpQlUvWkJEZGx3aU14MHVBbFFlQUZkMWtPdmY0MHl2WXFFNjBE?=
 =?utf-8?B?Kyt3WXRSaWFKWitTMk9iaHExUU9ac0JsUFVKbFdKR1Q4WjhwNUpsWGFleW5p?=
 =?utf-8?B?T3JvVm5EWVI1YnhESmwrcGppYVRwb0lobzVGb0xRUVJmMndFZzRXTkRNOFpi?=
 =?utf-8?B?WTM2VDJtUHY4SVk4THUwTGlMQWcyQmVwUHJIZjdFSitQdllzb00rWlZGSytO?=
 =?utf-8?B?WjdUNEttakhUMVpESzlic2Z6dUpVd3p0TTN6ang0ZGc5VXY2dEpuVzNxcng3?=
 =?utf-8?B?VWViVm1hbmxJTm1ORWtGM2V3THlrVEhLZElXU1VTNWhVR1IxV2N6WnhzcUhw?=
 =?utf-8?B?UjBDM3dkUXBMbXIwS2h4MjRtbWpqbUZKcTc1WnhKaFpQMDRzem1ma1UvOTlo?=
 =?utf-8?B?ck5ldEl3QzF1S2xadkhGQXFnVTFXeWNDaGxoL3VGRHZXYUIyaTBZd3U3cTYy?=
 =?utf-8?B?WjJDY0hJdjV0dUxyejVVR3lNNCtkWVdKbzVYcWZDRVFVODF3MWhoUkg4TE1B?=
 =?utf-8?B?T1cyTittZkNROXQ2M3p4dWIvSXZCdGxGeXNGcmUzclNyOUVhSElxUDJFNlUy?=
 =?utf-8?B?R2dNWktieTZOVUM4a1lvNW14b1k3Mk44UUcwYU1oK3NyZGcwQ3R6bHNVWGRx?=
 =?utf-8?B?eEtBR2VHN3NnZ1Z0WXNzUGo2T2xBbi9DQVNHRE5pVUt0RERrUGorRmFDek0v?=
 =?utf-8?B?Q1gvMGNpOUU3YmxmS3k5azl1SXgxcnRYKzZyeE1VUHN5UWQrbUU0MldtdXIr?=
 =?utf-8?B?M2JYQnBKcmFpOGZFLzNGYXIwdkU5Z2Z3Skt2amozTHk5aGhCSHk4bDlIb2VK?=
 =?utf-8?B?alRpZHNIbnltandNTmJ6eHJnRW9Xa2hPUjZKMGl1bityK2JGL0pDakp2dUwy?=
 =?utf-8?B?V05SNXBtdkpidXZJZ1BlY0hiRm5pRkt6bUtsL05iS0RkSHpUTktwRE5qeUds?=
 =?utf-8?B?cllpd2NyeThqOW5IV3JwdlBWalhnMndlWXZud09DaS9yT0F1cVdhc2w5U2d0?=
 =?utf-8?B?RldWS1ZQNVRSelhGVXVKSVpFTFNxK1IrL01FakV5VjVVbHlvaWlEdmFTUWhr?=
 =?utf-8?B?VzNXOU5WclJiSTdoRnI5b2F0cEhrOE9jbzUwV25rNVFkb2xWbU1OeDd5UnJy?=
 =?utf-8?B?WjJqVFB2SFZZVXJnajlydVB3SllVUUFibkVRajNyQ09OanlEQjM3bUd3TU4r?=
 =?utf-8?B?Yk82d0c3NVZLVzdIdFVKaDhHaWZFSEErS3ZNVDRzS2dMZzRWaUtuZW5hU3Nk?=
 =?utf-8?B?ZCtwbSt0Y0xRd0FPOVg5WTNDYlpMb2FjbE1PNjBhQmp5WFA0dEVNZkw5Snh4?=
 =?utf-8?B?MkJSeTdOcEUyNDluUGFmL3lubFNBaEhuVUpIN29XbXd6dDBjUFUvZmZCZEoy?=
 =?utf-8?B?b2V5c3VTWi9DK1JqaTY1Ym5veXNuYlBBdUhxUTJzclNJWHZkZFFQL0JIRmU2?=
 =?utf-8?B?dUZVZUlkM0ZyaGtXaXR3NzhwdHZnaXN5MVRlcmh4bTUvRVV6bVh2Q05TREVP?=
 =?utf-8?B?Tmp0QWtTdUU4QmY5RDFpR041LzRqeWhwZTJYeE9aTDBZblBpcFdoK3NzVnBM?=
 =?utf-8?B?L2JvYVkzWHZJV0Q4NWYxNG5LVlpoMThWbDd5YmxqV1hzUkVXK09oV0FJZmZZ?=
 =?utf-8?Q?K2GW0Na5Aw4Mw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXdkaDhNa25ZWmp5aGNwWDBNaVRxeWNEQWFVbFVQbVJWSDZ0cXVURWZuWGZF?=
 =?utf-8?B?MXNJcm40djB6a0J5U2NlQlBGZmNFZEdGQVRnNnlvMEZ1WXllMEh6TnRJaFB0?=
 =?utf-8?B?NFJQWlpIbTk4WUQxZ1JjYUFmS1pkUi8vdzB0ck9vSklhMDY5WlVxK29haHVz?=
 =?utf-8?B?NmY5Nkwza2h2YWxBa09ob1ZmaktLYnZzRUk2andxZU4yd29WQllEU2dwenRz?=
 =?utf-8?B?T2tBSEZ2S05FYjRvU0xoQmVZVnhnd1NSWkVERGNYa3ZmZzU0bDQ4NTNRd0lh?=
 =?utf-8?B?VFRQRHRCV1JMcFRUS0xmVkRYaXZ5NUxYTTg1b0tEZVpXQ1dicktRcGlWUmxl?=
 =?utf-8?B?NmxtemEyODF1VFlxRklrME55eU1pNTU4MmhKcVFYcHJWY3FMWFQydEVsUmMy?=
 =?utf-8?B?cUxYTUtNVFEyUHZJcHhHcU5tUDZ3emJGbVBqZ0pqRjlrVitiZjdXa1RIVlhu?=
 =?utf-8?B?USttUzZQL29BY2ZsckhLTkRPQW5vY3VvRmVNWE5RM0FWWWg1Y0V0MTZGWDVi?=
 =?utf-8?B?QXFtdFJFWTFYeGNULzcyZTg3cEVTdDdDbjBuNE0xd1ZldVBra2VXVWRwaElJ?=
 =?utf-8?B?WHhuMG1wa21sV0tzdDFYRE9nU3JXNWpvSFRkV3N4SThXY0JwSGllMnBGcVZl?=
 =?utf-8?B?RThUaVpzNVhsZnM5S0ZxTnQ1d25yZk5zRGNvRDh6cjlsWDJJOFVibENOcnoz?=
 =?utf-8?B?YXVjYlA1RnJMRHppallWYlp5YnM3RFlEbnJyVlFacEJ4VzBzRkdXNjlxWmlJ?=
 =?utf-8?B?MXZzSkRlM0JuTEtDenovMTdYOFJmZmhWRWlVeFhrOTl0RVk5dHJhZjJmelZq?=
 =?utf-8?B?MG0rTUlyNlBlVE54QlBpOExtTUJ6VHNMaFN0NVlXRzcxaUhjWklEKzhRTHlz?=
 =?utf-8?B?WW9ST0dXQ1JMNEg0OFZQcW1LZGRoS3ZkM21pU2hGMGh0SktLOTkwOEc2Si9J?=
 =?utf-8?B?aTlvWEIzSUxEc01TVU5vRUZ1UWFpRW5scEkxR2RON2ZLaHptYUVWRmNTRVJZ?=
 =?utf-8?B?a2NEQTU1VE4ya3NoM2NJY3dmeStPcXR4eGRCOG9lYmxaZWdXTWtORkVVTFRj?=
 =?utf-8?B?SVU2WkUzWWkxS0VHN0FlaDZQQ0d2U3ViSDRXbmhMZURZYjdDdVJRZmdFdWxE?=
 =?utf-8?B?NkM3d042ckY4WnBOODU0bm9pdFdodCt1enMzRkNRUEppRS9MeDFuVlFocHZk?=
 =?utf-8?B?Q2wrbU1IdUYyOSt4bDlyZmFpZzhjSU51ZXQwQWVFNmZVYU8yR1R0ME5LWmhL?=
 =?utf-8?B?TkdnbGVOSlBabzlLZjNLcHhWSWs0V0JPdXZaNlJUNDZxNHFDMVRFbjRrOTBz?=
 =?utf-8?B?TXY4UWlVVkY3Q2pKWi9XbllxSUJneHV0T09rL2QxdjVBdVVIMkZQelJiYklD?=
 =?utf-8?B?M1dFZVBlUmlmTlREeFpJYVVuaG9zQVdQTU02TEdxdm9oczBzTk55RkxFeW80?=
 =?utf-8?B?RWFwRzJyNDVvN1dMd0QyWVFnck5nWmxOQ2hpNFV6UWx2L1hYaVNDZGNXcUpG?=
 =?utf-8?B?K3VuOXN4ZnJwK3BGbmpta2JGK1J6a0pTbi8rNy9tekN3VnhIT01qUml6Nlly?=
 =?utf-8?B?bUNEQlJkTmdUSndjdXo4cEVDbjNzU3YxV3ljeVpva3gzZDFiUStHMVdjQ1JW?=
 =?utf-8?B?RGRkeVErNVR3TDBYVzF2SXU1b0J3bXo5TTZra2F4Qm9NZng1YVdQMEh5QnBW?=
 =?utf-8?B?cDY0dnJTeHVEZmF3UUtTZFg1eHZVM0loaEVJTGpLNm1PNmlHK08ycUJEL08y?=
 =?utf-8?B?djBoMGVYQWtXZDhld2dIUytsYW5SMGk3US9jRHJjajRNY0xUbnhvQ2UyaXVi?=
 =?utf-8?B?eHpRWjBJWEVuT0FqdGxObk9BcE5jTytKOVpwUzFxVGxSZGJUZjdrZDZkWGFT?=
 =?utf-8?B?SDR4TVl3NUNCZ3h0dyt4WEFJRUxpSWlicWpBV0V4SS9MYnljMDZ1NFpkMm9S?=
 =?utf-8?B?UXZuNHgwcXU5NFhlc2FuVEJmaTJIdGJsR0dubko5OGV1VmR6NDdTUWE0bzBZ?=
 =?utf-8?B?TDVhVTRWZHdEUWtFdUIrS050SzVQTzBRd2xqNDZQLzR5VXVOYWZHV0RDZWJJ?=
 =?utf-8?B?Q20wam9MWVUva2ZmS3FxekxZZjlDZDg2aVVYWktpRHhQV0VEN01TTWU4Zkkv?=
 =?utf-8?B?UHRORjRhVFJCMjVtVS9qRHAyNTg4NXFjMTJyNTYvWGRXZGRiSU1TL3JtaWdt?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d98d147c-fb8b-4e66-733b-08dd55890fa0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 10:42:12.0198 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +CYbRc334FbN32HjjYI0Xf/YD1qM4d6ay8eT4ASzfbQDLLp2XsyF98QyLq3onxeMsr4Xm6PSj/wPq9j9afHPWpPKHxJZcGqwpQkYO7LJ18M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6671
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

When driver is loaded on system with numa nodes it might be run in kthread.
This makes it impossible to use current->mm in selftests which currently
creates null pointer exception.
This patch allows selftest to use current->mm by using active_mm.

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
---

This patch is mostly damage control. By using active_mm we expose our
test to foreign memory mapping, which sometimes makes the test fail.
That is still better than just having null pointer exception in driver
code.

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 61 ++++++++++++++-----
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 19 ++++++
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  3 +
 3 files changed, 67 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 804f74084bd4..34d22a99da65 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -974,6 +974,11 @@ static int igt_mmap(void *arg)
 	struct drm_i915_private *i915 = arg;
 	struct intel_memory_region *mr;
 	enum intel_region_id id;
+	int err;
+
+	err = igt_mmap_enable_current();
+	if (err)
+		return err;
 
 	for_each_memory_region(mr, i915, id) {
 		unsigned long sizes[] = {
@@ -988,7 +993,6 @@ static int igt_mmap(void *arg)
 
 		for (i = 0; i < ARRAY_SIZE(sizes); i++) {
 			struct drm_i915_gem_object *obj;
-			int err;
 
 			obj = __i915_gem_object_create_user(i915, sizes[i], &mr, 1);
 			if (obj == ERR_PTR(-ENODEV))
@@ -1005,11 +1009,13 @@ static int igt_mmap(void *arg)
 
 			i915_gem_object_put(obj);
 			if (err)
-				return err;
+				goto out_disable_current;
 		}
 	}
 
-	return 0;
+out_disable_current:
+	igt_mmap_disable_current();
+	return err;
 }
 
 static void igt_close_objects(struct drm_i915_private *i915,
@@ -1310,13 +1316,17 @@ static int igt_mmap_migrate(void *arg)
 	struct intel_memory_region *system = i915->mm.regions[INTEL_REGION_SMEM];
 	struct intel_memory_region *mr;
 	enum intel_region_id id;
+	int err;
+
+	err = igt_mmap_enable_current();
+	if (err)
+		return err;
 
 	for_each_memory_region(mr, i915, id) {
 		struct intel_memory_region *mixed[] = { mr, system };
 		struct intel_memory_region *single[] = { mr };
 		struct ttm_resource_manager *man = mr->region_private;
 		struct resource saved_io;
-		int err;
 
 		if (mr->private)
 			continue;
@@ -1400,10 +1410,12 @@ static int igt_mmap_migrate(void *arg)
 		i915_ttm_buddy_man_force_visible_size(man,
 						      resource_size(&mr->io) >> PAGE_SHIFT);
 		if (err)
-			return err;
+			goto out_disable_current;
 	}
 
-	return 0;
+out_disable_current:
+	igt_mmap_disable_current();
+	return err;
 }
 
 static const char *repr_mmap_type(enum i915_mmap_type type)
@@ -1506,10 +1518,14 @@ static int igt_mmap_access(void *arg)
 	struct drm_i915_private *i915 = arg;
 	struct intel_memory_region *mr;
 	enum intel_region_id id;
+	int err;
+
+	err = igt_mmap_enable_current();
+	if (err)
+		return err;
 
 	for_each_memory_region(mr, i915, id) {
 		struct drm_i915_gem_object *obj;
-		int err;
 
 		if (mr->private)
 			continue;
@@ -1533,10 +1549,12 @@ static int igt_mmap_access(void *arg)
 
 		i915_gem_object_put(obj);
 		if (err)
-			return err;
+			goto out_disable_current;
 	}
 
-	return 0;
+out_disable_current:
+	igt_mmap_disable_current();
+	return err;
 }
 
 static int __igt_mmap_gpu(struct drm_i915_private *i915,
@@ -1652,10 +1670,14 @@ static int igt_mmap_gpu(void *arg)
 	struct drm_i915_private *i915 = arg;
 	struct intel_memory_region *mr;
 	enum intel_region_id id;
+	int err;
+
+	err = igt_mmap_enable_current();
+	if (err)
+		return err;
 
 	for_each_memory_region(mr, i915, id) {
 		struct drm_i915_gem_object *obj;
-		int err;
 
 		if (mr->private)
 			continue;
@@ -1675,10 +1697,12 @@ static int igt_mmap_gpu(void *arg)
 
 		i915_gem_object_put(obj);
 		if (err)
-			return err;
+			goto out_disable_current;
 	}
 
-	return 0;
+out_disable_current:
+	igt_mmap_disable_current();
+	return err;
 }
 
 static int check_present_pte(pte_t *pte, unsigned long addr, void *data)
@@ -1806,10 +1830,14 @@ static int igt_mmap_revoke(void *arg)
 	struct drm_i915_private *i915 = arg;
 	struct intel_memory_region *mr;
 	enum intel_region_id id;
+	int err;
+
+	err = igt_mmap_enable_current();
+	if (err)
+		return err;
 
 	for_each_memory_region(mr, i915, id) {
 		struct drm_i915_gem_object *obj;
-		int err;
 
 		if (mr->private)
 			continue;
@@ -1829,10 +1857,12 @@ static int igt_mmap_revoke(void *arg)
 
 		i915_gem_object_put(obj);
 		if (err)
-			return err;
+			goto out_disable_current;
 	}
 
-	return 0;
+out_disable_current:
+	igt_mmap_disable_current();
+	return err;
 }
 
 int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
@@ -1847,6 +1877,5 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_mmap_revoke),
 		SUBTEST(igt_mmap_gpu),
 	};
-
 	return i915_live_subtests(tests, i915);
 }
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..5c63622879a2 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -50,3 +50,22 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 	fput(file);
 	return addr;
 }
+
+
+int igt_mmap_enable_current(void)
+{
+	if (current->flags & PF_KTHREAD) {
+		if (!current->active_mm) {
+			pr_info("Couldn't get userspace mm in kthread\n");
+			return -ENODATA;
+		}
+		kthread_use_mm(current->active_mm);
+	}
+	return 0;
+}
+
+void igt_mmap_disable_current(void)
+{
+	if (current->flags & PF_KTHREAD)
+		kthread_unuse_mm(current->active_mm);
+}
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..58582396bdd7 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -18,4 +18,7 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+int igt_mmap_enable_current(void);
+void igt_mmap_disable_current(void);
+
 #endif /* IGT_MMAP_H */
-- 
2.48.1

