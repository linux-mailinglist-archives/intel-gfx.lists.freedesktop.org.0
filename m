Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177A2A72D3C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 11:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143B510E2E4;
	Thu, 27 Mar 2025 10:03:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X29JWFen";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB37E10E2E2;
 Thu, 27 Mar 2025 10:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743069787; x=1774605787;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7TRmYxEcKi1iuIYLL9osGtQo7bHaZO79a2pICfUy03g=;
 b=X29JWFennIhfoxz+HyvSZ02aJWLj/BFvPKoym0ZskdYODBhOs/XML6Pk
 cs4QHLlAT9wmXZ4Zm0FF6bA/O4V5F9RdC+BdsGDgx1xJr6SjFvyVZSkEF
 A9Yy9unWP43MBqRTDwdLd7GvL5Df4QEALI3G5SlM0WbnKuqYZV43uan8w
 VyeuEJBwozNM1STF2ib7rzS/m0rPIsseLGfZO30jwbRaXrRDqqwXNcNi2
 KgYXzY3+MGqQ7zJCm97kAEOuWIU4FunBpsu8vGCM0mogLLdadgDiYS39M
 N+ezfNgPsscy+2vHnZj0YobwzA5MFJ3IIY3ITmp68Oadbc9vIW1vdxK/U g==;
