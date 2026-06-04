Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wkrAEJCQIWr5IwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:49:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2746410EE
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:49:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YHc2EYs+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3306211282D;
	Thu,  4 Jun 2026 14:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0146211282B;
 Thu,  4 Jun 2026 14:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780584590; x=1812120590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2WDK+pk4SM6dkRmyXY8yvb2itZcB2/5tkauGlgDC1w4=;
 b=YHc2EYs+/h3dfqHszVUoH9Pd8kkpy7+kF3pt8OxQZ+lYSshGIEJzxIZh
 kh/UdM5RXE6ndezdKpklofpHS1M9vaRQRynOHGpqOIwT2fem9YTZ7qqrI
 wkApJ96IHTk5+A3f91kmBFXMdi67KISYklnyfKoPJZd+Hxa7rs5DRoddr
 eCX7+U3wkNFoy3+L15LgOOzGvU1xHMWZXb82H+RP+mruMDzZuwbfWCvQk
 59FifBuZQPKAhQ5Ljjfn8Zl8CF+auZTSRZbCntPz8baTW9O0Xkjjum09T
 G8AaesIKT0hX1WnFkaIpL4FKQDgYCejJki9sp5Si3ulZWS1STvdbklOcT Q==;
X-CSE-ConnectionGUID: Pg4zETMmQDW/xh0i5pzuNA==
X-CSE-MsgGUID: PiST4F6UQ/6TO0gOVWkyGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81154008"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="81154008"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:49:49 -0700
X-CSE-ConnectionGUID: ICHDXNvoSQ2uAPZCeJuv/Q==
X-CSE-MsgGUID: eI4wYQMeQkSlKTSwgpF19g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="268240709"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:49:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:49:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:49:47 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:49:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LC9ZNQ581CiBPcBeflh3KBET9YSveimFhnZnIkh8zckBKOlUX6Ej7estMJWEsRNQHAJo+eQ57OuTcK9LYBwvnijyQY+R7i9GVl5K7PTxMJ08IwRigXwNqEeCmZKrzxDSnMwyEQ7g1DiRzS08xM7vWitsE/K5ww7vhvpJ9BpxJ1uJi/nNN2MwLlm+JeEctqOQkJUtCG8SmdQjDkl2zJgB+WjY1jrSwa7vO+7HO1tzZ7neuvGq8iIf0VQ2fZR2+6ImHVteld6u36+nHhwhIx4EtwfPY3IkQZGiARjkgW6JnDt2AVxuP6QkEy2+2VoRxNyh/DsTX6QhSS83dHIl/KSUZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2WDK+pk4SM6dkRmyXY8yvb2itZcB2/5tkauGlgDC1w4=;
 b=TDBnZWKCxS/1olclE6olETGJHL+OLQIW4LDWlQGa/GhkM130SXdX82JWSRzDWtV/fmPR2mRxnRFVATbpRqU1/0u2B6XBLGXhH4klfzWfYKHfLF68UoZW9cqmnsS2zSBYzaGdWtfJowJSoPkwyQTTYJ7SJyOCJlTYPMkgkWwPsw8DeFoQXoNoo5jphVerfeLFevDuwfknwfha2A8loByuxz1o8z4l+8abO2S1eP6qJhKuv3zN6024E5+QJDgZos4lAKo95zfroVLXlfrAxBf1oVrJWdyPvNkvn5k/pfhDryVkS/Ifo3FD0vHakgY/AHdxM3vmm0HUvT4Ljk1h/2EsUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 MW3PR11MB4762.namprd11.prod.outlook.com (2603:10b6:303:5d::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.8; Thu, 4 Jun 2026 14:49:43 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:49:43 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 05/11] drn/i915/bw: s/num_points/num_qgv_points/
