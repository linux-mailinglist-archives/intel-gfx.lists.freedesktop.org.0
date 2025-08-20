Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E2AB2D9ED
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 12:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E4210E6E8;
	Wed, 20 Aug 2025 10:20:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuVV8yS4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781DE10E6E6;
 Wed, 20 Aug 2025 10:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755685203; x=1787221203;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/FW3XdTqtwdcjXNMcj13Fnb8Py63Dz0MxKoTpP5bhTQ=;
 b=kuVV8yS4iMV7a+o6m6BrS3cBkP2huhHzp0Y08OZYY5PJVwm4kCB7NSYy
 jHLlReeVLFNnd0upjS1etCfJwNOr9jESWp6J+sfyrPyQ4Vpcpf6Re+wyZ
 90mHe/P/9IMDKKnLNPI775eKr5HnJf3uGcu8amJ3Cs2UXF2Mw9MzL+1Yu
 cERaF0CQY3j7cRNmi2XJDUuKUshtafIuXv8CMWpbStmrT1pRv5MN/StCz
 w0BWDM9xbzUHd+WJQZVlDTzTTpWVblxRrSHpYFEIdzQavJ9tl3iQbE+U9
 RxcRsafkzhULKqIKUhaqURgubm6Uadi4hHJjPkbyVgxEAfM0AHOeCixFs w==;
