Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8D9A22998
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 09:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B742710E27A;
	Thu, 30 Jan 2025 08:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYhRkIR2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFEBE10E0E0;
 Thu, 30 Jan 2025 08:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738225865; x=1769761865;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=W+PYdxbXSJrRrJtflmoRkQIMHQQdYjklBAyohAtd3Ws=;
 b=JYhRkIR2H3J4wnkpqGN2TQLsIrHpqBiSKVBAaNVmOtorQ/0KL+t+LH8J
 E/qy6FrttEUswNMHm6gXS6iLEzSp7mn3k9o7n6t4ahiJH1rXm35Ou8tuC
 wQWBA/jEtTsgs3GOpsUVuK7NvbK+CFQVhnBiYhKtkzsQTUxE5jYOBoL3q
 IIydlNkiccvW2ki8pPQTgpSAtKkUTuTHqxFpcY6yDrYMT8sjFXvKlSLet
 xv8y+WONVYK8vkl6vV3MP0S3C3bgUpd3xA4tt3On6LYfxv3QFj0tFKKUx
 XyKjrae2eEv/Ghez//iQ4BGBNF0YpeTtsZtvaYhJTPMeutEUZVrBMx3Pb w==;
X-CSE-ConnectionGUID: 6uj7cnVTStSSQoKVa0L+Vg==
X-CSE-MsgGUID: 57q95qO1QKaVGVar7WZFkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="42514417"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="42514417"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 00:30:58 -0800
X-CSE-ConnectionGUID: 5KItIN/rSkS0fZJzFKQt1A==
X-CSE-MsgGUID: jEhzrrPQR7ezOtQRkVRWRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="109172087"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 00:30:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 00:30:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 00:30:55 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 00:30:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=od055OYyi/SD8+I0Wyh2M3rApo/tw3IkuntyXfxrZh8neEfp1wyTbM9JU3mTT4dHbUOR/+OzYuEuSSMnMj+Ke2vvMRaRyQrcpJlrFSoPxl4nD00WUUAcQe8Y6b+GWF0jD7dlP694vKgOvBQDpgsQbv8CI9nHQjaL/zaVbD6+yWaWg9QJ8OF3YUU6SYoy7uzUmnRI4gPVWTy+6qjTBNbAC7k22D2W3E5g1cmAr1ZVALzamawo7UYu592E3bAQ+1KNRFEkB1zF8Zn7XhzzPr33wEGH92wRndSCO3IiTm6VWdZfE+ExAMiSXyBddGoWnPN9Gebc45FLK2nnWrzpospPJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YvsQYvxS3L1ItUSGh3A1xSBaMrogYAmwLVNKedq32QE=;
 b=teunQ+69kGvlvPK/G7FpSkWI6gYT44eRgFCvTylRPsPmWtBDSPisKBZHJhHPA27qyoTICsGBt6UluTWNCW2BaJ+EK52fTxPY9WS75pkEnX7oFHIA4nzqAgYWSDkrFMCFuV6Oq9srqIG3SkoXE8TrVx9uRcrQVjzlcv9Ady0+QEJ2H2QRwnbwrgZYmkatTbtEOBpuhJbbJHHTxVDZBOe3u9UT/6qHbHxrBRvUcHxzqd16Y59DUZ4dHU0SFwGgusJSQ9Yo2SzwAJMuWIs1b6RgYGc/hT/aiseYWnMKdflpkJelSNelRrgLjI8kWZjPrVB3hrVbo/t+O1SRhRRrDxWxeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by CH0PR11MB8085.namprd11.prod.outlook.com (2603:10b6:610:183::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 08:30:51 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 08:30:50 +0000
Date: Thu, 30 Jan 2025 14:00:44 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/i915/dmc_wl: Add extra_ranges debugfs
Message-ID: <Z5s3slC8sQm6NGDY@bvivekan-mobl1>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-4-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250117220747.87927-4-gustavo.sousa@intel.com>
X-ClientProxiedBy: PN2PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::15) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|CH0PR11MB8085:EE_
X-MS-Office365-Filtering-Correlation-Id: 07e5e88f-47a9-4fab-a3ed-08dd41086768
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QU1zZGZVVHQ3K3JsTUtCdEdmOVREQWthMy9WbFpMd242K29ZdFFQbmNEc0hk?=
 =?utf-8?B?NnJWQy9FNGZ1ajdtWDUxaWRWZEUvWUxDQXRFMnVVUCszUDZKT1FuSHR0UmlG?=
 =?utf-8?B?TlRHT3ZyU3RpR0pQQnBBRlB0UWk2TmdZcDBBOC9wRm9iUlFLZ0t5TXRVVGNx?=
 =?utf-8?B?SlhpZHU4TUFIaEZLdnpVcytSQlI2dFc1SVB0RGtENEFwZGUyQnBxa01Qam5S?=
 =?utf-8?B?T2lsdmZ3T0Z5VmZUTXNSd2ZabS91djJrUHdLNDJjWWV0WERrRURjWVQrYzl5?=
 =?utf-8?B?VUZQblZ2TlMzbjFrRU5GOS9PRDg5QXYvRitjaHljUXVaQlpyYVRnVFEzT1NL?=
 =?utf-8?B?WGtOckUvQWhNN3JDSy9MaFV0cGdDL2d6UVJGNDhmNEx0T25TdGRmN21LV3FZ?=
 =?utf-8?B?WlEzVXJEWmg0NjIzZEdxWFFla1dkSXJQblhTWFZMWmErc1J4TUNCK0VtS3pn?=
 =?utf-8?B?MkZRTi9ZKzRZS0YxWkMyVlJhNTI1QTJHQldKeklkaFh4QnNibmZJVFYvdGZW?=
 =?utf-8?B?MU13K24vdkc1enVWZTNyR0pPckcvNEdVazZQOWRLOStnZFhwaTFsbkpjK01x?=
 =?utf-8?B?Z1Q2VEdMRit2d3hNOHBBNEkrZUo1bnp2OWZmZDNCZzdiQjJhUjVicWpITE9j?=
 =?utf-8?B?WGVheHc2eUlScDhKRzV3dEdZcWRLRUF1UFk1S25SVWUxQVBjaE5mVXVreG5l?=
 =?utf-8?B?Vm1XUk1INTI5VjZXY0ZjclhxSmZVNGdNSDFZM0QzeEV1UHlPSWQyZzlURFo1?=
 =?utf-8?B?ZlV2S1I3RzVuTzF4TjRFTlJCZkFTNTIxZnJaSVcrUFJNenZRcXpKVldFRy9Q?=
 =?utf-8?B?SGJ1T2NoUGREUDJBSkFYYnFPaVByT09LVUV4ZSs2NU9UVXpvUzZuc1pHdmdM?=
 =?utf-8?B?ZUE4cFBUQ2FlT3UzVU93WFI2djVPZ2JxZHFYWnZ3ajNaNWtYOFBsalcvbFpn?=
 =?utf-8?B?T1gzOWU4ZklBWkRSOXA4cGRZM2JBYk5ldmt3RmlsdGZHVXBnRFZxckZrdmxx?=
 =?utf-8?B?QlBQVXAzSUVqb2hxTWRUY3IxOEpyNGQ3WjRTWXNFcWpXQUxBL2RiQUg5aWtL?=
 =?utf-8?B?NVdnL0pja1B1bWJzckN6bm83YVRpcmhTYzZ5TlBKb1BiWHBUSHkwMFQvNDFJ?=
 =?utf-8?B?RElncTFEc0cwZ1JLMzFsN2hHb1p0TG4xdVVsRDlNOXNQWWFEcnhDaitWcGJK?=
 =?utf-8?B?U29ZNzExVHhuWVUzMWYzNU9YcHdwM2V3ZmZVandKa1MwRkFicUxwQlJwVWNi?=
 =?utf-8?B?U09YaGpUd1FXcFQ2T0Q3M042T2F6Vk8xdG94SHZRUXJqZFNBdmNFZnozbndO?=
 =?utf-8?B?V01NUEhMditxNER5NzVnSG1VKzZiYW9uRDdwVm4yeFU5UzIzTzZDbUNjaCtz?=
 =?utf-8?B?Q20wdkQxTnNjWThSUDY4b3RObzlPMHIzV1U1WHdMTlFVQWJtbmxndHBkVU1t?=
 =?utf-8?B?d1FlbmNNdTVmQUw4SHFiUm9ZQ2wxMjdISGxtYnYvRFhZeVhDR0Y0UWRSUlBo?=
 =?utf-8?B?NGFpdU1LS1hONjVyRXNpOWlTUklObUlUK1NBemR1WDlRUEZvS1d5Tnh0VUhC?=
 =?utf-8?B?ZkpSNjhrRkE5a3g1eGk4d1dSYkRCNXQvSXVhekgvTkc3MDFmRVptSzdCWHBy?=
 =?utf-8?B?UlJ3YUhVZ1BtRlVveXRBaFY4eDQwd3Z6WjdNOEtwVFdtbktINVNwdCtPOHpT?=
 =?utf-8?B?M2Y1RE5RTmdXa2V2WE1vNFJhWGtkd3lVM0s3bXE3R1FORFYrNHc3aEs3NFU0?=
 =?utf-8?B?ZnNqQnFiYzd5QkVzWkx1dUNxSXRnUFJReWg1SVJDallXMjdFcXpadmZPaWkx?=
 =?utf-8?B?R0s3WGdLc0xzWSs3bXVMdzVBaDhIOGl6VHBMdzAwaGwxR3lFbGdvTHFabzRy?=
 =?utf-8?Q?DXUB0Fmouz7Tw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NndOa0cxOTdodWZSSmJjZmlCTGVlS2lXVUpHNEQvb3BDQlIzenJTaFdsNzM5?=
 =?utf-8?B?ZGRxb1k5ejEyVWxQcmNKejdtNm9nWEgyREdxYXlaaXY1d1BUeE1ZZHRWRXM1?=
 =?utf-8?B?MHhCZ0JHcnNLcXJHeW9BeCtPUmd3Vm1ReHNDbTVKU2wwbmlxVk03UWhzWUIx?=
 =?utf-8?B?WGpFZTk2OFVENlRhVWFzNGh2MHFFRWgzZFd1Sm1oYS9rbmRPcG14TWN3N3Nh?=
 =?utf-8?B?dFpyeWNTbVcrZUd4d0h3aVdyV0dPcTQ2ZDJ0ZHFhNUQwa0o1bUk3NERQcFpW?=
 =?utf-8?B?TjFtbUR5M0t3NkJNZ09ZL2t2cGMyVHUxamh3alZSUWp0d0FhS3JPM3lNRDFG?=
 =?utf-8?B?WWxSK3dOaWhzeXpsM0V3Q0RNUlZmUWo5ZkZ3dGpISWRCRlF4MGI1eWVqdnJS?=
 =?utf-8?B?OFF6NVJ5elNPTTEwR0ZadlppSlJFWUFwcTdsL3RXYXJLdFg5cDVyVjFkMEh3?=
 =?utf-8?B?dGdMYWw0SFdaVnphbWtZeE0vZmY2TWlmVHhrc2hKUzBPeUx2WXBKNWw5T095?=
 =?utf-8?B?Y2JvZEtuNXVxQU1xTnBHb1hrZnZKR2pRQ1VBL1gvK1o4MlRmMU84WG9uWkJj?=
 =?utf-8?B?cUFYait1b3ZhcDZ0dExIMW0zekJNMjNGbE03bU1SV0ZjNjV0WFBrM0syUW1R?=
 =?utf-8?B?RWQvWVhzTzI3ZktuWi9VVWRrSGhUN2t1WjRhbngvU3BwaGZxaGRmRElXYzJj?=
 =?utf-8?B?N2YyY1hVV2MwdXExMEEwWHVMYjhzOTFzTE5pQzZCMU1jUThESkhVNEJWQXFS?=
 =?utf-8?B?UC9lR1N1WUs2TDFET0dycE12ajVWSldzaFMwRXhUbUVKZkNpbGVMZjFHcm1G?=
 =?utf-8?B?VXkwWW80Mk9FRDdJQlhKWmRvcStCT3pqYzhvcEtyZUJBeE9ybE1Vd3RVVnE3?=
 =?utf-8?B?bFNNYjhEU2lISUhUcnVhWHBtc00wN3pBQXBPU1lJVDgvb0hwQnNPOGlkNUVq?=
 =?utf-8?B?VEhMMFYrMkdWZDZoVFU2QmsxMGJaS0E0ZjNxalpTc1VQOG80c0NMQnIrYTha?=
 =?utf-8?B?S1RPWkZSNS9QVEJicmFJeHpnQVpkbDk4dnZ2RlE1K2tvSnhwTSt3WHFOQjU0?=
 =?utf-8?B?Rlg1blhZQ3NDZHR4Qy9UU21SM1NRRWM1TXI0UWFHZ3VNTERBdW12VXJ6TVBy?=
 =?utf-8?B?RnpDeFJleUFmdmZldDhnck9sRXY5NWpxcjNiR3NuZVRqRDhoWmFIUjNaaXZm?=
 =?utf-8?B?RjcvaVhwNkpSaGV6ZGNURXNnbmt4UHB0eXVub2JJWktCU0JHWU9xVXBJQmNs?=
 =?utf-8?B?MnJvcURCcXhHRUQwZWYvS0ttbVNQeU5VZUsyYnkveVMvQXN5MXZVQmpaVVkw?=
 =?utf-8?B?V3prNW5xN3M2cDh6Ym9LOGMzaERscXZ1L2NORXFFVjFLWFplTmdrZFQwYVdq?=
 =?utf-8?B?VjJJMlFNT0VtM1M0ekJsRGVvTnpsSEJhSWx3c0xudzI3ZXpNbFZnU0tWaTZD?=
 =?utf-8?B?Z2NGTlY0UlZON1J5SFoyQ0dsOXQ0NUZpVVlxOEQwbDlzYUx5cWFNMVUvNEho?=
 =?utf-8?B?REJTRmd6ekRzalVHditzdVJNYVlBdE9QQXV5a2VDemdwMEpIcEFFWG1lYUxy?=
 =?utf-8?B?RVExb0VNUEMzTmIvemt1Y1dVbkpFclZxTUw3MUdOS1p0YVVmWDhxSnpsMTRH?=
 =?utf-8?B?SXRxRDc2Y2pydEc5SXBSZFhIejl4TzZoNFFieURpbWhCOTJsYXE2NEFRTHc5?=
 =?utf-8?B?ZkFKTVNvVnlheWxFNHcrT0JxYjdoTmdIZXdSTzlUQVpFeGZrdXlCbWI5dWlH?=
 =?utf-8?B?S1lBR1JrV05OQzZJRUxzd3FMN21BdUJFSHBmMDVxRXNwYUNvZEp5ZzV0L0hq?=
 =?utf-8?B?VEM5N1lESEZLbkVEZGttUHhLT29HcEFSeUNEaGhiemRVR2hxWUhWMEo0YnZw?=
 =?utf-8?B?eEJ1QUxaSW5zRGN4QjBiOUZHSmRzL0dCNk51TXVqNEM1V3VCLzJMRTQ3Z0JZ?=
 =?utf-8?B?YUxpU3BwZ0oxelZlcU0yeFhkL3d4NmtGOVRJU3cvZjVwaGp5TlFMU3hKdXM4?=
 =?utf-8?B?b1lla3FaN3NvamFiRVdqR25FOW5kR0p3TWtpVlJ0dlpOZHZZMUVUQXdqOWJ4?=
 =?utf-8?B?a3pUY1NMYUVKVmZBVUNKY2NENHU1OXZDOXBmeTFrMFJxSDdXSTdVRzRKYzNw?=
 =?utf-8?B?L0JwbnRGSDRrdWFydTJoTFgwRnBYbkwzZGxNdkoxSDVQOVMyK3dBNzhpd2I3?=
 =?utf-8?Q?O86ilVod4P8xde+nD/O2SYk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07e5e88f-47a9-4fab-a3ed-08dd41086768
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 08:30:50.8437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o9k9p5LmR9xIAST9tDxRWNp4xkf0JDPUocATe0iOdu+oD4pw/pfeaw1YRb1mXnrG0SdUXNXNTeOHZkNCqgCP3EvPEquwNJh/BiLl1Qyz05AzeWOaN6a0G+fLi4RjGjC7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8085
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