Thread-Topic: [PATCH 05/11] drn/i915/bw: s/num_points/num_qgv_points/
Thread-Index: AQHc7pMyXuyFHhahykCCQMPsHVFjgLYuhZoA
Date: Thu, 4 Jun 2026 14:49:43 +0000
Message-ID: <365e00f62417a29b976391652f9c60ec3014959f.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|MW3PR11MB4762:EE_
x-ms-office365-filtering-correlation-id: 32298ed2-64d9-4b41-697c-08dec2488392
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|11063799006|4143699003|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 2QHBUVQO8nNkAysFiGE1Cvbtm9vPtfxBmLVLh90VNecY/JqadgooyyQUGwK+4Puki3aMciGAGerri8+qAz51xy8DJ5Bdypg5VOrbLpiEnLA/+LFVnoXq5SZbl0H3iHblgamDGUu9LPlNHyvInbrP2YxAXYMEHVuVBlczIcNW7toXlhvhYZ6O47VAQHT5CREmUpmXo8wVRGzOjYRt/L71nTUaYJ0Nh1r3zoZpxhVXv25eTIiEO3OEuyXglzwEMGsaMcZ6s6SRI7od1EsIRLDuVWACo1LpDrnKOYeXc+lV5bjJXBQ3KhWKG5CJ1YLCHvAOX9ZRAqxAEewYwnPbGbliasy7ehFFuecCFpaOygp00KYg7sZI5mIKLJ4VF9Y0nKTIbzVMdWXLkJwaWcJwEfJ7UKlbOh3zZsQJE36Da+0Tcnalll5TZPLV03x4kNVQSZoJfp77Bl5+Dcm6Ci3p5JDgP07T78lVJNyycOpT3cVx9nbQDGUFT6I9Rn8lQScgYdPJDtWl0IkvVvj82m01YGVNlSil1VZuWML+S7mRurZKurxgrb+vzH8P8Q5CJfEeLJ49xhZRynfMWZhssdyd3qTnAXwiw/eoA1Sqd8t6EBK/cV6AILxatuCQgFq8pi6wTfjqEFzdMj+27HjpCVqhOYI+TMvaWG9fbKwXPpDJiU5gBhNr+iyvbPlFvT1ebwje0FqbyINMIZ512LAnlzlGBHLMCBb3CAbad/csVgOikWLgvN4t+s7wCJoIyMz6qqXnpg40
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjVwM1VqczEvbkNSWjZnVWJIN092WkE5R0cyUTZ6WU5yUVZOSHV1Nnpld0Iz?=
 =?utf-8?B?c080SWRuMEJnMUVzSnAvNDBXUWxLY3kwdWhSNXBmeXVnQWFqQmhZb3lMNkNV?=
 =?utf-8?B?d3EwWkxDcC82Q2MyODVQRnRNS2dUTVVaZmlHeVFLYzVGc0pvWnluNmx2SU5R?=
 =?utf-8?B?WmhhbHY1THVHL3VyZG16am53WExnY3VrMTVpeWVLQk02UGE5VmRWbzk5OVpU?=
 =?utf-8?B?NHZKNlJsbmhjamdZR3lKeENVNklGNGVQKzcyWW02VnBTcWFxcDI3Nk0vd0JE?=
 =?utf-8?B?ZUdHUU04TnBnVXMybm55Zk1XcWo0cEQrQXRMcVZaY0RIODFyZEx1U2szQkh6?=
 =?utf-8?B?QkRHck1TekUwQnpMb0tweGhvY2NyMzM4eWpSb1ZvMGFDaHBKZ0U0bUFLaXFq?=
 =?utf-8?B?Rjd4S2owbjhBckwyMmhyeUYvV0pwVGcwV0NOY3NnbDZtaEcrKy9qMDc4WkFU?=
 =?utf-8?B?S1VYOG5hY2NhQ2RrR05UYWozdjB2T25Mc3lLVHFRcFVVMVVaQnNYZ3EyOVNJ?=
 =?utf-8?B?MGxwenB5ckw0ZnRJUHNLSDk3ZlNpTzlZUjJJQkJ1dVBycU4xTGJsUnVQUkpo?=
 =?utf-8?B?QmNEV3BXSVpJT0J0V2Rvb3pMRlhzZk5WRktyODVDVXN0Mkt1akF2S01COFc2?=
 =?utf-8?B?SDRhbDI5ZHU4SzUreUZ4Y3hOUXFkWElLMmZOUENhTkI4YSt6NFZ0VXBOaitZ?=
 =?utf-8?B?WHFoSUVWR0NwRjh4TVgyT1RDRG5aNDdFd1NFYXBqaEo0N1djTm1qdFlUR0pr?=
 =?utf-8?B?Mm5tcm1lcVVkbTFSZ3J0MjJ5eFdyUjVhMUErZ2d3TjdVRzlwdEZYaUc3Y1Ju?=
 =?utf-8?B?eERPNCsxbHJsSVJUakdZVXpmU2h1UTJnT3lDN3ZRYUcwOVVuTDh3M1ZRRnZa?=
 =?utf-8?B?TnJYYWJvWklER2RPNWNKQmZTSUNtREZHZ1lRRFBPWjlnRUpSak1EUjh2bFdX?=
 =?utf-8?B?azlSa3NhckdpZFBQVE9QalQ1b3prQnZBcnN6WjNHdHErYjdhMHFMenFMOTJv?=
 =?utf-8?B?WVpWK0tsZUhRS0dpYjE2Q2ZRMC9Cc0RHbzlzd1dlaWJqbkFNNS93OGpPU3hN?=
 =?utf-8?B?aWxEM1BtejJtWXJEVUdyNFFiSk9vRXB1Y3k4Z0Y0a1BIZUZMMGhkSUtleDNt?=
 =?utf-8?B?RW5qRWQ3R01zdlB6bU5zQ3Jnc1FQb2EyekxhTWVLcFVJNzJjSG9Md1JzaW0v?=
 =?utf-8?B?YjlOS05tY0g5dThnd2FvK2pna3FFWUppc1Z5WXZjbm1pb0ZtMUxzS2w5Lzkw?=
 =?utf-8?B?RUlKaERGandUZFQzQ2lkNlJRRVIrZGNWUms5OTRkLzZkSGw5aU1jcUxXSzkx?=
 =?utf-8?B?RVRvUUtBbVFoVzlxNHFhSkU4UnEvaitiM0ZMZTZoR24vbURoUmZZWUxQR1N6?=
 =?utf-8?B?UUhtVVZiQ29rS2xmS05HM1oxbVhueDRPL0ZkVU9sbHFQSmE0dTRTS2V6U2JY?=
 =?utf-8?B?b3ZYam8wNXJFNWVFdzFZRCttb2NuLzRlRU1UUElndkRwSnREVlZLTXYyV2FL?=
 =?utf-8?B?d3hEcFRlcFFEbzJLM1J0WWtiZnZyT1Y1UVRxR1dqREFKeVU1S1ZzZ0VMNkhO?=
 =?utf-8?B?N1hmVEdTVHhyQ2JsZTl0dFlsbFdZeC9FUCsxeGhZb1VUcTRCQVRuZEFxL2Ru?=
 =?utf-8?B?c1RHdU5mZ25Pa0VnYm5GS1F5TXVPWXpadldEd000dU9xSkZ4RTFwY3pQYU0r?=
 =?utf-8?B?c0dBT2k5RWtJNjZvOUJFSm9kczFaRExlQ3ptY09XaFBFTHhtRVMxL3ViVW1G?=
 =?utf-8?B?YllDVHdGRG9KZi9CL1lYQStwaFdxcUxMc1Y1NnVQY3EzV1prNHZXZDQ2MU9z?=
 =?utf-8?B?amcxME1OWTE5OStPOGphWFZhSjR4RDYvajRvZ2o4L1p4UUdPbGVkb0RacUs0?=
 =?utf-8?B?UjR6UDE3bjcwWGVtME9rVjlmZFhMQXd0VUtyM1lOUytjS1FqdE5CVU5VVjN2?=
 =?utf-8?B?MUxGY1VKMVFGcVFrSVBWblpOTHhGZ0pVVXpUTTVlRlZhOFZaaERNMm5WT3li?=
 =?utf-8?B?UXIrS0NITzZaakx5OGQ4RnNHNk15bU03WTBoZHplZHlaMFBMb3ZSSENCSmlZ?=
 =?utf-8?B?bTBRR002UXNxTWlvQ3RqV1RGdUJGRHVvRUhORHh6TzZOSlpocTA1NllzR3o2?=
 =?utf-8?B?STEvWkNEVThvNFo5OU9LRWEzTjBNdlBnUXgycms3elJJNVBxdUJvT1hVL2hm?=
 =?utf-8?B?aTR0MzlmdTUxRVY2MForbjJ5UkxyZENWa0RqQTlWMWxZWlpUVEJMTDBvaGZ3?=
 =?utf-8?B?M0FZRXZsalZnOXZ4WlhITXRXU0ZrT25pd2ZhVElBV3VPQ290Z0l0Ty8vUExo?=
 =?utf-8?B?S0txVFFOM01HMkVUVmhRM3RVOWhzclVzWXN1UTlRMVJrMzJYSncyNVFWSkZR?=
 =?utf-8?Q?jVMsd2+xuLSr58/KxVQa3A2WWkc5OEyPrigA9M2/1KaBb?=
