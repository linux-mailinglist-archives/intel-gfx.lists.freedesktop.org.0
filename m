Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E37AEA7B6AB
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 05:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED27A10E2FA;
	Fri,  4 Apr 2025 03:33:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fv3jdvDS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6545010E2E7;
 Fri,  4 Apr 2025 03:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743737619; x=1775273619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dGsA2HMDexINaM7EuhvAbLOhtuoFEf2nvfrirDFmYio=;
 b=Fv3jdvDSE0mTPN/lV+3koWwjizOphJX8LnEqccw7N1otNxgDUp7+RWm1
 JLQJPpDMDsMOiv2/Q+33k8s/CHLrWoZcvAvWiBF78EBRTex3MgdwYlatN
 /sE0bb/1PpDxXBy0XeAodCOjN9hmELKentolU9pTlvR7l0MbRm8YKaaCN
 fz6ZU47xd2FBZiZgAw0ZZ4Uy7G3ctSqUZo00qGawCifxumf7D5fPfsxrX
 ICAhxzkHdHhiZ6/HSddwSmIk+gwoFq5oM8IeOR6iR/Ir/IjaV9e6BbojQ
 SYbYKCDyq3gHy2LAyqyhiFJ4XeizD06WqcYobpT6//cuwxlpWvFnI6QNC A==;
X-CSE-ConnectionGUID: hZUvG5RbSi6B1VYR7f9aSQ==
X-CSE-MsgGUID: XwCX5Ys8QRm2Ip9LfXkP+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="56158431"
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="56158431"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 20:33:39 -0700
X-CSE-ConnectionGUID: Hi7XaFRWTXmG8q9rwNE/gQ==
X-CSE-MsgGUID: OapcPyI7Tz683By6AiTdKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="158171968"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2025 20:33:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 3 Apr 2025 20:33:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 3 Apr 2025 20:33:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 20:33:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k8oBk5RnmtaaEEOusIoVP9VrByIYLzg7tsI8KlrCzzMmwTt+Nz3+WQWgkQFcLfQjt1+QE9GP9ppo7KjHtBv8xYcPNoz6A8MSYLnPvSBPzK5Gaj7Cvqz9nmi1upteogC7GW9uAnBnmOlHEpg9s5hSKaP5JcTOoQw8sxeNvnlRABCpWYY55HsFsw5dqi0HTVkqnqMoNkjS0+DQdaS7s5GAHApxXTMe3snP9ulzBDWXXOC17CXNodxZrSiYH4I3WVJEhm8SOyGQKAkgPFdJh34bMg91rqVqAnjsrIVGkVVv9ub5p+9V4HLAPpXzNlRbHkhA8NTE15TSNJXw9jWs4qBOAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dGsA2HMDexINaM7EuhvAbLOhtuoFEf2nvfrirDFmYio=;
 b=T1/R7DtheuYAi+K70rf0GdpVBIICQOFGeypOw00m7VDkfYqBsz1I4dYdxZkFQl/Wu//vYwH7CDNJfBzj5t04X6amPBGnXNCsy/UpPM3ctT9nWH1u+WBxfx2p1j/Nz+AlVh0u4czaRB6DHInxE+Iv+592kX9DFeuo2iMYOcnzt2zSx0dsO0C66S6nS/1fsyDWYI/e+a+w8LHTgt3TepN28HZ7+OfpgH9//cAQBv6OAi2StXD/8L/xw6OrinuoPwLe4fuUUrdjMgHDSMBtKuP8lByPEloXTkXJHT9bfWf2m1Jde4x9sXQsmEvh9SBTdOF3Xl1KI1TkSNM8l49ozhqdlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by PH8PR11MB8063.namprd11.prod.outlook.com (2603:10b6:510:252::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.46; Fri, 4 Apr
 2025 03:33:35 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%4]) with mapi id 15.20.8583.043; Fri, 4 Apr 2025
 03:33:35 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2h1?=
 =?utf-8?Q?c:_Fix_fence_not_released_on_early_probe_errors?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvaHVjOiBG?=
 =?utf-8?Q?ix_fence_not_released_on_early_probe_errors?=
