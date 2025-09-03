Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B88F9B41C32
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 12:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343FA10E136;
	Wed,  3 Sep 2025 10:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V8DpwCj4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7B810E136;
 Wed,  3 Sep 2025 10:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756896630; x=1788432630;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=s4KpwtnFY84ELgy3A7dKM4GfRnBdJJlz2ZV9rhhpiy4=;
 b=V8DpwCj4K+CUk1+qZKCW/f1MJTiJXhxETRyy8A9piIK3zEB5Pv5bMMHN
 q9uWlu+hpU96Bo2opMwf4DfTlPLhfUwslFzTvV4ypC4aoWsBZSQvnaCIm
 9UuGgPYstoCD0rVZo/0y/i0+a94dwwcPiOzJcmA77sMhsmTsOHDgpSQXY
 pQACvikA2tNpSNvUbsAZcNGh3lder4vFtVr9IIxMIP3jgi4a3Uer2IGlT
 tI2g1o8pwF3R7gUmF4BZ2NVtP3zGwYx36hmNKi1/DkomIggcZnC8KPWzV
 ChhGOT7nWQVvLFIMWol7YLkeTBU5oATo7uEAi9upCOamfWpfXrV6RLoAd Q==;
X-CSE-ConnectionGUID: aiuE8qTyQ8WcLdwD34+/0g==
X-CSE-MsgGUID: IiPMMTiaTwy7OFC6z2YY0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="70633722"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="70633722"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:50:30 -0700
X-CSE-ConnectionGUID: icHGhoHVQ5O0eipcjA/gpA==
X-CSE-MsgGUID: f2XwqDwHQpeB6XbfduLCWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="202434354"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:50:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 03:50:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 03:50:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.56)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 03:50:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j1d0uf/q27rvBt0Np4nX6sQTjygLEFiVtOX1w7vQ6ooIudTjwdKZ8j6AXcEqZ5iEED7jl/CFXOn34xdwu1L2r3+WB9pRFHPee+oQR2khfUNAaTE98IS51izYbOSkOiQD0uYir1/ej5PCvcOOc1Pn7cXi4LGjAPUrqCYyeDfN6cldZ2x8cFZunE06qR+0bTtI0rajpsIX1vR1eDgEQ+2ssBMbQwiqjs2+BSOkqdiVuvu1PMV3BCfgkmYXWusevyqhJLBjX27bbCGrsbb+0TSRyGwyC47yCdhRvIf3pqWct+FLnscbAYar3IKyuY+HK2h+W4HXv/NMPD6H/ipUOR1cUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4KpwtnFY84ELgy3A7dKM4GfRnBdJJlz2ZV9rhhpiy4=;
 b=UcYMwxpEx/ZLJZY0pmG3U3YVO+fw7YKJpBGhTNGfugLUot5Rtdwku75a+L6mEQ8E2OZE7KCHIIDgZQoGA+9qSytMhTdbLuBdgyP3JxAaFho5rchiRJOTfKAtcuymo7amUCJwdAfxt3GnlGlpL+iKxd/bt2qe33jjYpTx6sHdwDbOJmxE0uBPz6ItbgViy4eMnSfN84xU9XR/9qKw4Q0yPCHPq9g0ktJhuBC9ydUuhVK3jvP2IRNUP9aCnE26Bi11I83oHNnX9nvla8SabZMIJ5Xrrn9lCdmq1lLD46cdcKiLVj/v8pkwgXQB9sKETsB7UuzFPNaDGSfql9eTSefGBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPFEC87B8781.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::85c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 10:50:27 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 10:50:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/bios: Remove unnecessary checks of PSR idle
 frames in VBT binary
Thread-Topic: [PATCH] drm/i915/bios: Remove unnecessary checks of PSR idle
 frames in VBT binary
Thread-Index: AQHcGyi26gXmTHJSV028uglc6TdVXrR+HgAAgAMsyYA=
Date: Wed, 3 Sep 2025 10:50:26 +0000
Message-ID: <bf6dfda9da4b82e5bf2913d74cf712abfa9a3495.camel@intel.com>
References: <20250901101033.4176277-1-jouni.hogander@intel.com>
 <ffb7d264934868be9ca40d782cf496cac1d10a58@intel.com>
