Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLuFLZN3eWkSxQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 03:42:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1496D9C5D5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 03:42:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0649E10E60A;
	Wed, 28 Jan 2026 02:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8dQEfEO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0099B10E1BF;
 Wed, 28 Jan 2026 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769568143; x=1801104143;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EZNO3uobqMUq1d7AsKtcIm8Q9I1Piqxp/k3v8NqNnqU=;
 b=K8dQEfEOxgtHZ+IbU23siMiakTaN9MKGR5tJp+jeCbyp3eakPsCM+2dt
 3BseRJJu/8LysuxxqIFeeN3q01SGb0hzGt33QjzSemsxJApas/ZyH4H/q
 0uFuu5fxYDysDbmcG294hJ88TrbeS/AlmFaaatGVRtl/fxc2zMLJEf8Tb
 JtSruo6PyVV9AQfZFrOEDXqLb5fIqILmeh0tyB4P3AqFIInY6M1F0nE7p
 Ryv6Q2pj057bEI9VliRbDndgtmDeMlZsthV6RQpUCFsuiIR4B40/mtaiL
 mAtcaf2s3qm+d21UU01O3FuV3bMOZgJUrrQa9uSTwi0kNPQr2ERcGYaHq g==;
X-CSE-ConnectionGUID: KyK9rjbtQSKiNikii87wwA==
X-CSE-MsgGUID: gYmh+v5gQtG/OXNI9Xrswg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70490361"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70490361"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 18:42:23 -0800
X-CSE-ConnectionGUID: qei8SyzgTYeVxjZ40uLOEA==
X-CSE-MsgGUID: 7S2ebe5nSqyo5DZlJ92Hzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="207379818"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 18:42:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 18:42:21 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 18:42:21 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.66)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 18:42:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HZqoQyP1ZhaKqqq8Yzrk60ha6sEFbF9Qb+c0Rk3Mwb9t0xNv3x1cHTb6AssQ8FtPUYP8cK4bWP8GClWDXqXKuQ8IceRgyCG4NDqCWK64dKlAvyBSJqmf1CuDeUMHLMOhvTS6n6AQ5iDoxZWsyqHmko9vixImfA0ejK1ah7SIeAZ7wvZVGkLFs/TozoUx8Dqmh9c7WJ0TG/2IaKZd7bU75lz960KAmn7GCk/sQVsB/R+DKtabPJoY1V3Iv8f+659tS3VIbtqVwIC92BLarIIP8MLCPN59gHOZ7v46TsTxz0JcpRsQex/rFcePIeqOBdt9SlZ5RF9xzYKpYI7KLqSB3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WBWc4a4tWNjJFjIA+yj9Vle6xTwDPB6/xh2/PQT55c0=;
 b=gkvfZaZeqlRYj2eA6UIw5vGL63iwpzRELpu3Ft8X5Xxww91IY55zdy31HZk47CqhmGef+iSsy1zC8MVEH8SF3Ym5uvqbgQE0NJpDA0PIiKIDq13GKyjTU2ELgC3915JtJ8lQWYGCTcI7i+F1h0PJYy8hcKF9pHi6uZ5QP1M6VhoAZqhS+atKkYMOYK6CrhTKUke3+P3PyXk+1RQp0MJnfrhannHZiWqiMLZo6Y3N8/jmw3GwnqDT87KrPPc8A43JxI5C6RLV4MqB5QwQRUHosSxVzT1h+AtclK4GRn+QvaBlMZgyoEdZEdomrwasQv6DnKkiYZV1jtA4VSk95HWmOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6699.namprd11.prod.outlook.com (2603:10b6:510:1ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 02:42:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 02:42:19 +0000
Message-ID: <e0591f92-7dac-4099-892c-954f73ec1acc@intel.com>
Date: Wed, 28 Jan 2026 08:12:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 04/11] drm/i915/vrr: Add helper for PSR to enable
 Frame Change event on trans push
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260127124120.1069026-1-jouni.hogander@intel.com>
 <20260127124120.1069026-5-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260127124120.1069026-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0206.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6699:EE_
