Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C89AD45CD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 00:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A2010E5E0;
	Tue, 10 Jun 2025 22:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ctJIRQTV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6789610E5DE;
 Tue, 10 Jun 2025 22:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749593915; x=1781129915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aFrqaVxQfVyT3+pXsxNTRE7qpPR4EG1Kap50cEfosdE=;
 b=ctJIRQTVqola3uX/IrBLjr6/gfpSll0F0bHrgd4Z3ktXeojjmdH6o3tL
 WVU2eOmoajMqc+gNONjdzzovNziPOj5ugI64CG5jcaa8rycHqNXmTv1Bb
 aM8naGrhoFwHc7/SzGE7Bqx4e7fHb1VOzNyX6IPuMOaZo3A/9+ME2j0aT
 D1nqLfn0B5mtH39tij61AXDUv9w8dC8f3XnSOKKbogaQsfTzCoEcGGYrs
 2KM5IWxcmVU5keEwQXwcckRV7ubhFgoldCHPt9xIg/5mjzLt7BTZZ9DwD
 Nni/wdHKtzDD36xmwSgTDOUKTgmqADpCDiAPESLkfly0gjTQubdM224al A==;
X-CSE-ConnectionGUID: 7Rjj+KjWQNOC/8Xsb2HMMg==
X-CSE-MsgGUID: +MKcgZg0SX6Bg8b62AVZ1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="55526106"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="55526106"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:18:33 -0700
X-CSE-ConnectionGUID: U23N0BPZTg+e1Rq5egEFxw==
X-CSE-MsgGUID: AViwOhnCRaW4oHxk4ulaAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="151956376"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:18:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 15:18:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 15:18:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 15:18:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fl3Rt5gj0fDFl+k/I7fcu0KFAZDAIFyXSCZMDN2sgHMAQAYHe2uSoNloDODtWw3ju1cJ4Uj+FIV1vx5iKPU4oTfOnboQEmwy3u5i2ARfnB2JVC7Zsz8YJy5yN/cy4L7rnUjz6FOKFFFRjHJTbNkyssXmeO1MyDoPmaJplLL6vIcZhKMx+RMFiEW9B9tK0PJnpCTSgBci/StVbYkYjTLR9E8OUSLogI/SxoYLVhqVAAw9ICAIMKobolzM2l5LyY91WDiugOcvfpPhOZ+UtkCS0788/7uKW6+US+fPTGU2OKfDKxWxw0qkja7cAQIaxfOpOa9HzTf0G8Oi5HL7U4fLkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aFrqaVxQfVyT3+pXsxNTRE7qpPR4EG1Kap50cEfosdE=;
 b=RsAGaVmYBRT2kKWYqlpDAe0kestw0F4z1GWn3+L/B1FhbTgmw2Q1lfuxcld21M+Ptb0REsR7z3RCv5SGLmoZgwSkgFaGleU3bHVOFlFt7nPBiaMADhTfG9BSLxc6tGJClYYXPVU7jSM1tA7fN3AQkdZSEanuJTMpFbhxth8Lgt+17E0BQ47GWMXF1G69tFDFcaGZ5fZo1JqY/2tp8leIZ7o1oZyatnH1Ydhp30fkORQCU9dLmCFxCK9I28kb/bTaGxGy+GroPNKGoomlxTSCq9/w3O1N4E+EYSlx81V1rytduXlcZeaYj/NIoT5fOfilnCJGbIdswv3hCfvBD2UsGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.18; Tue, 10 Jun 2025 22:18:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 22:18:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 09/21] drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