In-Reply-To: <ffb7d264934868be9ca40d782cf496cac1d10a58@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPFEC87B8781:EE_
x-ms-office365-filtering-correlation-id: e473d67f-0638-496e-13bb-08ddead7b0e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cDdGQXFTVHl4Ujk3Z0wyWkpPdmVQYXFGQzRXVTkwVnJTaXFlVVk1VUhIZ1ZH?=
 =?utf-8?B?YXNiQlV1eThXZk02M0xsKzBCYUlYb2JKQWdiV2JLVFhXYnZZbVN5QUJDdHFv?=
 =?utf-8?B?Rk1OUlp3eG0zYjlQcVRVSlNTV3cwWG9TMVprYytjZ1V6emgxcjB6eXFwdXFQ?=
 =?utf-8?B?ZzFlT0pnRG8rV1kwTDBRTzl3cWI2b28yQ0xkQ3hmYTBOMDZlVjdQUUZKdzk4?=
 =?utf-8?B?cWxpMmxBeFUzbUU4ZHdmcVMxcHUvNytCd2liZlErTjh3YVMwdzVFRDlDWUlZ?=
 =?utf-8?B?YmtaV01TM0VpeGMrZTFqd1FDeGNKM05uWlpjallPN2RzRjRpN2g2M1B4MDBs?=
 =?utf-8?B?SWhtQjdRSjdNNnNPZ2JLZW02blczUjhKU3phY0pNc21yWjJML3NhUVFTdXpG?=
 =?utf-8?B?MkN6VmJOYWYxN1l1Wkt5TmlWOXpPQ2hHN1ZyTDg5bkFNTENFZ2NhUzJGWFlK?=
 =?utf-8?B?MFJiaElkZTUzUU55R28xWDFBS2xKQ1dIRE1GSkhlS0kwRmRSUzN5dndXL25L?=
 =?utf-8?B?RmNBRndtYU56UUpUR29vMTZHVzhycDRjY0RCNkNQMlczZU03d0dPRHFpVHRj?=
 =?utf-8?B?cSs0MUp0eDE4NVhQTkVBWnQ3M1h2Z1Ezb0tOZlZWNHRTeVA2Q0FqMm9FMzA3?=
 =?utf-8?B?TUorMU83bWpHTWJuQ1NKcEF3Vk1GL1FtR1c5OGNOMGNVMG0yN01Ub2RsR3pL?=
 =?utf-8?B?TTVJNklGejZVb2phQk9BV29FbnlTSC9rVGRncUxzQVZsTEliaXNFUW96NitD?=
 =?utf-8?B?M0ZhbG9hdEZ4TmJPUEZKa0w4bXQ0VVRkRlJYQ3NFZVFHcDEwOEQyQjJhbDg2?=
 =?utf-8?B?VUMxNy8reC9rQVorZ1dtTk9NMmNUVnFlZUF5NkRWMzEwTDRRTmFOTTFOT1hm?=
 =?utf-8?B?U0svdW13Sm93blFVcStpVG5IWUZRSEdaYU44VlhGRkRiT1ViMk9JSHNMMnZq?=
 =?utf-8?B?clErbjlFYkFQbCsreE9xNDRBcU44REN6d3RYUVRnc1VFYSsyQTcraEpNNFEw?=
 =?utf-8?B?cnhxOHBrVFg4emFVS29UVjlkUmxhRWQ3ZmJYcVZHVWx6dmtlMTFGa0V2Q0hL?=
 =?utf-8?B?eEZwMHV0NERYdWJ2TlZURWN3QjZJdUVtZ1VINXhpNnIzbU0zYlBwdXBpbUx4?=
 =?utf-8?B?dmxCa1JXeE9ZTE9QVVBldHhzcHdDb0hQbm9xK094Z1VINDhzQ1I1WFkzUHhp?=
 =?utf-8?B?OVBLWEd4VTIwSVdud2pZWTljTXR5N21ibmUrOE1SdFZHU2F4UGZqbkVsTDhz?=
 =?utf-8?B?OGJ5VlBsbndjUWQ2UzNhQlBVTzh0M0RiK1B5Q1pDdmxaUU9tUXA5WEFZWHNL?=
 =?utf-8?B?MUJldVhsNFd0NWVsYW1wUWRaeFNvdVJMQWVmbCtMWmlNRjhiSmt6cVNnZ1hO?=
 =?utf-8?B?dzA4eFJqY2tFQjBsazRadVJob2V6M2p5elkwMHZXcmtUOENMUVp0bHZHRnZQ?=
 =?utf-8?B?SWsyTGFlRDBQTkloZjBKMUxYTC9RTjFnNTNqb1pROFRhdFRFUks1VzFSTnhQ?=
 =?utf-8?B?aDRBalVsTTFNK0tCeENDa3FhdS91bzFCTEx0aHV2Ty9nTVExMW44cTM2VmJD?=
 =?utf-8?B?NVN0bStteEgzU0FxanA3L3I4N2JjeHNLNGFUT3ZPNDJqU21KSnNua1RWMExa?=
 =?utf-8?B?eFF3MVJBZ0dJZ1hVZWpZRHFRVG8zdVUrVHdjSnlXc1NqOWJKT1d6Y3N0elZp?=
 =?utf-8?B?NzExMGMrbzdsM2FGOUZPWVNBdEdzSGtoZktlLzZSVGRBMHcvM2c2QUgrL21Y?=
 =?utf-8?B?TmhmZXU2TEtLM2ZXSVlybXZJcmpuZHRqa256YnU5SkFPL1ZoNlcxcHEyUG1V?=
 =?utf-8?B?dEJSKzJwVmdLRzJBL1JWK3BYSTNjaXVLZWpKblFCZ0N4SUxUQms3TG5laG45?=
 =?utf-8?B?M2Z1azlHVW5lYzRYcVM4bmtYeHQvVFlxOHFqQzBQUWRlYVZRQVR0KzNNY2k1?=
 =?utf-8?B?c3QzcWFPU2JVaW5nVEV0cVE2MjYwTUNUNDZ1QzFYamVoRXRINGF4cHVoL29H?=
 =?utf-8?B?bU5ZSHk5V1pBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDAyWVVOak0xYWN2VFN4dENERkxubVJkQVJ2L1kwdUJ1ei8wa0lyR3RwR2du?=
 =?utf-8?B?TXhUUWdVa040MVlrdzNhM0o0aDFuYjdKUnUwZWI4MkpWV1pKR2Noc3lxNUNR?=
 =?utf-8?B?Q3g4UG1FRmxpVVBqL3Fmck05V2txVHI2UW9kRlZIVGlyN2ZER0FCSVpVQ1h1?=
 =?utf-8?B?c0ZScVlUQURWdnRBVUNvdEpIQXZpbjB6VHZtdlhLdE13SmNRb2ZTTmxYY29a?=
 =?utf-8?B?aHBLUE4xNkdBUm5RcVVVejhJcU4zK3NQYXUva29sWmF3ZXRnTGRWVy9yZkdW?=
 =?utf-8?B?emJPZDEvQXJ5ZWVZUVlPU2Zrbit4Zk01a25MZFIyM280QmlIYkxVRXZKNTFN?=
 =?utf-8?B?Um8rb0NJNEt0N2crTTdkLzdHZm84T3l6QmExU0lGSEVtelpaemcvYy9lYW1K?=
 =?utf-8?B?djg0SFh6cENqaFpZbTRkQ2ZEckJBOU5TN1lDUVZhVHl1L2pJM09Ba2VEaThp?=
 =?utf-8?B?T3BxYVc5d0cyYzIybVNNanJ3N3ZPblJpZ0hvT2RWZVV4WklsR1hLN1hNWkN6?=
 =?utf-8?B?TEEraC84cE9KaGQva3NpcGxuTko4Tzh0dGVxVmVaU2toY3lvd2Fyc2lZY1d3?=
 =?utf-8?B?eEM0MHVJK0pTeDQwcy9FY0liaU9xRElvaDl3RXlHQ1BPVHJudC8xN1BoSWpW?=
 =?utf-8?B?T1ppSzZFNkJpM2xtNm4xK1BidmljdDRxLzJvV2F2Y09menhYSjB1YU5Va1Vr?=
 =?utf-8?B?VDYvRDhadmwrMVZGN0w4M3p0RytobEN6NjczSlQ3UEpmWEY3bmhZR0l2eHQv?=
 =?utf-8?B?M3NnT3dUZ0VTWGh6MjFFYmpNKzFJQVpadWhFbVphUmtsNUs5cGxaaDF1RU5E?=
 =?utf-8?B?RUV1UW1DZWREUUJTWllHc1ZxczB4ZE9mVnhMRzdtbGl4QVpjNGxzbXJ4WFBE?=
 =?utf-8?B?VUVNc2IzSlNaWlUzSlo5elUxbFRhY0VoZzRxbUdTODdWWnpJRi9oNmlEK2Zz?=
 =?utf-8?B?VjdnYTRRU2o2Qk1Vc0ZTZ3A2V2QxRTd1NERaRVJqU2xVczdGaWVPeENmTVV0?=
 =?utf-8?B?M2QwMllDaTFPRnN2NGNlcjVNdFBvZ29EbmRPYkNBZjJjWEdpUW5mQ3kyZHB5?=
 =?utf-8?B?elFQa25CQUdFT0h1V1VwZjVKdjFjZFFSMTRYREdxNzV3UjEraVB2ekVDbXNH?=
 =?utf-8?B?KzJ0d2tuREtYTzhjRSt6RTdCck16RlhyQlpxTGNOaHR5c2lJV0dJdWpaMWd4?=
 =?utf-8?B?Z3Mya0RCak1vUTFtUGpLcHVSc2ZBekhOZ3lDekVVZndnaWZMVU5SMEIrZWdH?=
 =?utf-8?B?RGtuL09iUmZqTXFpbDhNeTZzTHJrc2ZwV2x0UlpKaDdJSTlZcmUzK1BnbEJP?=
 =?utf-8?B?aWV5T0gwdHBrTENUWE5lRnR2eW4vdGZORU9OMzljREQxQlU1WmErWFUrNFc2?=
 =?utf-8?B?em5EWUYrRmc0OVNrL2FxZDdacjQ4ZzNmcHo1TmRpQzVjVHY2M0ZMUUlpcXQ3?=
 =?utf-8?B?V1ZuajBOM2hOT1BlUGU2NmI5aW15N2J6RG1Gb3k0aUduZE15cWc5dnZGL0hi?=
 =?utf-8?B?QzVLd1c5WHpVc3d3dWlwdDF1SnhacTUrbW5NSWF3dUdUYWF1ZmtyejNhQ25H?=
 =?utf-8?B?RENhNS9xc1BrQnlJWS9yN3FqNTdTbEZMZzVEYS84NmZKcnRiYkdaVkppT2lQ?=
 =?utf-8?B?WXB0cHM5TXJwU3k4d1B1ZVFuN2FGcUZRODVFZVFEcDR3TmVKYzA3K1F6VFVG?=
 =?utf-8?B?dnFyNHBUYXFQb1E3RS83TlFyOHFNbmV2bXpyQWJ4OFlCWkN5UnJLSnlHd1RV?=
 =?utf-8?B?S3k0ZWJWd05mWlp5Q0dSaGZtcUdsV3ViUXV1NTVVVlIwblgvNngyU0JtT0gy?=
 =?utf-8?B?MVJFUkRjdC8xMzlUblUvdG9IQ2JaOGgyVDB6MXJ3WndkZVlxRjRlUmNadHRV?=
 =?utf-8?B?eDhpQUg0RG91ZTZNRCtkK2tkSXRjN3h2NUVaUkIzN1B1ZWxQM2UzaEh1V2hn?=
 =?utf-8?B?bmNGbEMwRmhXOGtaUW5mQVJwSnVIWE9wZEd1b1MwNE9rNlRnUXBYeGd5SWJV?=
 =?utf-8?B?TFc2OWlCdWVaYStuT0NhZll4KzArT3dpUFpLQ3RpZE9KdmlCVjlNYkNLRWh0?=
 =?utf-8?B?ZkpxNHhicVp1THlWUjhKb1YydXIwQmRjMnNnYS9FVk9qVTEwR2EwaUpGTVhU?=
 =?utf-8?B?aDJXYzNUcVFMR0tkWi8wZnRJLzRXY2pBc0lvaDBnamdDNm5NNU52M1BqUmcr?=
 =?utf-8?B?NXlpandXWVNnQUdZUXFDZlZVbTJWeFhtcksvdHpnbWVpNW80VENZOE5hazVF?=
 =?utf-8?B?cEZpRkl2NXlqWGx1OWMrSDlocmtnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F383606AB060D499F16DEC87452943B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e473d67f-0638-496e-13bb-08ddead7b0e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 10:50:26.2475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6CpGiTF1ZR1tXJff3pSSSIxTVV5/FbRRsnSM3Mvqvokwxl60N47KMQzlP6XOrDoqQX5XiZUgfHVpDCCko5DlkFfj0dKh1XKnNRow0yNHWPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFEC87B8781
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

