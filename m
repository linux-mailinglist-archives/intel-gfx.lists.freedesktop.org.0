Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CF3A201BD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 00:33:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B5610E0BF;
	Mon, 27 Jan 2025 23:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fNuQqq3V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD1F10E0BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 23:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738020792; x=1769556792;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vfmUv/9HgiarPVgL4fruOvsJrlbATxGp1qDYrq2Wibk=;
 b=fNuQqq3VTv2y13Tv5gnRvrBLZ8mEaTv0Vpiwg7ERVCgQ2SQRPyzUh51A
 beRRwz9lFXxdtxJw0oPQq4GzXr8xjfbsy7DsKVErZgfmo4NYF0zyvvARa
 /WbKSAohFvCSVRxxsxkchVlhZyu6wdIBLDIHsoQ/ym6x3PtXqhUE/TQti
 B+QFpXkYxmE/age95QrdDGmUDWgv9MeN440UZSOjAno9qFONRL0OJl8im
 GtpFfQHYn3c7mLQO3j1y5AOatgMTsmQsoN72p4gMpY5WVhcDGNugMPUCG
 UZDF2T8u3YY1kmCp9f/o5+i/jMTxvoQ21RPM9gz5amlIZCIW1tuT8Xizr A==;
X-CSE-ConnectionGUID: 3t95OHEVTmq/7HIqKVq0Hw==
X-CSE-MsgGUID: irKlXif6QQKZ6Zc3oMt0Fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="49889946"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="49889946"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 15:33:12 -0800
X-CSE-ConnectionGUID: 6VBh3C6wSN21x1yiDkaJ0A==
X-CSE-MsgGUID: 1WTu7BHMQGWbNWQSkf1R7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108686823"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 15:33:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 15:33:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 15:33:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 15:33:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xl2QlittGNL8tzJqU+gA1XF8TZ+Sp9JgtB8bfjIYnLGE1Rb+Q5MBy9uXGL5oZMNE9HqYgMdw8AyPbJ7qtB3HEbSAz+MsgCOPdm+6PbQizI6m2DmrHPISgzlKu/aGUIP8vYKA1DdrgCYhd+HInzDAmUPtpns9C3wBhAZogFGDGddssBRaTr4oMeraIt6x4bX/I7WUYTEQxb6uDZtib6+MlkwjegWiST8A77/pEQXNB/vi7F6KRvb77BOkGiPeQ+5hZOMYDUJ4i1kiKESeIaH2wHcbSgV4gKxJcDLWg2GVA/GPuEHx8dCSq2lAdaFszY6krpaUmivUim09avDGWOiDMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prQ6U0ENJWF/W9SCkanO3bE9lt3d31vMD53RbyrP0JA=;
 b=vm4bwhPTXLCv7yT/gfOlJi99IT3qCfEraQDZ8sIpBbsMcNpfHf4kryNiCqQ9EQtBFQnlLRstRrZv6b59dt2gFJ1cS35ErVQLH4aRWNxMUw7lLURZgXBbKbtlyAd3GAbKOT08E0uPmX0gqgociP/2XJe1JXNshm6d2gZ/fLbD9QOskntIGRoxJOTm6sZpwqDjK3+QgvP3ZDQrQIsLU76QlNrkwM9J3/sLSSU6oW9UjtQnVYZRbs9Q5GRxGXKdswPz5ARA5OPXGKPBL16hE8yZpp6hRgEptnoxI2FRojlQrfJ4C64AiSCDeKz4tAbjMjjvbgPMxiAT/kwx4QO6WnKOfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by SN7PR11MB7439.namprd11.prod.outlook.com (2603:10b6:806:343::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.21; Mon, 27 Jan
 2025 23:33:07 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%3]) with mapi id 15.20.8377.009; Mon, 27 Jan 2025
 23:33:05 +0000
Date: Mon, 27 Jan 2025 15:32:59 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: "Liang, Kan" <kan.liang@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, "Peter Zijlstra (Intel)"
 <peterz@infradead.org>, Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
