Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E4EA5BEDB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 12:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C993010E55B;
	Tue, 11 Mar 2025 11:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HXxHNhh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0721110E55B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 11:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741692240; x=1773228240;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ABqO9pno4mgqG5Vn3wVzcjxVl/1sM3+WKHqC0pZA4Bw=;
 b=HXxHNhh+inLp3aAPKptUoJoy1cxG8Lr3Q4oaTdZctISXjEWiG4qrSSKc
 l2K6whanGYDxHOf18uYaKk1fOpbhyxuQ+yCbw3XI4yGoHcj16diS9jrSv
 tt8GklDAcLkINiZVRnMCgMucfp5RfDQ7LXEq0k9QIhLs44rxYKbFd7YkE
 xyLbaiRbK5pwN1LV5tlN5El07+v1XMNKCn8reKjF3dE+di/5V86okVnyE
 PjBN1O0F/aJYgYxa8tMRowpRsaH39qxCz630t7cT5SvXgmk1nvTHlNHXq
 8cKeGKAyVIQmzi/KyVj+y/YLfQPTWQWqyeKULCS+ZcGuSpFL0NPBF0eC1 Q==;
X-CSE-ConnectionGUID: K3VXr7RjQwaYVq+uA6leTQ==
X-CSE-MsgGUID: L3kuSXIIQ32XKk2e7QaQlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="53366129"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="53366129"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 04:23:59 -0700
X-CSE-ConnectionGUID: 8+9rqBy6S4ao1OUbAOcdlg==
X-CSE-MsgGUID: Z0c5wZCHTEem72jw5vRugA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="120228163"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 04:24:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 04:23:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 04:23:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 04:23:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cDWUTeNkThaAQGDGkogJP9+T+LOkXPDKKy+Lq7KRT4QAOX878s0UfVPt3V/t0knx9NuESCH42/EH5Xrlj2C0gj9n73akZ/90hDA2B2ySSOJh4O96hLHSfkIrYqizLZyCyfelI3sWDkV3CfnT97Gydg3irGz9fb6Mzdh+w1veS3JpcHl9oxDf/im6Ohte9tPOYN2aODSDzKDcXrKJMVvQt3Ae2Ffd9HoJg+QRgP2h7LJlRh6U4KEINKwpkk4RadOIEb/o/k9mQVllYqqQkmlUiM71YJSzEAMKHRwNnxh8mdedWjPGD46n47ENelShQUvy6crUJ16GNVGCh7l/xlglKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E4mggX8Y/CI0ZIV/2Rkp8i99vfGmUgaWr97x6GA1CNE=;
 b=AZDk/GeHoDn+iCJ4ePQMLl60yOVDH61bJkYeGiZzDWwIoUs12JCWedM79/Mpd8KnA4a7i+mcrMosEmSYGB/voMT/UrFgwHRsxExFP0nZQ2wAOyz43iHiPJYGp/nU1DazuMUwx5xku5EUkmTyMzknZFHoGQmhGR0TeWozhUYQn7CWmAMw87agtdzRWwVlvuv75hnIXl38nPoGcL2UG1zK4qAxLIGrx4aleCXlYZXy0uW8yuKVDAaqg+uLvDmNkyVF0Ntvn3L+P21zBnv9KLxfL/ErTFwBQj15EB5j9Yz03+kOSNqUJtYEdkv3iXolUc7B+0Pz0Jf+TKUbzRPtOKEBbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB7482.namprd11.prod.outlook.com (2603:10b6:8:14a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 11:23:42 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 11:23:42 +0000
Date: Tue, 11 Mar 2025 11:23:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Andi Shyti <andi.shyti@intel.com>,
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] i915/gt/selftests: Disable lrc_timestamp test
Message-ID: <knivmu4n56l3dvavfgoqwxn7l4tnllwpx73eaplmrr7tggpgtb@zdgx4vtc3m5j>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
X-ClientProxiedBy: VI1P195CA0059.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::48) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB7482:EE_
X-MS-Office365-Filtering-Correlation-Id: c8bee219-7a8b-4bdc-0321-08dd608f2dfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THBNQ0dsQVBBdSthb0poZDNIditENkJSZWZoQysyem1ReEFaZmFHY09JQ1Jm?=
 =?utf-8?B?VWM1d2ZNWXFKQUJqamZkR3Y1T3dVYUl4OVZwSnBnK1JDWTRZcHd4UHZFM01J?=
 =?utf-8?B?RGVRTzd4dXdTOHBsVjFsQXlYSXhhcldOS3ozK251N3lvcFAySER0Y1gxYzlO?=
 =?utf-8?B?bFRHMFNsM2dvK1ZZRURkeFJQZjYrOG1CR1dscEV1bDBPUVR5YlEvZ3hscXNy?=
 =?utf-8?B?UWc3NFdBZnljUVpCaTVXQ1NtTjVtdnM2QnNPcEZPQ0w4WmJuaDJRN1drUGRG?=
 =?utf-8?B?aFdMRi9Bd0pKaFpIT2pXdVU3Z28xN29qUmtwNTFoV0c2dHZKWnp6QllNbndT?=
 =?utf-8?B?SFAyV3ZtRWJUQnhteEpPNG42eGFUVGVkdFN6R0FPTytGa3JjUmFXeWVjZ0tV?=
 =?utf-8?B?dmZjb3Eva2dhTmk0MVlWLzUwZ1JKdlQzWnMyYmg5UXYrcUtzWnFyVXFZOVlJ?=
 =?utf-8?B?S284VjZnRjJQWGtUTkc4WEg4V0QrOVlTR3I0YXpZZFhUcFVmRFg2VkRXeW9X?=
 =?utf-8?B?VTdqdVFpcy9YTFFkZmNLVmp3QjVOaVlQTXFWYXh0bnJmUmVHVG84NitOcVN5?=
 =?utf-8?B?bWVTN3NQbHVyaFNRbkJ0MUJQZHFQK0JkcVFRZnVFVnBISGNzN1lvZm1td2Vi?=
 =?utf-8?B?VEJWOFFtcmo5aXdpNG9RelZtNTI1MkJvb1BTWmFsWlZ0MkNXQlgvcWRkTWpY?=
 =?utf-8?B?S3Vuc2pXZXZtOWo4NlQ1bTR5VUpMM0h5dE5udmN1QUZBeExXK01rTkFxZGw3?=
 =?utf-8?B?UTdxTWRYMmpoUndKVGVmblZzNkJWeGVtTGdPSkVuL0Rva3JhOFRrdkphL0Q0?=
 =?utf-8?B?cyt0N25vOUQzbnV5SWNlRFNEY1FLREdpOVB6V09TYzZsSDNkb21MbzFQdkw2?=
 =?utf-8?B?NHJwazNqaDJpUWRXRS9qMXhRTFhlNGJzaEEzdHptNGR1a0pmdlMrZzNYK1dx?=
 =?utf-8?B?YVNNdzFPbURSVHppS1lUbUJOZjlnTlZKcFpIaHZGTEJURHg0K1VmUnUwdlRj?=
 =?utf-8?B?eDltamc5NXZnNkJZZGhpaFJPS0ZZWkp1SHV5NzFYUW9QZHNvOEhzUHJpcWFJ?=
 =?utf-8?B?WS8zRjh2NEo5ajNiL2dKTUcvejdIMjhCazFNYVpZZWNCZE5Cd1IxczRZNWFU?=
 =?utf-8?B?UW1tVWRURm5Na0NrdGJja0JNc1UrWHg5L0Npa2V1YXdqZFZVbWpTeU80bGg5?=
 =?utf-8?B?R1VrSWd6ZFo2ZVRyVDNUS1N4UDVRSkZ6S3ZtRXBNa1hPYTRuTmtxZUNuWFVR?=
 =?utf-8?B?RU40U0VqUTBUNUFyeHhFYlZvRzNseld5dG9sdTJmTXQrSTAxbXdIeW9SV3M2?=
 =?utf-8?B?VDV0VTJzWXFBVXcxYnlFb210WDJkc01JWWNLOWkzN003MTFLNTlLOE5ZRW5p?=
 =?utf-8?B?dnN0V1IxYzNDcyt3NnEra0hFbWtPUDFMNDdsMmpnK3NIL2dZTlUvcHNPWmZs?=
 =?utf-8?B?WlpZTG0xdFRFVDRUT0ZqU2pxeS9QN0IzeFJBNUQvU21YMGYxejY5OFVaa2pZ?=
 =?utf-8?B?SzRkNWRrKzlvMkI5aGRsaG5YeStFN0dZeU0vTHp3OFFiWHgyMFVMUFRXRmZ0?=
 =?utf-8?B?endPb3NKbHllaW9henM5TmpTRWhpWDJ6WnFYc2dZZXhlcjlQOGxXMXdUUnJ0?=
 =?utf-8?B?SWYyQm5FVXhDbjVDT3hzczBBS2QzajJHZHRCRzlGTHNCMkdLb2VNekNzcno5?=
 =?utf-8?B?ZnkyU1l5aUJRSElGWjFtUDg0Y2dER0VvN3pQcnFRSE5YVzdmcEpiQXF0VlhD?=
 =?utf-8?B?cDJlSnJMMUdsSGdWUlc2NmZWMkhTSmc1VDI3SXVtVVFpbDBQQXBwNEoxSklH?=
 =?utf-8?B?OGwxcVVqd1dWRzRRbm1qUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2wrQ1FqaFBjUmNhcUpPcmFhUm9iSHJTSzlxKzFPMTRWSHE2RHB5ekZFVUdo?=
 =?utf-8?B?ZzU4UksxeXpkSExZMmtMYndYemFTNXZFQWxMVlVuWWwxaHNCVlpQTW5USkhj?=
 =?utf-8?B?VUt0cno3ZmlQUDBwUHpaVXZjcU0vN2VodTVhcGp1ZFAxbVppeEVma293V0xn?=
 =?utf-8?B?VUlBTjVIS0U5aUtoRUhYMlg0VmpNb0F1UlkwanN0ZGlrL013TVQyTHVpVHhm?=
 =?utf-8?B?bncySk9JR2Y2ekFsbVZ6VTZpVUhzWmRaRE45ZkNOc0ZEK202d2NXd05lYTZU?=
 =?utf-8?B?TWtEOGdUbnlJY2lYUmJ6M29zRDVDRDFCakpaRzdlRDY0bjdWWDJGNVU4SXds?=
 =?utf-8?B?aVplaXJzTi9VbHNWNnNiNHRIMWVwNS81MDJzMWF4SDNUY0hoOUVGVHR0ODdr?=
 =?utf-8?B?WnpIaXFKMHhHMzkzNkFuL0l3QTNiL1lXelFnZ3lBNVdzNnk0U05pdzByR0cz?=
 =?utf-8?B?WmpYaTFBQllwalU1bTkrWEZSVHZkN1N4MmZrQWwycmFjSE1vTHBuRFM2WUxY?=
 =?utf-8?B?MVJiK2EvMlNET1RmOFRvOHFNbVlUZ2ViL0w1R1A0Y2hTbVd1US9wemdDMFdu?=
 =?utf-8?B?ZXNCb0sxTE9OVHlRWXZQaGluZnRSVzAzVnluQ2czTitIVDdyelE1TDUxdE9s?=
 =?utf-8?B?eGt6VmZSNVozL2lRK1hscUZjNzBidTBLdDBXWVhsdFVqVVBVWXpNM1IwOWhv?=
 =?utf-8?B?Z2R3ZkhZNnRKNkJ6SWt3U0FTTmxBaXdpdHdaOXYrK09EM01od0dRQThxQTQw?=
 =?utf-8?B?eml0MGJFNnhMY2ZWZTFtNndqV1kyMTRRNXFwSnhwR3gyWGpxK0RwWUNQQ0Rq?=
 =?utf-8?B?QkxDdHB4ZTBuZW1WaHRvV3NXdDJaUGNSamFxVHNyNU9FS1Zlek9JVkJOSVlz?=
 =?utf-8?B?c1ltNDNqWjNGZVRlaHJIMHc2R1crblRjanVIQ085cUpQcmNUcFh5Mlp1SXJK?=
 =?utf-8?B?QWphbVZudnI3b2gxMlRva1VkUmdGL1NqVThxaDJMS254bnF2Y0xJYzV3WjQx?=
 =?utf-8?B?T3VjQlpIRUE3QWxmUVNHcGJHRllYQTJTbDFyUDIvQWZXTWJrck54LzdnYzRS?=
 =?utf-8?B?L1FMUjEvNVhkRU5VZUFrOVl0ZFF2T0t2dTBNTVJiNUZGY2hnS1llVngzZUg3?=
 =?utf-8?B?dmxOdVhtbER1MnR3TDRTNnhHNXluL3VhaEl3ZVNMWWdSOTNVUVRYSlRPcEth?=
 =?utf-8?B?ZnRxaXc0VytFZHZPcFlWV2xaRDdGN3NNVWp1ZGVONEdRWUUrWUNhdVZLZDdO?=
 =?utf-8?B?TjNEOFFVTUdMK1VEc2N2cHhNZzhjNjZnZjlXb3FGNFN2K2FkNWV4dll3U1A2?=
 =?utf-8?B?TkNjclMzY3RqN251emlnUkZDV0hLRXBVTUt6YkZOZ1hJeTVoS1RYRWZKdlpz?=
 =?utf-8?B?czdFSHlZekcrdFR3dCtVckxkZ1hqQ0VwSjQ0NmRscmR2alM3c3I1R2NyaExX?=
 =?utf-8?B?RVZOQlM4VWJoMHhoNlVrVU1kdUZEQ0tlNVNDNU5CSUFTSUV3VzgvcmY4cEVQ?=
 =?utf-8?B?SkIwRnhvS0Z4UFM2Q0ZTa212cy9TVkgyVHpIN1ppZGcwQ256NngzcEt4RTBk?=
 =?utf-8?B?QUJkbFpCUThvaU5DL0hmZnAvcFJLRXdwcW9pa05DSmtSNWpZTk0xQUw5aFZW?=
 =?utf-8?B?NE1zcDRpVUxuWnZzZXZkUml2MnVFNVFGRk1wUmdhbi9JRW1DMGRVdk9VaFFp?=
 =?utf-8?B?N3FETEdvYXJ5cWNYc0Eva21hM3BIZnVJRHJGdUhyQ2ZCMnhteHhHZ2pvOGFP?=
 =?utf-8?B?ZllvME1mODNUTVlCckJDT2xuV2dIcVJPc2o5a2JTdEJveU1XUXV4TGtnRFhC?=
 =?utf-8?B?blNBZk5tTWd4WHd0MFhRcmEwL3pXZ0ZuQnFHMEFtWEllYmVpQ3VSNzVVUWxN?=
 =?utf-8?B?R1FaTjlYUVJGMTRhTm1zZU1FL1kyOWJGK3dyVHZJVzRtQWRYMVZXTkF4N3Ey?=
 =?utf-8?B?dE1uTTJpZENXR1AzeUVvc2d1VS9VYlZQVmNoMncwYnJSQ0k0Rk1uOWdoVTZI?=
 =?utf-8?B?NkxESmVVNmtBSk16WWFHZDV2a3RzcU9HMGlOUkdTdUgxNDJkNGFuZWlnU2RY?=
 =?utf-8?B?b0tnRjQ1aXNldHVUcHlDbXZsOWRxOHR1bUdVMU9uVWhOTmxsVVlLV2FiTkpa?=
 =?utf-8?B?eHhkc2FXR3hyMDlERWNPYkVjdEltbkF3L0JPSWN2aStYbmgxZnQvRzk1WTNR?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8bee219-7a8b-4bdc-0321-08dd608f2dfa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 11:23:42.5641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aalgtDqbHrTHS4owEhCWbWYW4BzVSfS2u29Gb12Qfg6xGEKpW8hJvnXIP3kULysWUmdPjYGBgHn0zEZW85bienfhFjWg4xKzLZbxJnKWFHU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7482
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

Hi Mikolaj,

> This test was designed to isolate a bug in tigerlake and dg2 hardware.
> The bug was found and fixed in newer generations.
> Since we won't support any new hardware with this driver, the test
> should now be turned off in the CI to not pollute it with random failures
> on previous hardware.
> 
> Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> Reviewed-by: Chris Wilson <chris.p.wilson@linux.intel.com>

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Best Regards,
Krzysztof