T24gTW9uLCAyMDI1LTA5LTAxIGF0IDEzOjIxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAwMSBTZXAgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IFBTUiBpZGxlIGZyYW1lcyBpbiBWQlQgYmluYXJ5IGlzIGEgNCBi
aXRzIHdpZGUgYml0ZmllbGQuIENoZWNraW5nDQo+ID4gaWYgaXQncw0KPiA+IGJlbG93IDAgb3Ig
b3ZlciAxNSBkb2Vzbid0IG1ha2Ugc2Vuc2UuIFJlbW92ZSB0aGVzZSBjaGVja3MuDQo+ID4gDQo+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+IA0KPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCg0KVGhhbmsgeW91IGZvciBjaGVja2luZyBteSBwYXRjaC4gVGhpcyBpcyBub3cgcHVzaGVk
IHRvIGRybS1pbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4g
LS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDUg
Ky0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNCBkZWxldGlvbnMo
LSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jDQo+ID4gaW5kZXggN2Q3MTkzYTA1ZDg4Li4zNTk2ZGNlODRjMjggMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+IEBAIC0xNTY3LDEw
ICsxNTY3LDcgQEAgcGFyc2VfcHNyKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+
IMKgDQo+ID4gwqAJcGFuZWwtPnZidC5wc3IuZnVsbF9saW5rID0gcHNyX3RhYmxlLT5mdWxsX2xp
bms7DQo+ID4gwqAJcGFuZWwtPnZidC5wc3IucmVxdWlyZV9hdXhfd2FrZXVwID0gcHNyX3RhYmxl
LQ0KPiA+ID5yZXF1aXJlX2F1eF90b193YWtldXA7DQo+ID4gLQ0KPiA+IC0JLyogQWxsb3dlZCBW
QlQgdmFsdWVzIGdvZXMgZnJvbSAwIHRvIDE1ICovDQo+ID4gLQlwYW5lbC0+dmJ0LnBzci5pZGxl
X2ZyYW1lcyA9IHBzcl90YWJsZS0+aWRsZV9mcmFtZXMgPCAwID8NCj4gPiAwIDoNCj4gPiAtCQlw
c3JfdGFibGUtPmlkbGVfZnJhbWVzID4gMTUgPyAxNSA6IHBzcl90YWJsZS0NCj4gPiA+aWRsZV9m
cmFtZXM7DQo+ID4gKwlwYW5lbC0+dmJ0LnBzci5pZGxlX2ZyYW1lcyA9IHBzcl90YWJsZS0+aWRs
ZV9mcmFtZXM7DQo+ID4gwqANCj4gPiDCoAkvKg0KPiA+IMKgCSAqIE5ldyBwc3Igb3B0aW9ucyAw
PTUwMHVzLCAxPTEwMHVzLCAyPTI1MDB1cywgMz0wdXMNCj4gDQoNCg==