Message-ID: <Z5gXq9XVHa8D1LjQ@orsosgc001>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
 <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
 <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
 <szokgaqqg22wu7ufam4ab5fnnf47ei62urn6gpgv2rise4h4qt@a7zb3uqvyc3r>
 <Z5Q0XSmvs4PkXg7x@orsosgc001>
 <qmjmd4dilx2cd5afmptg7yadcge7enno3tmnd5jd6d7o7ogafx@ditz4vnjhrj5>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <qmjmd4dilx2cd5afmptg7yadcge7enno3tmnd5jd6d7o7ogafx@ditz4vnjhrj5>
X-ClientProxiedBy: MW4PR02CA0030.namprd02.prod.outlook.com
 (2603:10b6:303:16d::18) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|SN7PR11MB7439:EE_
X-MS-Office365-Filtering-Correlation-Id: 74565454-d7a6-4867-beb8-08dd3f2af31b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTBEWHNaeGlVdnFhUkpQTmNIZUM4Wm1NYWN0VHRSUncrSmNDVlBnVjRXcDdn?=
 =?utf-8?B?UnNmbi9RZkNrUTRFR2xYNXhyVlhWdExQZU43M2p6bEZyTWZzaWxySTc0SmVD?=
 =?utf-8?B?eGp3cHdBMm1CQmNLeW5WSjFmRGE3U083OG9oZXJIUnZtUFQ3MFN2UEVnYUp1?=
 =?utf-8?B?UkNxMTRjMlJEb0tXL04zUzc1V2t6NUI0clZ2OWZoRmM1a2JVVldneU1qalBn?=
 =?utf-8?B?VURhTW1yVVUzNnpta2pCRGpoN2lBTDVGeVNXcG9tT1BHZXhiMUl2bnBuam1h?=
 =?utf-8?B?VHAvYVVQZFVQZ2xvYURuQXN0OFY3bUswUzRQZ1VnNHNZQXZqKzlkbVhzenU5?=
 =?utf-8?B?TjlEVzc5YXdrajA3eDZ4QU9iUlBGNUQ1alNBZHpHRUJaWXYwRmVwakR3UWtQ?=
 =?utf-8?B?ZEkrUTVLWFZZeGo0amtBQkpacVRZMGg0dmxnQzlWNGhPWkx5ZlBFcFB0UU90?=
 =?utf-8?B?VUl3cGJnTGxIc1cxMmtGRXRDYmpudDltY3J1WVRsdW9HL2RNdWhWWTIvaWo5?=
 =?utf-8?B?cXZDaWw0NExsUGpkekN3dHh5bVZQdERLc21meTgxaU1tWDBRWlFqZG04Rjcw?=
 =?utf-8?B?OStQeURoRnlEOHBkdlRxbkt1dmlvWHFqRmhXbmFZblZXZmFzNVdYUk1zdnZT?=
 =?utf-8?B?L2s4WnRDL2VwRFBnMzFsSGFUc25IajJLVkV6Wk1Eak5ycFNnT0FieFB3aTJn?=
 =?utf-8?B?Y3hXUy9EY3BKV0JGWmJQZmp3V3FWMHg3MnJHdEkycGhoa1B3UGpJZ3UxdHg1?=
 =?utf-8?B?dll5YWNJMTRUdTdIcVAyWEV6S1F2Q0Y0ZzNqNGM3cHJCTjI2Z0FiQzF2dWZp?=
 =?utf-8?B?R2hORXpKZEVTV0NRL0R5N0UwS0RSanBCVUlkUzRlTWUvT0FjOUFJa1FTY0VS?=
 =?utf-8?B?blJ1QTZRUnlGZ05FTmNMSVpYY3N0VEVmaFFxbnRpdWdlV3J2YVZBbnAycjYz?=
 =?utf-8?B?bCtPSTl6cGRuUnNXQ2RCenhkNEF3VFpEaGo3SWdlSHQ4L1hNUG9pMWg3aHM3?=
 =?utf-8?B?Mjh1U2xPOVdEaVQ4NjZScURoK282bGhPamh0RHpLUWhLeStBUDJJU2xtcHZH?=
 =?utf-8?B?L203RzNDRVRXL1JUNi9NOXgxaEtHQk9xMWxiUnJhTHZKanRTSXFxVkV4TUUr?=
 =?utf-8?B?SytNYXBxTmFFM2JGWFB3aXJzalBOQVAyNVhCSjcxVXVOczlyYkpiSWQwM2hp?=
 =?utf-8?B?MVVSK0dZYlNSZTVac3ZxY09xUDcvcVRDUlk1bGlET0FGTmx3RWw4YnFhYk5C?=
 =?utf-8?B?VDVGWFJLUDBpT1kzR29ycDZ0YnRBeEgzczdTaGpTdzNUVXcvZDhFY2lvQmgx?=
 =?utf-8?B?NW52RFArZnZDTi9UWHRqS1BjZ1ZUMDlsTzNTSGNERWovQk1hL3QxL3lnQWJu?=
 =?utf-8?B?VmJjVUtkVC9vRVB4L002Nlk4eUIydUxoZHVYVVk4UWJ2ZWRURkticUQyRkdO?=
 =?utf-8?B?MnZadFJGb2NmMDhoMTRlNHFhWUdIK2tTMkltR3ptN2ozcXJENjlMYUtuUWM4?=
 =?utf-8?B?Yy83VUpoTENQWVVUM0s2VUNTMkxObTdkOWZ5YmRWOHFSblQ4NlR2SWVJWURk?=
 =?utf-8?B?VFRsRDVoUG0yRHkyblNZZEtUTDRWTjN1NURib293OXZ0Q3o1b0pBSGlPQ09H?=
 =?utf-8?B?WU1wazNZOGE1Y3lmSFdPeUVhRWM1Rncwc0ZudFNyM1dtQUEyN1RYc1ZKSnFa?=
 =?utf-8?B?UFVkNy9PUmpwNElia1pVTjVLbDNjcnpHNEdmeS8yNUxrZkxjWlJHVlcwMGM4?=
 =?utf-8?B?OWQrZnprNlQraHc0SnJDTkJyVVN1c3ZYWHd3UDFiSW15alBOaURBRjUwb3du?=
 =?utf-8?B?My9aQTY2Ty9VdG5hbVFlMWdiVTJ6c1ZJbUFnUSsyMXlETEZqVDNrY0h3elRz?=
 =?utf-8?Q?iD2amGXMrBYwv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGkzR0ppc2xjbmZTWWg1RjJzV3lkZmtNMTR4WTdSbTh2bVVDQXRDWG9RVm9V?=
 =?utf-8?B?QTI5N0xRVVh5YUd2ekdudDU1a21KQlJOc284cnB3SlU4eSt5RXgxUUxUM1BK?=
 =?utf-8?B?dmFqc3N2d3R4ck5CNmRJNFJGU1NRSzhXbFg2VUx0YXpuTzY2Z3N5QnVWNHNB?=
 =?utf-8?B?RFNjandyVnp0M3JsRWdBRTBBK3Vrakg1cmVyUWhVRFdBbzhQU0dDcThTb2cv?=
 =?utf-8?B?M2ZSc3M3cXpObldza2xCVEZHY1lEcVNmL0U2M05WeFcwVkNBTElGNHFPNEVx?=
 =?utf-8?B?bml3bW4zWUNNdEd0QnB1QS9YMVBqcHN0bXQyVU5jZm9RUXBEM1lJbFNsU0FW?=
 =?utf-8?B?UXRaQ3hMSjBkaFFsc25PNGhlNW4xNU9UcDd0MTRDeGpKNTl0UFQySnZTb1hM?=
 =?utf-8?B?cEZ2Q092Y2RXL3hoWnVJRkhYbWVhSWlCckpyL2VVOHVOc3o1VWVmb0R0TGcv?=
 =?utf-8?B?aGRUeENoRkZhOTNrV3JzUVFFcEdLS0laZkw2M3lGNWh4Z0E1VmFrL0s0Z0Zs?=
 =?utf-8?B?NzMycWNVb21RSENOR2g0blZVYXd6ekhESmxtQWdtKzIyaWFCZ21xaFBxOXFa?=
 =?utf-8?B?RHIvYXNTNFM5ZTg0T0FtS01ZbmF1QmJPeVpHeHVCRG9uUzRSY1VUOWhmNE5p?=
 =?utf-8?B?ZkNRS1Q5aVpGZ0RsWHZxMWVmTDFmdVdaK0hPckEwVGtIYWlqek9ybFpkbFpV?=
 =?utf-8?B?djVGVS9Fa2Yxc1FEbDJmL2VidmdGMld4SEw2bTNUaHNHbjduTzE0bGxLc1RG?=
 =?utf-8?B?QlNEV3NCK3lIaE5MUDllTnlyK1QyRi8wNWpLRjh1WVZKcTBQUDZpS1ljNXRh?=
 =?utf-8?B?ZXRmV2hyblNUU0piazdNWTcyOEhpS2I2bHpnTVdIMGw4UGlTeW1lUndydmdJ?=
 =?utf-8?B?QXFYVWtFKytZVStwS2V3eVVYQmZwWktLVUppLzl4eWxxeDFnMk5zN0tHNnBE?=
 =?utf-8?B?ejB1MENSN0s5VllZaS9pd0VtZ0pMN1VOWkFKdkZXVFJ1K1pNOWNtVnY5aXRK?=
 =?utf-8?B?emtGTWI1YlR5YUJDOGpCOERJZVk5dzVvYmFhZjEyYjdSRjlkNzdiMXoweEU0?=
 =?utf-8?B?aEJFRk9qQ2tJQURmTncyMUFmTy82VlN3TU9uWGI5WEYvQlFZOWM5N0l6VGxU?=
 =?utf-8?B?UHZOWWxZRkl6azMzQ09jdmp0OE90N1AwYmF0QkxrSURWODRMdTN5T21oV1dk?=
 =?utf-8?B?V2ZLSnRHK2JxUUVPb0ltS2tIQ3NkTEtvTCs1bm9QRU04bnI0QnRPUUpDeHZI?=
 =?utf-8?B?T0dINkNrV0JPV2QrK0gwWSt5Q2JCMHlUMElCcmZYN1BINkZZVlpseE44NkFm?=
 =?utf-8?B?enNsVzZVeGkyRldvUVhhamMyQnk2OWlldGxwQ1ZHRGdnWmkwNGR5bitvN0dy?=
 =?utf-8?B?MzF4VTJ0bWQyVmZ5MFdjNitVd1Y3U2RDSTc1cHVZS2VXZU9tcEtTRjRqS1A1?=
 =?utf-8?B?WTVLZWpKWmFiSWpqYjVhbXpRTU5zWWU2alU0Ry9YSnZUTENsRkVDK2pId2ll?=
 =?utf-8?B?RE9WMFI1bjcveE9idjJERmhCbzErRXV2Y3pjUGdZaG9tenppR2M4M0MwaEhU?=
 =?utf-8?B?NDVnQmZTZHFrTWxsZ0VHUGJlcDZ5VHJzNTdnNENGQjUrTWNjZ2VlYzRZWG9q?=
 =?utf-8?B?aVBlMFU2MGdrKzV5NCtkb2lEa1g3NHlIU3g3RGFiK3lUc0EremVZd0kzQ0pL?=
 =?utf-8?B?M1kxMzFjUm9PNlJYQ2VJTXQ4czMyNUhkVmY0OUVBOW4ydFZ2SzlicWhkVjdH?=
 =?utf-8?B?MXh1ek15U3Z3NDJLV3UxZFovT2RneDlxS3h3NmlNLzl6V1hPVlk3aUxrM2ti?=
 =?utf-8?B?OWNISWlzbUFHWmhSc1g3eitSa3d5eDcxL1cvakU2RzhPd3QyKzE3ZnhLVGJ5?=
 =?utf-8?B?VXVSZFZabldUQkEzV2hZUVlYSUtzMi8xcWtSVmJBKzUxWUlBNU1YTWJGUmxz?=
 =?utf-8?B?U21pRzVRbElZVVhtQVovOUFScGpNaldTV1QrUS81ZXFLK1BZK0pTajc5dVN6?=
 =?utf-8?B?M0U3NFBicHFab3lWelhkVFB6OVJWVWJ2dm1wTWtNVWNBU3BNY0E1TDkyeFRV?=
 =?utf-8?B?U01CM0ZaMkYxWWJMYUNmRk13WWFuWm9TNEZIR0dKYncxTlNLYk5LQUl5N1hv?=
 =?utf-8?B?UVRDa3lVMnhveVhxbTRFVm55cTR1MHE0TjJxMzkvdW9vNk5aY2U3YmpTU1Va?=
 =?utf-8?Q?zQd/Prdy4a8/XDsK1iGpAfI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74565454-d7a6-4867-beb8-08dd3f2af31b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 23:33:05.8061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vNAjwTafrEJRHzeaZtmV9QVcwMAgE9YT2ujQNMcgmyFPN6hQKcG9wwwFZ+JYSoojhWaaNjUC1PkNbUDMq+025quiFBr4CX06u/bMl7BSFOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7439
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

