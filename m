Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBF6BFF9B4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0088010E89B;
	Thu, 23 Oct 2025 07:31:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HN/+Zv3i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1CD10E89C;
 Thu, 23 Oct 2025 07:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761204674; x=1792740674;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=twEUnncoNyDnLc6HVZThOXiFBdjMKslom4dZ80zoP74=;
 b=HN/+Zv3iPsdoS7Qj8X/T1q7OCZh/fZGPTFljw5x1bdT3x5Eo8lt2u3+u
 4NGLvenk4D3ppqSeGczrrAA8JGqJWPpaFoFL+IXsBkKmihFA6Z48jNpUM
 MqCPFq7A6Vtbz9XEb/g4qpAKAsXj9pGNzxWYM18d4I/mRSfWaBvEPA18I
 Ec8v5P6GgW5kZvwlDj1XWfiX5tEBpuuFg7yi4+FX//DaIseLcqOmr+ZD6
 D9MkgdzdOERyJRL9iKIh2m/JMWBBZQNggbCMSFKnDtqrCGP70JEDpWnPX
 oavMyAFsCyMwrHF0f3cw6JJ9XhNHa38IpwB3Bgah7nI7P4ff8S0PpxduC g==;
X-CSE-ConnectionGUID: yGSG+O5zSQSADWHikvFIag==
X-CSE-MsgGUID: M2sYs8OYQWyrJ3CHnFWtnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63405008"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63405008"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:31:14 -0700
X-CSE-ConnectionGUID: lZ0dLGFlRHC4p4f2uc/neA==
X-CSE-MsgGUID: Yrqj9E++QbSg0gFwHRQ5OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="183979887"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:31:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:31:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 00:31:13 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:31:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjbCgo5sX+J2Ir4tSzi92uywQE/9R74/Th+C2cBsH0daziHz/B1zLt/XxcInpQFmVOzHM1fUnK4yTHcPc/vUgmFMGL8JA/Zb0u9+MOWsD0P+2iQojVeZNM5ASctEfkmH247rF9A6YcMk2t+VYMeaRv1UpdJ92yP95FYnd6b6RNhTTTV34Eqtj4juD8g9MKeW41w0dPPbZh2Hd7JOtWb4uvoxegU1hXO4f/eg0epAMSg8HEX9pMUAqZlr+2u7VNf2i4fT1Gz16PqQmttq9zGeZNljOlFVlAWWn/sjJ7vzeKgLeSwHpB8O2oKJAVteqmB0uycfKizIDVbbiw2s+Iak0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twEUnncoNyDnLc6HVZThOXiFBdjMKslom4dZ80zoP74=;
 b=uVB5/sfWn6jtdDKlr9R8Mn3xiVloeBbuRqYkPN4edcdWkFvwqeA0If17MU7/nxZ/y5fmbw2a0vFkuxGEZpXefOsJXHdX68T39F7CXEYo5LSowU4Q2GyBtxsluFSgmDqov7B3ScAf8LCtg1Y6XeQ/YC8nKIWbWf1jEKah2wihpMNU9gABYaMj3/OXrdCRw0fTj8tAHHjcXAIOosm/rIkmu4l9VCdXgzORdiMee7p73ykCkoq7WZUE9puSgPnpsL/ljCqSZOToM1dreQW7lKcdQFoNhXvXqFyURMxRMtWJTOoKM3yux3chXwNrCNioWPWVcTQPrnOarr9IowW+UaZKPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Thu, 23 Oct
 2025 07:31:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 07:31:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/xe/compat: drop include xe_device.h from
 i915_drv.h
Thread-Topic: [PATCH 2/2] drm/xe/compat: drop include xe_device.h from
 i915_drv.h
Thread-Index: AQHcQ02LOx5OwK6bO0OZLVtTXYNe47TPV2YA
Date: Thu, 23 Oct 2025 07:31:11 +0000
Message-ID: <e9057926efe25669fdb793a4a9b14bb4b52eae8f.camel@intel.com>
References: <20251022121450.452649-1-jani.nikula@intel.com>
 <20251022121450.452649-2-jani.nikula@intel.com>
