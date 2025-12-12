Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0553CB8FAD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A917A10E8E5;
	Fri, 12 Dec 2025 14:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1eBFDYY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3C010E8E5;
 Fri, 12 Dec 2025 14:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765550362; x=1797086362;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=B9m7Un4AaewvX9oaVm1/voqtH+qyYuwsTf286Gl71z4=;
 b=C1eBFDYYUEpvPRRNAgJXkJM4KVrLIi2Uxnhw3cSIpMRjy+nZ1PxRMyi8
 Je/yJAD4HF/oy8lY98JIEzXQPUER1/NRo/TxhNI7E1I6bMmnbZpck65UD
 Op0bKV/GiFkdO6LAdKEtDr/wa3GD4tYcW0NRPgoM168SOpHTaPzxgQIYO
 E4+o6qFF/bRa1J8AA/zuBdMXftPGqthotwPNJ0vYsjB2e5XUW59PFVFZZ
 7g9IlXCEz+Ic8DBUxsKtjkIxmmqJgMT8MQf1w2fVQtJUW5re9kf3TbfFC
 42ALCsmmMjMBD61yLkbKLBGIds6F0U6sWV7+2v6Q/ajOoHf3zewu9Tsxf Q==;
X-CSE-ConnectionGUID: wO+aO0W5To2lp1UgAwYOVQ==
X-CSE-MsgGUID: ljwXbjirRfCwrC8FpLXP/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67710956"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67710956"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:39:21 -0800
X-CSE-ConnectionGUID: 43wbzEbcTFmBU+EbEf2ZXg==
X-CSE-MsgGUID: 31OC6yoeSDOYEho3b9kI6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="202022612"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:39:20 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:39:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 06:39:19 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:39:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TKY3T+DfpCiF+Yd8DUE6NaLkkTsaR7Jb7n2s7ZYZ2ml9wXLeAQmE1zAS8j7XWrhY4xrO4CG8v1D8KrlsXf708sNnh8fX+zhKKAXVF6WK4BHCANLRL6TVyILzfcVaSjOY80SV/GPHJToKqIMRBe0W9SjrxXv+tJq/jLVffPCoNlw20+XtpvXjGAsYpVCOG2D57ff4rNPSa8YVz+2XwZhLr4zvzQ73eyfXwbS9ChqLrFC6JJKUTzM17Q86RWaPj86HQyvNkHQ6RTIEMn2Vh/8/GYcy+FIcoUVOgbW2vMwxsi48HqPOr1Cl+5/U4Uz4cWmsDFiL1LTKDVA5ZX7n8ti1fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9m7Un4AaewvX9oaVm1/voqtH+qyYuwsTf286Gl71z4=;
 b=cizeoevAN5BQHU3XzmAgmG4YFxQGSAmwC+hGRXZHB4yM2BXOJugn2K/x2XpMBwLDJPE6/j1PgAzn8I5FzVSum6tSsyH7DE/57g4G9ibWQv5h2zh+sXe+wa0frSJGzVt42rmQHsWzxnORWXe58NLyRBzehN8Gd0lGXNPK12gzh4WoSep/hmEuMBlRmHRCSlFOOQXWDu2Hd/PlmJSlhoFxTdTmqCS/Wqv80lkjJHJw6Ib8WcOP6IBx0bwo/cU7v19qPbLbCBk2VjyCXjKsMn+Cau7V8wrjZAKsK5YcyQcc6URtEiiXPX0o+FeTMZT8l9utWiwGfFjbFpzF3aK+PAO6Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM3PPF5AD378C3B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Fri, 12 Dec
 2025 14:39:11 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 14:39:11 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 29/50] drm/i915/dp: Use helpers to align min/max
 compressed BPPs
Thread-Topic: [PATCH 29/50] drm/i915/dp: Use helpers to align min/max
 compressed BPPs
