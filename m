Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7CBA5F8AA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8810610E8BC;
	Thu, 13 Mar 2025 14:41:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/X0E2cs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D38BC10E8BC;
 Thu, 13 Mar 2025 14:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741876878; x=1773412878;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2xEhi5g0YyAyQZDdJXRdi/SPVWELwUGMQLEegK3pwdI=;
 b=c/X0E2csDygUrQuIiEyThvR4rVM8eBjkmJmf8Z34vu3WDxTTyxlpNUvf
 nfyxRhSfAR8P/pfv+VM5z1P6P8+RP/6TS8QjDcjCUEQYqbDpR+0YMw0Mq
 7If7rlYWWPPMs49x4OhIPCaRhwG9cAdB1cM4+225/wMBG5O4haWzUx4Bm
 gowfWxaCWs0efusoOyj/VD6OvCFpAFZdP746T9vsDF0daRL2djSFPnFwP
 42PfaA4Nhyy2NZEhIvuxwFPW3LDhFGHItTShOCUYaGi08swkoldinwhD5
 cN3THZ2GwSEcpcAo/rDimR+9KMc2AWtEWknGfVHe6i0JeXCQU/EHzwvzr w==;
X-CSE-ConnectionGUID: 4+jlneUWQYG0F9sG8CHe9A==
X-CSE-MsgGUID: LSc+nJ4tSDuQNbv6EYZ3wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="43176773"
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="43176773"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:41:17 -0700
X-CSE-ConnectionGUID: rK/WwlA+ScWFuxJasfmNBw==
X-CSE-MsgGUID: o2+gqoajSmi/oH/blKcJUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="126034487"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2025 07:41:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Mar 2025 07:41:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 07:41:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 07:41:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lhaxlSrZydjuiUaBpmxAvHquTiWiFFJtjrLZwZUv5xWz3/fH3PAGDzojqrW/qwieWzz9hzEr0yfB0Z0fFT+B//TGieYXLHfpDMhdGEEyKmauzvihWnybyHIN1UsiNB6F3OnjRvUJctXE25okLvLG8EdVx59C3NnxVG4FyVbqRs11AeITR7LdyQk/ukF4SoOhqXWDXAe6qn923MtK//xrcGGFcC3xZefCUpaXqyXAmR8hdvGUMPRZA8Dt93q+uV4AlfZ9LR/yTARhqJ2YgHWFIQ/WkeqhOvIwDZ+qMLjwpqEzb9QpEgma9LZqfuFadXDMYa4DiJS95+dB32SzHpEpjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmNt01cgLXIQO7Hws1D5YVLRuRT1sp9gUrI1Mcm30os=;
 b=C7+Xwvom0F2kvlxLmeOkSdCoE+84CP/6s1iYkH1XdXpwAHwI6dfFMP6Tnb5zPfsWW29ErsS0uPa6XkQzrZSBebedfpeQbh5HIFvFF6d8SdBMoM15p8gNIYo/l9meABOVZO0ZqB6NdaxLUsDL1I0d0HEjvMRGpTfhDXe1m5cSLv/8+fFp4j5dlI2qHibUTUlTxQlatgfjNBy2nzEPGrR/coil0h+N7DYMililDLYjCF6C2Y3v65t/PC8SeWmxeEVklwd/0gZhF7Bh1Uhzw3722tPVHL+N6S9y51X6HkdTxc5ZIKqbEhfnkGPoEt2U/p5px9FF16ZhyE0N9oGca+Hjlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by CYYPR11MB8387.namprd11.prod.outlook.com (2603:10b6:930:c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Thu, 13 Mar
 2025 14:40:45 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 14:40:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
Subject: Re: [PATCH v5 0/3] drm/i915/xe3lpd: Update bandwidth parameters
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 13 Mar 2025 11:40:39 -0300
Message-ID: <174187683980.91144.1128973030720577233@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0068.namprd03.prod.outlook.com
 (2603:10b6:303:b6::13) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|CYYPR11MB8387:EE_
X-MS-Office365-Filtering-Correlation-Id: d892359a-f943-436a-7ca2-08dd623d09ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3V0ZlhXaWdGUGowdkhqcWQydHZtVmY3S05xUUkrbitNeVBheFNHMTBHZHFv?=
 =?utf-8?B?TmxvbEFJdU1oc3I0U3d2SVpTT0t1dTljajh1b0hvRmVqM3IxeUVOK25WdlRC?=
 =?utf-8?B?MGt6eUVxWllXR05La3pRdUxKVXJnSXBzbTlrOGp1MVIvTG9uVTNQYzdxVnFk?=
 =?utf-8?B?dk4vdkZFT3lUWDNuWitmaUJNelhtOEFOTFZ6cmRRQkdYWDJBZ09BT1UyVWtN?=
 =?utf-8?B?b2RpdHZSR1prQzFwQkZucW1ZY0V0VGozc1FXWk9xUUxmUmF6VUh6RTl5WGVj?=
 =?utf-8?B?d1BlTjZOQ1pzcWtoVkZSUE9BYkM4ekVZaGFDSSt1TGJObFlXT0E1YUlLV0hs?=
 =?utf-8?B?RVFLdmZNcEZJOGZrdHlZNHh5NHpJa3hPQnc0NkYyN0tFeFhIb3haWFAyZUJR?=
 =?utf-8?B?UmdBemxpbWFjT3lPcXpCUkJzSVlDSkFsUGcrcmpnK2d0SFNrZ0Y0eXFVckhD?=
 =?utf-8?B?aGhXSDhzY2tyTFM5KzhkTXZOVFdpSkZTNjlyem5yOURzL1U4UW00OFIzeXhX?=
 =?utf-8?B?U01wejI1bklyQzNjMnF0SmJPR1drRW5RajA5djFvWUlXMzFDZE10R3B0V3FC?=
 =?utf-8?B?ZUZrd3NhNGtEN0NXdkc4TjFDNmNxdnZpZmRwWGh5cmgxNXFhMG9MWmZDR1Bu?=
 =?utf-8?B?bzNEbzdkVjlTY2tIVE5vZ0FQV3l6MHVQczRobVJoN2dhalNZOGZ2dGNnUmJY?=
 =?utf-8?B?NWN0TjJMLzcxazl3SnBDN2J3Mm0ybHM1V2tXSDc1cVgxYWtCaG53L25FeGdL?=
 =?utf-8?B?YS9Ncm5ITEp6aEZoR2xQRm5teWRsMmVrK245VHRQemNvMEsxcDMxd0drL3BK?=
 =?utf-8?B?VFdLS2hXeE1YZ0IzN3VTVjczVUFEMjBWbUZFVStURCt1K1JmdHJJK3hHTXN6?=
 =?utf-8?B?OVEyWmZkYjVRenBIN2VBc2dhak8yOTNuSEIrYjZwTFdtcXU1dUJYaUhlWHp1?=
 =?utf-8?B?V2FBM2hsU2g0blBWQ3p4RmhvTk9INHZGb25oWVdwbFNrR1RnSmRCY1YxYy8w?=
 =?utf-8?B?cHlkcElxYU9ud3JUTlJYSnh6QWlBS25jMUUzeVZudEc3b2ZIbmE0YnIxYzVH?=
 =?utf-8?B?dGZVUmRCZUhFS1UxQmNRNHF0RVFHUTFOUzYrK3N3aHMzMVFwOXA0aFhNVWJK?=
 =?utf-8?B?Tlo2WVlXOHdIQUZFV056V0ZMYUViUFVnbC9OS2ZuYXR6VCtudWNDc3pyWVpI?=
 =?utf-8?B?N2UzOGtQejlTTUUrZlRUY0N3Z3U1Z1ExdUNLQ0dIQjZQWW5sY2VmRmxQTXJ6?=
 =?utf-8?B?VWpCZCtwTnl1aHdyY0xndmFXVnU2YkxNWmFpbS9KclVZYVBhTnBuN3ZTVUpV?=
 =?utf-8?B?OUxpTXh3N0dWdE9CUjVSRktjdGZwdWVmS3JnTHU0Vkg3d1J0bEs0SGpDSUJ5?=
 =?utf-8?B?NHlSVUNnNmZhNVR2TWQ3WUZwN1lOYTNHcEh1MzNubUNpZ2IxQ2lLNXQ4T2lS?=
 =?utf-8?B?UDJsRWltakFKWnFuQUZIWnk2YzBMUUZnVXRMZ1N2NFdVS0tTbUZwa2ZwUDdw?=
 =?utf-8?B?bkFYRVVuUUJrMk9FUTlWYTZhK0hsem84cGduMHE4eld0eDEvblFUSW5sUEhu?=
 =?utf-8?B?QlVBcGpqV0FIR3hkSHpaUDRleGNjZUNHbTBFVHRrSWI5UE45NlZtWVMyTnZ3?=
 =?utf-8?B?T1NRUWxKVzJXNlVRRzgwVlZxMkl0bGsxZDNWSU1BbkZlWHVOb1lqMnE0MGdi?=
 =?utf-8?B?aUFQTFZKeEhvM0toVXhIdmFSRFRTK0xKV0N0U1RyMUw2N1hKMlBIQmhGdEtp?=
 =?utf-8?B?SkhINEwybnIrRHFyZmdFamd0VGtFdXY2YUl6OFdEYjdpUDljOEphZzZBR3Nq?=
 =?utf-8?B?Z0ZINHJwQlNFczU5cjZUNlU3WVlqa2pWMTFWc09WeUt1SmVCa2Y1cEhhb0wv?=
 =?utf-8?B?b1hCVTRlOEFLamhGblZhSm5TcEtYbTZNcFJNeTlLcWdnUW1qYUZEQXN2eVBm?=
 =?utf-8?Q?7Ag1q+cn0IlGvAp93qx5/ZPrHkt/33TA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHdVWFh5SzJraFBSWUR0NnVjcFhZNElkM3N4d1BFM1BudDdrMW52djBucFBv?=
 =?utf-8?B?aTBuWmJTamMxeGVNaEZ4OTE0NFhaM3BzK3lFSURBTlFkWjZVT29LbDRwQmNS?=
 =?utf-8?B?Y3Npck9VdVArNUhSTHBKeTZLR1U3RWZwc1NFazJrbnpKMUdwK1BPS2lBbUpM?=
 =?utf-8?B?UE1xckdYTGExNk9wTlBJQVVRbG0vUUtsZTVMUWZoR1ljZE1UaTBZWWZGT3hX?=
 =?utf-8?B?NmVFUUZHKzFyRldFYVU4OGlOYit3dHc4SzVyeUVPUU81VTA2cUlNME9OMzNh?=
 =?utf-8?B?MkpPTkZoL1UwTHNLQzBiOSs5dy9vNUxhdEtzZ3pJelJlUUU5MWQwclBVQUNZ?=
 =?utf-8?B?K1JBVTY5QWl4WVI1cVMwUVVuM1J1QTJieVJpRm0rcmh2R1A4MjRxOGZ3UXVp?=
 =?utf-8?B?ZWhKSERYVWFFNnZxU3ZuWDIwRzdwU3hnOWtBTFdMa3ZlM1h1bHBndk1WN25v?=
 =?utf-8?B?ckh5amQvNUIwejlSK1lLWEo4dmhhVGV2WnVCbUFzZWwxbzhlck40SWw4RE9o?=
 =?utf-8?B?c2xvbm1qdkFHVWY0SGZRSXFiVUJuUENFM2YxOWg2NmtBSGZXYzhDSGdIaDRk?=
 =?utf-8?B?VnhhNWxJUVNJVExUcVNsbG5OdFRTOElpeHNmS0hIUnc0eGxqWHZoOFNtSDBR?=
 =?utf-8?B?TVNCUEZyazBMUkNadUxFeDVVN2g1aUdpVWFvV1dmdmRBOTgwN2pGSEtZWnd1?=
 =?utf-8?B?cXJBMW9yQnQ5bDE3S3g4UDBaRW5TQ2RmY1BodnJvU2FXTGtsTy9IMFk1QytC?=
 =?utf-8?B?Sld3N2Nma08wZHNzZnN4YmdjNVAzVDMrMWpjWlZGOHdpVXJJbXptUzRlalVq?=
 =?utf-8?B?Mll3aTJkUnNUN3AxaUhCOHRPNnhRZkhHSjVmdzE0NkJwRzRVRlp3bG52b2pP?=
 =?utf-8?B?OHVMTnNWcmZRdTBtYjR2ZkpMNkRTbi9KN1djZEhQNnlRL0owVnUzVDJQRkFH?=
 =?utf-8?B?cUFhdEdIeXNCcENhc0lQaEFZNUVDbGUyTG82d3VGTmNpemJob2dST1F6Slc3?=
 =?utf-8?B?VU9YVCt4REV5WHBLNk5IOENjSnZkQ2w3ZVJUeDNML2N0WXEzcjE1Q0tHNGtO?=
 =?utf-8?B?S0NUTHNFaG9QUGgzTjI3anJqZzkwQURYdW9qTWo2a1A2QWwrRnlWQ2ZZeFNU?=
 =?utf-8?B?RnRxcytuZC8rSVUwYk53RU9qQmNBTDQ4OS9NajBnd2M2NkNmMTlKSXZzRFJG?=
 =?utf-8?B?bGN4dzhWRVNtdHluYmJZUW1tMCtNaGNBK2ZUclFhK2pSbHV5eWlEZ0F2aStZ?=
 =?utf-8?B?N2poTk5jR2Q4UGhnUFBBTTZrcUlZWmNKUnk1cWZzd0lyenQ1UVhEeVZGckw2?=
 =?utf-8?B?UE0xRzR5T0RhdmdHbmcvMXNGcnVGOVhQLytTSkVHREltTXVpUitDS0xWU1Zi?=
 =?utf-8?B?OGtnZUJ4aDVxVFZXS3M2ZEkxOXQ1RGc2VnZId3huUzRuNWY0SjNISkJTN1A4?=
 =?utf-8?B?ZWc0SWtOdHh6VHNDQnA4ZUIzVkZuTjhudlkzV2Q0WTVpczZUVXhFaVM5NXEr?=
 =?utf-8?B?MlJkSnEzOGVQVlhRR2k1OUp1cE9xSkY1RUluc1JLYU95NEdPNXFKWUtSb3ZZ?=
 =?utf-8?B?Slp1RjU4Q3A1L2hQV3JPa3ZiVTZlL05wYnV4R2huaC9jV29iYzFubTVGVUR1?=
 =?utf-8?B?SU5UYzd6blhzelZ4L2xaZklDUkUrcVFTMTBlNFM4ZE1pY0ErSXZwY0NkM01V?=
 =?utf-8?B?VUkzZzkvZmtKZGRsWU1oYldiTUFjTlIwTEc0SDlCRHAyc0xvZlZHYWJFeUhG?=
 =?utf-8?B?Rkd4Y0xtcFBSTWcxKzc4eGZXaUlOQ1NQSng3R2dzSkNiQ3FPV3ZsT1VqaXhq?=
 =?utf-8?B?b0x6YlhENURlSVN2dnhubWl5U3Q3K3QxUmVaVGRmZHd2ZWhwbEk1RGdCRFhT?=
 =?utf-8?B?TjBvTVRJZ2RhRVQ0a2YyeEtpa1ZqSGFLNGROTkcvL1RZMkxqd29BRVhNQTdq?=
 =?utf-8?B?WjczQlpRQzh2anArTElXSzZvdjhwLzZ6SkE5dTJhOGpvNitSSHJHLzJhRDEx?=
 =?utf-8?B?eTg2S3ZwL3Mra0VNWHFiYjc4SlREOVdWY3lRK3lxdGlJNHlEd1htNUVBNndI?=
 =?utf-8?B?azhLeXpSVEtPMFV1NC9lMzdvRFBGUWZSbXBUKzZaYklLcW0zdGVmRTZDbnV4?=
 =?utf-8?B?ODRRY0FsUE1PTERmUUZ6NENSY1BvWndwTFZXYzZRdm5FWFRNcGd2T3FEM1pw?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d892359a-f943-436a-7ca2-08dd623d09ba
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 14:40:45.3989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UV0/pXFfPkBMOh6KqnBL32XJMhW6sNZQG0bUXOsUCGIYNEFE5cSzlVAiCNjl1gPZCDXlqmbJQs/Vb40sTiyexQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8387
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

Quoting Gustavo Sousa (2025-03-11 14:04:49-03:00)
>Bandwidth parameters for Xe3_LPD have been updated with respect to
>previous display releases. Encode them into xe3lpd_sa_info and use that
>new struct.
>
>Since we are touching intel_bw.c, also take the opportunity convert it
>to intel_display.
>
>Changes in v2:
>  - Fix typo in patch #2.
>
>Changes in v3:
>- Squash patches #1 and #2 into a single one and modify it to convert
>  intel_bw.c internally to intel_display (new patch subject is
>  "drm/i915/display: Convert intel_bw.c internally to intel_display").
>- Add a new patch #2 to convert intel_bw.c externally to intel_display.
>- Link to v2: https://lore.kernel.org/r/20250217153550.43909-1-gustavo.sou=
sa@intel.com
>
>Changes in v4:
>- Prefer intel_uncore_read() for MCHBAR registers. (Ville)
>- Link to v3: https://lore.kernel.org/r/20250307-xe3lpd-bandwidth-update-v=
3-0-58bbe81f65bf@intel.com
>
>Changes in v5:
>- Do not include intel_de.h anymore. (Ville)
>- Link to v4: https://lore.kernel.org/r/20250310-xe3lpd-bandwidth-update-v=
4-0-4191964b034d@intel.com

Pushed to drm-intel-next. Thank you all for the reviews/feedback!

--
Gustavo Sousa