Thread-Topic: [PATCH v4 09/21] drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
Thread-Index: AQHb2UqRsh6tiI7Sik+Zid6PPkO0qbP8+H3A
Date: Tue, 10 Jun 2025 22:18:29 +0000
Message-ID: <DM4PR11MB6360354C740B93843D4C8B5FF46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB6326:EE_
x-ms-office365-filtering-correlation-id: dae61406-2a9c-4e5c-c53b-08dda86cba7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZVdMOGtpckdldjE3b2xCNlp2bjZWeks2Z1R2NnU2cWdsNWRVMDFMTjRwaUpm?=
 =?utf-8?B?V2JGZkJRd1AxQmZVc3Bid2hobG5LZ3d3bk1sbHdMaTRRSWZWZ004Q1l5eG1x?=
 =?utf-8?B?ak5tbnVOWnkyZndsRzVHcDlJem0vT2hKcGxTdzlXdzFXUFBiazVlWCtFNi9V?=
 =?utf-8?B?N3ovNjFheTZTUzl6emZTK0pTWU01NzNhM2tma1lRMU9XU2NlY1dGWVlvR3Z6?=
 =?utf-8?B?Ykg0TGdkdDFXcUcxNEpNN1gyL3RxdHFaU0RRN0xyUS9lM0VqYTNkSXE0c0dE?=
 =?utf-8?B?d3B6bzFyY2R5b0M1My9qSEhjWkZxZkpuYkJNS3dkV3d4Z0FYQzlzWHo2Wkhy?=
 =?utf-8?B?Y3ZQazMrQ1E3TUN1T3lPWnNaSitELy9EanlaNmJ6bitTTVM5Z3hDajRjcXdQ?=
 =?utf-8?B?VU1DNkpFam5udXdYUkVBbFpFK2M4d0paYTRndmp4Vml5NkcvYmowakhjeGlI?=
 =?utf-8?B?ZktzUHFDTVVrampwUnpyMDlqQjlJSnlWbWJHTDdOdXRrUVkxY2RpMDdnYktm?=
 =?utf-8?B?b25hNDA4UjFZano2dHhLVlI2N1JjcU9VS21hclVWWUZyNzNvZXQ1R2hmTUhK?=
 =?utf-8?B?WHB2MnR5ZUgycWVTZkhONGtQRFRoaml2Mkw0VWxMQ24weVMwdjJ1QkoydUVv?=
 =?utf-8?B?T3dSaVBMNUozZ0ZaYldGeWZuZlZvRmY5WkdQQnpZMUhjT3QxZllsdFNFaDY4?=
 =?utf-8?B?NVhMakd3cjdVbzVqZTRPaEJMZTFUVnhJSUtCcjdCNUo3Y1MzK2hGZEJ1RXRL?=
 =?utf-8?B?THpyTHNJeU9xT1ZPVEtQZ2o5Qlg3NTZ6c1p2YVJlQUU3d1IrSFZzcnI1Nllp?=
 =?utf-8?B?emZnV3JFRWpub1ByTTRad3V1bXhkUXFXOHBubWRtdmZuY2x6eFR0d1MxbnJL?=
 =?utf-8?B?OUE5Q1E4dmxBeTVZcEZ5U09jc0RhaXFvWXhQejJlL1hTSE80ZGZCUE1oa2hv?=
 =?utf-8?B?U3FxUUhmSzVTLzQwRmkvYSsya2RLazByZUZxL2l3VXZ2R2c0cGluL3c3eVkz?=
 =?utf-8?B?UWRuTHpTM1JEdlNyd010YzJvMEd0M0QxR1JLNUR2WXBuRllnVjlFZTRVTkFl?=
 =?utf-8?B?YjkzcmVhT0RWNDRtb0VGZXJnaGRBMXBqblFDYUZ4ZDY2Zko0dHJ6Nm9qWkRD?=
 =?utf-8?B?ZVJkclNIa2FjVElLU1dsank0aDZPMTdBc0FmMzFTb1JOMnUrVVFkMC9ZSUtM?=
 =?utf-8?B?OGJvdWU0K2tPd0FyWDN4STZCUlBOOTJkU3Z3QVZ2V2JTSXh1WVdWRHN2OGZ4?=
 =?utf-8?B?T1NiZC9PZVdzbFRpbmV2Y1plaTQ4UVBiQWJSWWM5VzRDQWladkhlR1JQS3hX?=
 =?utf-8?B?cnFsV0lXTFh4dGhQc0tXNjdKUVQ1Ykh0dzBUbXFtSnFObURVMkdVQkhXTnBm?=
 =?utf-8?B?UFZnV1FZSnFzSkIrbFpDZGZRMFlFK0Yva0FGVFpxRkR5d1BIZy8wOGxhT2VC?=
 =?utf-8?B?eFF6a0trazV1OTZHbjRPS1k1UEloTUxwT3kwMlJ5azExQVVUVGd1SEdJK0NE?=
 =?utf-8?B?Z2lxSHhJQTRjY1BwZ0RzdnlGV1gvMnBCS0x3QXYzL3RnQTRWT2NQNUR5bW9H?=
 =?utf-8?B?dzJuQWJHYnlKSHlBQVRDS0FKamJLc3NZRU02Ky9XVmIzMnNQakJWVlVRYkJx?=
 =?utf-8?B?UTdOYzB1NFRMckdDUC9nRnlMQkp0eDEydzlIWlNkT2pOdjJkWS92dUMzdGhl?=
 =?utf-8?B?U3p0Zy9FMjNwK00zSmUxVmR4YndyZE5iRmFqaEhYNFN6MU5oVVliT1RHWkV3?=
 =?utf-8?B?cFd0U0V3bHJpUXRMcTR0Yng1OGlrVms2RlE4Q2VsKzYxU3kwUkVXTDRUYXhZ?=
 =?utf-8?B?aUc2NU11TG1nakd5Z2lEVVZlZ05FVDU2VUxXREdoZjU4cldubldyNlV2NWtp?=
 =?utf-8?B?Qit6T3Z5dDh5Y1R5Um9vZDZhSGlNY0o2bml3Y3R5Mmt3NGljVkRNZFVnZDBQ?=
 =?utf-8?B?VEJKMzZNclZhbnZOUjlma3B0WXEwSS9pd05HNUtwUjdwcVhzZy9CdmJkNEhB?=
 =?utf-8?Q?liXJARpa/3NOsa3oXxyEFjbiEJqNaM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmlRaG4vaVp4aXhjK2dkdlhPbkhvRTUxbENwaGs2b1ZlbVpVeXdBSzNuZFd2?=
 =?utf-8?B?MVhkZnBwM09jbHZDYkkyVThXZWdxZTAwaEdQVDFWV0d6eHMxQ1l5T1JTMzdW?=
 =?utf-8?B?eTQvN3ZUdDBET3lSajdDWU1odGFZR1NCbmVVeVlacHJVbUlLbVJnejN5TVRY?=
 =?utf-8?B?UmRyVXJvU1dkVUNDVkw5UjlabXNweWx6Z1ZqbGdSN1A4ZytUUUptWUc0cDVV?=
 =?utf-8?B?NktieFFmTWpQbTV6cUFSTWp0UGNIWTJ3d1ZhcjFtZG1scTlVRm56MllZVC9v?=
 =?utf-8?B?cm1aV0dQeno2WXhtNzg2MDV2MDdOOFA2elFMZ1VFTlJkN29RQmVHaCtwVjY0?=
 =?utf-8?B?UzhaWGcxeTUxV1k5VE5CNVhJZVhNQXZJQTI2RnJBV2hYcm5XYm8rb3N3S2tJ?=
 =?utf-8?B?VWxOWFdVWjhuRXpIcFVLY3RmTVBTblc1aWFaLzU1VDNpenI0dDk3MTBDbkpF?=
 =?utf-8?B?Vkh5UHd4RGRJcW8xNVJ4bEl3ZFpEdUhRQ3V3eWRWWldzU3Z5WDlybDhxWUxk?=
 =?utf-8?B?bWtncnZZbEsrMmFUbzVoRmVaRVdVNU1LNVlJbE42Q1dnYUhIN0Q5dnYydTli?=
 =?utf-8?B?aEVON1ZmVWViUzV6ZFFjZmh1eC9VdDBIcURmTnhhbXRidWR5M2xiZVo3YzVs?=
 =?utf-8?B?MUFyUmw2T1h1a01BU2gvdUwvZVYzSE9wY2pYUHpzczA4RHB1RXpENVZHYVB6?=
 =?utf-8?B?KzhTWVZHL241RGEzalNLM2FYaGxTcmhXVGh0K014a25MSUgyVHRxQU9KaGNW?=
 =?utf-8?B?QXFyNXF1Rm1rRlY5V3NFL3F2a21LVlU3eGpTSkM0RnN4aDhsVitGZlJkRUho?=
 =?utf-8?B?TXJzalRLendmcFBLSHlMdm4rQ0VhellrcE9sV1d3cGVJZlIzNWlIWnJCeHBr?=
 =?utf-8?B?YzJ0Rk1ZQTVhRmlseDQ3VURjbGllQjF5NG1uc2xJWWxvMDAwMUQ1aTZueHNM?=
 =?utf-8?B?ODc5QUJ2bS9pTGZhbTgvdnJCaHV0alIxekdRcVhLMExpT2FURjYwOXhjbVRw?=
 =?utf-8?B?ZTVJOTdieDZaREZzSmc3Zm1vM1JjbmtjRFZuSStrVlJhb2ZDWmxObnBWMXZp?=
 =?utf-8?B?TlpqM3Zvb2lUL1AxM0wreDFsbHYvcjhpNUZYUUpteTBmdHg1SDVxNm5GcG5o?=
 =?utf-8?B?c1RIQllpUTN3enRRdkx5c2lnbmtnMU11WnVFK3ljZWxLK2pkbG1IajhFRTda?=
 =?utf-8?B?YndEZW1OLzh6ZEtGV3dWallZcGU2MGhpcGVPR3BhMVFLOU5IcDdiZTR1Tno2?=
 =?utf-8?B?cjRwNWVlMXp5TnVuSVlUaGZVWm1TNnVGejV5UlVlVk4rVlllS3FOcGh5a1Bi?=
 =?utf-8?B?TEJGMGxKZDhPK0tYRnExTWZNbW4rSkV1OUxiRXJkVnlyYkdpMGt2MndHMFhG?=
 =?utf-8?B?UlJZWDJOV0Z0bTJzWEtlaTFhV3hlYVZhT1BUempSOTByU2FOSTJzeUVxUTQ1?=
 =?utf-8?B?OTZmeDROL2huK2NNSVRycVhBdTNyT2EzckcxOERyVWJYY1BFYllINnZyN1Bx?=
 =?utf-8?B?Szd0eGs3ZWlwOUJweEFVTEQ3NitYQjJDNFBHUVZDR2Z5K3dDZEdObFdsMSt5?=
 =?utf-8?B?eGlVWlFxb1k1RmF4cXNVbGdBcnFYcGlyZm1DT01scWpZSkU3SmVxSDZwUlB2?=
 =?utf-8?B?ZmtvaDhsdmRLOGh1Zi9ONzVNYlNrVDdCWVh5Y3ZneWo0VnpFS0FaTStkMTQ3?=
 =?utf-8?B?Zm5tQUJMY1F3M3pXbHpEeUFEc2ZMRkVOMi9kbWthZDV2TDhGc1hqbW9LTks2?=
 =?utf-8?B?VnNpMTdndUJ5K3llL05KQkZCNE1UVm1yV0dOY3hJV1d4WEN2NUdsc092WmRw?=
 =?utf-8?B?a3MxZkN5SmtjQUdBWkJ6UFJteGJ2bzdJVWN1a2JSQ2pHWVBteHF5WlJLOGpY?=
 =?utf-8?B?ZlN6YWZJSVV1VVpPakh4MmxIaTdLUnJiMXhaR2tOMHQxVXN4M01XaXpmTnhh?=
 =?utf-8?B?c21RdmZ5L0o1VEdvSUZUU1FXT1ZrWCsrempxMEZlYmhjWU1YOWR3a3Zoc0hO?=
 =?utf-8?B?WXIwT2dHSVI1QUJZQVdFSzhyZVdUTExLOTZWQ1hpcTNyMFF2Z0VPUkhZM3ZV?=
 =?utf-8?B?UmxvaDV3NUxrWURaa1VtM3Ara0g3SEhiYVpHRFM2dkQ1WEprWXJjaGFFS2xq?=
 =?utf-8?Q?o7JMOHO2EkkWrnt5qIZ7OAjFR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dae61406-2a9c-4e5c-c53b-08dda86cba7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 22:18:29.4646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yNOaE4rUSWg4jwsU7lzZNOZHCwl7Rsm7eNWF8fqVGGhiPAEKWxOnJzfq4WUr0WZ+mKm6X7t6kvD2scDOkbcxhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIEp1bmUgOSwgMjAyNSA3OjQxIFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHY0IDA5LzIxXSBkcm0vaTkxNTogU2V0IFBLR19D