X-CSE-ConnectionGUID: q2eLg0p8Q76ExZuWkkeq0g==
X-CSE-MsgGUID: p8bn8wWAQ6KfB68ryVW+SA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57899784"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57899784"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:20:02 -0700
X-CSE-ConnectionGUID: Hm+MJQTKTpGBrHsGQgnMvQ==
X-CSE-MsgGUID: OV2Em/kSQ166klaH1o7Cjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168497180"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:20:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:20:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 03:20:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:20:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bf4CgJ1EemqOvtpDatEPpAtAC8yokl1Eec8i8nbIBXxaBBJ0OM+DNelAOMPY7jKl+t4wIJtyl+rKEaAUVPHK+I6gnPFSGj529MUnU+DlPrsZxUzEOwge4ob0+m53Wy//OU/6BDoyZVTfPXCvfplifyCt3FNf1DUXpVGPUZrFdVp5RJSCtXiBgfwrObTt+uoVA/TBexgszJZ4prdrs/3BJpjBuYFfur/C+xuAOoChc+tAOT4DsGABRlIAWkJFM1UOboxIyQPdaCwPpmcZMyFpCng0K3dqqtRHW6kN0Nf0E5yp+oZlozmOUXbXe2I4su70zShLgBtXHAa10/0+ef8zIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FW3XdTqtwdcjXNMcj13Fnb8Py63Dz0MxKoTpP5bhTQ=;
 b=ibsVQOxfYhinAbM9AYg1q+VWW+Rj69a1hzoFfpeApQhj4h9y2wNFYkpQhZQISIxKrlMVT0uZH8Ycrpm7Sr7uSn7bQv8FbCbw34OAM9JupAw7ff7BMDcr2ODzSB0jDRw+HAfZ9yapmdJvWTai97ROzUMzq3SmCYS5Lk+Qtsk6yjTXojmHNfHLbi6Aj8m2WxQgnU7LXddJtRuCXutIFCu1PwIjEMIUF7SjQwxTg+IMVbzAEWK3rr1ztud2IAsM8Jb7qJBd/jirRNBRcB7xhUhs/DfT5TVXVCbIHrFd2CkBKyAAR0vSKyR3IbT7uLKmmeDPwT/MA25zB8r/kuUtalwCFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB7587.namprd11.prod.outlook.com
 (2603:10b6:510:26d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Wed, 20 Aug
 2025 10:19:58 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9031.023; Wed, 20 Aug 2025
 10:19:58 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/psr: drm_WARN_ON when activating disabled PSR
Thread-Topic: [PATCH 1/3] drm/i915/psr: drm_WARN_ON when activating disabled
 PSR
Thread-Index: AQHcDcHxTviJUui7n0Cb6/XwoVTuA7RrWzGA
Date: Wed, 20 Aug 2025 10:19:58 +0000
Message-ID: <DS4PPF69154114FF5F5FAC649E054503BFFEF33A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250815084534.1637030-1-jouni.hogander@intel.com>
 <20250815084534.1637030-2-jouni.hogander@intel.com>
In-Reply-To: <20250815084534.1637030-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB7587:EE_
x-ms-office365-filtering-correlation-id: ea100f66-7bd3-4e32-1dfb-08dddfd31d93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?b1ROc2ZjVFgzeEc0cExhdlVIRnhJM1BoK1B3d3JEL2g1T0FwS01rM2ZEZDZV?=
 =?utf-8?B?Q1ZNd3AwUmVaMGorWlFLTXhkcnRMbS9pWklZaWV0MWJ5Wlpld0dIMHdPYTJG?=
 =?utf-8?B?U0swSlVDSGlKeThpYXg4QlR3Qyt1RlBnZFVTMFhIZTF5WE05L2ZWdXhzdnZl?=
 =?utf-8?B?a3k1OC92aDhCdWhKandEVUNLK2VidVFvSHozdnUyTEVuU0JKMkt6d3NmZ3dG?=
 =?utf-8?B?c25pKzhlYWZVL1czQ1pZVHEzYXRQa2hmRytBMThqODlSLzd5d1M2bTNwWFcx?=
 =?utf-8?B?cFNLM1h5Vm1xdnBROUg5RTdrUWl1OG1SSmZQWlI3WEhTKytjSzc4OGNucTg4?=
 =?utf-8?B?QVBReUV2WE91WjZpaFQrcEk3UXFJYWpQOXFmNDRORGpBb0IvZWdpc2xPdzNC?=
 =?utf-8?B?ZFpPbGJPSEwwK05LMjZ1TWNGTFp0Mjd6ZmN2TE55MGRteXdDOXVSVTVTY0pY?=
 =?utf-8?B?d1FsaXJyMnpycnduYnZJa296UlBtYVErbEVYdnhuaWM2Q3JmZ0p4c0tGeExO?=
 =?utf-8?B?RjR0V01WM21SNG90enlPWXA2S1QzcWFVZS9aYzJtQ1AwTTQrcHZqd1pNVTk4?=
 =?utf-8?B?OURMZ1dqSnNUVzJ6SFk0ZkpJM3pKeGNSU3Y0blkwV3lnL1JWb0R1bVJCSzBO?=
 =?utf-8?B?ZmhKQUFtTlNqdENnaVZtM0NDWGZUSm9uWUdiekpQUHQ0NEtQb092UXkzSk1n?=
 =?utf-8?B?dFF5amZxZVdDcFV5NjZ6dEhyQzNiYUFIVUhZalFNbUM0WHJlTDBtNmZTL25N?=
 =?utf-8?B?TlpFMkhrelFaYUVxcFRqZHp2ZTRnbm1PeTYxKzIraDZMOCtCVmltMkJLWURp?=
 =?utf-8?B?Qy8yd3VHYi93R2JHM29oOWZqYXFhYkVkbDlmUi90Wk1GaGFTMjVlU3liMUZw?=
 =?utf-8?B?NENFMStHRU92RGFBZ1BrZVl4dGFMY2xUbkRwRWgxSWtia3FPbUIrVEVJazR3?=
 =?utf-8?B?R0N5YkduaXAzRzVrNWEvMGdiVEtaOHBkdXAzWlZNdFRra3R0aUEwVXViUmc4?=
 =?utf-8?B?VldqNmxvM3R6ZVVwci9oSHZLSDFXa1lUREsyT0p5THdVKzdZN25EeUliTkN0?=
 =?utf-8?B?Mi9lM3JkMUhsWWNqWlJnZlhwZGhQeG1ROEU4UE94U3ZweUVFZlJ2dHVuQStU?=
 =?utf-8?B?Sy9GTlVXL3Z0ckMzRTAvWldRSkQ3MkluL2ZhUStDdUVYVW1aZW81b1huRUsv?=
 =?utf-8?B?dGlkdGRsUnFRNEF0ZW01dWl3R2FBcFA5WGptN1lIWUV4OGQ3bk5RMXRoV1d5?=
 =?utf-8?B?NFRpSHdZVFcrd2JpR0JlQktHR254T1BGRGY0VElhR04vb01ROHp1OGxFaGNR?=
 =?utf-8?B?YjQ1WE1ucjFYTGRoYTd2VlF0eVV4TXByM2gvTnp6OUpSdFYrclBpQWpTbGJa?=
 =?utf-8?B?eWdkZlY3VkF5a0luWjZCZFVWMzR3cmt1eDZIZk1BT0JGcGVFRDFaRzVSLzVZ?=
 =?utf-8?B?Qk56eFRrZDFKTDRoZ05vaHlMTzJTK29kTjgxa3lrWXJleTcybzFidVcxZWVr?=
 =?utf-8?B?bUptencvTW1nK0tKbUtrd04zaVcwRnlZVlc0K2VpaGpxanhMdmdHUGpaSW9H?=
 =?utf-8?B?UGJTdlZ1VE9NQVR5endYS05NeVlGcDBZTTliRHhFc2RZZkhhT1BqeWI2Q2JS?=
 =?utf-8?B?TVZVMllNK3BwZnFiaVkvU3lyUDdBTHU0VWhVVXRYdm43S3FNMFBPT1BBNUxo?=
 =?utf-8?B?QjZLellTYWlMVlNNRldxSVE2eUt6b1NKL2RwT3hpTFVOOW8rQlVLZ1p1WWRE?=
 =?utf-8?B?NHNHRFNWY1ZoL2xsYnNWcFFhV3dsbUZYTjNQR2FSbDdBSm91bVBYbERwd2FL?=
 =?utf-8?B?QzV1dWExQ1pTajJ2UWl3T21sMzZuZjNaeVdhSTFnMUNEN2pIRG1zMmQzWWVs?=
 =?utf-8?B?d3J6d2hzUkczTGFraVhvWXJXMEJVR2pwUlZhSHUrR2tQUjhGQUduc0RQbTNm?=
 =?utf-8?B?RUlqQWNpTkNlejVuSUdpdnU2OTVMUkxqL2hmWVdTdk5nc3VzT29CR3BOSW5s?=
 =?utf-8?Q?1w0ZYO+7Q4+wOvaUKGgyJ7HQ7o2t0k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3F1bTBwWFhOU1RKQTJuODBBeEJWM2wrKzcvTjRpUEVTV2xOaFFGL0k1eHha?=
 =?utf-8?B?UWZpcmM3QW0rUHhLQmFGN1FCQlIzSnRtMXIzejZPcGI0NWZYMUVQY2VEcjhx?=
 =?utf-8?B?U3FVYS84b1hNRWhReENVL29TditvdXNzTkNteHY4bythTUovdEtneFBsSXVw?=
 =?utf-8?B?WjdQcGZYVHRLakFpUUhVamNtcGZwR1UrTXRsSWtHbytlcU8zdldiL0szMmQx?=
 =?utf-8?B?eUN1M1FWYVhiR0pKSElPUVg1TnEybmttMjJzZjR4Tk1oL3oyd2pZa0pLeTFt?=
 =?utf-8?B?V0tqRGFjVUZENzhSaEVkQlRvT1BFazNTZGM3Z2ErR2k4TDY5dmJJNnV2M1Br?=
 =?utf-8?B?N3c1dENoZEdNL3pIOGw1UmhFQ09EL0VhMisvUENXR2pXcytwTStJS1lXZS83?=
 =?utf-8?B?RkRNWURYWEVyZG5EV3ZRRjVZSjU3cGltUjJTblFMbWludHNEZXN6Q0dVUDRa?=
 =?utf-8?B?ZGJPV0lkbjNKWDlSV0p1N1ZBUFBkaERjYlRlRkFrM1Mrbkl2NS8yZE9GTGJl?=
 =?utf-8?B?bGZtUG5CcUJxN1VuVnBZanVwZUcvRTZIVDArQXBaMEJIbEo0Ukw1NnN6QjdC?=
 =?utf-8?B?bldvUXFzS1Q3NlNMYVNqeDVGVVFra3JhVXd6dklGYWJhSlpwVkhXc2RHYWFI?=
 =?utf-8?B?dXJ6SzJqTElzMHVtNjhGbkMrQ1l5cGorb1Q1OXZvVmZ2ZXJMSWl4TXdxdXpN?=
 =?utf-8?B?YldzYXoyRzFGUzRDU21yUjEzOFNqSEIxQWp1N0FwdG5wNFRnQW91d1dpZ3dK?=
 =?utf-8?B?QTY0WHpVWTkxdkQ5ZXN4K0dvOWxKaHhxMjI0NTlpdHZYUHBPL3ZDVmdNTDBO?=
 =?utf-8?B?aG5lREJpVlRCZ0xDRS82dXBUVkwzMFArM3lzN2V6TXBqOFg0OFBpRkJjeGhI?=
 =?utf-8?B?TFY3WGs5MWFnRzlIditLRWl5OVpsdERic3p3SlJCbTdsWSszSmJHODh1alVG?=
 =?utf-8?B?NXRHRG9CNEF6TXZxejV5UVdQOEc2dUM3Ni9iamxJWUVnbXZaWGU5VFJzZlBQ?=
 =?utf-8?B?ejVEcWxtdmEzWXo2SEhUYS82TEFwQkVhUzZxRC9JSHN5U2M5RWMzdXExR25q?=
 =?utf-8?B?OWZnVU00MURMcDNtTS9IWXFNUWh0eTN3Yi9sbHl5TEcxblZ5YzRjUGRZOTNK?=
 =?utf-8?B?M0NOWDJsdGJuVWFPblE2Y3pmMTZnZkE1T2hOSjBYSVliVVBPYVJwNDlkUWw1?=
 =?utf-8?B?WDVsbE10Z09OaXl5YUV1cXh4bjNVQXRTTHVWbzY1dE50MEViWmVQT1hHNGMx?=
 =?utf-8?B?Mk1acE9kVFJMUnErNGJabkpMUDlwVzl1cjVWd1grY2xzbGhhdzdvQXJkRVVn?=
 =?utf-8?B?dzhvSEpqdEJuL2RBbGVPUk1qcU5RdWdNdDFDWHl6eWdLRnY3WGF0SzhRbDZF?=
 =?utf-8?B?b25QUVdRZmg1S0FjaVo3QUZPeW96YmpjUURmSGlEclZvOS9lQXRueTdUSmZ3?=
 =?utf-8?B?RTAvaFpLdEk5VnA2bDU0K3JyMXZWWmhER09HNnZ6dzdJQ3RDOXBhSTM0dWxX?=
 =?utf-8?B?QVRXaGZTUWZuVkhKM0ZKSXk4UVo5Q2lMYlEwQ3FjdGFWamR2OUpGT3lpS1p6?=
 =?utf-8?B?MEFEak9OcVZiQlFLbXBQNUY3NDJabFlHcjhpeWtZbG9WSnJUaG1OaUJWUlk0?=
 =?utf-8?B?MTI0NVU5azJYU2t1SnNaeEdsVVBQeVdHaDFnVllsVUVIZkNJV0cyTHVvNTR1?=
 =?utf-8?B?UXpDWmUySHVHNWt1blMwQytkcUxmak1UZVdJOUtSMVZ2aXV3N0dOaDdEaFRB?=
 =?utf-8?B?Ui9OWFpudVFEc0YybHU4akh2WHN4bSt4aVhtUUpCdVhaMk41MUVmM1BSL3di?=
 =?utf-8?B?UmI3dVdyZDRHS0tWdENVSm5rNGxPRUh6TUp0R2NnbVcwWDFBeVZFclhuVVNI?=
 =?utf-8?B?U0pVcTBDQWZhWTRoOXB1aHpBYmFjSTZ5N3JhU1VzM3FIMjNZYk1IUnFiMWds?=
 =?utf-8?B?cUtSMEdTeWM2amVHTXB5QzVsWnhUTnlTTm12ZzZ5aEw3aWZrK2RRTDNoTWI2?=
 =?utf-8?B?S2ZFbUFudFJBRkhWTDhVU090OHZjQXRxZnFPbGd0RldGT1ZnWk9wWUhRNXpV?=
 =?utf-8?B?WnliaWlBV2I3KzI3OGdwMUdwaXoyV3ZJelZBb0Q4cXlIM0tkcStVb2NpV0RK?=
 =?utf-8?Q?k9Mb32miRilXFt7rM5LREufBl?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea100f66-7bd3-4e32-1dfb-08dddfd31d93
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 10:19:58.3598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gOA573PmxgAYmQcrLkwzzMtCk85eVsFzs6nPigHS3Xsan7xwGMkWJeHrSX1TxrvdCyzd/BsExwupHwAu/Sl0rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7587
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogRnJpZGF5LCAxNSBBdWd1c3QgMjAyNSAxMS40Ng0KPiBUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIDEvM10gZHJtL2k5MTUvcHNyOiBkcm1fV0FSTl9PTiB3aGVuIGFjdGl2YXRpbmcg
ZGlzYWJsZWQgUFNSDQo+IA0KPiBBZGQgZHJtX1dBUk5fT04gZm9yIHNjZW5hcmlvIHdoZXJlIFBT
UiBpcyBhY3RpdmF0ZWQgd2hpbGUgaXQgaXMgZGlzYWJsZWQuDQo+IA0KDQpSZXZpZXdlZC1ieTog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMiArKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGluZGV4IDhiZWEyYjgxODhhNy4uMjI2ZDRkMWM3YzgyIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE3ODcsNiAr
MTc4Nyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiANCj4gIAlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIGludGVsX2RwLT5w
c3IuYWN0aXZlKTsNCj4gDQo+ICsJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCAhaW50ZWxfZHAt
PnBzci5lbmFibGVkKTsNCj4gKw0KPiAgCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmludGVsX2RwLT5w
c3IubG9jayk7DQo+IA0KPiAgCS8qIHBzcjEsIHBzcjIgYW5kIHBhbmVsLXJlcGxheSBhcmUgbXV0
dWFsbHkgZXhjbHVzaXZlLiovDQo+IC0tDQo+IDIuNDMuMA0KDQo=