On 17.01.2025 19:06, Gustavo Sousa wrote:
> We already have a way of finding the set of untracked offsets for which
> there has been one or more MMIO operations via the
> "intel_dmc_wl/untracked" debugfs interface.
> 
> However, in order to try adding one or more of those registers to the
> set of tracked offsets, one would need to manually change the source
> code and re-compile the driver.
> 
> To make debugging easier, also add a "intel_dmc_wl/extra_ranges" debugfs
> interface so that extra offsets to be tracked can be defined during
> runtime, removing the need of re-compilation or even module reloading.
> 
> With "intel_dmc_wl/untracked" and "intel_dmc_wl/extra_ranges", one could
> even come up with a search algorithm to find missing offsets when
> debugging a failing test case in a similar fashion to git-bisect. Such
> an algorithm is subject for a future tool, probably implemented in
> another repository (e.g. IGT).
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Looks good to me.

Regards,
Bala

> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   7 +
>  .../drm/i915/display/intel_dmc_wl_debugfs.c   | 254 +++++++++++++++++-
>  .../drm/i915/display/intel_dmc_wl_debugfs.h   |   7 +
>  3 files changed, 267 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 3686d4e90167..c9740250be73 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -276,6 +276,13 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
>  	if (ranges && intel_dmc_wl_offset_in_ranges(offset, ranges))
>  		return true;
>  
> +	/*
> +	 * Call to check extra ranges from debugfs only as last resort to avoid
> +	 * taking intel_dmc_wl_dbg's spinlock.
> +	 */
> +	if (intel_dmc_wl_debugfs_offset_in_extra_ranges(display, offset))
> +		return true;
> +
>  	return false;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> index 41e59d775fe5..1493d296ac98 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> @@ -3,6 +3,8 @@
>   * Copyright (C) 2025 Intel Corporation
>   */
>  
> +#include <linux/kstrtox.h>
> +#include <linux/ctype.h>
>  #include <linux/debugfs.h>
>  
>  #include <drm/drm_device.h>
> @@ -13,6 +15,7 @@
>  #include "intel_dmc_wl_debugfs.h"
>  
>  #define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
> +#define DEBUGFS_EXTRA_RANGES_MAX 255
>  
>  /*
>   * DOC: DMC wakelock debugfs
> @@ -31,7 +34,8 @@
>   *   offsets to be tracked and we fail to realize that.
>   *
>   * To help capture these cases, we provide the intel_dmc_wl/ debugfs directory,
> - * which exports a buffer of untracked register offsets.
> + * which exports a buffer of untracked register offsets and also allows extra
> + * register offsets to be tracked by the driver.
>   *
>   * Untracked offsets
>   * -----------------
> @@ -78,6 +82,43 @@
>   * Once done with it, the logging can be disabled with::
>   *
>   *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + *
> + * Tracking extra ranges
> + * ---------------------
> + *
> + * After looking at a list of untracked offsets via intel_dmc_wl/untracked, it
> + * is likely that one would want to check whether tracking a suspicious
> + * set of register offsets (i.e. asserting the DMC wakelock for them) would
> + * solve a bug.
> + *
> + * Instead of adding the offsets manually in the source code (which would
> + * require re-compiling and reloading the module) the intel_dmc_wl/extra_ranges
> + * debugfs interface allow defining extra ranges during runtime, which can
> + * significantly speed up debugging time.
> + *
> + * Every write to intel_dmc_wl/untracked defines a new set of ranges to be
> + * tracked. The input format is a whitespace-separated list of ranges and each
> + * range is in the format <start_offset>..<end_offset>, with ..<end_offset>
> + * being optional. Note that <end_offset> is inclusive.
> + *
> + * Examples::
> + *
> + *   # echo 0x44400..0x4440c \ # Track a single range of 4 registers
> + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + *
> + *   # echo 0x44400..0x4440c 0x44410..0x4441c \ # Track 2 ranges
> + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + *
> + *   # echo 0x44400 0x44410..0x4441c \ # Track a single register and 1 range
> + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + *
> + *   # echo \ # Do not track extra ranges anymore
> + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + *
> + * The new set of extra ranges take effect after the write operation, meaning
> + * that the next MMIOs made by the driver for registers that match those
> + * offsets will assert the wakelock (besides the offsets already hardcoded in
> + * the driver).
>   */
>  
>  static int untracked_size_get(void *data, u64 *val)
> @@ -176,6 +217,189 @@ static int untracked_show(struct seq_file *m, void *data)
>  
>  DEFINE_SHOW_ATTRIBUTE(untracked);
>  
> +static int extra_ranges_show(struct seq_file *m, void *data)
> +{
> +	struct intel_display *display = m->private;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +
> +	if (!dbg->extra_ranges)
> +		goto out_unlock;
> +
> +	for (int i = 0; dbg->extra_ranges[i].start; i++) {
> +		if (dbg->extra_ranges[i].end)
> +			seq_printf(m, "0x%08x..0x%08x\n",
> +				   dbg->extra_ranges[i].start,
> +				   dbg->extra_ranges[i].end);
> +		else
> +			seq_printf(m, "0x%08x\n", dbg->extra_ranges[i].start);
> +	}
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	return 0;
> +}
> +
> +/*
> + * Parse *p to match the pattern <start_offset>..<end_offset> and store the
> + * offsets into *dest, if dest is not NULL.
> + *
> + * Leading whitespaces are ignored and ..<end_offset> is optional. Both offsets
> + * are expected to be expressed in hexadecimal.
> + *
> + * The pointer *p is updated to point at the next character in the string for
> + * parsing a new range.
> + *
> + * On success, 1 is returned if a valid range was found and 0 is returned if
> + * there is no range left to parse. On error, a negative error number is
> + * returned.
> + */
> +static int parse_single_extra_range(struct intel_display *display,
> +				    char **p,
> +				    struct intel_dmc_wl_dbg_extra_range *dest)
> +{
> +	char c;
> +	char *s;
> +	char *range_substr;
> +	int err;
> +	u32 val;
> +
> +	while (isspace(**p))
> +		++*p;
> +
> +	if (**p == '\0')
> +		return 0;
> +
> +	range_substr = *p;
> +
> +	/* s is the <start_offset> substr */
> +	s = *p;
> +	while (!isspace(**p) && **p != '.' && **p != '\0')
> +		++*p;
> +	c = **p;
> +	**p = '\0';
> +	err = kstrtou32(s, 16, &val);
> +	**p = c;
> +	if (err)
> +		goto out_err;
> +
> +	if (dest)
> +		dest->start = val;
> +
> +	if (**p != '.') {
> +		/* only the "start offset" was passed */
> +		if (dest)
> +			dest->end = 0;
> +		return 1;
> +	}
> +
> +	if (*(++*p) != '.') {
> +		err = -EINVAL;
> +		goto out_err;
> +	}
> +
> +	/* s is the <end_offset> substr */
> +	s = ++*p;
> +	while (!isspace(**p) && **p != '\0')
> +		++*p;
> +	c = **p;
> +	**p = '\0';
> +	err = kstrtou32(s, 16, &val);
> +	**p = c;
> +	if (err)
> +		goto out_err;
> +
> +	if (dest)
> +		dest->end = val;
> +
> +	return 1;
> +
> +out_err:
> +	while (!isspace(**p) && **p != '\0')
> +		++*p;
> +	c = **p;
> +	**p = '\0';
> +	drm_err(display->drm, "invalid DMC Wakelock extra range: %s\n", range_substr);
> +	**p = c;
> +
> +	return err;
> +}
> +
> +static struct intel_dmc_wl_dbg_extra_range *
> +parse_extra_ranges(struct intel_display *display, char *s)
> +{
> +	struct intel_dmc_wl_dbg_extra_range *ranges;
> +	char *p;
> +	int num_ranges;
> +	int err;
> +
> +	/* Do a first pass and validate everything. */
> +	p = s;
> +	num_ranges = 0;
> +	while ((err = parse_single_extra_range(display, &p, NULL)) > 0) {
> +		num_ranges++;
> +		if (num_ranges > DEBUGFS_EXTRA_RANGES_MAX) {
> +			drm_err(display->drm, "Too many DMC wakelock extra ranges, maximum is %d\n",
> +				DEBUGFS_EXTRA_RANGES_MAX);
> +			return ERR_PTR(-EINVAL);
> +		}
> +	}
> +
> +	if (err < 0)
> +		return ERR_PTR(err);
> +
> +	/* Now allocate and do a second pass storing the parsed ranges. */
> +	ranges = drmm_kmalloc_array(display->drm, num_ranges + 1, sizeof(*ranges), GFP_KERNEL);
> +	if (!ranges)
> +		return ERR_PTR(-ENOMEM);
> +
> +	p = s;
> +	num_ranges = 0;
> +	while (parse_single_extra_range(display, &p, &ranges[num_ranges]) > 0)
> +		num_ranges++;
> +
> +	ranges[num_ranges].start = 0; /* Sentinel value. */
> +
> +	return ranges;
> +}
> +
> +static ssize_t extra_ranges_write(struct file *file,
> +				  const char __user *ubuf,
> +				  size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_display *display = m->private;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	struct intel_dmc_wl_dbg_extra_range *old_extra_ranges;
> +	struct intel_dmc_wl_dbg_extra_range *new_extra_ranges;
> +	unsigned long flags;
> +	char *kbuf;
> +
> +	kbuf = memdup_user_nul(ubuf, len);
> +	if (IS_ERR(kbuf))
> +		return PTR_ERR(kbuf);
> +
> +	new_extra_ranges = parse_extra_ranges(display, kbuf);
> +	kfree(kbuf);
> +	if (IS_ERR(new_extra_ranges))
> +		return PTR_ERR(new_extra_ranges);
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +	old_extra_ranges = dbg->extra_ranges;
> +	dbg->extra_ranges = new_extra_ranges;
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	if (old_extra_ranges)
> +		drmm_kfree(display->drm, old_extra_ranges);
> +
> +	return len;
> +}
> +
> +DEFINE_SHOW_STORE_ATTRIBUTE(extra_ranges);
> +
>  void intel_dmc_wl_debugfs_init(struct intel_display *display)
>  {
>  	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> @@ -198,6 +422,8 @@ void intel_dmc_wl_debugfs_register(struct intel_display *display)
>  			    &untracked_size_fops);
>  	debugfs_create_file("untracked", 0644, dir, display,
>  			    &untracked_fops);
> +	debugfs_create_file("extra_ranges", 0644, dir, display,
> +			    &extra_ranges_fops);
>  }
>  
>  static bool untracked_has_recent_offset(struct intel_display *display, u32 offset)
> @@ -249,3 +475,29 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
>  out_unlock:
>  	spin_unlock_irqrestore(&dbg->lock, flags);
>  }
> +
> +bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset)
> +{
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	bool ret = false;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +
> +	if (!dbg->extra_ranges)
> +		goto out_unlock;
> +
> +	for (int i = 0; dbg->extra_ranges[i].start; i++) {
> +		u32 end = dbg->extra_ranges[i].end ?: dbg->extra_ranges[i].start;
> +
> +		if (dbg->extra_ranges[i].start <= offset && offset <= end) {
> +			ret = true;
> +			goto out_unlock;
> +		}
> +	}
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> index 9437c324966f..ae61217a2789 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> @@ -11,6 +11,11 @@
>  
>  struct intel_display;
>  
> +struct intel_dmc_wl_dbg_extra_range {
> +	u32 start;
> +	u32 end;
> +};
> +
>  struct intel_dmc_wl_dbg {
>  	spinlock_t lock; /* protects everything below */
>  	struct {
> @@ -20,10 +25,12 @@ struct intel_dmc_wl_dbg {
>  		size_t size;
>  		bool overflow;
>  	} untracked;
> +	struct intel_dmc_wl_dbg_extra_range *extra_ranges;
>  };
>  
>  void intel_dmc_wl_debugfs_init(struct intel_display *display);
>  void intel_dmc_wl_debugfs_register(struct intel_display *display);
>  void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset);
> +bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset);
>  
>  #endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
> -- 
> 2.48.0
> 