X0xBVEVOQ1kuYWRkZWRfd2FrZV90aW1lIHRvDQo+IDANCj4gDQo+IEZyb206IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBBRkFJSyBQS0dfQ19M
QVRFTkNZLmFkZGVkX3dha2VfdGltZSBvbmx5IG1hdHRlcnMgZm9yIGZsaXAgcXVldWUuDQo+IEFz
IGxvbmcgYXMgd2UncmUgbm90IHVzaW5nIHRoYXQgdGhlcmUncyBubyBwb2ludCBpbiBhZGRpbmcg
YW55IGV4dHJhIHdha2UgdGltZS4NCg0KQWdyZWUuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZp
ZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwg
OSAtLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXgg
MmMyMzcxNTc0ZDZmLi5iZjEzNzIwMjRlZmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0zMiwxMiArMzIsNiBAQA0KPiAgI2lu
Y2x1ZGUgInNrbF93YXRlcm1hcmsuaCINCj4gICNpbmNsdWRlICJza2xfd2F0ZXJtYXJrX3JlZ3Mu
aCINCj4gDQo+IC0vKkl0IGlzIGV4cGVjdGVkIHRoYXQgRFNCIGNhbiBkbyBwb3N0ZWQgd3JpdGVz
IHRvIGV2ZXJ5IHJlZ2lzdGVyIGluDQo+IC0gKiB0aGUgcGlwZSBhbmQgcGxhbmVzIHdpdGhpbiAx
MDB1cy4gRm9yIGZsaXAgcXVldWUgdXNlIGNhc2UsIHRoZQ0KPiAtICogcmVjb21tZW5kZWQgRFNC
IGV4ZWN1dGlvbiB0aW1lIGlzIDEwMHVzICsgb25lIFNBR1YgYmxvY2sgdGltZS4NCj4gLSAqLw0K
PiAtI2RlZmluZSBEU0JfRVhFX1RJTUUgMTAwDQo+IC0NCj4gIHN0YXRpYyB2b2lkIHNrbF9zYWd2
X2Rpc2FibGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiANCj4gIC8qIFN0b3Jl
cyBwbGFuZSBzcGVjaWZpYyBXTSBwYXJhbWV0ZXJzICovIEBAIC0yOTQ5LDkgKzI5NDMsNiBAQA0K
PiBpbnRlbF9wcm9ncmFtX2Rwa2djX2xhdGVuY3koc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpDQo+ICAJfQ0KPiANCj4gIAlpZiAoZml4ZWRfcmVmcmVzaF9yYXRlKSB7DQo+IC0JCWFk
ZGVkX3dha2VfdGltZSA9IERTQl9FWEVfVElNRSArDQo+IC0JCQlkaXNwbGF5LT5zYWd2LmJsb2Nr
X3RpbWVfdXM7DQo+IC0NCj4gIAkJbGF0ZW5jeSA9IHNrbF93YXRlcm1hcmtfbWF4X2xhdGVuY3ko
ZGlzcGxheSwgMSk7DQo+IA0KPiAgCQkvKiBXYV8yMjAyMDQzMjYwNCAqLw0KPiAtLQ0KPiAyLjQ5
LjANCg0K