X-MS-Office365-Filtering-Correlation-Id: 005ce476-fbd7-43b8-086b-08de5e16daf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0gzK0h4ZFJ3TURVWkxUOEFZSEpvVit2OFNFbjEvWStSRnJoWktOVXhMZ1Ay?=
 =?utf-8?B?aVgyMHFjbmUrRWpibGhzVzVjV1FGc01ocFhzTGQrVlRKM21VelpkRjVrR2xj?=
 =?utf-8?B?eEpjQjVmN29WQXA5Q3hnb3Z4dVdCc3hYb3RreklCMnZoRGFBQUFwYUpFZGpR?=
 =?utf-8?B?QWZDSTNLNHRjU21QcTluaENRbFlGdzBjVVlNRUpCSVk0enY1UGZ1Y3pzYlFB?=
 =?utf-8?B?TUt5N25qM28vd2phRjE0YTRseURWVFZZYWtkWjR4ZlorL0hFelQ1aytaYVdX?=
 =?utf-8?B?NndIVzhweFZOLzNERjEwM2xzTUZHZGRGY2RabHNMYkdRODMzSnZOa2o4MGxD?=
 =?utf-8?B?RHRQb0FCdU41Rng1amNYOWxvR3haRGFlTG92RkhmYy9lb3NhZUN5UXVFTW11?=
 =?utf-8?B?THJJQ21vazVRY2hnYUFLSXg3bWlrd1VIQjNpaXFXWGZobk1ETGtGbzJVNnZB?=
 =?utf-8?B?Rnc0ckIwWjZtdHRaWXoxODMvbzFWQ0s0QmNtcnhabk52TEI2ZE1COG80MzJz?=
 =?utf-8?B?NVB4YTdvdU4yTjh5OUUvSE8rczVJTkxVOGVQSU5kWWNEWFhpLy8xa01Wd3dz?=
 =?utf-8?B?S0xZN0pzcER2SUZxRWNnV2NBWVdwRlpBL21VNDJCbnV0OWlHOHY1ekxvcnJl?=
 =?utf-8?B?eUdEWmlTd2tNYkR3aFZWTkRtaktjcXBzSVhrWWo4NENyY3M1ZC9aL3dSNStP?=
 =?utf-8?B?WS9oSkdqWnV2ZjM0Y3BjU1Y5bytLQnR5YlNXenI5cmVqM3RUTTZPZTdvd1FZ?=
 =?utf-8?B?S0d2cW11VGd1QXdONXhHV1BONDNZbzgxdnV4TUJTblpvOXVZZjU3VjhQMm10?=
 =?utf-8?B?bmx2R1JsQ05IR2pjeGUyMDdBK1NIQU42V0lHTFFLOUZnRXZuUGtrQ1F1K2ly?=
 =?utf-8?B?bU5LQnU3K2FJQnNUb1dLK1VYa3BzbDB1MnBCY3BJRnl3a2J0K1czOGNZQkda?=
 =?utf-8?B?MHZiWDllWkQ5RnJzTlNHa1ptZXo4UzdER2ptRWJReUNDOWFqaFpPOTYzTkc4?=
 =?utf-8?B?K0lLSUpIdzFuMkpoL0wxODhOTjNpbXEvWFFOTDhtdUh4RlNXY2dBK0F6L0s4?=
 =?utf-8?B?cGxUTjdiR3lrUGd0ZWgzWVMyTzE2UjFXTlYxcmVhTk1CRmJZcEdrVXcrcFRG?=
 =?utf-8?B?WTZxSWl6b0dIZG9mMjBNWmxGUkcwWHNJZGtYMHc2Rm9NbHNmMEhFY0NmNVhk?=
 =?utf-8?B?UHRGUXNCd1YzSjM0cWxjZmFqS2lmMXNOT3lNTkNmbnB5SFNhaU9pNndKdlRJ?=
 =?utf-8?B?L3BoM1RlMVN5UVhiMndtYnZrTDR3UVRWUkp1SUUvS293TitYS29WZnJ6blJk?=
 =?utf-8?B?TEthZ21INDhscU1uQk43eEprVmZvWkJLT1pQTVQ5Zm1yM1lEU2xJNjUyOFVs?=
 =?utf-8?B?NVRmQ0xzSjY4T1pNclR1TnR1d0NNUkpmUEhHeElHNFh1YW1MSkdIeFZRK1Bl?=
 =?utf-8?B?dmVvLzR5MEljRWF3RjlZditFMno1YWNtRmRyVzNvaXNlOHZtNFNSNUxkYVlv?=
 =?utf-8?B?SkNqMG12Q0QwYUlieEhJa0lMR0JpYk92RG1WKzRuUjVnK010d2J5ZGpaMTdP?=
 =?utf-8?B?RlN1NVg1L0J0eUpGSjhKVVo3TnJHL1QzczVxUWVuV2pLbzYweEREQnp6RUd3?=
 =?utf-8?B?bXhJck9hRnRqVHJSMUxjZUw3T01qTVhkY1EyV0FUbGhPUDlGNU5RYnVBQ1gz?=
 =?utf-8?B?WHFWRVhBbTZVa2ZnL3NyY3F2YlFHejQ2am1nZ21LbDBHalNwQWVPNUNra2xR?=
 =?utf-8?B?VjZBQWkyS0l4UlVOTUk3R1YwVHhtb0s2MnkxNTlvc3ducERvam9oWkp5WXA1?=
 =?utf-8?B?eGVUOHlPUnVxTHZSTlVoUUJJK01Ucy9mYTJqd2t5emJGN0tNV3RtQitNZU1C?=
 =?utf-8?B?QVNGbVBGc25nTTkvTUtEN1VHS1hGMitxdGYxUlA1R0dxVjFybHdUeVoyMm5X?=
 =?utf-8?B?RUV0cWVSNjY1b2J1ZUxDV3o1R2F5ZEpROGcwalZKUnptekFzT0IvZS95dzlt?=
 =?utf-8?B?WHBGUHFOSnc5akdWZ2Z2bDVVUklRekhpUG5YdlpleUFuQ3AyTTZUbEZCdDFx?=
 =?utf-8?B?YTA2Y2xTUEk4dVdWczBXSDdUR05vRTNsanFhenJkK3hWY3JwV0Z4Y2pDT0Ir?=
 =?utf-8?Q?4ia8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wm43Y1RHOTJjc1pDODQvRHFsNkQydlltSnowcmJrUWdReXhGOWZoOFhTY0hO?=
 =?utf-8?B?Rm15TjFWWmxqR1cwMHlVZ282SWp0b1N3NnlvVlMrdVE1NE9kTnFVV3NDT09h?=
 =?utf-8?B?ODlleTlLV28vZ20rekdhUXRGbktzRUZUVXNTZkIyVG4xU1lLWWtTejVGUHJT?=
 =?utf-8?B?SnVlUElwdlNlOXN0Zi9FMXp4Q2ZRd3BjL2RseCtsQmFOTDhHVVBGbFZNMm5K?=
 =?utf-8?B?WGU3bmsrVHFEZGpkSm1EMlFaSmlUdUlxamNUNlJlTmN2a1FqLzFaV3hPcVZY?=
 =?utf-8?B?OGhzRHF2QlZIekZRVytKNWxCOHZKREZZMHdpS0RlaVZxZVdCd2tYRjA1ZnNQ?=
 =?utf-8?B?bVpNRGdBSXArUHpGdkMyNnRvK1hqaXdWclJucmV2ZmQ4aE1RbzAxeC9BYzYw?=
 =?utf-8?B?ZDdFTjBZTUhOVHcrTHo4WlZCbFA4MDZITkp3MWRjNzVtcXQ3TytvVVF4OWpR?=
 =?utf-8?B?WmlTUjlvMzlBU3JyZ2JCUHRPK2pzQmRxaWI3bnpyQmdJTTBKeHRhV0p0MGRQ?=
 =?utf-8?B?OEhVMXZQTzllYmNadyt3UDZNS1F5YTB4T20vWDRwKzZwUzgrRWlhYXdrRzR1?=
 =?utf-8?B?ZzNtNm5pU25KclFYRE5hdUtUcTc0TXcxZmxMVngwOGp0VG82bnJHNUVHbUlK?=
 =?utf-8?B?VjQwamoySUNyM2s5VmhQQnlwVDV5N09tdEN1WW5JNVNSWVIya2xpVUZkZnZm?=
 =?utf-8?B?Y3pmazdhNzZYSWphcGpEN0ZGL1J5QUZvSGJmSHJzbEdxT0RvdVprK1Vld253?=
 =?utf-8?B?cEwxZ0VWdEFKRGpkdEFzUSt4Z2l2T0U1M1E0dWZPVlEwcUgvMmRBcWY5bHo2?=
 =?utf-8?B?a2pxTk5sTXBFMnVJRm1VSWhOUG5XeUdkWXJ0VDk0Zm9CRTEzaXIrYnRQWmR1?=
 =?utf-8?B?N1ZIS0dPUFpzdHlzeC9sRjNkdEFTN2JzL3ZDNzFNckgvZTBhVEtPaWpJUXJu?=
 =?utf-8?B?R0RtdjlzVnl2bjU3eFpFK3B6bGV1Mm1nVjQ4RTZKeExRcTIrTzJTY1hLNHIy?=
 =?utf-8?B?R3pRUGJGTXdsRmRvWkVZVVJzUjBNVVNjSXlwSWhjNUlIOUU0ZGR4clhWL1NZ?=
 =?utf-8?B?UHpvWEJya3FleXhlaWsxNWR1WHIrbzhaWEhTY3ROTDBFcmFIclZvNnZ0RVdS?=
 =?utf-8?B?ZEJNUzZtZEdjUUt2N0YreHAyRDI0aVJCRUg0RENYUUFPNnJIdS9ieklKaE0y?=
 =?utf-8?B?dmZHUkV0SERoQWl0MlJlL1QyTEI2UVZGVWdGaGxmYXI3QmVEWER2Z0Y1Vzdh?=
 =?utf-8?B?dTNDaDMxT2Y1aEw3ZUhSSVNFaGxCdThsRU55WEZkdjRSZUthSjZ2TU9HSGlM?=
 =?utf-8?B?bHRiN1ZPLzZueEdJNnNqemZWdUpqeVlBd3FBUXlvM0pFKzl4bTdBRlNVMWVS?=
 =?utf-8?B?T0FGTHBGK24zMUdoUGFwWlQ1bk9VOXRVVG5FTHhZMW1PZUtrM1h4dkJpanRj?=
 =?utf-8?B?eWhCaS93OWxVbXVTNjE2MFh4eGdiYVBLMG5BbFRjUlBwYUFWamI0aFR5UWNt?=
 =?utf-8?B?eStlZ3R0UTkwa2ZyL2FmczVVMnpjTEhoTVppaGpvUmF0YmFmQnNuVHVVVU1W?=
 =?utf-8?B?NnU0MVRsL3drWHExRHFXdEl4c09GSjAxSVNhQVF5bEcvQnZZUWsyaFgwdWhm?=
 =?utf-8?B?VzBoWVZoUzZVNlp6M1NQdVJHWk5USWVmY01qN29EMWhJc2kxcGMwbTZOUjhj?=
 =?utf-8?B?UGtzSVJsLzk5K1haYWVzcjFQQlI4UHJVdGxxNFJSQk9kZXkrc1JUMFZaV0Zk?=
 =?utf-8?B?ZUxPdHZhYWphaXBpOGZpRU1mVFZyV1BPQTVraE9MS1RGWkJETlB3Z3NOekJv?=
 =?utf-8?B?ZHllU0NaU3FjYmFMblVlcEkzRlE3MXloSVlVUlFoWjlDQUpvR0V0dWRFRFNp?=
 =?utf-8?B?R0RTQ0UyTFhJRERqbWF1UXlzRmhhV1hLWVlpOGxKOUVuYjV3SHJ0dW1FYjI3?=
 =?utf-8?B?WkF0SWFJU1pnYTJ1VWs0U0FIZlJOVzc0aHYyc2lVeDdQOHo4TWFDWVZyaDRi?=
 =?utf-8?B?S0dFTlNiZStSSFh2WlRiMWFMZUU0TmhlYmFHVUJIbTY0Y09wSXZ0NERINmNp?=
 =?utf-8?B?SWFHaU55THQ2TTJ5d24vSVpweUhvQXN6bkxVN2pnY0RnNmtjU2ZaaFFISXNN?=
 =?utf-8?B?VkMyRE1oSUdFaEZhaDhHVVVJNktjYkxaeEpSWWJocHp3NXMyckV3aXprSU1E?=
 =?utf-8?B?ZUdORmtkQzhlNFV1bXFhM3ZGanBPSElTWEhFRjlHZjJYbGcwaEI5V1dVR3lP?=
 =?utf-8?B?S3pRMWJ6R3lIRWJMRXVTSHlNYXJJWVdOazlLdlMvKzdOVEtJZkxKSElxbWtk?=
 =?utf-8?B?aVk1d0V3WUphckxIWS8vQ0I5aEp5bXk3N1ZxMnd1UlNJM0tTTStDUmU0MlhE?=
 =?utf-8?Q?7R1y4e8VTLZezOy8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 005ce476-fbd7-43b8-086b-08de5e16daf0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 02:42:19.1888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVZrFOdeNSlSXKOoLIrV2c+mMPJvz2mug4wHi/10A+RVS0WR1LkLKc9dNNfK6M2eIOe6Swk7uaAXgrBGy2nxSmuuObyQG+bo/GaTnD65Fdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6699
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1496D9C5D5
X-Rspamd-Action: no action


On 1/27/2026 6:11 PM, Jouni Högander wrote:
> Add new helper to enable PSR Frame Change event generation using trans push
> mechanism. This helper is to be used by PSR code on PSR enable.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
>   2 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index f26989c74268..66c68e7f3a49 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -973,6 +973,15 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *old_crtc_state)
>   		intel_vrr_tg_disable(old_crtc_state);
>   }
>   
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +		       trans_vrr_push(crtc_state, false));
> +}
> +
>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>   {
>   	return crtc_state->vrr.flipline &&
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index bedcc8c4bff2..4f16ca4af91f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -33,6 +33,7 @@ void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
>   					struct intel_crtc *crtc);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
