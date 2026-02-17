Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP0aD1Xtk2mN9wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:23:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DAF148B59
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE8E10E21A;
	Tue, 17 Feb 2026 04:23:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MkoP8tzA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017E210E21A;
 Tue, 17 Feb 2026 04:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771302226; x=1802838226;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=upxUa4uGsg78r5vXRQLHWIBodDbNHttPQv3zMdSG/jU=;
 b=MkoP8tzA8g9Gn4BKA+CyhMFitS3t5+U5KIY/3GFJp7HL2hC2ssY+wmfV
 thSu6EJaulXdx1uTSkJVJUf9Zv3yr+qKcUrWmmB9QQZRJsX58+KkcnPGM
 5bFev+ThG4yqQYWXDBqxt+p7QLufqbErXKGRJwmnvg4S/qcrRrDp/s+Bj
 k8TpiWtO/6OB3eCockqDeXY82gCunaiT+WWYyNJJfO7Tjv7uRVP+CW/xE
 o6BMF5q2CNb53qEeITx4jhxcjBsj4UE7+ZhxDmM6cz8QTMthbegpdb2He
 +zsx6cU3LjfPdzwbArRxRRFDW9+WX7Ae+ZD1rfX1cXGOnJFAL6AWb+6ly Q==;
X-CSE-ConnectionGUID: xkG7SZ9fSA+Wgh11DyTiPA==
X-CSE-MsgGUID: ry4Oa8z0RBGXfuSeVgtO3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="83469794"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="83469794"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:23:45 -0800
X-CSE-ConnectionGUID: f/z1ApUmTOSZwGRv8PhQQQ==
X-CSE-MsgGUID: L1btxyLkTQW8w2t76r7Ing==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="213020714"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:23:46 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:23:45 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 20:23:45 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.32) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:23:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D8Yji/fSNN/1dVofVqZSHBy+au0ppdJyRZN/X8Vjbtc8yOJltjINOHao6IkgT8UfvTP79UCBA6TPF7E3POHb3N2xsZHY2jFReHcq8djKv4N196GGttgOMopkuX/J2oWZqARcYPZ38XJ5KZNSACFcBvU9/QLGM2O1YXhhK/le0CCCPKzNNJtdyOBEmC6wlmHGaRKCdmVYS2HW7os6BKp7gTsJblRWf1/ETg8C5YAuKWVMwJTsopm5vzMS+3oTVfjzl1WWxfiFbHSFSA+J14g3suA532N+ruYFlXoY2mpcbu94yFOYYJEkT3Qsl/i8ak7k25nzlbXUohwTTnvGBliw7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZmtqR/JdXpMgzheRRMs2Xx5zGCaIQ7hasg3CGm735A=;
 b=tMhr7WC09kSEm0R3W1yiePwx5F+9TMhDbL0lTTkhQ2WEkbAAa3iKhhqmYIzR7ZCd4a+2ML81m2VfIb3I4r5vrH/EZT3CjwtMewSnrxrJf5vUKQA2BLfOM8IrSkPujCOAdgvhQszrVOLBzK11AhwjiPgno/x1mAzkmfGlVhz3zSrIk7S5VyjgS8pJV8zANFChF5R6kYXcNI64O/EeBwR4O+Zl427HEnVvjaX4RogXiCup7wigZ0EF9zHuJKlf4iwvYR/Xpze5sR3JKhhYvUlg6aTa7+6qWwA0yVY0pmXno9Qvc0z1oYeEfNWkLv5P/eL3mUUFldSPq7OQ+4hX87N42A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7813.namprd11.prod.outlook.com (2603:10b6:208:402::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 04:23:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 04:23:43 +0000
Message-ID: <e9093280-8a52-4903-8761-3b21e818756f@intel.com>
Date: Tue, 17 Feb 2026 09:53:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/i915/dp: Export
 intel_dp_compute_min_compressed_bpp_x16()
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260216070421.714884-1-imre.deak@intel.com>
 <20260216070421.714884-3-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260216070421.714884-3-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0019.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7813:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d955701-c646-4696-5235-08de6ddc55b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NWcza2d4WDMxUmtwWG5rZSsvbEIwVnFIRFpsRVFJYjNnTmQ5QmV1aDJCamd6?=
 =?utf-8?B?TVBkZjJRNDQ3UU1paUlHWU5VTTRRQmFvdFg1aU1YQmhMT0JuTUN3N2w1NHFp?=
 =?utf-8?B?UG5IMmNGNDNYVFVpYVpJdTVsQkVTVCtZdUw1Sit5SGhUMEx1MlB0bE40RkNu?=
 =?utf-8?B?WlUxR2d0OGVSNmswSHQzNzlTdnVhZmwwamcyMTlzQjdFN1NGUTRaWDc5ZjMr?=
 =?utf-8?B?ZUc5QkJJcGh2UExmeklQT0s1ZnI0YjBQQ2dtNk9XbUNUZi9UeCtNdXBMTU8z?=
 =?utf-8?B?OTM5VlFiclhkeURpZCtzSS9hdzM0UGd3UVMwejZoRjNMR2EyTzllRWN4T1lu?=
 =?utf-8?B?M2lCc2R3eDdDMExudU9rL3dVOUEzVzh1Mk9xNDhwZVhjUXoyYm5mL1lWZWFM?=
 =?utf-8?B?Q3FBaU1IWjQ5UEZjeHo5WEszZWR4Znl3bFllU3p2VWZtdkl3eDdBc0FFd1l2?=
 =?utf-8?B?WnNEVFFZRjJWYlRLYkZDVlZEa0s1NU1tMHJuZjV6d25CYTNkY0R0MU5VaGhV?=
 =?utf-8?B?cS9TUEh4dzFxcXVnUGZGRzNsOVFVdHJ0K3VOc0ZIOThVaUVKdWtHL1hTejJN?=
 =?utf-8?B?cCtYY0FVeUhVbExLTnBZWTArSjEzWW1BZ3hOQ0JwMEI5RzYwUzlkUjcrMXpp?=
 =?utf-8?B?MCtWOTVyY3ZtdkpoVmhSYnVHNUV0NWczaDBzWUNqdGNacDFvRWRMRFRjNWFy?=
 =?utf-8?B?bVhIdWNWWkRuZ0UzZ1ZXZnh3WTRhckRsUkVqSmZYYkZ5eDMyODdudHhEeHFD?=
 =?utf-8?B?SlFRWTN1eHZEVVhiVVJKdW9QVVNqeENjUFc0TEdvcjU1S1A4Wnc3Mko2Ty9r?=
 =?utf-8?B?Wk10WjJhd2k2R1E4Sjg1QUZjdGtCVWlsKytEUG5McVI0Y2UwLzVQd0V3ZFdP?=
 =?utf-8?B?bGp6cGpWWjlYNTBENlJMOWRLZG5WWjNIMXF3VDhvcmEzb05VUjVUUVhxb0hx?=
 =?utf-8?B?L3JLYUVzSCtFU1NLNTc0RXVmaTQwN09VTG1QNTlCNVpHajRzdUxSMEhKVjY1?=
 =?utf-8?B?L3lybmFvVVdYY1pvWExaTE85SmZyTWhDdHd5Y01QcHZ1NG5HRWRlOWhWQlFJ?=
 =?utf-8?B?NGU3NXFTUzAvR1ZxeUxZWnArQzJNcXFVS201SXlLMkpJUXphSXBDd2V3ZXZy?=
 =?utf-8?B?cnNnUHpENnQvUWRtbmZyZVNiTUtXT2dZK1QvcUpJd0tydFY3QWJ0QTNITExu?=
 =?utf-8?B?Q0RvZy9RclNJTEovTm1tckY2UWd5L1g0V1U0VFM4OENCa0l2Q3pFZDYvWWZp?=
 =?utf-8?B?R0RxdzNZZmIwM0pUSE0yQ2JLNDVxazNMN1I5K1U5L1pTRGttemFRK0l3eGVN?=
 =?utf-8?B?NndJMUJhR294MEpYeWtEL3d2SXdOTVhrWllzQUNaZlBtdDFtR256cGt4cHFN?=
 =?utf-8?B?VmNwVVBjcFd1Z0M3WWNQczJQbzNCMEs0Q2F1MHpYTDBRdFIrVmRzd2ZhL2dj?=
 =?utf-8?B?TUNpSUhpTzVWTG9RVnFmUFM5Smw0VEt6Vytjb1dHdThNeTRncHJmdnpIS2xh?=
 =?utf-8?B?YXdvY3VoMG1PZWFka2p3UERFVzlKYmswTHYvdDdoUm9FYmhDekR2di94cVow?=
 =?utf-8?B?SXFPQXg2VURjcVc2ZTZUNlN1dkZiS3JHWFpkRk9zQ3N6YmJmZWx2TmZPb0Z1?=
 =?utf-8?B?SG9yNHJFcGFFNmx5c0RQMHRNUW5pZGhQbGdhbSt3WG5PZjd5NUF0R2FNTDJz?=
 =?utf-8?B?eGNpR2xJcldpUU1qN29xVGN4ZlREdml4VFdLRHI1VXNJbm5XeHYrQ3ZOMnEy?=
 =?utf-8?B?aklwbkpsVTJzcGtxbldydWVlbEc3UDBtRjlWMmRFYjZOYjQxU3VQT242QXBx?=
 =?utf-8?B?MVF2VVBoK0FuVTdRUkJyVCtaazBmRnpWRFFkdzNGYVMyMUZRY01NTTlpdWdF?=
 =?utf-8?B?SEZhUWZlN2pwVTc5RFBQVzhlV1dDVnFsVWdXZjd5YTRXRS9EaU83dlVyN3ZM?=
 =?utf-8?B?QnJWN0gwMGk5WjcrYnBPSUFTbCtsRHU1Ty80NWcwK28xdVE2UnZOTElDSVMw?=
 =?utf-8?B?MnpQb2x6U2k5d2NDS1I2R01KWnlQS2dUWlAvT2Y3R1RsVkVoYmRDdVFIcFox?=
 =?utf-8?B?KzdoWlFVYTR6N1lZVlBLaWgrQ2s1SHdKYjV0VFRrYVJCSDlHOG1MTFNwQzM1?=
 =?utf-8?Q?5pvI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MklVOTZQd2VGWFVheWtscHQ0Q1k1NTFZMWhsaGFiRGdTeCtpVUZ4cGlqM01n?=
 =?utf-8?B?UUIrdHhpMEpTZDE3Q2QvcXA3UDFmMStYS3AvUXNlaW9TTlpFQXN5cVVMcEJN?=
 =?utf-8?B?Vm5qV3EwT1lqY1ZuY0I4SEY4cUx4eHJqeUtZN3VjdTZlVlN3RjFBMXlOQmtW?=
 =?utf-8?B?endBUHorU3RvRWE3aXZpeHd1OGFNZkZsSVBnUEs3eTBReU40OUhCNEx2UnB0?=
 =?utf-8?B?RDlIS3A3N3g4OWtualR4ZmltdXdNRzVBWnBGRFEvdllUMkUzZi9BTVNTcWJI?=
 =?utf-8?B?OGwzNi9EZzdOVWxKckFweUt6Ym9YMlNTV3lpVTB2OGM5RmloNG8rTXJmNHRQ?=
 =?utf-8?B?c0I5cGFrQjlmTjRJOTlidUsxUFlNUjJieEZBVEwxVjM5MzBPMjdGZFdOY1ZP?=
 =?utf-8?B?T2xESjh4RVIvQkNPNmVGTVJCQXlUTFl5Yy9BY2c0T21oUlNpaExaZnZLUWRy?=
 =?utf-8?B?UmlCM3BmZE9vTmREeUJKZUZPNjdvS3ZEZ1ZGZlNWNnZ4YVdMNWlMTTdTbDZj?=
 =?utf-8?B?Wkx3MWw1Z3JIdmZFY2l5NUp2NFRsZnhLYlNxVi9QZ1Q3TSswZW1vVlRaRVZH?=
 =?utf-8?B?OWljc052U2FrYW5qLytsMUpudHlVM283UEZrdS9hV1FTZVF6QUVFYklnU3Qy?=
 =?utf-8?B?TFFveHNSYWE5R1J3QzRSTW9lNG1TQ1FtVWs1VklXbnBYS1ZpamF3NDVHNHJQ?=
 =?utf-8?B?Qk5uN1RIQllOdE95TmNkbEJIMlF6RHRkRGJwKzRJelY5OWlVbnU1bGl0aTJw?=
 =?utf-8?B?U2ZkTGV1djNSR0R0NXRvNmNLU3lxTXl2b1VFdHd3RkxNY0RKNCs4VkJ0a2NP?=
 =?utf-8?B?VVpkV24rZUp0bFVPUzZWb2E0UDhhTEdUaXpEZnlvSUhBaTNDSTF0YzBsTERr?=
 =?utf-8?B?c3R2MzBrZkZVVDhrMTdHRXFRUXVUUElsa04rOUtsSXJManA4NDhLYzZTekIr?=
 =?utf-8?B?U2luZHAxYmpEbzEwM3hKRGlHbkVjbE80UEJTd2xRTDQ5M0t1K05hTTcreEky?=
 =?utf-8?B?VzE3YU5ReWZJaHJqMlA5Q2ZsU2NEYlR3VFN1SDJtaWhHUW8wM1JtQnUyVzQ1?=
 =?utf-8?B?bmh2b3dDSU9zMHN3M3VGY3drN3JueUJQbmhQYXMwdWpNQ3RpRlpKYkF0M29z?=
 =?utf-8?B?Q0JtcEtlQit1VGJRaWllankvamtSMVV2MDJSSGs2b014aFdoU3UvSWVxSkxG?=
 =?utf-8?B?cU1qeHpQZzlmN0dxYVZKS1N6dk5jYmp4SU56OHFIOVE4WGZxT1JmMVAra0VT?=
 =?utf-8?B?Tk04dkRmY0g4UlV2K2pXdFd3QXA5eUhvNHJsN2JqcWN3dy9ZTjZ2QmhKd01i?=
 =?utf-8?B?QWQvUzlKYStKM3FvUURxN0RVbk5TMTBUT0poYnR2ZDhTK0pING5VWmFxS1Yr?=
 =?utf-8?B?SmxHZVJsWElCNGJ4N0hJT2dZOFhaU0VqZFZna2dQekkyRFcvVENob1Y0RjZP?=
 =?utf-8?B?OVBiWHVsT0EyV3FyOGV6MXNHblRIbldoZ1djeGJqUWUwb0V4K0lTc0Rldy8w?=
 =?utf-8?B?Y2RVaC9qdC9kVEN4ZW1WS2ZhS3JkNVZpZG93RG5sYmZjS3djRkRZc1lWWkVa?=
 =?utf-8?B?OFd3aWNSRWl3c2tvQU1rVEtkNk9KeGg1V0pSMXk4b1lvZmhxNVc0VG5YaHg0?=
 =?utf-8?B?bkRnZDJ0TjEySkhOOFZRbEtMV1BrTWxwOUxzcWJCSFY5aUNmWHd5a2JoT3Yz?=
 =?utf-8?B?VzVNa2ZRdE1yQ2JtOGNNZUZFSVh5eXR4Uy9ES2JCUjlVREtiVEJDRjJWZCtS?=
 =?utf-8?B?bFR4TXdycjlKNkpVdEYzc1ppZ0Z5WWtTUGFHSlB1bnJocmFrQjZmQjQzTlFV?=
 =?utf-8?B?dGhEMHh1V2xJdktVQzdORmRuTTQ2Q3REcWcyb1NzZWs3WGxOakx5VXZRUW1M?=
 =?utf-8?B?YUg0eStGTGxvQkYzcGRGdm05eVZKTUxyS1IwT1R1OXJXekp2SVg2cDZHOGc4?=
 =?utf-8?B?NXFtaGhpNHVUSlVjSHhNRzdoaUdmMkt3ZE5LcFplQTZhckErTFZmTXhkNWYv?=
 =?utf-8?B?WVVZZnBYME9ZaWg0MzBPby9QZldJTTJhaFJ2cXZMYmVhZ3lZampKVzFYRisr?=
 =?utf-8?B?WlVOdGNVZ25SZEQ0Wmlhd0pnZ01aKzNRdHdRWmYrbkxlZ2FvdXZDd2pnRzZL?=
 =?utf-8?B?Mzd0bVZCRTJuSmU0SE5lcldBNmc4MVB2SGQ4MHhLQ3E3c0o2SnVxMWx6NElK?=
 =?utf-8?B?R05qcW9lc205WVBpNTVSbk13RlhqaWpYUzhKZS9HYkcyanhSYkRaU3NjUzJ2?=
 =?utf-8?B?MlFJUEdtMHdPZnpYU1kvazI2M3NKR1FWOGJTN05rdVhlR1RmUVhmS0gwc05H?=
 =?utf-8?B?MmxQY25VRkFzdk56Tm5vMEorejlwM3ZRaW5rNUQ2OEw2djJrWU16dVpSYSs2?=
 =?utf-8?Q?RGiUBw1McLGD0u6E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d955701-c646-4696-5235-08de6ddc55b7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 04:23:43.4421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YjElMS7ulWi0PXh+l3xEWhFKLHlbOhsaqBBzuRexa15XT/r2KRCUfLKOJuxweo640+SijsCeZ+6ZxMzOsR6i1bLpYYiZzohATXM8ms4Ntsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7813
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
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 95DAF148B59
X-Rspamd-Action: no action


On 2/16/2026 12:34 PM, Imre Deak wrote:
> Export intel_dp_compute_min_compressed_bpp_x16() for use by a
> follow-up change validating MST modes with DSC enabled.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
>   drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
>   2 files changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d1caa20370123..454e6144ee4e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2514,8 +2514,8 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
>   	return fxp_q4_from_int(12);
>   }
>   
> -static int compute_min_compressed_bpp_x16(struct intel_connector *connector,
> -					  enum intel_output_format output_format)
> +int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *connector,
> +					    enum intel_output_format output_format)
>   {
>   	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>   	int min_bpp_x16;
> @@ -2581,7 +2581,8 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
>   				  int pipe_bpp, unsigned long bw_overhead_flags)
>   {
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	int min_bpp_x16 = compute_min_compressed_bpp_x16(connector, output_format);
> +	int min_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
> +								  output_format);
>   	int max_bpp_x16 = compute_max_compressed_bpp_x16(connector,
>   							 mode_clock, mode_hdisplay,
>   							 num_joined_pipes,
> @@ -2635,7 +2636,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
>   		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
>   	} else {
>   		limits->link.min_bpp_x16 =
> -			compute_min_compressed_bpp_x16(connector, crtc_state->output_format);
> +			intel_dp_compute_min_compressed_bpp_x16(connector,
> +								crtc_state->output_format);
>   
>   		max_link_bpp_x16 =
>   			compute_max_compressed_bpp_x16(connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index cbd7fcd3789f6..b0bbd5981f573 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -143,6 +143,8 @@ bool intel_digital_port_connected(struct intel_encoder *encoder);
>   bool intel_digital_port_connected_locked(struct intel_encoder *encoder);
>   int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
>   				 u8 dsc_max_bpc);
> +int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *connector,
> +					    enum intel_output_format output_format);
>   bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
>   				  int link_clock, int lane_count,
>   				  int mode_clock, int mode_hdisplay,