In-Reply-To: <20251022121450.452649-2-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5288:EE_
x-ms-office365-filtering-correlation-id: a344cde5-068f-4d67-f095-08de12062412
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NzJaTHlyZVUveXNEcm5leCs4M29VRkFtR2N6MlM4dWQvTVNvUkpqYTBobW85?=
 =?utf-8?B?czNTUHhhRktIZzhqdk5zNkRoc0k5L1lValRZUE5iYzRvMEEwNjdwQkgvQWY1?=
 =?utf-8?B?ZXRYNVBQamhYRnZ1R1pwYStvd29LblhrNytLalByWGlsdEJ4azZQUkwzWTFv?=
 =?utf-8?B?THBpUlBpenRpa2Q1SXRxU0FPcDFsNFNjbkJzcUtsSm42S0VmNWdRUE1YS2E5?=
 =?utf-8?B?V2sxR2t1VzNERE4xTVBKSE1ROXNSSS9KWU4wcXRSK1dIN2N3di9tQU5HYVg2?=
 =?utf-8?B?VUVHRTF6QnU4ai9WTGE0R1JSYXplR1BmWDIxczR3ZVFKZU9nMjdGUXZ3NG9o?=
 =?utf-8?B?aHltTTNVWmlkMkRFdVhIcnRPYmwzWGVVS3gvOUh6MEdJLzhxRklwdEpZbGps?=
 =?utf-8?B?M0FYQ0FRK3F5b3Rpc2Y5b2hHSEUxdldDb0lORkNTcjNHOHlQcTRtY29WVXUz?=
 =?utf-8?B?eDRDU0J3MlpLNEN6c25hQVVUN0FXY1BPVGVQUUVXeERWWEVoaEEzUkVkWWpP?=
 =?utf-8?B?ZU4zY1ZBSUlLS096U1hZQjhvUVB0OHFzcEdjaXlMZnFMMkRuaFZuNVBmaUJw?=
 =?utf-8?B?SS9oRkplUGE2TWJhdWdoYWNDcXBJbk5oc3RjNVU3QTNwVml1ZTQ4N3lVdE0y?=
 =?utf-8?B?RkwzcmthRHd1SGRhb0xPOGdpTFp5MEdISlh5L2NRd0VWcE92bVpmZ2VNOUxy?=
 =?utf-8?B?L3hoRHlYUkVoa0RSKzJ3Q0FyaDVuYXBFeFZnSWlYOEpOYXVWNm05L3RacG9a?=
 =?utf-8?B?ck5rMUVDUXNOUjRRNThUMDUzT2xtbEJlZXI2bHQwSjJzTVNESUYwbEtQeU0v?=
 =?utf-8?B?M0JxUy9Dcm4rM0JZbjdKQlFOM2tHSEFaQmxla2xWVHFKczExQ1VBNHF6VDJX?=
 =?utf-8?B?ZVVSd0VCWHlGU01sbWR1NHVaK1BwQWYwZStTQnJPZ281V0pEejk2amxVcm8z?=
 =?utf-8?B?emFWdEU5TXBrQWJidHFzeXllS2VuZjlQK0hwalpmeW8yMEQvWWJYVnFGOFh0?=
 =?utf-8?B?Z2I1KzVLWUNrS0pQRHZGd0V4K0w1S1dBamNJVUk3djlmdkxaMWJXbWtIS25i?=
 =?utf-8?B?TWx2TTZCc3RCTmRXTndrMks1bi81dHRTN3NnbktpMy9JTmJhQ1pRbGFwbTZt?=
 =?utf-8?B?OURjZ1IrTXJDWUhFUkZNbHlZYW1QbFp0RnJiVS9oNWNheUJYWENMb01pUEh0?=
 =?utf-8?B?cjM2YVFzQml2dW5vOUhicEYrMDlWWSs2LzJneVF4S2lXZklGbjc3Qnk5QmZh?=
 =?utf-8?B?dVZ0TTZKRUlmWmdUTm9lSWpEUTg5b0RlT0hqdDdnMU9hWlRtSk5Gd29ic2xh?=
 =?utf-8?B?NEdNdFNGbHNOSndKY2xmeElWWTlVNnpuWXBhdGJsNXFZSjNsMUpBUjhicnZE?=
 =?utf-8?B?SDd6Q1JTSytqZDNwSzE4cUROamRuaitGSXdqaGthSlNKQ0hRREkwejlYdWov?=
 =?utf-8?B?UkNNR29mdmFVbEtXdWttb3NuVTIzVVZMd0xaK0ErT1dnYWR2ZzNsR2ZXNEVT?=
 =?utf-8?B?cHJUM3pWQktUU2FzNkZYSFdTODN6YjVwUkpZRWF6aGFzMDJVQWRMSHZ2OTl4?=
 =?utf-8?B?dUZUeUJWSVNueDFRRzNjL0lkRGduWXdmMm41aDA4NkkvQXR6MEw4T2xnOC82?=
 =?utf-8?B?SndYVEIrMGpobGpjNWpGYWZMeC9JNW1UWmVzRDZsTEdxUm1FQm5UUllNVW1W?=
 =?utf-8?B?eHRNSzlZY0Z2MVplSFN6K1dDaTJrNHlWdk1EamNNMmlFSnVJdnp4c2wwbzh0?=
 =?utf-8?B?L2xGR1ZIdXVZSmxXb3NsWDBRR0NzUTF2MkVyekxJTm5sendVTWgwcmVIQU5q?=
 =?utf-8?B?N1E5UWdtVGhXdUZOcVRudnUzOEpDNVZvd0pWTmp1V0V4RmNhTitWSlpRZGQz?=
 =?utf-8?B?WHc0RkI0RDVOdW9MdkRja0VNLzBVMXBIZ1NMQ3BIYU9Mdml3TGRya1hjR1ZO?=
 =?utf-8?B?UWV6WmZwN0RvcmdlMTRsb05nVDhRK0ZVSVFLNFRLSitsOWhKdG5zUUJGdEI2?=
 =?utf-8?B?OUN1UzlUM3VlbWdMVHVvNTgxTkNlN3J2ek1qTHQ3RUhIaTZYYnhBVEhlTnVV?=
 =?utf-8?Q?/UxGlh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZThlclY5dzE4dG1UQzFNK0pXVHprQi9CRnIxdHpKNm9lMjY4TmNYM3BhV3lZ?=
 =?utf-8?B?UmFmclFEdVFoRmxNeG1VNlB3NzRzaE5IS1lZcCtHMCs4LzdDdXZGRjU3NFpw?=
 =?utf-8?B?NE5tdzZPMXU4a1doUEVsdms2VnErODE2anlBdVNabkhudGg3QU9ZVS91d0lq?=
 =?utf-8?B?aHZrdWlyV3h1YWNqK2xSbmF4TC80M2hCbDdHR3JGL25BTUkvSmF0akNNZW5E?=
 =?utf-8?B?V0dYTGR2ZTlHRkxVd1IvSUFLTjUwcElsQTE2VFVvUnpPU0g1OGhCNjFteStD?=
 =?utf-8?B?alMwYXc4ZXFGVXRoMlpXRW91NCtQaUl4RUxOYWVrV1Q4dit3L2c2ZDR2eWVW?=
 =?utf-8?B?bUZEUHRBTnpOZHcrRHBKL3BvSXpjQzAwdnNQaTFTYnUwZlVhMCtVRlRaZGpQ?=
 =?utf-8?B?TGVUT2pqY1g1RE44MjZpT3ZEMWtGcktZYmdMYjBkY1MxRHk3S2x2d3FnR0Vq?=
 =?utf-8?B?YUxpRFFULzI2aWhhU1Z2MG5zUm02OENMeExJRHRHdTJVWGZka1NlbnV6UkJK?=
 =?utf-8?B?d3BDU2RFUXBRQXlYNXFYcUhNd05hV1hFR0dwTHYvRW5TQ294NHNUdWFBU240?=
 =?utf-8?B?ZnBoM21pNFQrUHRlY2NGN2VLRWp4QmU3RWQ4S3hYdEpWaXZ2Y0E5MWpnSnZU?=
 =?utf-8?B?S0F1cDVXRm5STlh1b3oyVmhDOTBuNHE0b1NXbVNlQWgwOVJBVEpmOHhUTzR5?=
 =?utf-8?B?Y1YvbHF2eFVCNTRMaTJqcllJYjk5STcwUUs4eVQrWlZUSjA3bWhjcHZhUEl2?=
 =?utf-8?B?d2NFU2JLOE04RXM1czBNd3RIUTMxWU50Q0ZpRkpCMkpGTU1TZENSVUZzNDNB?=
 =?utf-8?B?NzJMMG1qUUhHb0ZzZVB5MmMxWHZkdXBQZzhrc3RHbUdla0dPeFJBRjBzS1hE?=
 =?utf-8?B?TVpFaTVqWmxoMlNLNXZmZ1lXcDhhZ0dWemllbkxYbFNCbWRzRzhINWlCT0g1?=
 =?utf-8?B?SjRId1JtaC9QdkZ2NGRIWlc2VXBKd29sZTRsK0ptNFlQdkcrNGkzdnlxNTJu?=
 =?utf-8?B?VVpWVnBTVnJCcE10Rzd5dVQyeENCU3lmK2RwdklGZDVnSm5Sa0pxc1ZseDJa?=
 =?utf-8?B?cVJUZUYwRXh4M2dua2x4aHZrQTZ3YUpxUlNvQXFnZ0thY1lTdzdNTWwwTVVw?=
 =?utf-8?B?eGYrZ0RvR2lsbE5zVUIya1FMaUNmcVA3MWQ5Ri9Hdmx4VjhtNmhlMlhFNDAv?=
 =?utf-8?B?QXVvRVRBbjA5S3huVzM2Ri9BRWt2OURBMFQ0WEhrSTZQTFVFREdIYndhSFJj?=
 =?utf-8?B?Ni9vSFhvN2t4Yk96OFgwL00wbUdzL2tPSEZaTjZpUXdtM2hZRU5tUG1PS29V?=
 =?utf-8?B?bGYzVm5EbkJ3ZWhsV21mNXRFS3huRUQraDJES3VTRTIrT3Q2ZnBqYWhQZWk0?=
 =?utf-8?B?eEEyaFczenBVV2hnMTBlQXJMVWxhaWRTaG81UXR0bW1nSXM2UlBRWC9aMHBH?=
 =?utf-8?B?b09TQ0FqbWs1SW5naXJyS2hQeHU0a1FPckx0L01VSFJEYVBUd21GQnFzbmFE?=
 =?utf-8?B?Ri9WL2NKS2RCdUpiQ2xhbDZMOFlkdjFaTndpbUVWNE84VWorUm95Qyt6b0Ja?=
 =?utf-8?B?Wis0R016RUhDMEJ2OTU3L2dvN0lYM0xuUWxoVm9GcjQvdEJpaVVMMmxNdVUr?=
 =?utf-8?B?bExtQjRUUHl3SmFJcjdPckdlSlVUeWQ4RUVkZk5vMUJQeGpRTDAyVXlMZ2l5?=
 =?utf-8?B?TXZSTXp0REJ2RGpqNGNOTWVkMWZsT01SVEhvWmZMNTVjMjVZcXl4bkEwajE0?=
 =?utf-8?B?VjNab1R6OU9VYmpTUkNPbG85VENUbFVpMTVnZEw1NnFWdTdIOU9nUkcwMjNa?=
 =?utf-8?B?dVpSUFgzb0ljckZldTl3Q2wvQVVYUTlGUU1oNlI0K3R3NXR5RW5sd0kwZStj?=
 =?utf-8?B?dnBTdHhpRkViQVBJM2RsVDZUbWE5RTZXdXNBOXJlbHZSVys0U3hFSzNkMlFm?=
 =?utf-8?B?QzhlSXlKZkJrakxWVldpWWtEQXRaejhKQzJySnRSYVdBRC9wWEx4KzE3VVFL?=
 =?utf-8?B?dDNER1pNY1dsVE1YYUM3MHNYOU55WW4yczhycUhvSG1IY3ordjFFbGNTbE9G?=
 =?utf-8?B?d0xRc2ttT3BXZ21Sajhnbmt5ZnVWWkRpeGg3dDl1MmVRV3BQSGpmaXUrT0o3?=
 =?utf-8?B?UHUyUU94QkF2TWhocjN3VEhpYitYblB5TnBaYWl1QnpGT21ucG94UkMvQmk3?=
 =?utf-8?B?eXh3Z29XTUpKSWJjRHhGRUV5Y3hSSmxtRE5VZVRaN29BNUNJSmlxdUN2bnMz?=
 =?utf-8?B?VmJIdzN6ZjNrWHhUTVVoY3lZdlpRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2A6EA1FAF15DA348AC145BC5F79553D9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a344cde5-068f-4d67-f095-08de12062412
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 07:31:11.6944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CjNQWrH5MaCSDelEe4IZiupZ0f8l+lTeimUeDvXvtj4sztHrb8HOb6Vd1bY39PCc46PPQSnfEGLeXuzIWeyunoBjX6VkRIgVdnGXRFKFHDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5288
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

