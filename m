Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41AEA2652D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 21:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4009810E569;
	Mon,  3 Feb 2025 20:59:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3SSjtx+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064EF10E569
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 20:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738616363; x=1770152363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DI59PBreo4jvjm4Fp4CVZSkgS7z2AR3wFOrzCZbeHNk=;
 b=R3SSjtx+rqGUiW12fyMjOUy8k5Ay0+YiJo2ptLVYIll+SaGdM8hY4OOh
 h/eZbO0FjGVqsS3xYZTN5QzIOhx/jtjNaqj6BHoty0jBON164yVnE4iPA
 m+EAZ29rSsYp/plCjazQ686SdX+Wxv39OHnCp0+7bYdS/0IGZJY40QV5v
 li9qYlUWNmPfQC/1zGH3aRrjI+h3VfUx+nv1CSsnu3limq/eldEm0Oi21
 j7p1ptS2HHq7PUXAIc6QJBadUON1kmCzp4kGAqSclMhlnhqLXiaJnyybS
 1GQgUkuWnDm4gcNgGTGmRgJaQkEMxvnFuY6JAIp22gw8maYSYUKeZiwTh w==;
X-CSE-ConnectionGUID: KeExj/8+SXKd2q8c4K+3Wg==
X-CSE-MsgGUID: 9FUEflsiR5yZRvmjSF/RJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50537658"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50537658"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 12:59:23 -0800
X-CSE-ConnectionGUID: M5DazSxASvu8p4fq9Kf4Bw==
X-CSE-MsgGUID: /sG9ju5SRXuSiiSBMCyjLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110169659"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 12:59:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 12:59:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 12:59:21 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 12:59:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LNORJeX3B25iQKkAhz7p4Zahxzr7yU+H3PesgqNxbjNonj7eoPr75yvwBuhHtnvBxN7NanLOE3AVlCxtNzuHAnBZ2O//ZQfBiCs8qiLmuHo6mzjswn4pfHTPetJ6Hdg41wQENABleKBD9lQMsIui7ffoqofoLSpmzxL9b+v++U3DZqw5ZQiDHZ+EnnqgcCIHAEWO2jRzsglcHEoaydqBI4/aD4xzns32EcxZOF7oY79QRQkySroGs6dDghnMOTZ2Q9LhXgV9rDYB5SWmCOVXFOTyusXqv2W0mtvCV6mLclNgWyU/qZjPKZFSC7MAM3/mWDaEtLnsJ0hWB+beBE1mVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DI59PBreo4jvjm4Fp4CVZSkgS7z2AR3wFOrzCZbeHNk=;
 b=iplGhLQZYR3ADwxUWwVu3iqgXz4kKsdPhz/sWfyAGG2+d6t0ju9C+gKJxpGkdpgNxjhoRfvN7UPQUklnBGALbWaPtvNbpqJqz652WcacGCWjHd8hjp0+r23+33kSUGCGy5aMNt3i84ND9+kcCQ8SFNAy7HXle9KywHsyOW03YrRxHr00Kh3T0Zws07e4PeRVfNKFsSnttOqpIpsNGUq5JNsiNh1+cstZyiL9dZE9UUgbBuJEAq+6kv98xTD4A9fHWSekNNWvoLeJPXK3Eca1Jh39viIFB8+jdNS0Y1aiRMGoubJwxjX7YzIyIRCZCsMCumq+b07GQl31/pN98LuSBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by MN0PR11MB6205.namprd11.prod.outlook.com (2603:10b6:208:3c7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Mon, 3 Feb
 2025 20:59:19 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Mon, 3 Feb 2025
 20:59:19 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
CC: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Thread-Topic: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Thread-Index: AQHbdlK5I10e2jiQLkSTRQBgFQ8ZnrM1vRuAgAADHQCAAAQdgIAABCqAgAACioCAAAbAAIAAI5EAgAAPwgCAAAFQAIAABMUAgAAFI4A=
Date: Mon, 3 Feb 2025 20:59:19 +0000
Message-ID: <816975f84d2005fad3f870f9d7486f18cfef3578.camel@intel.com>
References: <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com> <Z6Dq8iF96I-nBkPh@intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com> <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com> <Z6D5rl5bcI1v675e@intel.com>
 <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
 <173861394843.77773.14213626182925674257@intel.com>
 <8102bd56478db361607ddd2848fabf3c4768f3c9.camel@intel.com>
 <173861525455.77773.11090522110857446904@intel.com>
In-Reply-To: <173861525455.77773.11090522110857446904@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.54.3 (3.54.3-1.fc41) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7SPRMB0046:EE_|MN0PR11MB6205:EE_
x-ms-office365-filtering-correlation-id: d142ee24-b17a-470d-97fb-08dd4495a0d4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TzhvckpuQWE5OG5CNU1QU2s1SDRtd3JHdTM2M2NCbnlBMzFvMC9nejRiR0Nh?=
 =?utf-8?B?L0UwU3lsVkNyTk85TWZSY1YyMExRbUVJNnVtcmdBcW5rOFpyNG16eFVxek5l?=
 =?utf-8?B?NkhsQ2d5Y2NnNllNY09ETGNQUUcxYVpwUnJLNHBCczJhRllmcmYrRzFJb0Jz?=
 =?utf-8?B?bGJKLzJZSnBwd2UyYTdVbVFaK0FTa3pVaUlUc2kwWGtvN0ZQTVBJVzl6b2hk?=
 =?utf-8?B?Zm9ZbGpIOTZuK1daRnlMRXE5Ri91bmxqQjJIcW9jaXBSY3ZMa3dNdlQvdUdV?=
 =?utf-8?B?T0ROQy82VUJUelJlY3BxcVhzdFg5MXVFVFlsL2RiYm9Hek5ORG1YNlFjbXdP?=
 =?utf-8?B?Mkt3NnBqZEdMK3pqZ28vZXA1V1hFZ3lLSm02cnZGK3BURDRRQ0JUS1ZvRkpE?=
 =?utf-8?B?VlllNGd4bDdHSDRrUEcydmJxRjh5aU9lL2ZLUU9zVkFDZ1R0YjNjNVR5djRC?=
 =?utf-8?B?Ym5xWTh3ZGNiQ2dtbGw4bU01WHNIcFVRNjI0aXdCRVJVS3lQeW9VVFNJTjlw?=
 =?utf-8?B?NUdBWk5ocU43N3BsOUxaTVdVSVljdTczVVJBeU1XUjJzZkltLzhIYVBiZnlz?=
 =?utf-8?B?Tmhua0lOYVlCNUs5QXR3bVhzSDNJSVN6TVJnSUNKOE5oOHVoYXpmYUNKdHNQ?=
 =?utf-8?B?U1RNTUtwWjFwR3FMMTNWVFBQMCt5c1hLd01ZRkZYL2gzS0xvSkQ1Y0tzNFB4?=
 =?utf-8?B?NGtxZVQ5dGNRc2U3RXVBcElpK2pOcG9qbDNOWFV2NUFWUjZmU2dPZ1ZHS25r?=
 =?utf-8?B?U3hwQ0dFMGMyYjYvQ0JLZG1qeDZ3WjRma1Q2Qk5tVFZ5aHB3RWNBSWtneGJG?=
 =?utf-8?B?ZmpwUnZHWm1EcTVkMEZrN2FHeFhEcU1pNDRMZU1RUTdlUno5enZGOFlrNFQ4?=
 =?utf-8?B?ZlpnalkxbFVRWmRCb1lhZXJDSDNBOXZIVm9LKzMwUnFJeWFSNTNZSjA4c1Fh?=
 =?utf-8?B?bTg2OGZiVnlOdHEzRjJEM1hOajJabmxOSHE4NFRuMGkvaUpzRzNHSlhRc3Zs?=
 =?utf-8?B?WGllSUNRNTYvaDczeU14U2xNY1ZTc3pPbGxaRUwzTjFucmlleUNQMTBLT3Qr?=
 =?utf-8?B?cDJQQVI1VGFXb0FSSDhhVGtGWWxIL1kzeW1KaUdlTW5uL0dWQjB1R3ZkRHdI?=
 =?utf-8?B?Zk1oYngzWnUvUTdlSGZOelpDd0JFYy9TU3E2WE84MVk2RjM2SmMwNmZONVJu?=
 =?utf-8?B?NHhwY2M3THAyT25udnVLY0dOd1R5d29kT3U3Ty9jTVpqZXlZTUUrSHh5Z21M?=
 =?utf-8?B?US81a1NSTTM4NnVNNnNGcXBMTXAzcTdoL2RlV0c5QVpDU3hzeFQ3bTh0ZUp3?=
 =?utf-8?B?eCtEVkdleWttbENnYks1NlhYMDQwQWxuWXlzRUJVSEIvVTg4TEhTQnlqWGJ0?=
 =?utf-8?B?RjFQSGFnSTJQOSs2ZENqUnFGUEhjeURsc1c2ZUs1T2duWG9oTnFCNjh0RzZ5?=
 =?utf-8?B?MVhDL0djcEhYNmtQQ1RJVy9vcDlMQk1QcUhRWkVCZC9Fa1F2NHFWN2RicnRH?=
 =?utf-8?B?ZGp2MjVyNllRYUFFYXd5blcxV0xiT05lMTY0aE5KQTQxSWJ4ZGxNeCt5K2Vq?=
 =?utf-8?B?ODRjSVIzYnZTS2lBTjluZ2JhS0VhMUQyMmVlNkVMMXpGSHc5K1I2TERUak4x?=
 =?utf-8?B?NVpQZGhOdEtiQ0w1ZjhvTjBENzN1TytXKzN5Y3YvWDBHbkR5ZHJQQjl6UG96?=
 =?utf-8?B?clpiY0h5Qk14bHUzSjlsTitOQjdLZXd2RVIrb0ZPemZxcmFPZUlrSHNielRO?=
 =?utf-8?B?dy9WVzlHWE1hYXdSTFpwK1JUUUNCMnlaL3VLS2tvVWk4MjRJYjdvTmxpNy9G?=
 =?utf-8?B?UFJHSDNwOWRnMmFZb0xlRk10QnV3MXl2aGw5U29adjdCZnFvbEVzWHBOYzh0?=
 =?utf-8?B?elJEbEY3eFZGSlVQUDRJdUNSQ0VqMTg2endtMkE0Z3FpcmFKOFN6NEdxdWEw?=
 =?utf-8?Q?KRaC8PEwVTxWSW6K6dqXlaPw/WQ6G6YE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0Y5MGYrWGhvdWYxbDhkWnVFcWllUHRjNDdJZEo3OHBPci9VMldIalAvdis4?=
 =?utf-8?B?VlFpNFNBS0VmQy92bTZBZithVlJKR3h6TXRGUFBhU1VpT2NDYUc4Y0d4WVR5?=
 =?utf-8?B?VlBvTGR6L3g1ZlRZZm5lNXJsUnlTNGpNSG9yY0QycjVuamJhOStqT3U1MnJm?=
 =?utf-8?B?M2JJVzQ0Smx1WitEZFRrWFp0QzZKRzdPNWdIVlJZZW5VZlg3Tk85ektraGJM?=
 =?utf-8?B?eGFFRys5c3NNcUJ2bWZDZDA4ZHNjckRWNllVOGVUL2c1UXVzdlVJMUNZdTJi?=
 =?utf-8?B?TVZBbkNoa1E3V3YrUHcwY0ZNekNvZHVTQ3E4emRQQ1NVekZJajk4cEd4NHpt?=
 =?utf-8?B?d1g0dGVTNE5CeDZneFR4TnFEK0w5cVhSc28xQk5IQmx6ZUh0UUVBRkF3Mko2?=
 =?utf-8?B?b1RoNk5SL3VldkdsQytSY3ZZTlNMUUV4NVBYbTgvUThZSWhRVlVaMENrZW9n?=
 =?utf-8?B?WHo1MHB6VFRSTTVxSHpYNVRLdDgxbS8zL2EzdzM4MlphSnpleTcrT1UwYmdT?=
 =?utf-8?B?Q2l1ajgxVkd2ZXk4QmlJL205WGQ3YnZ0ODBJRVdDc2NiWEZZb1Uvb1Y2V3BV?=
 =?utf-8?B?UmVCMFpCUmRaNXlBVmJzTzd5OWxyU1dzZXU5cnVsaDdqbFRTUUhWbDJCYkJM?=
 =?utf-8?B?Z3duRTdaOGtMR2ZiUEh1ZzZLQmdMdm13cTZhSmQrNTlld1lIMDVGODNWS21P?=
 =?utf-8?B?OVZpRDB3dW1kQ3psTHB6UDNSejJGT1pZRENYbURQczQ1OFVHbWQ5Y251NTVS?=
 =?utf-8?B?U2JpL1pkL1llak9jZzBzZ2Z1cStDNWxSNDJoSWZQZy9xMzM5VWpEaDlqdUlx?=
 =?utf-8?B?R01aZmp6RG9vTGdDM2IxV1JqeVQvNTh3OWVWd0dEVm01NGNpYStlWFZUNWls?=
 =?utf-8?B?MmkzdVBnVU13Q3pOditsUVkyL3lWWjVNeUtTdFY4QjZ0b01KTVlRYWpiQ2Np?=
 =?utf-8?B?Snd4cHcrbVlKUGd0YVp0elF4UWRzOUtBZ2RHRDRCd2toaUhEZTd6QzExYTFP?=
 =?utf-8?B?ZmpzdWtTcGdRNGlDeFlmUW9KQy9UYXNmSktxM2EvUzVvUUdUZ0wxdExINjgv?=
 =?utf-8?B?aGFJeXlTN1pCT0hGdjJFMHo0cUpwNmM2UUxHN3lsRlZIdzROQ0NXNVA1Yy9M?=
 =?utf-8?B?Qm96a20xQUQycU9MaGRSRGIxTHBab3lVVmF2WGt1NDNuRGNyenNpWlBNVzVo?=
 =?utf-8?B?OEZ0ZVRrMVA4cnRXVVphWTVxT2ZjM20yR3hSVE1vRTBBSUovN04zNG0zdTV3?=
 =?utf-8?B?WERzTXFNKzFmeEdUOVF2bWlnN29jNFlCRTJYSXVQeFFSWDlRWDI0MTNWQ0lL?=
 =?utf-8?B?WVloYWFmT05nTGVxL0xEb3ZiZld4VDVJRHZkU0Njb1NPTkpkOXBQaFIwbFQx?=
 =?utf-8?B?cUF3clNvVGhsSVUrYkwvNEdnYU44QXZKOVk3VXNHYnFDQ0g5R21tVGZ3ZUNM?=
 =?utf-8?B?S1hHV0dOZ25QV1FCeTAwelZ5MjNQL01wK292di9KdkFpU0wvSmgrZzhNcTdB?=
 =?utf-8?B?MTl4cUtaYlgzZGU3alM2dUtUVDNwTTNKVWgvOXJERmlYbWpWeHBZTG9sRVQr?=
 =?utf-8?B?b2U1eHlwbEFwc21ReWpGY1BCaE9hUVAxNmJJbm4wblExaGkzdXBKWWpJN1Y1?=
 =?utf-8?B?OURka1ZOWG9YcEFpQm1oWjZhMUh2ZHJuaXRhTk5aOGphQVFVZ0M1RGEvbldN?=
 =?utf-8?B?QW9ER0YwaGV0OVZhSlFMZytUOW1FaDVKdUtlbTFGSlMyb01jK1BNdnZKT3FW?=
 =?utf-8?B?Y2Nna2VOeElwWGhET1VyL2p3dU5ub2VQMHVuZ2RZTEk4UGdNSkx6TWM4NW1s?=
 =?utf-8?B?ZWlkMm5zMTcxdjZmd3lwR1JsenY5bFhwekZiMXR5K3NaemNPZ1RLTlpVT2FS?=
 =?utf-8?B?OWJXRHc0WXlXZ0dub3EzOGRnTGNKbmg0bTZ4Z2MzekMwRStNNW1xbmFKaFhH?=
 =?utf-8?B?SmJ1QU4zTjN6dWJjQU83ZzVvRzJMbzZzNUIxN3ZGUW1ja0hXdHN1eEs4RzNp?=
 =?utf-8?B?VXNsM1IwbDhTc2VteTc0QURDT3VhdlFpNWF5NllvcGd1TWtycDFxNEI4UTNj?=
 =?utf-8?B?STJkYVg5U25WUm1sdjBhUHBGdnpWbU1ENjZhUlNxeS96SThGb1ZYTEJ3U3Na?=
 =?utf-8?B?MDBIUHpZU3JKZ1lzNURIbU5Ea2JLRENiaThwMy9XOVo4TlVXLzJZWStJM2RJ?=
 =?utf-8?B?NEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <534A55DABE14884AA2A641D98F944F10@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d142ee24-b17a-470d-97fb-08dd4495a0d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2025 20:59:19.5000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ftu1DCbXBe82+Nc1kDQ4CxvHUR3OqvjFFL7vBn75sMDSZJbncUkupwrNT8hKT19dxn64CYkAjV+OAYXrAeIFVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6205
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

T24gTW9uLCAyMDI1LTAyLTAzIGF0IDE3OjQwIC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBRdW90aW5nIFZpdmksIFJvZHJpZ28gKDIwMjUtMDItMDMgMTc6MjM6NTMtMDM6MDApDQo+ID4g
T24gTW9uLCAyMDI1LTAyLTAzIGF0IDE3OjE5IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiA+ID4gUXVvdGluZyBJbXJlIERlYWsgKDIwMjUtMDItMDMgMTY6MjI6NDQtMDM6MDApDQo+ID4g
PiA+IE9uIE1vbiwgRmViIDAzLCAyMDI1IGF0IDEyOjE1OjI2UE0gLTA1MDAsIFJvZHJpZ28gVml2
aSB3cm90ZToNCj4gPiA+ID4gPiA+ID4gPiBbLi4uXQ0KPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4g
PiA+ID4gPiA+IFRoZSBkcml2ZXIgZW5hYmxpbmcgREM2IGlzIG5vdCBhbiBlbm91Z2ggY29uZGl0
aW9uIGZvcg0KPiA+ID4gPiA+ID4gPiA+IERDNg0KPiA+ID4gPiA+ID4gPiA+IGJlaW5nIGFsbG93
ZWQNCj4gPiA+ID4gPiA+ID4gPiBmcm9tIHRoZSBkaXNwbGF5IHNpZGUuIFNvbWUgZGlzcGxheSBj
bG9jayBnYXRpbmcgZXRjLg0KPiA+ID4gPiA+ID4gPiA+IGNvbmZpZ3VyYXRpb24gYnkNCj4gPiA+
ID4gPiA+ID4gPiB0aGUgZHJpdmVyIGNvdWxkIGJlIGJsb2NraW5nIGl0LiBBY2NvcmRpbmcgdG8g
dGhlIEhXDQo+ID4gPiA+ID4gPiA+ID4gdGVhbSwNCj4gPiA+ID4gPiA+ID4gPiBEQzUgYmVpbmcN
Cj4gPiA+ID4gPiA+ID4gPiBlbnRlcmVkIHdoaWxlIERDNiBpcyBlbmFibGVkIGlzIGEgZ3VhcmFu
dGVlIHRoYXQgREM2IGlzDQo+ID4gPiA+ID4gPiA+ID4gYWxsb3dlZCBmcm9tIHRoZQ0KPiA+ID4g
PiA+ID4gPiA+IGRpc3BsYXkgc2lkZSAtIGkuZS4gdGhlIGRyaXZlciBoYXMgY29uZmlndXJlZA0K
PiA+ID4gPiA+ID4gPiA+IGV2ZXJ5dGhpbmcNCj4gPiA+ID4gPiA+ID4gPiBjb3JyZWN0bHkgZm9y
DQo+ID4gPiA+ID4gPiA+ID4gdGhhdC4NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IEZh
aXIgZW5vdWdoLiBTbyBJR1QgdGVzdCBjYXNlIHdvdWxkIGNoZWNrIGRpcmVjdGx5IGlmIERDNQ0K
PiA+ID4gPiA+ID4gPiBjb3VudGVyIGlzDQo+ID4gPiA+ID4gPiA+IGluY3JlYXNpbmcgYW5kIERD
NiBpcyBhbGxvd2VkLg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gU29tZXRoaW5nIGFz
IHNpbXBsZSBhcyB0aGlzIGluIHRoZSBrZXJuZWwgY29kZSB3b3VsZCB0ZWxsDQo+ID4gPiA+ID4g
PiA+IHRoYXQNCj4gPiA+ID4gPiA+ID4gREM2IGlzIGVuYWJsZWQ6DQo+ID4gPiA+ID4gPiA+IA0K
PiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jDQo+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZG1jLmMNCj4gPiA+ID4gPiA+ID4gQEAgLTEyOTQsNiArMTI5NCwxMCBAQCBzdGF0aWMgaW50
DQo+ID4gPiA+ID4gPiA+IGludGVsX2RtY19kZWJ1Z2ZzX3N0YXR1c19zaG93KHN0cnVjdCBzZXFf
ZmlsZSAqbSwgdm9pZA0KPiA+ID4gPiA+ID4gPiAqdW51c2VkKQ0KPiA+ID4gPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3Vu
dDogJWRcbiIsDQo+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZGVfcmVhZChkaXNwbGF5LA0KPiA+ID4gPiA+ID4g
PiBkYzZfcmVnKSk7DQo+ID4gPiA+ID4gPiA+IMKgDQo+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqAgc2VxX3ByaW50ZihtLCAiREM2IGFsbG93ZWQ6ICVzXG4iLA0KPiA+ID4gPiA+ID4gPiBzdHJf
eWVzX25vKChpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4g
PiA+IMKgwqDCoMKgDQo+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoCBEQ19TVEFURV9FTikNCj4g
PiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICYNCj4gPiA+ID4gPiA+ID4gMHgzKQ0KPiA+ID4gPiA+ID4gPiA9PSAyKSk7DQo+ID4gPiA+
ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IGFuZA0KPiA+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+ID4gJCBjYXQgaTkxNV9kbWNfaW5mbw0KPiA+ID4gPiA+ID4gPiBbc25p
cF0NCj4gPiA+ID4gPiA+ID4gREMzIC0+IERDNSBjb3VudDogMjg2DQo+ID4gPiA+ID4gPiA+IERD
NSAtPiBEQzYgY291bnQ6IDANCj4gPiA+ID4gPiA+ID4gREM2IGFsbG93ZWQ6IHllcw0KPiA+ID4g
PiA+ID4gPiBbc25pcF0NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ICQgY2F0IGk5MTVf
ZG1jX2luZm8NCj4gPiA+ID4gPiA+ID4gW3NuaXBdDQo+ID4gPiA+ID4gPiA+IERDMyAtPiBEQzUg
Y291bnQ6IDI5Mg0KPiA+ID4gPiA+ID4gPiBEQzUgLT4gREM2IGNvdW50OiAwDQo+ID4gPiA+ID4g
PiA+IERDNiBhbGxvd2VkOiB5ZXMNCj4gPiA+ID4gPiA+ID4gW3NuaXBdDQo+ID4gPiA+ID4gPiA+
IA0KPiA+ID4gPiA+ID4gPiBUaG91Z2h0cz8NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhl
IERDNSBpbmNyZW1lbnQgY291bGQndmUgaGFwcGVuZWQgd2hpbGUgREM2IHdhcyBkaXNhYmxlZA0K
PiA+ID4gPiA+ID4gYnkNCj4gPiA+ID4gPiA+IHRoZSBkcml2ZXIuDQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gWWVzLCBpdCBjb3VsZC4uLiBpbiBnZW5lcmFsIHRoZSBkYzYgYml0IHdvdWxkIGJlIHpl
cm8sIGJ1dA0KPiA+ID4gPiA+IHJpZ2h0LA0KPiA+ID4gPiA+IHRoZXJlJ3MNCj4gPiA+ID4gPiBh
IHBvc3NpYmxlIHJhY2UuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gQnV0IHNob3VsZCB3ZSBjb21w
bGljYXRlIHRoaW5ncyB3aGVuIHdlIGtub3cgdGhhdCBvbiB0aGUgdGVzdA0KPiA+ID4gPiA+IGNh
c2UgaXRzZWxmDQo+ID4gPiA+ID4gd2UgYXJlIGluIGZ1bGwgY29udHJvbCBvZiB0aGUgbW9kZXNl
dD8hIEZyb20gdGhlIHRlc3QNCj4gPiA+ID4gPiBwZXJzcGVjdGl2ZQ0KPiA+ID4gPiA+IEkgYmVs
aWV2ZQ0KPiA+ID4gPiA+IHRoaXMgd291bGQgYmUgbW9yZSB0aGFuIGVub3VnaCB3aXRob3V0IGNv
bXBsaWNhdGluZyB0aGluZ3MuDQo+ID4gPiA+IA0KPiA+ID4gPiBJbW8gaGF2aW5nIGEgY291bnRl
ciB3aGljaCB3b3JrcyBiYXNlZCBvbiB0aGUgY29uZGl0aW9uIHRoYXQNCj4gPiA+ID4gZ3VhcmFu
dGVlcyB0aGUNCj4gPiA+ID4gZGlzcGxheSB0byBhbGxvdyBEQzYsIHdvdWxkIGhlbHAgbGF0ZXIg
aW4gZGVidWdnaW5nLg0KPiA+IA0KPiA+IHllYXAsIGl0IG1ha2VzIHNlbnNlDQo+ID4gDQo+ID4g
PiA+IA0KPiA+ID4gPiA+IEJ1dCB3ZWxsLCBpZiB5b3UgcmVhbGx5IGJlbGlldmUgdGhhdCB3ZSBu
ZWVkIHRvIGdvIGZ1cnRoZXIgaW4NCj4gPiA+ID4gPiB0aGUNCj4gPiA+ID4gPiBkcml2ZXINCj4g
PiA+ID4gPiB0byBjb3ZlciB0aGF0IGl0IGlzIGZpbmUgYnkgbWUuDQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gQnV0IGp1c3QgdG8gZW5zdXJlIHRoYXQgd2UgYXJlIGluIHRoZSBzYW1lIHBhZ2UsIGNv
dWxkIHlvdQ0KPiA+ID4gPiA+IHBsZWFzZQ0KPiA+ID4gPiA+IG9wZW4NCj4gPiA+ID4gPiB1cCBh
IGJpdCBtb3JlIG9mIHlvdXIgaWRlYSBvbiB3aGVuIHRvIGluY3JlYXNlIHRoZSBkYzUgc3cNCj4g
PiA+ID4gPiBjb3VudGVycw0KPiA+ID4gPiA+IGluIGEgd2F5IHRoYXQgd2Ugd291bGQgZW5zdXJl
IHRoYXQgd2UgZG9uJ3QgaGF2ZSByYWNlIGFuZA0KPiA+ID4gPiA+IHRoYXQgd2UNCj4gPiA+ID4g
PiBnZXQgdGhlIGRjNiBhbGxvd2VkIGNvdW50ZXIgY29ycmVjdGx5Pw0KPiA+ID4gPiANCj4gPiA+
ID4gU29tZXRoaW5nIGxpa2UgdGhlIGZvbGxvd2luZzoNCj4gPiA+ID4gDQo+ID4gPiA+IDEuIFJp
Z2h0IGFmdGVyIHRoZSBkcml2ZXIgc2V0cyBEQzZfRU4sIGl0IHN0b3JlcyB0aGUgREM1IEhXDQo+
ID4gPiA+IGNvdW50ZXIncw0KPiA+ID4gPiDCoCBjdXJyZW50IHZhbHVlOg0KPiA+ID4gPiDCoCBk
YzVfc3RhcnQgPSBkYzVfY3VycmVudA0KPiA+ID4gPiAyLiBSaWdodCBiZWZvcmUgdGhlIGRyaXZl
ciBjbGVhcnMgREM2X0VOLCBpdCB1cGRhdGVzIHRoZSBEQzYNCj4gPiA+ID4gYWxsb3dlZA0KPiA+
ID4gPiDCoCBjb3VudGVyOg0KPiA+ID4gPiDCoCBkYzZfYWxsb3dlZCArPSBkYzVfY3VycmVudCAt
IGRjNV9zdGFydA0KPiA+ID4gPiDCoCBkYzVfc3RhcnQgPSBkYzVfY3VycmVudA0KPiA+ID4gPiAz
LiBXaGVuIHVzZXJzcGFjZSByZWFkcyB0aGUgY291bnRlcnMgdmlhIGRlYnVnZnMgdGhlIGRyaXZl
cg0KPiA+ID4gPiBmaXJzdA0KPiA+ID4gPiDCoCB1cGRhdGVzIGRjNl9hbGxvd2VkIHRoZSBzYW1l
IHdheSBhcyAyLiBkaWQgaWYgREM2X0VOIGlzIHNldC4NCj4gPiA+IA0KPiA+ID4gVGhpcyBzb3Vu
ZHMgZ29vZCB0byBtZS4NCj4gPiANCj4gPiBJIGxpa2UgdGhhdCBhcyB3ZWxsLg0KPiA+IA0KPiA+
ID4gDQo+ID4gPiBJJ2QgbGlrZSB0byBhZGQgdGhhdCB3ZSBzaG91bGQgZW5zdXJlIHRoYXQgREM2
IGlzIHJlYWxseSBiZWluZw0KPiA+ID4gYWxsb3dlZCwNCj4gPiA+IHNvIHRoYXQgbWlnaHQgbmVl
ZCB0byBiZSBoYW5kbGVkIGluc2lkZSBnZW45X3NldF9kY19zdGF0ZSgpLA0KPiA+ID4gd2hlcmUN
Cj4gPiA+IGFsbG93ZWRfZGNfbWFzayBpcyBhcHBsaWVkLg0KPiA+IA0KPiA+IHdlbGwsIGZvciB0
aGF0IHdlIGNhbiBhbHNvIGhhdmUgdGhlIA0KPiA+IA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gQEAgLTEyOTQsNiArMTI5NCwxMCBAQCBzdGF0aWMg
aW50DQo+ID4gaW50ZWxfZG1jX2RlYnVnZnNfc3RhdHVzX3Nob3coc3RydWN0DQo+ID4gc2VxX2Zp
bGUgKm0sIHZvaWQgKnVudXNlZCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNl
cV9wcmludGYobSwgIkRDNSAtPiBEQzYgY291bnQ6ICVkXG4iLA0KPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RlX3JlYWQoZGlzcGxh
eSwgZGM2X3JlZykpOw0KPiA+IA0KPiA+ICvCoMKgwqDCoMKgwqAgc2VxX3ByaW50ZihtLCAiREM2
IGFsbG93ZWQ6ICVzXG4iLA0KPiA+IHN0cl95ZXNfbm8oKGludGVsX2RlX3JlYWQoZGlzcGxheSwN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCANCj4gPiBEQ19TVEFURV9FTikNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJiAweDMpID09DQo+ID4gMikp
Ow0KPiA+IA0KPiA+IG9uIHRvcCBvZiB3aGF0IEltcmUgc3VnZ2VzdGVkIHJpZ2h0Pw0KPiA+IHNv
IHRoZSBkYzYgY291bnQgaXMgdXBkYXRlZCBhbmQgYWxzbyB3ZSBoYXZlIHRoZSBsaXZlIHZpZXcg
b2YgdGhlDQo+ID4gcmVnaXN0ZXIgc2V0DQo+IA0KPiBIbS4uLiBOb3Qgc3VyZSBpZiB0aGF0IHdv
dWxkIGJlIHJlcXVpcmVkIHRvIHZhbGlkYXRlIHRoYXQgdGhlIGRpc3BsYXkNCj4gZW5naW5lIHdh
cyByZWFkeSBmb3IgREM2LiBJIGd1ZXNzIHRoZSBkYzZfYWxsb3dlZCBjb3VudGVyIHdvdWxkIGJl
DQo+IGVub3VnaC4NCj4gDQo+ID4gDQo+ID4gbm8/DQo+ID4gDQo+ID4gbm90IHN1cmUgd2h5IHdl
IG5lZWQgdG8gZ28gdG8gdGhlIGRjOSBmdW5jLi4uDQo+IA0KPiBIbS4uLiBkYzk/IERpZCB5b3Ug
bWVhbiBnZW45X3NldF9kY19zdGF0ZSgpPw0KDQpkb2ghIEkgcmVhbGx5IG5lZWQgdG8gc3RvcCB0
cnlpbmcgd29yayB3aXRob3V0IGdsYXNzZXMgOikNCg0KPiANCj4gRnVuY3Rpb24gc2FuaXRpemVz
IHRoZSB0YXJnZXQgdmFsdWUgZm9yIERDX1NUQVRFX0VOIHNvIHRoYXQgd2UgZG8gbm90DQo+IHVz
ZSBhIHZhbHVlIHRoYXQgaXMgbm90IGFsbG93ZWQgKGUuZy4gd2hlbiB0aGUgZHJpdmVyIHdhcyBs
b2FkZWQgd2l0aA0KPiBlbmFibGVfZGM9MCkuDQoNCmJ1dCB0aGlzIGZ1bmN0aW9uIGlzIHRoZSBv
bmx5IG9uZSB0aGF0IHJlYWxseSB3cml0ZXMgdGhlIHJpZ2h0IHZhbHVlcw0KdG8gdGhlIHJlZ2lz
dGVycywgc28gaWYgd2UgbmVlZCBzb21ldGhpbmcgaGVyZSwgd2h5IG5vdCBqdXN0IHJlYWRpbmcN
CnRoZSByZWdpc3RlciBkaXJlY3RseT8NCg0Kc28gcGVyaGFwcyBJIHJlYWxseSBtaXNzZWQgeW91
ciBwb2ludCBvbiB3aHkgd2Ugd291bGQgbmVlZCB0aGlzLi4uDQoNCj4gDQo+IC0tDQo+IEd1c3Rh
dm8gU291c2ENCj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IC0tDQo+ID4gPiBHdXN0YXZvIFNvdXNh
DQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ID4gQnR3LCB3aGlsZSBkb2luZyB0aGlzIGV4cGVy
aW1lbnQgSSBub3RpY2VkIHRoYXQgdGhlIGRlYnVnZnMNCj4gPiA+ID4gPiBhbmQNCj4gPiA+ID4g
PiB0ZXN0DQo+ID4gPiA+ID4gYWxzbyBkb2Vzbid0IGNhbGwgdGhhdCByZXNpZGVuY3kgYW55d2F5
IGFuZCBpdCBpcyBqdXN0IGNvdW50Lg0KPiA+ID4gPiA+IFNvDQo+ID4gPiA+ID4gcGVyaGFwcyB3
aXRoIHlvdXIgaWRlYSB3ZSBkb24ndCBuZWVkIHRvIGNoYW5nZSB0aGUgZGVidWdmcw0KPiA+ID4g
PiA+IGludGVyZmFjZS4NCj4gPiANCg0K