Thread-Index: AQHbpHlQaG3gvLRwpkmSsbhH+TJYdLOS3Mlg
Date: Fri, 4 Apr 2025 03:33:34 +0000
Message-ID: <CH0PR11MB5491BB74805BBBFB53448547EFA92@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250402172057.209924-2-janusz.krzysztofik@linux.intel.com>
 <174362548435.30316.6853241837141883790@e6b6f09ec485>
 <10633950.nUPlyArG6x@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <10633950.nUPlyArG6x@jkrzyszt-mobl2.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|PH8PR11MB8063:EE_
x-ms-office365-filtering-correlation-id: 42d63e55-c672-4fb6-50db-08dd73297ae4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?RVVkaHJFeWFzWjk0QzBBNVV6b1RzTmtGVjJHWEJ3QUExdU5qOWQzUFI2QWoy?=
 =?utf-8?B?K3UwL080SlRxeE5TTk9wQWV4MHhQcXRVUXB0K2l0RVBtczZoSVpudWcwa0JM?=
 =?utf-8?B?SGRpYXJ0MlZndStmQVV1TFVsMFNYNzRLNUNvbmJGS0grakg0Ylc4clowbXgx?=
 =?utf-8?B?QVF6L0Z1SFVhVG1NQmhRbHY1MkRKVkI0VnpvL2ErNEdQMzFzSzhvYlhjSDF3?=
 =?utf-8?B?SFdUWmtiY3BMTk5mOWUyMGxyeDVvL2kxVjBzMkJiWU9JbkxyMGZHU21mMVln?=
 =?utf-8?B?SGszZDVpVDJYT2NQQUE4d2RncDV3Q1FyYmVIRlJ4VDRHaDZiY1pVOE1ua1Rw?=
 =?utf-8?B?TEpHWWljUERtRjArV25lREJPeDdRWkFZTHNtM056VDFwNE5sTTdqazk2QUVj?=
 =?utf-8?B?dTZ4bDBnRGdvYTN6RE5nR3R3Z1RaVGpBajVocVFjSFZOTGhVcHBJMjJBM0pv?=
 =?utf-8?B?L2FVTVhGRFVDaUVUSkIzTmtiOTFWbXBkcHlVc2ZiWWJOZndMUFAySkttOFIx?=
 =?utf-8?B?cDhsWWQvbXJEZGV4WnREVmg1anhJbmtXUExEdlBOc3BWT0x6ZmYxcS9CUEtY?=
 =?utf-8?B?bnk4WHVPL3dJdGpQVkNsQjBVUUhpTlFWbU9xMXNOVTQyRmtpVmRvR3lrZm55?=
 =?utf-8?B?VmFqbDFlN3FnZG52YzhiNzBnbFRwN3FKWnRoSy9Xc0ZkekRuZ0c2b2xkWnZy?=
 =?utf-8?B?MDNpdTU4czJ6WGRFOTE3alptRWlmVlFhU1lNQU5vNmZRQkRobGZLTEtvQk5y?=
 =?utf-8?B?b1FCdXAvSk14b05XQ3dISkdHYldwMlZiZDJFQ1phVjVHdjdqc1V6OWxzUElZ?=
 =?utf-8?B?Z2RqVTRwRnVWaU9VQ012aVlkVUJtTjdwOFppUFA5THNkM2dqYlNLMmdMRjNY?=
 =?utf-8?B?d3c1VnBtZlp3K1VLNVhrUUFkNmRCOXZBU0RRaFpvajFSam5hZFVzVzdBS21L?=
 =?utf-8?B?ZFNTbkcwRHNMRnE4MXZjMThObXBkaHhFU1dXNXhJL2N5YnQzekp3ZWhyeDI1?=
 =?utf-8?B?ZDJhenJsTkZrQmRGeEg3bVVlSmFkd2lUbnZWNnArZ3pHSzFiM2h2Y0JCTitp?=
 =?utf-8?B?ZUNSMmE3bHR4YU1zOXUrc0hLOFE2VldqUVVxZkY3UlNJVFRjLzJjRk1pMklh?=
 =?utf-8?B?VnNqSDIzL2hkR1I5ZER5Q1c0RDdwdjAyOVZxSFRzc0pKZlRYb3RrZVJTcnBp?=
 =?utf-8?B?TEFmRjVybmRMRFRoQXQrL2dDWFdrdEwvbmRaN2VBZ0ErQkoyb3B2OVZKNzY2?=
 =?utf-8?B?NFc5aUtLYzNLWmIrRGVGaFpWWXpHWHpSTEJYTWNydUl0VVlGcGRBUjhyZG1y?=
 =?utf-8?B?ampkNjhqMWEzWWFYcFJzV2tMeFlxaXY4cXd5bkFKSm9Fczd1WXU0UGtvYzdB?=
 =?utf-8?B?dkFXYmRMSzdxZFFrUkk3dGpNcFdjbWRnYXJvWno5K0hwL0kxbVF4Rm5LR1hE?=
 =?utf-8?B?TUFPYlVhbmhST0UvMFRhbnFTSTRkY2Rnb0tDNWZHVVYwTlBFR0N1SzArQnZh?=
 =?utf-8?B?SGlteC9mY1VRMFo0TFBPTUlpZFQ3aXNWUnBldDU3STdLMGJYSE8wR2FTRmxq?=
 =?utf-8?B?Z1owS2ZtcndsOE5Kd3F5NURIcUpBeklrR2pzMEhFREtxVm1sd0dHRHNma2dy?=
 =?utf-8?B?d3U1bW1NbzRRcm9HVWpFRnlrSGlCZjF1bzc3UThRSyt1NXQwdy80VFh5R2VU?=
 =?utf-8?B?MXdYeGFTNlc0YlZqQ1IzWTFTS3JJMXFYZmpra0Z1RTVqZDhVakhoakQ2ZzVL?=
 =?utf-8?B?MVYyZjIxY2xxRUpMWDJnTFhURFRHS0VDZnExd1YwZjFEbTR1ZVhkS1FualpD?=
 =?utf-8?B?ZFVHL0VKTlNlbzVjUTdtQjB3VmtESHVsK1grZlNWNXBCcUE2REtlQlBxVGZQ?=
 =?utf-8?B?SENoWEtCT0hWNE0vQ0NXSURtZTY4cnB5TS96cU1JdFZTQ0E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YkpLRjNLb21lbU1KcHBzQ1B5Qy9FWnlCOUQrM0ZsY1VJNVhqVk9NSVgxV0c0?=
 =?utf-8?B?MnkreGZTeXptVUhiTVJ6aFBmRXRzbUEwazFZZXk0Y1o1UUZERDQvTXIvbURt?=
 =?utf-8?B?ZWNMRFdNS0E2cTU5MTMveEJFNlhYUGpWcm5WbmU1TjRMN3ZaSlNnalJHWE5V?=
 =?utf-8?B?clU4YkZDUGUxZ2RXK3hwcThFelFtTFNWMm5pbDFHVlNsUTNrQVFUc1RXMFBh?=
 =?utf-8?B?SkZzOTl3TWxEV2NHV0hpajdjMVFBUEViNDk0dnpJUUtDTC9STmRXYkVhTmhF?=
 =?utf-8?B?ZmtURFh5VDZLMHJtQTlKRVVnaFNKUVFScS95Rnl3cEs2bnNLK01ZMFFoemk4?=
 =?utf-8?B?QjFLN1MzVE1odmg1YUlqZ3NTbmpmcjMyVUpJNU9aY1NISkJaUEdhR08xdHZV?=
 =?utf-8?B?Z0Z2RDFyUnR5bHBpaCtQNnZGYWxBUy9wakdKWHhQWHJJYmhlQXZlSWFzUXpG?=
 =?utf-8?B?OTEzd0MwT01FZm90V2VhdUNPVUV6TnpHQ1BCbmdPUjFBZkptdnZ1UmFsN00z?=
 =?utf-8?B?eHQ2UVJIY2swWjhxNFJUNHh4ejZZMTQwVyt5b1ZHbkxucjROVml4ZWpCdk5h?=
 =?utf-8?B?ekFndEJ1N1J0cUloSjF0SnVVUzg1UkNOU003bXMzNk5rRitLaWllbmNOOTFF?=
 =?utf-8?B?ODl2UHFFa3dsQUVzY0VuY0syd0owZzEyQ0VQSVdSbU9PSlRJaE5tOHl4VEFt?=
 =?utf-8?B?QVBtSVAzSVBLM1F1ZmtnLzFvd3ZXVFF1Y0cwM3NMeGpYbldtVDh5TjZMZmVv?=
 =?utf-8?B?MWx6cnZQMFI5c083MzhMRUdoSUVOZlZ1QzdhemFqT2JoVkhaTks5SXRhc0lU?=
 =?utf-8?B?Rmg2WE1aWjZJaC9jQWlXTkZvd0VIMmZBN3hlVkt5NFBtUVh3WFN2dkZhNC9v?=
 =?utf-8?B?VllyQmZ6N3g4RXJCUjNYYk41VmlXTUhlMndLdnVmNzZ2UzRtZDVRMFlrYW5a?=
 =?utf-8?B?Q05jSy9GSkprbmM1UEx2c2taemxvNWp2N0V2eDNlRHpWNkx2NG5oblhVOE9T?=
 =?utf-8?B?emFmWUxpbW1ScTlUVHZPNGh5eDJKNEpiRjcreUJqYmJDTkpuU0NvSUhNWWMx?=
 =?utf-8?B?Y0tjRGpJNXQwa05yeWJBUVdUZ3UyWEJlMDNGVndhTzRXZzgzKzdVbVVHa1dI?=
 =?utf-8?B?dkRFY0VJSGhjQUZ3QlZkQUpUV3o2OVBpK25GeUYxRWduT25aMlhiL0N5MWpY?=
 =?utf-8?B?YVpuY01qbGtWd2FDTTlsYmQ0dG52VGMyY0RRck5SNDhmWURpRDlrckx2NDkv?=
 =?utf-8?B?c0wyWnoxVWJpZ1MrNE9GYkxPSDlsSHlQMm1Md0JEb2ZVamJFUEs3Uis3dC9n?=
 =?utf-8?B?T2NzT0lnQkxzekw0OVlHckwrZWRIcW1PbWpSL2NiNHBsUHB1Y29ITi84V29y?=
 =?utf-8?B?ZWJsUFVFakNaSk9OWWhwaUZHN1pBNFZYUXBSbXkwRHNtUCs5UmhLL3RmV3Fy?=
 =?utf-8?B?K1ExTStTUWFzRkhBa2ZXVWRuMjZCTGphVGkzY2hoQ2VRMm9pQzRCL0NPNTNi?=
 =?utf-8?B?YzIwdGNTb0xHelZYVnQxTm9RV0N3Z0EwQzA4ODRua2t6UWs4QzNDQmYwUHdD?=
 =?utf-8?B?ZGlCNmdBWWxSTVdlUGFCVjBUUTFsQ0lLWWFXc0xUT0RHTS81dkc1UWFxWDlh?=
 =?utf-8?B?bXZhaTVZTXVYMkNJaUF0Snd1REFMeVpnMWw4ampTUFB0T0V3bnhNOVlnY3Zw?=
 =?utf-8?B?MEJ1OGdmVTNnR3lqU0pJQWg1NzVVU1JEZ1ArYmJRcWtPOFFBZlB4WkVLZkdO?=
 =?utf-8?B?L3JNVXRwSGhINWt0Y3Q4Qk9vaDAwNHB5Mitid20xUDJ4QnJPK2oxVE82OVR3?=
 =?utf-8?B?NVFISExzSStjNUV0MGVsWGtKUTBUOUFMUWxoZ0YwbTRlVk1nYmEvRzZ6ckF4?=
 =?utf-8?B?R3ArOHIrS2JncVZmeWZxY1lsSWt2dzFjYXREdy96OGhtRitESEw4SElwSWVp?=
 =?utf-8?B?Si8zNzB2a1ZWd09EbG5Vc0JEbjJTUDVjZ0pyc3NjdWY2NHFuMEhDN0ZWajBi?=
 =?utf-8?B?VzArbmoybW4vQzQ2SnVsMk9GQktBUUYwOTBNMWtFcHh3VzlxTjRFQ0dxRHhV?=
 =?utf-8?B?VElXUmdpdXI3eVFwQ055UWNrRG9vKzRUZ1lmRGFqek5RU2J3UXNhVmxiZG12?=
 =?utf-8?B?QUNCVXRKMFpHMU1VbWM3RFBNTVBwejZxWDZLNlZpMXE5VHQrNUNqRncyUm5n?=
 =?utf-8?Q?OaiK8Y5dKoUKxf6+5jGZ7WMRrVxiRMCGEbdLun7Xw6r4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42d63e55-c672-4fb6-50db-08dd73297ae4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2025 03:33:34.8907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iK6PtjptC7rHRtvwsxZvvmHu+VVEGkYs2l5SllMhXo31y1bL/7FpfTS0ZYuDPfRUxWAIY1lboNunJ/nN3Zizxn98+pX19AQgPfeKhXyS6KE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8063
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ3MTYwLy0g
UmUtcmVwb3J0ZWQuDQppOTE1LkNJLkZVTEwgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2
YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8
aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IEphbnVzeiBLcnp5c3p0b2Zpaw0KU2VudDogMDMgQXByaWwgMjAyNSAxNDo0OA0KVG86IEk5MTUt
Y2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXgu
aW50ZWwuY29tPg0KU3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRy
bS9pOTE1L2h1YzogRml4IGZlbmNlIG5vdCByZWxlYXNlZCBvbiBlYXJseSBwcm9iZSBlcnJvcnMN
Cg0KSGkgSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcsDQoNCk9uIFdlZG5lc2Rh
eSwgMiBBcHJpbCAyMDI1IDIyOjI0OjQ0IENFU1QgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJp
ZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNS9odWM6IEZpeCBmZW5jZSBub3Qg
cmVsZWFzZWQgb24gZWFybHkgcHJvYmUgZXJyb3JzDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDcxNjAvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiAN
Cj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1f
MTYzNjRfZnVsbCAtPiBQYXRjaHdvcmtfMTQ3MTYwdjFfZnVsbCANCj4gPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFyeQ0KPiAt
LS0tLS0tDQo+IA0KPiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5rbm93biBjaGFu
Z2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDcxNjB2MV9mdWxsIGFic29sdXRlbHkgbmVlZCB0
byBiZQ0KPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAgIElmIHlvdSB0aGluayB0aGUg
cmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiAg
IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0NzE2MHYxX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91
ciBidWcgdGVhbSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93
IHRoZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwg
cmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgDQo+IA0KPiBQYXJ0aWNpcGF0
aW5nIGhvc3RzICgxMCAtPiAxMSkNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+
IA0KPiAgIEFkZGl0aW9uYWwgKDEpOiBwaWcta2JsLWlyaXMNCj4gDQo+IFBvc3NpYmxlIG5ldyBp
c3N1ZXMNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93
biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDcx
NjB2MV9mdWxsOg0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBQb3NzaWJs
ZSByZWdyZXNzaW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGttc19hdG9taWNfdHJhbnNpdGlvbkBw
bGFuZS1hbGwtbW9kZXNldC10cmFuc2l0aW9uLWZlbmNpbmc6DQo+ICAgICAtIHNoYXJkLXRnbHU6
ICAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXSArMSBvdGhlciB0ZXN0IGluY29t
cGxldGUNCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV8xNjM2NC9zaGFyZC10Z2x1LTMvaWd0QGttc19hdG9taWNfdHJhbnNpdGlvbkBwbGFu
ZS1hbGwtbW9kZXNldC10cmFuc2l0aW9uLWZlbmNpbmcuaHRtbA0KPiAgICBbMl06IA0KPiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcxNjB2MS9z
aGFyZC10Z2x1DQo+IC04L2lndEBrbXNfYXRvbWljX3RyYW5zaXRpb25AcGxhbmUtYWxsLW1vZGVz
ZXQtdHJhbnNpdGlvbi1mZW5jaW5nLmh0bWwNCg0KVGhlIGNoYW5nZSBjYW4gaW50ZXJmZXJlIG9u
bHkgd2l0aCBtb2R1bGUgbG9hZC91bmxvYWQgLyBkcml2ZXIgcHJvYmUvcmVtb3ZlIHBhdGhzLCB3
aGlsZSBsb29raW5nIGF0IHRoZSBjb2RlIG9mIHRoYXQgdGVzdCBJIGNhbid0IHNlZSBpdCBkb2lu
ZyBzdWNoIG9wZXJhdGlvbnMsIHRoZW4gdGhhdCBpbmNvbXBsZXRlIGlzIHJhdGhlciBub3QgcmVs
YXRlZCB0byB0aGUgY2hhbmdlLiAgUGxlYXNlIHVwZGF0ZSBDQkwgZmlsdGVycyBhbmQgcmUtcmVw
b3J0Lg0KDQpUaGFua3MsDQpKYW51c3oNCg0KDQo=