X-CSE-ConnectionGUID: 36z/+W3IQMCAKbwXY6dzMA==
X-CSE-MsgGUID: jfYlNVzHTYuyqA4/8ZDa7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44576267"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44576267"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:02:54 -0700
X-CSE-ConnectionGUID: hKNNvpgQR3mguhlDInQLsA==
X-CSE-MsgGUID: fLqXGBC3TPmYa80glHPMRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="124856434"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:02:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 03:02:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 03:02:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 03:02:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ABZy0jzXyZmhJRoa8GsGsYajPizoc9PXTAtUo2ZJw5/b6KNpy6YHslShfbUnOUSF8tl5GhYrYCkddDs85pgNqLIwurR/7kMQLqGRYYALQy55OOkb/fqSI+tPoTGfbOWIZQOmlLPjNp6TZr66bjKetp8Wx9vcwztW8Jj6birxwMilgXObn/45l1ivvAQUfpMrh5rkgTCuri5RHsDxwuv1mJU4/jW9FScFHRhicykhyQmyyejuyQfmiVC+TYKKcdfoGtQn9d6a14p4bwsdfpa2niBKyfCFcR/+9R0cMron8OWt+YgVM36PWUreNphgijG27zVsm34XAkN5Qd+0CAS6GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7TRmYxEcKi1iuIYLL9osGtQo7bHaZO79a2pICfUy03g=;
 b=FYUSljsSrvoYL2V9fdVmfvzZ0XSb2x7gf4k8SKgzLyVbEmC0bIbJAke7VCi5aA/6CtOPWWQm0aK5S4tPcQ0dG6nESaa8w+1BGammNdQ1GyNBirwAkZI08iu7q9sC6z6K7Lpo5zXiH0u3MVtOTOIHQBSXGMuD2B95X8JrcyM3SCq+c8klRnG5KVHLdpQ2qlDODUr+7zsM7KiMQY8zokIcCbigaPhZh55GyNX2zu7qeu7zO1uAtFReFGFz7LDgstlErR7vG0qREWsgwKQtIxyhnM6Z2dMRR3S1xTMAAmxIidVJSwe6DYeF8orDqEIMi6eU3Gng+3PdIM5LFu2k8V9njQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA4PR11MB9081.namprd11.prod.outlook.com (2603:10b6:208:56e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.44; Thu, 27 Mar 2025 10:02:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 10:02:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Topic: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Index: AQHblK1kXAWMq/0wgUijyeOyOlRzwrN9YkgAgABDOoCACOr0gIAAROmA
Date: Thu, 27 Mar 2025 10:02:36 +0000
Message-ID: <a075a4e71f93d71c8e830bbfbf538b0fcab755e4.camel@intel.com>
References: <20250314065015.879143-1-jouni.hogander@intel.com>
 <BL1PR11MB5979ECA217C60944121BF197F9DB2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <cff2088e6f38bd23a694beee993b070ff0ebee9d.camel@intel.com>
 <BL1PR11MB597966EC25F3724311A5A0CEF9A12@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB597966EC25F3724311A5A0CEF9A12@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA4PR11MB9081:EE_
x-ms-office365-filtering-correlation-id: cdf5ec02-e2b0-48ac-b828-08dd6d168076
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?enRHR2lsamVJSEc0ZHZzWmN6cXhCazVuTTFhSnhZcmRHT2pWSXdidFQrdTJJ?=
 =?utf-8?B?ZWRmeDlQNUE5ZWtGY0tTaWt4RnVtOXlhWk5IVlorZjd0eWQwUFRGdzZzSUsz?=
 =?utf-8?B?SHY5eGU2SWdTL3JYZGFhUmZGYjYxdUdqUGxza0U3Q1lWM202bnNjWTZNVGNU?=
 =?utf-8?B?aUtwbTFLOWxORW0wcDZVQkNuSG11WTl1dGtxUnRTZjdXUEU5bW1zLzRrZXBW?=
 =?utf-8?B?ZFJzU3dwV0gweTJxUDdrZit4ZHl0ckI0TkNCZHA0VXMrNUNVZzJ0OXl2YXE2?=
 =?utf-8?B?VGdtaEs3dTVETXZ4UksxcGtNSERxaFpLem5yOW85czJTdEVlSk0zTWQ5TUdk?=
 =?utf-8?B?Q2hwbUg0NTh5K0gxc0RPSFlYU2hoNW9TUWw4R0VDQms4VllRS2lYN0E5L3dY?=
 =?utf-8?B?NWtyQWhrM3haY3B6azd1LzlJYnQ3cy80WEZxaSt5VUQ3RGNIRkdJVGxKVGVL?=
 =?utf-8?B?VUNIMzY2bGRTZktQUW1rb2psRlYyaElLZFRuSCtvTTVDWmpPZXMwTmdMY0JM?=
 =?utf-8?B?UndKQjRuTlNHS2ZUV1NmWmJtWjRKbld4RGJvdEY3c2pSTTRMQ0JvOXNhamtj?=
 =?utf-8?B?OFo2MU80amJzaEpVbUE3SmJkTlZMVDd5U3VESkNEY1liUlB3VkxlRUJvOUEx?=
 =?utf-8?B?MTQwVjVLbkpEV0NaSjFDUlNJVzJRaEk0N2hPNklSRHplbHozL2ZDd3ZvbGRl?=
 =?utf-8?B?K3dXR1ZTUUVGWU1IZzQ4VnVzQVo2SWNMTWRkN2t3cXFJVXI2ektCS2hEZGdS?=
 =?utf-8?B?Z1F2a0xhTEJ4Qk8xK2tiTGdlM05xT28xQW13OEh2c3Zzcm1IZWFBVERYU240?=
 =?utf-8?B?dnc2ZXlOdmhraWw5cGsrV0JYU2p5MVg0MnRDb1ExOUNsUmNCSDhyQldub1Z6?=
 =?utf-8?B?djJwdENpNFRzaWFiT29xemxkL1lsWVFzR3l2TEN6Q29QQ29YQlkwZVQ5bU9G?=
 =?utf-8?B?SDVmdWlqcjFKRkpxOGNGYXo2dURlQUV1Qkd6MVJjLzJFRGZsTHQwbG1ObFkx?=
 =?utf-8?B?VFk4SnJGbjd6NlhDTTZaWmw2enFCcXpoL3N2elNOaFRVVkRLU2hlOU0zeWF5?=
 =?utf-8?B?cE56UWUxRE1lQjc1bFRBSGw0U0ZZazJwait1cUZCSHFNL29BckVqTEV3WVNo?=
 =?utf-8?B?NUF5ZG1SbCttU3JpZTkwMExQL1lrOE1EYTRCN0tETWVWaEplb3dMRlBtRmp4?=
 =?utf-8?B?OC9XYnVUZSs4NXBuS0VXREY5T1c4TDNqVXQ4YnlpelMrRDlwN1NnY0VsYnhu?=
 =?utf-8?B?TEk1T1BCRTgwRmRsTEZOWU43L3BTMkNFbEwyQ0J5Q2dlZjRiRDlWb2d2K2Jy?=
 =?utf-8?B?NkczOTIyUVEzeVZrTlhPd1gvTVRwMG14RnRoUTRDWEE1Rlk5OGdqSnFZazZl?=
 =?utf-8?B?U3MwWDgrM0VOV3BvTGozanVlSkNqb0pFcEUzUEhkQll6dng4alpNR0FMTW9v?=
 =?utf-8?B?YVIrbVdjbVc5REN5Kzc2MzFKODRBOHBRa014MmRMbXJ5RGRDV0RRSWJtVVJ1?=
 =?utf-8?B?S3QvNlhQWlJ3L0RzczJQTnlrNlFjWWdNU1BjeVgrdTIrRTVFZGRmY1RRNHhP?=
 =?utf-8?B?Sk5iQ3M5QWt2bUYvZ0prbm1sUmxoRFlFTElHUG94SmFheC9tTjFTRGpaVkFo?=
 =?utf-8?B?WEdtM1dmWnF4bXhCellHcmhBamhBYm54Z2Q0T0xtOWNGYTRXZ0tDU3FNQWRx?=
 =?utf-8?B?NE92NU1tZXg0VHAxY3JIQ2p5LzQrYUNrMkJnK3p2WGpLemZXeENlbDlsdGFW?=
 =?utf-8?B?ZGc0c3RBblluZ2g4RXRxTUZFREpFdjg3UmRMb1ZPQW9RU1dkV2wvQjc3QWdh?=
 =?utf-8?B?VmZtdmpjRERVVkhtNCtIK010RHlQMnlLRTFlbGlKWHdNSmlKamNka0Fla1VO?=
 =?utf-8?B?TkJKZ05pOHdYRk41TXBxMFluUnVHbUs1MjdFcGRuV0xNdHhGNG5aUDBKQVlG?=
 =?utf-8?B?K2xTVVF3V0xvdlNtQ084QXpxQXoyM0RGV3lxaml3U0FsSm4ycHRXM3VFVXJH?=
 =?utf-8?Q?Eb/kuIyzGVH1Un7Yv3fy67Cgknc/CI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nk9BcC8yVGgyQ0J1N3FqZUdVSFd0RDgxYU1FUmgvZmVlaFAyYURab05BSzY1?=
 =?utf-8?B?SHRCWThtcnd1TzRPaTZZbmc1dC9GakVjWUtDUGEzODE3VEVyczBMVWZtVFZZ?=
 =?utf-8?B?eVd5dzl2dXV5Tmt0L2ZaQURtTE12MWJDd2ZyQ1VhU3Q3bWVMSTlEU3Z2OWxY?=
 =?utf-8?B?UTBtaG42OE1YZFpLVUcxaWo3WDltV2VwbjNVVllyYjhBMkhZc1lqUUtuT1Zn?=
 =?utf-8?B?bDcvRzd0cDdqM2J4VXA1dDYvR0RUMTVWODdvdU4rdDJJWmY0ck56VzhkRnB6?=
 =?utf-8?B?N2hXeUNZR0tJOUZJbURoM3g2WW9OdGU1TjhScUpISjRoNjhFR2ZMdkJaVVIx?=
 =?utf-8?B?bW9vRmo0MlpRYlZkcnN0b3FOcExKNzVRbHJ0MXoxMnp2MWlkTHprZWNBN1Qv?=
 =?utf-8?B?cWJXbVRJRDFNNHd2ekVhajhHaFVlMk5rcmVHSkpQRjMvbkcrSHo2YUozRmdW?=
 =?utf-8?B?dkFkZkh6UjB5Z05Oc3Z3b2FCVEN0emNtakoralJPeTVLRHJGVTJ4OUdXSnBp?=
 =?utf-8?B?ZGJPV2k5R0NEbm5vRzM1TE5COXNGVHVadmJWUjBtTElVVWhPQ1puckFUUTBV?=
 =?utf-8?B?L3ZWQ21qY0NaN2ZUMDZZa1V6bVdJU3RjOVJhWDdYYTllb2F6K0VJcEtjcEFF?=
 =?utf-8?B?anlMYTJnbWtlNysxVCtoZ2ltSk1wU3VBTlR2YzBPU0ZpaEFoNEtoaWx4SUhP?=
 =?utf-8?B?QWxaSXI0Z3JVTjMvWUYyODdQVXhWdzB4NXNRN0xRU2JPcHFJQ01Wam1zQ0Fl?=
 =?utf-8?B?YjdyanZSajczdENxMkJscHI0ZzBUQ3c5KzZjeUFmR2kwaUVMRUFiSkNXZ3JQ?=
 =?utf-8?B?ZlJqSS91bzNtaWl1WWNnMzZidzNNZDR5anBvWlpzNHpLbHBIelhVTnlhRkMx?=
 =?utf-8?B?ekNWQlpJMnB4Z0JPL3pKTDFtcDRPbzNkWC94azJjVlN2N2wrSlVKZVFIbm1q?=
 =?utf-8?B?dDQrQyt0TTVpQnBxbDB3dlhkeU03RDh3RFh3QTJzMlVXS3Q5b3JGemFFVHRL?=
 =?utf-8?B?MU9oaS9yU3l4KzNuZTRscjN5ZWd3NTJhUFpDVTF2REFEVHBIQnhJcjYwbHRN?=
 =?utf-8?B?ZlFpUGxyc004djlLWDYybytjbXNwV0hFbXVTZklZSlJ0NWhkUm0vVjJ6VDJG?=
 =?utf-8?B?MUxDWnI2Ni9GOXFOdmVCZWp5ZkFqVUVkODVRZXpuZ0xOeGZmdjBVRkdUNWVp?=
 =?utf-8?B?M3F1ZkdEMEdLY3pmb1owczRKeEZkdGlOUmxXQ0Vqc1JrcGJiZHNxQnJEQzRm?=
 =?utf-8?B?WGx6OXZzSTZicngzOUwzanlJeFhoTSswRFArU00xUGVPZTROd3VGNVZWNHdS?=
 =?utf-8?B?dVh3S1NwZlVlbW1LMG1Nd0tpWlJPd3pzaG9OSk9MM2paZVdzR2VISnEwUWR0?=
 =?utf-8?B?ZEtoWExuaU11eTR4SkExOFBwbVdQQ1VQU3VuR3FlQkFpQ1FDekJjRENyd2Rw?=
 =?utf-8?B?TGgrdWhNck1FMHJKcHdHc3R2QWpwQjEwdXFzcEdOSXU3VTJuSmxINWJreUNU?=
 =?utf-8?B?OTVhWmt3cTgvZWhQV1IwUkUxN25obWJ2UXZPMXpUdlZ4TTlZY050VFhNV0xM?=
 =?utf-8?B?ZWQvU3RyNllqV0Yyd3l3N0QwQ3V6ZXErOUxlOVRzM1hMQU1YVWJHUGF1QWZE?=
 =?utf-8?B?QTUzSkZvSjNkbzlWTTBQY0RCNEJWeUZSN1ExUTExdmxyUzFJMjBTM3R3R0Fr?=
 =?utf-8?B?M1JUOThZWTRZRjMraVBoVTdmNWQvdGwrQ294VTYxOW9zWnRxUDN3QythN3Z2?=
 =?utf-8?B?ZThiTzVScXhHbnV0L2hUUEpUUTdrdDl3Yi9oNXplT2gvb3h2UmxQeWs5TUVH?=
 =?utf-8?B?V1dobkFwenJ6Qm5OWDQxc2doTnY1VThhTjc0RWQ5d1ZvVWkvdmxWNGx6djND?=
 =?utf-8?B?amErL2F0cDhaaTlqaXZyM2liMGtKL3N6V2V4c3VwekFEWjRHQVdma0N4d3Jn?=
 =?utf-8?B?azRoQm81RVFIeTBZUTVRZGVUWWZSYmk0T3lwK3YrTjZ0emR4ZHd2ZGw3TjI5?=
 =?utf-8?B?dUhmV2lBL21Ua3c3eDRQYm5wWFgxT0c0UnBPa3RnK1lyZS95d1BtRjMzcHFl?=
 =?utf-8?B?YkVieW44K0ZxdGFkOTRGeW1tTnJDakl3cGZYb0hYVFdqdkNtN0ZOOEVadlR6?=
 =?utf-8?B?MnRjWXQyV0FmcHBaYStmcTdJWk5qMjE2SlF3TEpBVkxIS1dMRC9ZcEI3TWdB?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <33D80990727046488A48D208CC718C55@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf5ec02-e2b0-48ac-b828-08dd6d168076
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 10:02:36.8238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KB8Z+KKJngbhFoxpZvRDa3LLsQzAG4lbRPE3mUud6HgotRTts4bo67r1rO/+cFpFQrOjNxVojMt8EEPdFkI/XlBnBqEs18QWzZZbMwYv0CQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9081
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

T24gVGh1LCAyMDI1LTAzLTI3IGF0IDA1OjU1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBN
YXJjaCAyMSwgMjAyNSA3OjE1IFBNDQo+ID4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgTWFubmEsIEFuaW1lc2gNCj4gPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJt
L2k5MTUvcHNyOiBBZGQgUFNSIHBhdXNlL3Jlc3VtZSByZWZlcmVuY2UNCj4gPiBjb3VudA0KPiA+
IA0KPiA+IE9uIEZyaSwgMjAyNS0wMy0yMSBhdCAwOTo0NCArMDAwMCwgTWFubmEsIEFuaW1lc2gg
d3JvdGU6DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+ID4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZz4gT24NCj4gPiA+ID4gQmVoYWxmDQo+ID4gPiA+IE9mIEpvdW5pIEjDtmdhbmRl
cg0KPiA+ID4gPiBTZW50OiBGcmlkYXksIE1hcmNoIDE0LCAyMDI1IDEyOjIwIFBNDQo+ID4gPiA+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiA+ID4gPiBpbnRlbC14ZUBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3Bz
cjogQWRkIFBTUiBwYXVzZS9yZXN1bWUgcmVmZXJlbmNlDQo+ID4gPiA+IGNvdW50DQo+ID4gPiA+
IA0KPiA+ID4gPiBXZSBoYXZlIG5vdyBzZWVuIHRoaXM6DQo+ID4gPiA+IA0KPiA+ID4gPiA8ND4g
WzIxMjAuNDM0MTUzXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gZHJtX1dBUk5fT04ocHNyLQ0K
PiA+ID4gcGF1c2VkKQ0KPiA+ID4gPiA8ND4gWzIxMjAuNDM0MTk2XSBXQVJOSU5HOiBDUFU6IDMg
UElEOiA0NDMwIGF0DQo+ID4gPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmM6MjIyNw0KPiA+ID4gPiBpbnRlbF9wc3JfcGF1c2UrMHgxNmUvMHgxODAgW2k5MTVdDQo+
ID4gPiA+IA0KPiA+ID4gPiBDb21tZW50IGZvciBkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBz
ci0+cGF1c2VkKSBpbg0KPiA+ID4gPiBpbnRlbF9wc3JfcGF1c2Ugc2F5czoNCj4gPiA+ID4gDQo+
ID4gPiA+ICJJZiB3ZSBldmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5lZWQgdG8gYWRkIHJlZmNvdW50
IHRvDQo+ID4gPiA+IHBhdXNlL3Jlc3VtZSINCj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMgcGF0Y2gg
aXMgaW1wbGVtZW50aW5nIFBTUiBwYXVzZS9yZXN1bWUgcmVmY291bnQuDQo+ID4gPiA+IA0KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICstDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAyNiArKysrKysrKystLQ0KPiA+
ID4gPiAtLS0tDQo+ID4gPiA+IC0tLS0NCj4gPiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDEzIGlu
c2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gPiA+ID4gaW5kZXggOTlhNmZkMjkwMGI5Yy4uNjVjODA4YmJhMWM2YyAxMDA2NDQNCj4g
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gPiA+ID4gQEAgLTE2MjAsNyArMTYyMCw3IEBAIHN0cnVjdCBpbnRl
bF9wc3Igew0KPiA+ID4gPiDCoAlib29sIHNpbmtfc3VwcG9ydDsNCj4gPiA+ID4gwqAJYm9vbCBz
b3VyY2Vfc3VwcG9ydDsNCj4gPiA+ID4gwqAJYm9vbCBlbmFibGVkOw0KPiA+ID4gPiAtCWJvb2wg
cGF1c2VkOw0KPiA+ID4gPiArCWludCBwYXVzZV9jb3VudGVyOw0KPiA+ID4gPiDCoAllbnVtIHBp
cGUgcGlwZTsNCj4gPiA+ID4gwqAJZW51bSB0cmFuc2NvZGVyIHRyYW5zY29kZXI7DQo+ID4gPiA+
IMKgCWJvb2wgYWN0aXZlOw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gaW5kZXggNGU5MzhiYWQ4MDhjYy4uNGQ0ZWNmNzU1
NWI2NiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gPiA+IEBAIC0yMDI0LDcgKzIwMjQsNyBAQCBzdGF0aWMgdm9pZA0KPiA+
ID4gPiBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiA+ID4gPiANCj4gPiA+ID4gwqAJaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2UoaW50
ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiA+ID4gPiDCoAlpbnRlbF9kcC0+cHNyLmVuYWJsZWQgPSB0
cnVlOw0KPiA+ID4gPiAtCWludGVsX2RwLT5wc3IucGF1c2VkID0gZmFsc2U7DQo+ID4gPiA+ICsJ
aW50ZWxfZHAtPnBzci5wYXVzZV9jb3VudGVyID0gMDsNCj4gPiA+ID4gDQo+ID4gPiA+IMKgCS8q
DQo+ID4gPiA+IMKgCSAqIExpbmtfb2sgaXMgc3RpY2t5IGFuZCBzZXQgaGVyZSBvbiBQU1IgZW5h
YmxlLiBXZQ0KPiA+ID4gPiBjYW4gYXNzdW1lDQo+ID4gPiA+IGxpbmsgQEAgLTIyMTAsNyArMjIx
MCw2IEBAIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGUoc3RydWN0DQo+ID4gPiA+IGludGVsX2RwDQo+
ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+ID4gwqAgKi8NCj4gPiA+ID4gwqB2b2lkIGludGVsX3Bz
cl9wYXVzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKcKgIHsNCj4gPiA+ID4gLQlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxf
ZHApOw0KPiA+ID4gPiDCoAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsN
Cj4gPiA+ID4gDQo+ID4gPiA+IMKgCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5F
TF9SRVBMQVkoaW50ZWxfZHApKQ0KPiA+ID4gPiBAQA0KPiA+ID4gPiAtDQo+ID4gPiA+IDIyMjMs
MTIgKzIyMjIsMTAgQEAgdm9pZCBpbnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2RwDQo+ID4g
PiA+ICppbnRlbF9kcCkNCj4gPiA+ID4gwqAJCXJldHVybjsNCj4gPiA+ID4gwqAJfQ0KPiA+ID4g
PiANCj4gPiA+ID4gLQkvKiBJZiB3ZSBldmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5lZWQgdG8gYWRk
IHJlZmNvdW50DQo+ID4gPiA+IHRvDQo+ID4gPiA+IHBhdXNlL3Jlc3VtZQ0KPiA+ID4gPiAqLw0K
PiA+ID4gPiAtCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgcHNyLT5wYXVzZWQpOw0KPiA+ID4g
PiAtDQo+ID4gPiA+IC0JaW50ZWxfcHNyX2V4aXQoaW50ZWxfZHApOw0KPiA+ID4gPiAtCWludGVs
X3Bzcl93YWl0X2V4aXRfbG9ja2VkKGludGVsX2RwKTsNCj4gPiA+ID4gLQlwc3ItPnBhdXNlZCA9
IHRydWU7DQo+ID4gPiA+ICsJaWYgKGludGVsX2RwLT5wc3IucGF1c2VfY291bnRlcisrID09IDAp
IHsNCj4gPiA+ID4gKwkJaW50ZWxfcHNyX2V4aXQoaW50ZWxfZHApOw0KPiA+ID4gPiArCQlpbnRl
bF9wc3Jfd2FpdF9leGl0X2xvY2tlZChpbnRlbF9kcCk7DQo+ID4gPiA+ICsJfQ0KPiA+ID4gPiAN
Cj4gPiA+ID4gwqAJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiA+ID4gPiANCj4gPiA+ID4g
QEAgLTIyNTEsMTMgKzIyNDgsMTQgQEAgdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRl
bF9kcA0KPiA+ID4gPiAqaW50ZWxfZHApDQo+ID4gPiA+IA0KPiA+ID4gPiDCoAltdXRleF9sb2Nr
KCZwc3ItPmxvY2spOw0KPiA+ID4gPiANCj4gPiA+ID4gLQlpZiAoIXBzci0+cGF1c2VkKQ0KPiA+
ID4gPiAtCQlnb3RvIHVubG9jazsNCj4gPiA+ID4gKwlpZiAoIXBzci0+ZW5hYmxlZCkgew0KPiA+
ID4gDQo+ID4gPiBBbnkgcmVhc29uIG5vdCB0byBjaGVjayBpbnRlbF9kcC0+cHNyLnBhdXNlX2Nv
dW50ZXIgaGVyZSwgbWF5YmUNCj4gPiA+IHdlIGNhbg0KPiA+ID4gY2hlY2sgZm9yICFwc3ItPmVu
YWJsZWQgJiYgcHNyLT5wYXVzZV9jb3VudGVyID4gMC4NCj4gPiA+IE90aGVyIGNoYW5nZXMgYXJl
IExHVE0uDQo+ID4gDQo+ID4gV2hlcmUgeW91IHdvdWxkIGRlY3JlYXNlIHBhdXNlX2NvdW50ZXI/
IEFyZSB5b3UgY29uY2VybmVkIG9uDQo+ID4gdW5iYWxhbmNlZCBwYXVzZS9yZXN1bWUgY2FsbHM/
DQo+IA0KPiBZZXMgd2l0aG91dCBpbnRlbF9wc3JfcGF1c2UoKSBnZXR0aW5nIGNhbGxlZCBpZiBy
ZXN1bWUgZnVuY3Rpb24gaXMNCj4gY2FsbGVkIHdoaWxlIHBzciBpcyBlbmFibGVkIGhlcmUgcGF1
c2VfY291bnRlciB3aWxsIGJlIGRlY3JlbWVudGVkDQo+IHdoaWNoIG1pZ2h0IHJlc3VsdCB1bmJh
bGFuY2VkIHNpdHVhdGlvbi4NCj4gV2UgbWF5IG5vdCBoaXQgdGhlIGFib3ZlIHNjZW5hcmlvIGJ1
dCBnb29kIHRvIGFkZCBhIGNoZWNrIGlmwqANCj4gcGF1c2VfY291bnRlciA+IDAgdGhlbiBvbmx5
IGxhdGVyIGRlY3JlbWVudCBpdCBpbiB0aGUgc2FtZSBwbGFjZQ0KPiBjdXJyZW50bHkgYWRkZWQu
DQoNClRoYXQgd291bGQgY2F1c2UgcHJvYmxlbXMgYW5kIGJyZWFrIHRoZSB3aG9sZSBpZGVhIHJl
ZmVyZW5jZSBjb3VudC4gSXQNCndvdWxkIGFsc28gaGlkZSBwb3NzaWJsZSBpc3N1ZS4NCg0KSSBj
YW4gYWRkIGRybV9XQVJOX09OKCFwc3ItPnBhdXNlX2NvdW50ZXIpIGludG8gaW50ZWxfcHNyX3Bh
dXNlPyBUaGF0DQp3b3VsZCByZXZlYWwgcG9zc2libGUgdW5iYWxhbmNlIHByb2JsZW0uIElmIHBh
dXNlX2NvdW50ZXIgaXMgbm90DQpwcm9wZXJseSBkZWNyZWFzZWQgdGhhdCB3b3VsZCBiZSB2aXNp
YmxlIGluIElHVCB0ZXN0Y2FzZXMgY2hlY2tpbmcgUFNSDQplbnRyeS4gV2hhdCBkbyB5b3UgdGhp
bms/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+IFJlZ2FyZHMsDQo+IEFuaW1lc2gN
Cj4gDQo+ID4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gDQo+ID4g
PiANCj4gPiA+IFJlZ2FyZHMsDQo+ID4gPiBBbmltZXNoDQo+ID4gPiANCj4gPiA+ID4gKwkJbXV0
ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiA+ID4gPiArCQlyZXR1cm47DQo+ID4gPiA+ICsJfQ0K
PiA+ID4gPiANCj4gPiA+ID4gLQlwc3ItPnBhdXNlZCA9IGZhbHNlOw0KPiA+ID4gPiAtCWludGVs
X3Bzcl9hY3RpdmF0ZShpbnRlbF9kcCk7DQo+ID4gPiA+ICsJaWYgKC0taW50ZWxfZHAtPnBzci5w
YXVzZV9jb3VudGVyID09IDApDQo+ID4gPiA+ICsJCWludGVsX3Bzcl9hY3RpdmF0ZShpbnRlbF9k
cCk7DQo+ID4gPiA+IA0KPiA+ID4gPiAtdW5sb2NrOg0KPiA+ID4gPiDCoAltdXRleF91bmxvY2so
JnBzci0+bG9jayk7DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPiANCj4gPiA+ID4gQEAgLTMzMjIsNyAr
MzMyMCw3IEBAIHZvaWQgaW50ZWxfcHNyX2ZsdXNoKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4g
PiA+ICpkaXNwbGF5LA0KPiA+ID4gPiDCoAkJICogd2UgaGF2ZSB0byBlbnN1cmUgdGhhdCB0aGUg
UFNSIGlzIG5vdA0KPiA+ID4gPiBhY3RpdmF0ZWQgdW50aWwNCj4gPiA+ID4gwqAJCSAqIGludGVs
X3Bzcl9yZXN1bWUoKSBpcyBjYWxsZWQuDQo+ID4gPiA+IMKgCQkgKi8NCj4gPiA+ID4gLQkJaWYg
KGludGVsX2RwLT5wc3IucGF1c2VkKQ0KPiA+ID4gPiArCQlpZiAoaW50ZWxfZHAtPnBzci5wYXVz
ZV9jb3VudGVyKQ0KPiA+ID4gPiDCoAkJCWdvdG8gdW5sb2NrOw0KPiA+ID4gPiANCj4gPiA+ID4g
wqAJCWlmIChvcmlnaW4gPT0gT1JJR0lOX0ZMSVAgfHwNCj4gPiA+ID4gLS0NCj4gPiA+ID4gMi40
My4wDQo+ID4gPiANCj4gDQoNCg==
