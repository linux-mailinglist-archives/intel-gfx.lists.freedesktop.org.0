Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D24CCB957E7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 12:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BDF310E105;
	Tue, 23 Sep 2025 10:48:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WUmwijBG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1987E10E105;
 Tue, 23 Sep 2025 10:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758624485; x=1790160485;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5EzG7G8vUaJKT1kE12j9txJMllm1B+k6uuPcbUs9L9o=;
 b=WUmwijBGnui65CN5z8dOcwtPSni6+DrGtGaibqofqRT5JNHOjlukt6La
 Ky4qehiDKQrbZ+0yPZ5wclAFje4TRpH7pkQjWmcyFRRLge+wa7JD0a/F3
 UdGHdtfJtO/VxK/qzupfoRQO8WLB0FpsmA2y7nXKUYeO26rIm8CD1ehtU
 zzbNVxx9KV+/4RGAg8JynNi+EOdCxZGh+O2WNouFiw7JM0wdncRoqYVwW
 QGJxdJ9GwHu3evOd7HUWmiTz6Q45R7PyN9K3DVXRvNffrvfuAkK55LIut
 9Yw71xg0463iV0MBvc8bBlGPS7GDn5jDsHkH/6QvaNbrPkLjmkGL2Thh5 g==;
X-CSE-ConnectionGUID: CxgHZzqFRNq6jbhtVC11Ow==
X-CSE-MsgGUID: kpSlY0WWRzS796mTgj8XOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60952320"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60952320"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:48:04 -0700
X-CSE-ConnectionGUID: Zh+OdjJGQGGXO8t1R61T2w==
X-CSE-MsgGUID: nyWXpIypSk6cBeeb+ld9ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="175864245"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:48:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:48:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 03:48:03 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:48:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IgbKW4R8Cwe+aoh2fySHSvFdG0E+C2GDbAIhpfKYyrpDYrnQuSDQ/sqb32oc9LEcl9D9xosDj4Ue6wCXrnjKdFaGbeWIPSMIgu6C32vSuuKIS0TInoPKktdEfTGiAXNKryFSaP/m7BG0thqXFn5BgMsctg/JZmOHbgDFpmYvLiYT+jd4XOLKab8zTw+3EGJqNx2wA2Z1P85O/uultHtbAtwMvpWcW/KpJlz59eqofzkGZpMMaBNEApGASeAEo/Gh2sXHJX+qvGmAGfQq6BJzwNJydT7DnpULAv1ofC+83gfdXJhSUN3yuYo4wJc/IzHV/17yiHKIfO7o4+TbFw1qGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7VPi+jKy/+7+7oiI4J4zlSmnNreQLmr/In56W213pfY=;
 b=DH9tWsfGKXL5PRR7znHXH/pPqFQcPxExv9TjIs4A9hpAFv9g/pMq7L9fz6eXL6jO29flABjB/23h2JbnWtaiLAu5cyuP7we5raq9GSYx90AG6IzNrkAQKQg8prBDhgqCmWGFL5YIDrqM0J/kqY84PWKoHYetoU9jNOBKbV9pwiS8eRaCVvyTvuCyi7ZKaxuZS8ckEsgfQ1nIkkz+Rr1hRrz4Q6q/v/w7N+5BXpmvBqHSvPKxv+/biZEnUJhtprBpXZy3BN6NTu8p0oT4aIc9ycTWx3lOjYS7bYwPkM6muagcPa9frKmpntxQCcs3j64TUp3JYRgohbPl9iDEJOZm+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Tue, 23 Sep
 2025 10:48:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 10:48:00 +0000