Thread-Index: AQHcX+7DnniL05PttUWhuh3XSDbShrUeKkiA
Date: Fri, 12 Dec 2025 14:39:11 +0000
Message-ID: <bb2a928bd59ad57da38b72832cb9b1f0eb71cc84.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-30-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-30-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM3PPF5AD378C3B:EE_
x-ms-office365-filtering-correlation-id: 957d32f2-4af0-42a7-d6c7-08de398c370b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZDQxakxXUjZIRDRQamF6eVVyQXpDa2taVHJUeUQ3WWxzM3JyUHdYZFo2QTdl?=
 =?utf-8?B?WnlTNjk3UUpnVzhGeEhOVUlTVXFmMFNmdExVeCtNQ0I2WkQwOHRjQmZwOGQr?=
 =?utf-8?B?NEE5dzhNZmppSWxadCs3eDFmYmN3WDBQbXJROGtxd1JneTVMWDhkckNZOWF1?=
 =?utf-8?B?VTQwZm5IdjRHNjZGaDh6SjJUTVRMM090eXA0UkM2dm1YdmJiTjF1R2lER1RV?=
 =?utf-8?B?eEdoTkhCU05IUEJwYk4wSkkzWGt4VE1KTTZMUmRnZ3ZnbTlSMnFkdnNwbm1w?=
 =?utf-8?B?aWlNTklsM2VxWEVlWWtURHcyQjlJeUFMSGZXUXB0YlNadHJyMmtUR2k2NWt3?=
 =?utf-8?B?b0VKdHhEZjFJZGVmNUJrOVdaTUlqREFpUkRFK09wdHJ3UVc1VjVqazN1cjIy?=
 =?utf-8?B?bTNPQklrRG1kcGsxbUNXWmFuNWtRaGRuQjN0NTlNVXlnd04rTFltdTgwSmdW?=
 =?utf-8?B?b0lmZUV2TEJrOWpVSWpHTkRIRm9KUjNrNTgrU2Z6L0VwTFhnMlJ0U3hVK3U0?=
 =?utf-8?B?a2x0aklCQld4UXVrYjFhLzFQbHAvQ0RQbXZlRFYzcUdwYVZVRm1UR0JsaVhq?=
 =?utf-8?B?T3hMQXhUdWFiQi92eG0wbWhBeDVnL0Q0bVZyNDREbjRTaWNid0JaYndxQlZu?=
 =?utf-8?B?OG5sK2M0YjVNZjc5NHExNVg4R3FqQWhGSVNHQVI1elZ3TWFRcUZ0OXV4Mjhj?=
 =?utf-8?B?cnVpeVFZTG1ieHY3QnNpbjJnYnFoZER6NHNxcmRyZVQvNVlwK1NydWxkMGZM?=
 =?utf-8?B?aHh3aXl6MmZEQkZIcGZqWDRRbFBVbTFPSlhPcHVMc2p3NnVyTjRSZDFzYVp5?=
 =?utf-8?B?YnlFL2dXaFNBS2pKZDQxbHErZURQM016d1NmV2lZTWVHOHBLUUlwN05jT2hw?=
 =?utf-8?B?UWV1anVLYTBqNDRZR1FSaFdjbHhNUmZsRGJTdHN4ZVlveEo2T0tGNUNNOU5m?=
 =?utf-8?B?NFNuMDlKSjVObjBjejM3MFlLTzdNSmkrWU90YWwwYWNtaDE0ZU16d2Z0dWU0?=
 =?utf-8?B?MTFUV0I3UURaSXBOcXVLS01QdEdWWWVjY2tlWW1BOEliN1RLTHV5U2E1bHln?=
 =?utf-8?B?VlJ2QWlBZFY0Mkk3dllYdHdkUU9kd21VdUpXZHRwTm5SV2ZQUGR5eDdva3Zv?=
 =?utf-8?B?b21wd2Z3ZFhqTFNZQmpOMFptNFlsaTJrZjhWa0JIdmloVy96SnhKT2FTZlp5?=
 =?utf-8?B?SjYrc1Qyb25HR3hEVitSVWJ0aDdSQ2M2bjgxTTJ4aE80b29zMHFITEgrT0Q3?=
 =?utf-8?B?dzMxTm81akV5Y2pDZGpHQ0ZyVVU3L1hsTzAxVm04SXBRQUhxWkRpeVd4NWZk?=
 =?utf-8?B?Q2p6OC81aW5RbEh0V0wrbWN4QWFGVmd6eEUycGhjc3dRUEpJSld2L1ZsazJH?=
 =?utf-8?B?TDZzYkxXaVhwYXY3bUxtWjVOTHptSGpyTWUrSVlYQUNvZGkyQ0tnUjc4eFNB?=
 =?utf-8?B?QitpaGhLOTI5c3RkTm9JcHBESy82ckNMN0pkSUtUSGNLTWMzTk5tRFNpeFV2?=
 =?utf-8?B?SEp2KzE3NEVwS2VERnQ2MkdsOGJONTZBUTNhZzRra3NSQlAvUjhjVWFsVjBT?=
 =?utf-8?B?MGtqM0d5Tm5wTTFqS1dHNk1nL3hHemdRSGpvdk5KY0hqNlJaalhhZFZPbDk1?=
 =?utf-8?B?amhxZmpwMm5ZUGJ4Rms2cDRBWjFWcUMvL3d3RXpVZmt3RUk5bFRlOTNCcE5r?=
 =?utf-8?B?OXQzSm40aTdzTHRTNU91K1N5bkZ3enRjRnczZmpwazdqdnRleGxhdkVLbm1a?=
 =?utf-8?B?ZXljN2lVdXUvL3R0bjV4eitjWHVBdS9tMGlMT3hLN1lmY1phMU4zYTJCSjFa?=
 =?utf-8?B?emFhbDR3NWVJSEF6cm90WDNvaEpuR0dQWkJYMmpKbUVkcmZPWUt5MzljMXV1?=
 =?utf-8?B?bkJQYVZhbm5PTUMzdzlsTFZvVFAvZUtSZlppeGhVZHdpNTdBa3RQa1RseXFN?=
 =?utf-8?B?ekdqYWNnRUNFS0xFeFRTaGJXQ2VVY0JweGtCV2RqcW1ac3h6cTZsWkVtaXFj?=
 =?utf-8?B?eWRwQjd3T0RWaGhRV0NWYUlDaHpUaGlwRWFHK1ZjSDRqSy9OWHFWckFvQ1Mx?=
 =?utf-8?Q?fI4DkG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXhXd04vUmtPMTJYWHlBZWJzRkpRc2lVdkdkNTZhZGg0cGJlSkcyRnY5Z2Vq?=
 =?utf-8?B?K3drZ1ZQaVcyWVJ2SjRWTjdRa3JCcEJ0dFBTczYrbWR1MHZPU3hyWTdNZE5s?=
 =?utf-8?B?bnB3akFaNHNVdDlJMFg4QTVQNGxYMXhjTjZhbFNBaDZ0SDd2TXAxZlIxbnN5?=
 =?utf-8?B?Mm11aHJHdHBrUzY3ajh4bldQNkJRak56U1IzK2V4emRvalcveXkyU1Zibmtn?=
 =?utf-8?B?Um1LeDgxNUJhblVtQkFxWGFKV1NnS1pmZmVBYnpjTU1GQTI3em1ZYmtESkVq?=
 =?utf-8?B?THo5OGVYM0krUG9jdE1ZcldFa1Z5b0k3UzhKNm1lN0psM3hrL01IcC9VWERS?=
 =?utf-8?B?dXlqZE5WOGJacVphV3hGQVprZi8rcm50WFk0dFVVc3J2NDZGeXJPc0hZMUNh?=
 =?utf-8?B?b3dDdDJhK0lrRitxbGpuWlFIbW5yNTEvWUUyS1JwVDRCakgwSWxLMHFXVEJu?=
 =?utf-8?B?dGswdkdWL3QxOXlXMndDMVVhc2tHb3Nyc1pScURnMnFZY3V0SXRlTU9xblZV?=
 =?utf-8?B?SzBySkpybEp4L3FhSlBwbzRTYU5rdzlZdDZnbnR4eWtmaGlEVklLc2lsQXRm?=
 =?utf-8?B?cThUekMwL1VzaDJOaHQ1TGlDUzl4cXVEeUlGL3BhdHZOWW1aMDk4TEZTdS9a?=
 =?utf-8?B?M1p0RndyNmZpVHpGbjlObFJwdUpEaGRIU1RSQnh2bEJpMEltQkVFbUxlaXFJ?=
 =?utf-8?B?b3NQUk5Nb2E5RjRkNDZPM0xDWHR2OSs0RExWRkhRMDk2ekZiTmRYV1czcG91?=
 =?utf-8?B?K2dXdXlUKzdxL2JTdUQ5cXB5b1d6RDRLOWg4bkFwdzZaVEpGbmNMK3QwbUZB?=
 =?utf-8?B?NHdMR0p3NDRtWm5iS1FQVExEMUdpTkxTUUhzNzBaMS9FM1RTUEVabGtrUjUy?=
 =?utf-8?B?aUFQVUxRMjkxTThFYXRjMzhyd1VBdVJqNEtPeUVLZ0h3ZkZTM1VLRDhId2li?=
 =?utf-8?B?Y2dQS0sxd0daOVVIQmZMbXM2ZkFTSXNFZXpJTHhUZW9zb2UrL1hIUUVDMHdM?=
 =?utf-8?B?UWsweTdsK2dSOUl4SnNXWEJhUjhuR0pkbHU1QjFVaWZBYzVBNkZqVE1PY29j?=
 =?utf-8?B?bVZucGlxd2FLNVdOZFJNaWNWa1hOUXMvUHordVlIYVhRMzl2SHVvQWZyTUxy?=
 =?utf-8?B?eGVtVFZEbmNHdjhtQmY4cHFQTitCTExYTkJrTzRHRS9Qd3p0M0FoMjMzWWpu?=
 =?utf-8?B?TW91Qyt0c1BldzFqODJSUmk3V3o2R09GbitiNVBWZDkxYkRPVlJVVHY2aGlI?=
 =?utf-8?B?YlcyUE9NNjJTRUdyWm90amE3d0hBUHNNcmFObWV0ZG5ud0ZIczVLeXpNVUtL?=
 =?utf-8?B?bXkvVE1hWkpDRU9SUTU5bHVkWVRhKzVyVFFWNFUrUVd0UjVjN2FPcFQraVpl?=
 =?utf-8?B?RUJvVGljUjhOOEZLdHZQeERmVnVLOHNMa3Z0cFhBd29HWWhhWWtzaGNlNTFC?=
 =?utf-8?B?RGx5RSt0UGdPS042UlNKem1jVEVGcnhkN1ZReFZjT3BUTS9jSmdJUlJiN0xk?=
 =?utf-8?B?Y0t4TFcvd3pDeG84RERWT1hQQ2V1dGdrZTB3YjVoMlNVS1VITDdQdmpNb3h4?=
 =?utf-8?B?ZDBmTTk0eGZOYi9WbjhkTTltZXBGYm5yejAzSkNmdXRmSEVJa0pRbGMvNE9m?=
 =?utf-8?B?U1pQN21ZNXFNNmNmVlBCdkNFTWRXWXQ1dTduVGVvNHFuL2haWVFKaHNUd1g3?=
 =?utf-8?B?LzJWcDI1eU9mQkZpYTBMWU5QU2F2L1Nlcm1Sbkh1ZXFJZDE1enU5b3Z0SjRM?=
 =?utf-8?B?aTdwVjg2ZUhrZUpmMExhOUtaNnBKR0l4OVBWengyUDFWMzRFWERsQ1gyZDkw?=
 =?utf-8?B?eFZyMGtuQm9pcC94TGNEMkZKUWlBUjBhdzdDWkNUaDhwUkM4NHIrVjBSWUFx?=
 =?utf-8?B?Ykl1VWRyM2laclp1ZVdqcE1TMXowc1QzdFRsSkpaTXRTL0w3TjFHN2dEV00x?=
 =?utf-8?B?Z24xemFCMDQ2UUpabkpLai9uSFE5MHIyRS9aS1lwbkRXS3hpaTBCNjVlMkM0?=
 =?utf-8?B?TndJQkZRM0dxdnl3aEFYS3d0WmVsb1l6azE4YTNEOHhzcEovYjZxSDVYZ0RE?=
 =?utf-8?B?RXNhN1BZUWRpWTlwbHU4dEdTWXFXblhpVmVXMW4zTnNDV2xCT3MwcWc4YVp4?=
 =?utf-8?B?ZkdkY2RRRFFRRXBaOWR0NmRONTI4NTZVcTNJNXBEejJsL3VaRmFZSnhKajA2?=
 =?utf-8?Q?wFERbVqenTrPRPy0NOJ4/ww=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E448E93AD2A7D24D977EF5071D8B1C09@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 957d32f2-4af0-42a7-d6c7-08de398c370b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 14:39:11.4259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TVNz4MJo1kiW661231q9fOjm7DYp/poDx62mw9oaxk4IZWfuchh9fvJT4gBXuaQxLbV0pkq7tkk8+NTj4gbpag+ESyl+/ET3WIQJmiWqLGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF5AD378C3B
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBtaW5pbXVtL21heGltdW0gY29tcHJlc3NlZCBCUFAgdmFsdWVzIGFyZSBhbGlnbmVkL2JvdW5k
ZWQgaW4NCj4gaW50ZWxfZHBfY29tcHV0ZV9saW5rX2JwcF9saW1pdHMoKSB0byB0aGUgY29ycmVz
cG9uZGluZyBzb3VyY2UNCj4gbGltaXRzLg0KPiBUaGUgbWluaW11bSBjb21wcmVzc2VkIEJQUCB2
YWx1ZSBkb2Vzbid0IGNoYW5nZSBhZnRlcndhcmRzLCBzbyBubw0KPiBuZWVkDQo+IHRvIGFsaWdu
IGl0IGFnYWluLCByZW1vdmUgdGhhdC4NCj4gDQo+IFRoZSBtYXhpbXVtIGNvbXByZXNzZWQgQlBQ
LCB3aGljaCBkZXBlbmRzIG9uIHRoZSBwaXBlIEJQUCB2YWx1ZSBzdGlsbA0KPiBuZWVkcyB0byBi
ZSBhbGlnbmVkLCBzaW5jZSB0aGUgcGlwZSBCUFAgdmFsdWUgY291bGQgY2hhbmdlIGFmdGVyIHRo
ZQ0KPiBhYm92ZSBsaW1pdHMgd2VyZSBjb21wdXRlZCwgdmlhIGludGVsX2RwX2ZvcmNlX2RzY19w
aXBlX2JwcCgpLiBVc2UNCj4gdGhlDQo+IGNvcnJlc3BvbmRpbmcgaGVscGVyIGZvciB0aGlzIGFs
aWdubWVudCBpbnN0ZWFkIG9mIG9wZW4tY29kaW5nIHRoZQ0KPiBzYW1lLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyMyArKysrKy0tLS0tLS0tLS0t
LS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9u
cygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmlu
ZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gaW5kZXggOGI2MDE5OTRiYjEzOC4uZTM1MTc3NGY1MDhkYiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjIxNywyMCArMjIx
NywxNSBAQCBzdGF0aWMgaW50IGRzY19jb21wdXRlX2NvbXByZXNzZWRfYnBwKHN0cnVjdA0KPiBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IMKgCWNvbnN0IHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvciA9DQo+IHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25u
ZWN0b3IpOw0KPiDCoAlpbnQgbWluX2JwcF94MTYsIG1heF9icHBfeDE2LCBicHBfc3RlcF94MTY7
DQo+IC0JaW50IGxpbmtfYnBwX3gxNjsNCj4gwqAJaW50IGJwcF94MTY7DQo+IMKgCWludCByZXQ7
DQo+IMKgDQo+ICsJbWluX2JwcF94MTYgPSBsaW1pdHMtPmxpbmsubWluX2JwcF94MTY7DQo+IMKg
CW1heF9icHBfeDE2ID0gbGltaXRzLT5saW5rLm1heF9icHBfeDE2Ow0KPiDCoAlicHBfc3RlcF94
MTYgPSBpbnRlbF9kcF9kc2NfYnBwX3N0ZXBfeDE2KGNvbm5lY3Rvcik7DQo+IMKgDQo+IC0JLyog
Q29tcHJlc3NlZCBCUFAgc2hvdWxkIGJlIGxlc3MgdGhhbiB0aGUgSW5wdXQgRFNDIGJwcCAqLw0K
PiAtCWxpbmtfYnBwX3gxNiA9DQo+IGludGVsX2RwX291dHB1dF9mb3JtYXRfbGlua19icHBfeDE2
KHBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0LA0KPiBwaXBlX2JwcCk7DQo+IC0JbWF4X2JwcF94
MTYgPSBtaW4obWF4X2JwcF94MTYsIGxpbmtfYnBwX3gxNiAtIGJwcF9zdGVwX3gxNik7DQo+IC0N
Cj4gLQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFpc19wb3dlcl9vZl8yKGJwcF9zdGVwX3gx
NikpOw0KPiAtCW1pbl9icHBfeDE2ID0gcm91bmRfdXAobGltaXRzLT5saW5rLm1pbl9icHBfeDE2
LA0KPiBicHBfc3RlcF94MTYpOw0KPiAtCW1heF9icHBfeDE2ID0gcm91bmRfZG93bihtYXhfYnBw
X3gxNiwgYnBwX3N0ZXBfeDE2KTsNCj4gKwltYXhfYnBwX3gxNiA9IGFsaWduX21heF9jb21wcmVz
c2VkX2JwcF94MTYoY29ubmVjdG9yLA0KPiBwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCwNCj4g
KwkJCQkJCcKgwqAgcGlwZV9icHAsDQo+IG1heF9icHBfeDE2KTsNCj4gwqANCj4gwqAJZm9yIChi
cHBfeDE2ID0gbWF4X2JwcF94MTY7IGJwcF94MTYgPj0gbWluX2JwcF94MTY7IGJwcF94MTYNCj4g
LT0gYnBwX3N0ZXBfeDE2KSB7DQo+IMKgCQlpZiAoIWludGVsX2RwX2RzY192YWxpZF9jb21wcmVz
c2VkX2JwcChpbnRlbF9kcCwNCj4gYnBwX3gxNikpDQo+IEBAIC0yMzQ2LDggKzIzNDEsNiBAQCBz
dGF0aWMgaW50DQo+IGludGVsX2VkcF9kc2NfY29tcHV0ZV9waXBlX2JwcChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiDCoAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQ0K
PiDCoAkJdG9faW50ZWxfY29ubmVjdG9yKGNvbm5fc3RhdGUtPmNvbm5lY3Rvcik7DQo+IMKgCWlu
dCBwaXBlX2JwcCwgZm9yY2VkX2JwcDsNCj4gLQlpbnQgZHNjX21pbl9icHA7DQo+IC0JaW50IGRz
Y19tYXhfYnBwOw0KPiDCoA0KPiDCoAlmb3JjZWRfYnBwID0gaW50ZWxfZHBfZm9yY2VfZHNjX3Bp
cGVfYnBwKGludGVsX2RwLCBsaW1pdHMpOw0KPiDCoA0KPiBAQCAtMjM2NywxNSArMjM2MCw5IEBA
IHN0YXRpYyBpbnQNCj4gaW50ZWxfZWRwX2RzY19jb21wdXRlX3BpcGVfYnBwKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+IMKgCXBpcGVfY29uZmlnLT5wb3J0X2Nsb2NrID0gbGltaXRzLT5t
YXhfcmF0ZTsNCj4gwqAJcGlwZV9jb25maWctPmxhbmVfY291bnQgPSBsaW1pdHMtPm1heF9sYW5l
X2NvdW50Ow0KPiDCoA0KPiAtCWRzY19taW5fYnBwID0gZnhwX3E0X3RvX2ludF9yb3VuZHVwKGxp
bWl0cy0NCj4gPmxpbmsubWluX2JwcF94MTYpOw0KPiAtDQo+IC0JZHNjX21heF9icHAgPSBmeHBf
cTRfdG9faW50KGxpbWl0cy0+bGluay5tYXhfYnBwX3gxNik7DQo+IC0NCj4gLQkvKiBDb21wcmVz
c2VkIEJQUCBzaG91bGQgYmUgbGVzcyB0aGFuIHRoZSBJbnB1dCBEU0MgYnBwICovDQo+IC0JZHNj
X21heF9icHAgPSBtaW4oZHNjX21heF9icHAsIHBpcGVfYnBwIC0gMSk7DQo+IC0NCj4gwqAJcGlw
ZV9jb25maWctPmRzYy5jb21wcmVzc2VkX2JwcF94MTYgPQ0KPiAtCQlmeHBfcTRfZnJvbV9pbnQo
bWF4KGRzY19taW5fYnBwLCBkc2NfbWF4X2JwcCkpOw0KPiArCQlhbGlnbl9tYXhfY29tcHJlc3Nl
ZF9icHBfeDE2KGNvbm5lY3RvciwgcGlwZV9jb25maWctDQo+ID5vdXRwdXRfZm9ybWF0LA0KPiAr
CQkJCQnCoMKgwqDCoCBwaXBlX2JwcCwgbGltaXRzLQ0KPiA+bGluay5tYXhfYnBwX3gxNik7DQo+
IMKgDQo+IMKgCXBpcGVfY29uZmlnLT5waXBlX2JwcCA9IHBpcGVfYnBwOw0KPiDCoA0KDQo=