x-ms-exchange-antispam-messagedata-1: ZIXc6lzsNoy0H4bPSWbAq0+mMqWbbnacUZA=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6C9A732FB3397643907E5C338822C2CD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: csrBLXziBLw8Sf63aCqqkzIIuiZTAWLb6g2xJzxHSbNY1Me0ORVj9mREOedjXWkTxoTBlbowur05CvgYOoiIsVswc1fNWBiixpjMxPWofZ4dVRAEsq4IIEaKRvwQN1TvpdbA2R27aSz+PMRLGnFp/bd3d5R+UHgcVPf+ups++dW/Ge5H9lb5axsAH636WSdkHQW5sar6Fyqmvx1j3o0iKLjy7Oda6t1jnnN11fBsMh//XotvNlnpzPBulfc8fAiOL61zJvp19XMu9sQDZDAIIi68pWQPBBRURIJCLCv28s+wLmqGqFkTs2zSauV+TASAbOSgNzu4mWK08Wek4Phr7w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32298ed2-64d9-4b41-697c-08dec2488392
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:49:43.3806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZ/UqLxhd6PzwXln8iA4Ysn8GbS1NNozlbIjlIUEqj2sZabRnbdmDvOvz/0z3iK1bYnyJw/bxshzSQa76sBahEWnkKHA23dfvUtHozA/84s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4762
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D2746410EE

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmVuYW1lICdudW1fcG9pbnRzJyB0byAnbnVtX3Fndl9wb2ludHMnIHRvIG1ha2UgaXQg
YSBiaXQNCj4gbW9yZSBzcGVjaWZpYy4gV2UgYWxyZWFkeSBoYXZlIHRoZSAnbnVtX3BzZl9wb2lu
dHMnIGNvdW50ZXJwYXJ0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgMzAgKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4g
LS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0p
DQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+DQo=