Message-ID: <186548de-afc3-4bdc-952a-4e0b5f958acb@intel.com>
Date: Tue, 23 Sep 2025 16:17:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/i915/display: Add set_context_latency to
 crtc_state->vrr
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-3-ankit.k.nautiyal@intel.com>
 <aNEeOdGfUlmme2wf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNEeOdGfUlmme2wf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0166.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: cf9e5051-121e-43c4-1b95-08ddfa8eaa08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0lSbkNmeHN5dW9wajFNUXU2aDdqZUtXcE9XUXkzdDZHclM5bkF6RnpIRmN6?=
 =?utf-8?B?Uk5RL05sVDVOekNxRXdhL016dkZweG5UWm52WHhlUUVJVUVtR3hHb0NxUnhi?=
 =?utf-8?B?VmNRbmpzRmgzZ1pxNm83MGM0U25KSlZrOVRCVC94UC9nU1A3K3FRVG1pRHlv?=
 =?utf-8?B?a3FUMG9tUExsL2FWSjFQUERGcnNGMlBpeHJmdURBdkY2MVRTZ0FUdzUyZ0Z4?=
 =?utf-8?B?VFVzcjlRK1A5cGNBbkcxL1djVlJMeVhINjA5RVA2bllIMEtFUUx4ZXdEaWV2?=
 =?utf-8?B?dlZHSVI1dW8vcTBSTE9aTHZFSm1Kc0ZPM0h0eTNGVUFXa2t1UHg0bEM5Mk9J?=
 =?utf-8?B?Q3AwaU5palliSmJsUFk4SGtuSG95LzFJNWREY2pPdlBlZXo0c2ZyNmxYenpU?=
 =?utf-8?B?R1Z0VlpxWFh5K0t1WDg5TFc0Y3VLaTNWMlk3Q012SCs5YWFFTWV4TjFKRHRV?=
 =?utf-8?B?WVlnKzdNbzNaZURIWDd5NHZZWmlnTVB1SkpkNS84SUZqNnlQakVPdWs3OVpD?=
 =?utf-8?B?VlZZSVdZbDRmZE56cWNWcnlGbHVNaythRW1VZmozQ3ZuZjBmTXhRWlJsYkNF?=
 =?utf-8?B?ZWRNZnExTHBjSmNVN212a2tLYWZXSVAwV2IrSkFSdmpCeGpidWRBUkRkdGNs?=
 =?utf-8?B?K0wwV1BTOFJweUprbER0bmFEQjBYTzBJb1hwZHpSNmNxdXJqN2hMTHNhUWxp?=
 =?utf-8?B?QkpFTUU2ckR4Yk1XNFNhY2NPbFQrd3ZhV1BCbUV5bjZhdnlwY1lBalF6cytu?=
 =?utf-8?B?NW5iVE5HWVFJb1hmemRYeTZOM1NPYnhabW5uTVpYT0JRNlcvbmdSUDNpaHU5?=
 =?utf-8?B?cGo5bHgwdGlJOHNNM3ZLVWwydkNmWkFGa3hWQnl0ZUlUVUQzMzZUYnlCOWtG?=
 =?utf-8?B?YTFHNDludmVqSW55eVFZWmUrSHZZVno1STI0enRXdG9GMENEYXI3UE00L1VH?=
 =?utf-8?B?VllNN01jZmtNajY4QldCUDFHSWVzaktPVjVPZGxWa2VlOG51cFlzZkFTMncv?=
 =?utf-8?B?VjdMNnk0WDh5STV4K1prQXcwQkFQOUxNV3lKT1pVTEs5M29xSE81TEdjc1hr?=
 =?utf-8?B?SW16ckdTOGJLVCs2dElQUW9qbWJONW5XU2s1M0ZaWnltbFBvY3Z3WFlHYkhw?=
 =?utf-8?B?cTB3dFhZZTBNUDBBcE9aOUVkWDJRVUQ2MXoveGRaZW0xOUR3ZGt2QWJlVWlh?=
 =?utf-8?B?N2NyUVBFMWRRUll2eVlsRjgxR0paTzBKc2c0Q29DYlZLTGM1WmlNa2ovMlVm?=
 =?utf-8?B?aHgyVEM3M1FZMnVEd1o2RG9ReXJkUjE2bE1tSWZTamtyTzlac0RNaFpEa1cy?=
 =?utf-8?B?aFZUYWtiYXFhOCs3YU5yakI0MkdHWEd0b3dyVGcrVEtUaWtyNmtCT2NWOWVn?=
 =?utf-8?B?bUppSXZKUTJQYTZhRC82T1RESkJ0OTVFaTk1cG9xeitHK0NycGZhRmhUMkM4?=
 =?utf-8?B?UURoUUd3TDRjamVhK0YrTnVKM2IrMTJhcTc0NDhQd2V3ME9lNDdHQnUxUHE3?=
 =?utf-8?B?Z1RLU0VlM1dFcXpRUXVydG1MekpNVDBUM1d1MkpYQURUZ3Iyc1NZKzlNVDBH?=
 =?utf-8?B?VmdzbGk1eFlQdzFQVFJCZVRSbkEvdndSelRxQUdhSFhDaUQwVnRUTDhpSnQ0?=
 =?utf-8?B?Zk1nQzZZQ2NsSitTbU9TQkVCUkxWWXIvREw0Ty9wYllhczNyOG9CVkNwQjR6?=
 =?utf-8?B?bWJrMU5PZURKSnJacEdZMmNKTzZsYUt6anI1Y0FIK2l4SXlyeVdPZCt2VFBj?=
 =?utf-8?B?OFJieVJjZStVM1NjYzNsNHNJRmdIQWNwRVFQNy9kWktmb0k5eWpBZXB1azd6?=
 =?utf-8?B?S24rYW5GcnBZZmtLaFFxQURmblF6T1pnWGlPVS9hVWwvUnVTb29UdVF4ajFN?=
 =?utf-8?B?VzZ3a08vVEZXTlpaWTBxMG40VWpTUEFmbDJIRmR2dTB2aTZEbndUV0tkMWJl?=
 =?utf-8?Q?6UlPH1zzzss=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTdheUMzMUJQZ05pR3pid1pVWUY2OHhYZGlxQjI1bEhUYUdvbStuYjlVang2?=
 =?utf-8?B?UmxJcTlIaDlmS3RMNCtTUXcybDZNWWxoaUc5V0J1ZEpUVUtwQldaMnRSd0Rz?=
 =?utf-8?B?QjY5bFd6V1lneWRzQy8rYTQwSjI2QlE2djVnalJEa242aEc5NkJkQi9vaWNw?=
 =?utf-8?B?RGRjbXFHbkRqclBOSWs1TkloZXN6cERwbjFIek9SNE9WbDN5TjZVMFZkWHRF?=
 =?utf-8?B?SWhLcGVhYWFzdThIUnUyei9SY2NUWTZBekd2MWxQWWdlWWMwMmZYc2xRdFdj?=
 =?utf-8?B?c1hBQVJ2bEFUWmxmQVI1UWpBdzI4ZTIxQ1d6WDBZdVZFMzZsajBrczE2c0tz?=
 =?utf-8?B?SU9ScEVuOVBQT0IvZ28wWHBGNXAzcVlIL3c1cEJtaktqdUVuMHYvSlpXenk3?=
 =?utf-8?B?ckNlcXFlMm9yYVNjaWFtOHZWcEVWQzZxbVFTVXM4TTBBOUNJNGpiYUx0VzFt?=
 =?utf-8?B?bWJYL3NtVXp2cWdvWXNlL3hnVVBZdjBvdnFIajNKL3dzMzBuQnEyQVJueVB6?=
 =?utf-8?B?RGtCZGF4MjFXWHFmQW5UcTFJdmt5TVpRUUVUdk1IaURtS1Uvamd4QldvL3pI?=
 =?utf-8?B?Rkx4NGVKWk5DaGtrQ1pSM3A5R204Qitac2dNcktCOE1zZ3htSCs2ZXljN1A3?=
 =?utf-8?B?RWF1eDZFdURyZEtLZWNmc3E0OWxCQmVieExHMk5JSHEyK0xoRXpzdVFscDR0?=
 =?utf-8?B?Wkt5VDRvSnkzN0t4ZWkwcnRCWSt5Qlp6MDJKT1BKZjBBcGVzSTU5LzA1MXla?=
 =?utf-8?B?bWJXWnNSUzlqUXRmQ1ExdWFZNGs2K1liQ0h1YjV6dzRIT3VCeUcwVmNjaUNo?=
 =?utf-8?B?MU42SmZCSVNVMDJ3Zm5tdGtDRG5VQnBVR0gybmJ2Y1RPd0svNHRKMXlYaWZR?=
 =?utf-8?B?N2JzdFNOZEErNE1xSDZWY3pjOUdPRktSNlFnWSs5MnNrRHBjc01jcTJhamIy?=
 =?utf-8?B?cnBCeDRNMmlzNzl1ZTRqTEZ3YzZETXQrdmEzUWlWVXV6cVdCL3l5K1VLVVI2?=
 =?utf-8?B?Z2ZlVUZQUG5JVkZqQU5sRlZLOGpwcU1jamNVZi9DckIxWGpNSVplOHhNZmlx?=
 =?utf-8?B?eFN5emZZNVNkRzZ5ZWdKdmtLZlFTUk5NU2JKeGxxZWxITHBwSUxJNUJsQlEr?=
 =?utf-8?B?MUhMOTJ5QXorckc2cUV0OFUveisvTG8zT3pzVFZQcGxXU2JkYldvVUQ5N2ZZ?=
 =?utf-8?B?cHBYSlovT0Y1aUJ6MGdJRHdNL0VuR055a2ltVkRTYzR6SEo4a0ZKTTVuUkUv?=
 =?utf-8?B?MEtOMENOUmhMeUEyaGJqN1lGMkFmTjl4TklTa2ljUXp1N0VOcTdTelFRRldn?=
 =?utf-8?B?MFVNUGMyeEhvdVdNUjRvdHJEWVpCSUZNNGVGNE5naGswUlZFVnlRVGV4bzRE?=
 =?utf-8?B?Z2VlUWVCUnVsWitKY3l4eHJsdWlFWXV4VHhScElDZGtNaWkyM1RnQlV2V2ZD?=
 =?utf-8?B?S1o0bGsyUVhMbWJVN1pHSnFJRDY2NDMxUnp0cVVTL0dmdUpQVXRYdDdtZ24y?=
 =?utf-8?B?OHB0V0NPakxySC96VjRWNXV1NjFGRW8zZGx5R29qWkVBR0ZOQk1aS2F6V1k5?=
 =?utf-8?B?dzVLVlRobFBjaExnd1l6aFE5MnE5S2dyY3hjYjErekNGRmhFWUE3TTdNbzJR?=
 =?utf-8?B?NUI4bFllSVBNZHQvSFBYR3RuVVpIMVNCSXpBaUlINHI2QlN0WCtXUnlRQ3pk?=
 =?utf-8?B?dFRESkhEUzJVMVhYQ0xKa3VsZWFBYjcwZXVTd3RMWGY3d0hVTFIxaWlpU1RG?=
 =?utf-8?B?K254d0lmaEhyN2xkTFNDQmw5WFFOK21RWjZIcHRyNW0vbTFzVTFvM2E2anRr?=
 =?utf-8?B?eHY1Wlo2T0dQdFE4cDdHYzMzRVpmdHYybkJWKzFqbVpZM0I2V2xkY3pmeXlK?=
 =?utf-8?B?N0xsTmRaWmJscHNWUFJsbzcveGxSSVY5d1FxYkdrbDY1SE9SMWFFbkRMTHZh?=
 =?utf-8?B?cXJpKzBON21WQ0RINVUzekhVZ2s3TTB0dThpRGVldkg1UHFrSk83dmFaYVpL?=
 =?utf-8?B?OElQZGVTTDBqQkFmbWE4RlZjaTRCV2FJNjQwM0gzbzE5QkxUc29oa3hPS2Ra?=
 =?utf-8?B?WDJFZkJqRDNTTzFYVm1KempWL1F6VWtOVWZQRkgyZXp3elBlS0JQbWdyd1Mr?=
 =?utf-8?B?ZEtRMFhUL09nbnI3VGtvN1ZzTXRnTGFmR0FFSEVpNU80TnR4ZTAyT1kvYUUw?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf9e5051-121e-43c4-1b95-08ddfa8eaa08
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 10:48:00.5294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bs7jiqaPc+6Y6q9vFNLUctYcSXSe2Hz/sGu074r3fQHyQ30Mms7p/T97WcGktqKrdH3zVfia/5nMGD9is8gsTHPyJkmBISdiY2lCZguaL/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
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