On Sat, Jan 25, 2025 at 10:32:11AM -0600, Lucas De Marchi wrote:
>On Fri, Jan 24, 2025 at 04:46:21PM -0800, Umesh Nerlige Ramappa wrote:
>>Hi Lucas,
>>
>>Mostly a bunch of questions since I think I am missing something.
>>
>>On Tue, Jan 21, 2025 at 10:59:08AM -0600, Lucas De Marchi wrote:
>>>On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>>>>
>>>>
>>>>On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>>>>>On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>>>>>-static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node
>>>>>>>>>*node)
>>>>>>>>>-{
>>>>>>>>>-    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>>>>>cpuhp.node);
>>>>>>>>>-    unsigned int target = i915_pmu_target_cpu;
>>>>>>>>>-
>>>>>>>>>-    /*
>>>>>>>>>-     * Unregistering an instance generates a CPU offline event which
>>>>>>>>>we must
>>>>>>>>>-     * ignore to avoid incorrectly modifying the shared
>>>>>>>>>i915_pmu_cpumask.
>>>>>>>>>-     */
>>>>>>>>>-    if (!pmu->registered)
>>>>>>>>>-        return 0;
>>>>>>>>>-
>>>>>>>>>-    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>>>>-        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>>>>>>>-
>>>>>>>>
>>>>>>>>I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>>>>>>PMU, not a system-wide scope.
>>>>>>>
>>>>>>>counter is in a complete separate device - it doesn't depend on core or
>>>>>>>die or pkg - not sure why it cared about topology_sibling_cpumask here.
>>>>>>
>>>>>>OK. But it's still a behavior change. Please make it clear in the
>>>>>>description that the patch also changes/fixes the scope from core scope
>>>>>>to system-wide.
>>>>>
>>>>>sure... do you have a suggestion how to test the hotplug? For testing
>>>>>purposes, can I force the perf cpu assigned to be something other than
>>>>>the cpu0?
>>>>
>>>>Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>>>>CPU0. I don't know a way to force another CPU without changing the code.
>>>>You may have to instrument the code for the test.
>>>>
>>>>Another test you may want to do is the perf system-wide test, e.g., perf
>>>>stat -a -e i915/actual-frequency/ sleep 1.
>>>>
>>>>The existing code assumes the counter is core scope. So the result
>>>>should be huge, since perf will read the counter on each core and add
>>>>them up.
>>>
>>>that is not allowed and it simply fails to init the counter:
>>>
>>>static int i915_pmu_event_init(struct perf_event *event)
>>>	...
>>>	if (event->cpu < 0)
>>>		return -EINVAL;
>>>	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>>		return -EINVAL;
>>>	...
>>>}
>>>
>>>event only succeeds the initialization in the assigned cpu. I see no
>>
>>Confused here - The above code check (cpumask_test_cpu) is removed 
>>in this patch. Are you explaining how it was behaving before this 
>>patch?
>
>yes. This is to explain that the scope is system-wide and not core-wide.
>The confusion came because our hotplug handling  in i915 is using the
>wrong mask to migrate the event, which led to the question "is this
>counter really system-wide if it's doing that on migration?"
>
>>
>>>differences in results (using i915/interrupts/ since freq is harder to
>>>compare):
>>>
>>>$ sudo perf stat -e i915/interrupts/  sleep 1
>>>
>>>Performance counter stats for 'system wide':
>>>
>>>             253      i915/interrupts/
>>>
>>>     1.002215175 seconds time elapsed
>>>
>>>$ sudo perf stat -a  -e i915/interrupts/  sleep 1
>>>
>>>Performance counter stats for 'system wide':
>>>
>>>             251      i915/interrupts/
>>>
>>>     1.000900818 seconds time elapsed
>>>
>>>Note that our cpumask attr already returns just the assigned cpu and
>>
>>I don't see the cpumask attr anymore since this patch remove that, 
>>so still confused on this part.
>
>cpumask attr is now added by core perf infra. See how pmu_dev_attrs
>is handled in kernel/events/core.c. If you load the driver with this
>patch you will still have a cpumask attr in sysfs and the value depends
>on what scope you give it.
>
>The validation when creating and event (with perf_event_open) also moves
>to core: it calls pmu->event_init() and then validates the cpu:
>
>kernel/events/core.c:
>	perf_try_init_event() {
>		ret = pmu->event_init(event);
>		...
>
>		if (pmu->scope != PERF_PMU_SCOPE_NONE && event->cpu >= 0) {
>			// check if the cpu matches to mask for that
>			// scope
>		}
>	}
>
>>
>>>perf-stat only tries to open on that cpu:
>>>
>>>$ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e i915/interrupts/  sleep 1
>>>
>>>[pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */, size=0x88 /* PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0, sample_type=PERF_SAMPLE_IDENTIFIER, read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /* arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1, PERF_FLAG_FD_CLOEXEC) = 3
>>>
>>>Lucas De Marchi
>>>
>>>>But this patch claims that the counter is system-wide. With the patch,
>>>>the same perf command should only read the counter on the assigned CPU.
>>>>
>>>>Please also post the test results in the changelog. That's the reason
>>>>why the scope has to be changed.
>>>
>>>it seems that migration code is simply wrong, not that we are changing
>>>the scope here - it was already considered system-wide. I can add a
>>>paragraph in the commit message explaining it.
>>
>>The prior code was enforcing one CPU assignment to all the i915 
>>events.  If the event was read from some other CPU it would fail 
>>(based on this check in event initialization).
>>
>>	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>		return -EINVAL;
>>
>>That's not the case anymore. Right? If yes, how do counters read 
>>from
>
>see above, the validation moved to perf core, after the event_init. If
>it doesn't match, we cget a call to event->destroy() and it returns
>-ENODEV to userspace
>
>>different CPUs get reported to the user? Sum of all counts on 
>>different CPUs?
>
>value is still the same. There's still only one valid CPU and that CPU
>is always cpu 0 in our x86 case.
>
>I hope this clarifies.

Yes, it does now. Thanks

I don't see a difference in behavior as in the events are still linked 
to just CPU0, so this looks good to me. Some of these clarifications can 
be added to the commit message though.

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Regards,
Umesh
>
>Lucas De Marchi
>
>>
>>Thanks,
>>Umesh
>>
>>>
>>>thanks
>>>Lucas De Marchi
>>>
>>>>
>>>>Thanks,
>>>>Kan
>>>>
>>>>