T24gV2VkLCAyMDI1LTEwLTIyIGF0IDE1OjE0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
eGVfZGV2aWNlLmggYW5kIHhlX2RldmljZV9oYXNfZmxhdF9jY3MoKSBhcmUgbm8gbG9uZ2VyIG5l
ZWRlZCBzaW5jZQ0KPiBjb21taXQgM2E1YzVjNDcyYzBlICgiZHJtL2k5MTUvZGlzcGxheTogYWRk
IEhBU19BVVhfQ0NTKCkgZmVhdHVyZQ0KPiBjaGVjayIpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfZHJ2LmggfCAxIC0NCj4gwqAx
IGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfZHJ2LmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pOTE1X2Rydi5oDQo+IGluZGV4IDdjNjU3ZWE5
OGE0NC4uM2U3OWE3NGZmN2RlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvY29t
cGF0LWk5MTUtaGVhZGVycy9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9j
b21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfZHJ2LmgNCj4gQEAgLTEyLDcgKzEyLDYgQEANCj4gwqAN
Cj4gwqAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4NCj4gwqANCj4gLSNpbmNsdWRlICJ4ZV9kZXZp
Y2UuaCIgLyogZm9yIHhlX2RldmljZV9oYXNfZmxhdF9jY3MoKSAqLw0KPiDCoCNpbmNsdWRlICJ4
ZV9kZXZpY2VfdHlwZXMuaCINCj4gwqANCj4gwqBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICp0b19pOTE1KGNvbnN0IHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkZXYpDQoNCg==