On 9/22/2025 3:30 PM, Ville Syrjälä wrote:
> On Sun, Sep 21, 2025 at 10:05:28AM +0530, Ankit Nautiyal wrote:
>> 'Set context latency' (Window W2) is defined as the number of lines before
>> the double buffering point, which are required to complete programming of
>> the registers, typically when DSB is used to program the display
>> registers.
>>
>> Since we are not using this window for programming the registers, this
>> is mostly set to 0, unless there is a requirement for few cases related
>> to PSR/PR where the 'set context latency' should be at least 1.
>>
>> Currently we are using the 'set context latency' (if required) implicitly
>> by moving the vblank start by the required amount and then measuring the
>> delay i.e. the difference between undelayed vblank start and delayed vblank
>> start.
>>
>> Since our guardband matches the vblank length, this was not a problem as
>> the difference between the undelayed vblank and delayed vblank was at
>> the most equal to the 'set context latency' lines.
>>
>> However, if we want to optimize the guardband, the difference between the
>> undelayed and the delayed vblank will be large and we cannot use this
>> difference as the 'set context latency' lines.
>>
>> To make way for this optimization of guardband, we formally introduce
>> the 'set context latency' and track it as a new member
>> `set_context_latency` of the intel_crtc_state.
>>
>> Eventually, all references of vblank delay where we mean to use set
>> context latency will be replaced by this new `set_context_latency`
>> member.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 ++--
>>   drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
>>   .../drm/i915/display/intel_display_types.h    |  3 ++
>>   3 files changed, 24 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index 0c7f91046996..a14bcda4446c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> @@ -289,10 +289,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>>   	drm_printf(&p, "scanline offset: %d\n",
>>   		   intel_crtc_scanline_offset(pipe_config));
>>   
>> -	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d\n",
>> +	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d set context latency: %d\n",
>>   		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
>>   		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
>> -		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
>> +		   pipe_config->framestart_delay, pipe_config->msa_timing_delay,
>> +		   pipe_config->set_context_latency);
>>   
>>   	drm_printf(&p, "vrr: %s, fixed rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
>>   		   str_yes_no(pipe_config->vrr.enable),
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 679c2a9baaee..5a7794387ea2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2361,17 +2361,18 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>>   	return 0;
>>   }
>>   
>> -static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
>> +static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> -	int vblank_delay = 0;
>> +	int set_context_latency = 0;
>>   
>>   	if (!HAS_DSB(display))
>>   		return 0;
>>   
>> -	vblank_delay = max(vblank_delay, intel_psr_min_set_context_latency(crtc_state));
>> +	set_context_latency = max(set_context_latency,
>> +				  intel_psr_min_set_context_latency(crtc_state));
>>   
>> -	return vblank_delay;
>> +	return set_context_latency;
>>   }
>>   
>>   static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
> I think we should just do a full s/vblank_delay/set_context_latency/
> pass over this function. Then it'll be clear that we are calculating
> only the SCL here.

Sure will change this.


>
>> @@ -2382,9 +2383,10 @@ static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
>>   		intel_atomic_get_new_crtc_state(state, crtc);
>>   	struct drm_display_mode *adjusted_mode =
>>   		&crtc_state->hw.adjusted_mode;
>> -	int vblank_delay, max_vblank_delay;
>> +	int vblank_delay = 0, max_vblank_delay;
>>   
>> -	vblank_delay = intel_crtc_vblank_delay(crtc_state);
>> +	crtc_state->set_context_latency = intel_crtc_set_context_latency(crtc_state);
>> +	vblank_delay += crtc_state->set_context_latency;
>>   	max_vblank_delay = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start - 1;
>>   
>>   	if (vblank_delay > max_vblank_delay) {
>> @@ -2617,7 +2619,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>>   	if (DISPLAY_VER(display) >= 13) {
>>   		intel_de_write(display,
>>   			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
>> -			       crtc_vblank_start - crtc_vdisplay);
>> +			       crtc_state->set_context_latency);
>>   
>>   		/*
>>   		 * VBLANK_START not used by hw, just clear it
>> @@ -2707,7 +2709,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>>   	if (DISPLAY_VER(display) >= 13) {
>>   		intel_de_write(display,
>>   			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
>> -			       crtc_vblank_start - crtc_vdisplay);
>> +			       crtc_state->set_context_latency);
>>   
>>   		/*
>>   		 * VBLANK_START not used by hw, just clear it
>> @@ -2820,11 +2822,14 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>>   		adjusted_mode->crtc_vblank_end += 1;
>>   	}
>>   
>> -	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder))
>> -		adjusted_mode->crtc_vblank_start =
>> -			adjusted_mode->crtc_vdisplay +
>> +	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
>> +		pipe_config->set_context_latency =
>>   			intel_de_read(display,
>>   				      TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder));
>> +		adjusted_mode->crtc_vblank_start =
>> +			adjusted_mode->crtc_vdisplay +
>> +			pipe_config->set_context_latency;
>> +	}
>>   
>>   	if (DISPLAY_VER(display) >= 30)
>>   		pipe_config->min_hblank = intel_de_read(display,
>> @@ -5387,6 +5392,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   		PIPE_CONF_CHECK_I(vrr.guardband);
>>   	}
>>   
>> +	PIPE_CONF_CHECK_I(set_context_latency);
>> +
>>   #undef PIPE_CONF_CHECK_X
>>   #undef PIPE_CONF_CHECK_I
>>   #undef PIPE_CONF_CHECK_LLI
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 358ab922d7a7..a22fe77fcca1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1341,6 +1341,9 @@ struct intel_crtc_state {
>>   
>>   	/* LOBF flag */
>>   	bool has_lobf;
>> +
>> +	/* W2 window or 'set context latency' lines */
>> +	int set_context_latency;
> This can be a u16. If there's a reasonable looking place with a
> suitable hole I'd try to stick it there.

Alright, makes sense.


Regards,

Ankit

>
>>   };
>>   
>>   enum intel_pipe_crc_source {
>> -- 
>> 2.45.2
