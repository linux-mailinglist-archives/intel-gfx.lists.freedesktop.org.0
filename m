Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE39A69EF9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 05:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60EBD10E37E;
	Thu, 20 Mar 2025 04:17:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="loPqXeAT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDE410E37E;
 Thu, 20 Mar 2025 04:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742444261; x=1773980261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ik67onv6pNjB7FbGlLFOpQn0Q/VHf9qUxFqv1Ur6yG8=;
 b=loPqXeAT0DyRo1Sx4EobiVmkfnFpRkJc0zpwv45QEP6jqY0ChJuu7Ik2
 uAXtNk7qrx6K877SjkCZlO1RAaraTSqHMr/Mzq3UogI/I0RMMB/sBPVsu
 J2YIj4Lq4+MNh7hPBdAYiOzX3zFBDI7DGZA6tFmgaXQlHxr0T0TWZoPfq
 nszBfpXsfLpKC1wDBuTwd7c0L37ApruL+vfN+JjhBmRVQCeb2MRA7r1zK
 7k90z0i2yrrv/6Q6dYmBu2ALUqLgdYs6s1UvLOiuJ5iTAsAajV6aVd6cH
 018gwgqEhBwzbnpwtEOSEW85kd2itJ+mPJKain140CFN1z5yI95c+fORH g==;
X-CSE-ConnectionGUID: hFXxbUNQR8Oc2HcZG3uhJg==
X-CSE-MsgGUID: UoqFJN5BR+mc5aPuEPe/Ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="31240275"
X-IronPort-AV: E=Sophos;i="6.14,260,1736841600"; d="scan'208";a="31240275"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 21:17:34 -0700
X-CSE-ConnectionGUID: RUbygihsSCyGGoNno+frEQ==
X-CSE-MsgGUID: zD71QF9qQ/+ejGTOKt7vqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,260,1736841600"; d="scan'208";a="153825347"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2025 21:17:34 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Mar 2025 21:17:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 19 Mar 2025 21:17:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 21:17:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vAE757/eWhwvwJKrG+e51mXAGkwT0oS15XcR+GIZTe3d9A+SzjgMM2P6fiT9Zs/4lvxM/mAJJr5XDWKyhcWNSoCes9pomF1AQt+2d85DJvXEzHo4+WpnE5z0eo5GtjzqAL34BQtq5yOVyNYZRryJLRwOeU22llW3bowymGGAjYAAVEvlbfEph0/DPjXXsS/aSm4Gq3TmvU4AlKGne/uYJ4IK4F0bMmUbvstwSBTOQ7w26wNWeYO75Cp2XyneKNbgtcPmFjMqArYp0Utng7bIN7eNCGW9x7OCjofSaip1zp/yWAhfrj3UtyOb8/dK59L22jcnWIwwnKxqvb2VomnY/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ik67onv6pNjB7FbGlLFOpQn0Q/VHf9qUxFqv1Ur6yG8=;
 b=TTQQL32PUomTtzYo2azImnHZs0rUABrScCu+H+NQJ6GJFqNsDHdGKY5cvdkokfhESGi7HMJbbs4GG2hNIBdK4pta1cmcn99p6l9EnJEEq0DRY2jshck0e42+0mN9a5TpicisBslHnQrBcKuxmVKIoyBsW+AehUWFgwJNJkaKp6qsQb+zhGM9C/k3UVbLGxsF7FC22ohmR5WVg+5dV92rLj9HhbrfBwTFQdLLNBa8mcbTVqUqLHy6cYkwxSHxUsjFRQOCUrB7F9jhW2Gn/GiyBcNcg304bWqO1Wuxv6FuU5AMb4rUaFTjmKIlMal1opDUKqIjhyPKEcC7naeyQ6UolA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Thu, 20 Mar
 2025 04:17:31 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 04:17:31 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBG?=
 =?utf-8?Q?ix_harmful_driver_register/unregister_asymmetry?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEZpeCBo?=
 =?utf-8?Q?armful_driver_register/unregister_asymmetry?=
Thread-Index: AQHbmPshxgQdlDebp0qC/DXlb+vw0bN7bQ6w
Date: Thu, 20 Mar 2025 04:17:31 +0000
Message-ID: <CH0PR11MB5491C643E05B512D2335AA3CEFD82@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250314205202.809563-5-janusz.krzysztofik@linux.intel.com>
 <174240478412.54991.7499684983166865645@18a75f3d1eae>
 <4398973.mogB4TqSGs@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <4398973.mogB4TqSGs@jkrzyszt-mobl2.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|DS0PR11MB8665:EE_
x-ms-office365-filtering-correlation-id: 2af4d2a6-af34-4df0-1823-08dd67662243
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YldoUFFqeUtHNEZ6enYvU2hXOUJsZHgweHlFZUN0RHNKRndxbWZLUkRlNHEx?=
 =?utf-8?B?cGpWVDJMQ0EzK3A1Rit3VWc0UitpTTc2UThyZko0Z1RuNkVKK2poVFJsNmJS?=
 =?utf-8?B?azlGNVNpL3RKR1JoNE93Q2NmbFQvcWM0MkFsUkVRWkNWOTVTVjdZakM1NlB1?=
 =?utf-8?B?TjZkL1dPWUc0ZnpjODFYY0p3eDV6a0M4b1c1ZlozRXpHSmNFakkwcXNzUGcv?=
 =?utf-8?B?cGNnUkVnbTVPVGRvTjgwS2UvNnMxRms4RUw5R0JqY3Vlbm1QMUFhcURrZWEz?=
 =?utf-8?B?UVJ0RkRyZHU3TnFucVFhcS9iTFFFK1p3cmo5bW5JNmxIV0VtZXlXL3JkYnpx?=
 =?utf-8?B?M3V1NWtmQUg2OVA2cG5YcThtMHhodUlDTmdQVEpXbEVpdytUSzZ1SURJa3dv?=
 =?utf-8?B?NGF0NWoxN3NURlJ4WW1jZ2gyU0NsYWVIdTU3RlQvcmNkQ2ZCR0VrV3o2TDZ5?=
 =?utf-8?B?WkwwenN4d2JSaWtMbDR0SFZ5bjlFZ3l5czZLNmFxcjY1S2pIR0VLb1hsY3px?=
 =?utf-8?B?ZDIvSVQ0ejM2aCtyYi9yQWVLNzh2WjFydXJ2bFJXTGl0NU81T1NtYmg3R0Jo?=
 =?utf-8?B?ZlFnUHRKdk5FcWRLWmZqa1VRQ1lQT0wzZkxoVzZXZit2TWI2MXh3ZmkwQzk0?=
 =?utf-8?B?MXVnUDdDWmlQMGUyVldMWldRL2NPQkk0UVFzV2JWZ1R2UzFHcmhTTEpSbTM4?=
 =?utf-8?B?aEw4aHlrdTJhMkNOd2l3RFl0T1hMaWkxOW1xQ29HUmVSaHJLd05DWGs2aVJj?=
 =?utf-8?B?aTEweVBHUmJZYkJEd0NZWHI5MjhpZkU0dzdwTzlIakRYSkNLWWNGNTVxdzJJ?=
 =?utf-8?B?Qys5N1pYUVJvU3VBRzQxVm9lOStRYmdZV1Bya3ZJUEhVMTFjMUFTZk4zbFVO?=
 =?utf-8?B?TXY1Y2xxZ0dtSDBqc2Zhc0xHd2ZJUDlvWnZ1WStlVnlGZUk0TkMvaUtqbkhC?=
 =?utf-8?B?WHJuTkJ5aFRhdGY3aDBHcFlRYWlqc1ViM1J1UEg5OWdWR045TmkralBsbUtW?=
 =?utf-8?B?Z2loVi9FSk5qcEZOejAwVEt0aU9PUUtLRldtVU9JY2VuNTZvbDY4akNYK2pQ?=
 =?utf-8?B?RGxHVEx2RGtVcXlpeU5pWnFZR3hQV3NOYk1TaXFuMUxsT1U2cExjRU9zL216?=
 =?utf-8?B?TEg3SFNyMEQzUkl2RXZYT2F0SjdSWDB4OGs2QUcrb0VGZDNCUnRvclprbkxC?=
 =?utf-8?B?RmNLZ1NDcXdlMmQvZGZ1TjMzclZsOVRSTDcxa3ludURDSW5PUjlsbVE3ZlVJ?=
 =?utf-8?B?dWVPTkZHYU9tSTdKTDJpMFR3dDJWMHJMWkxHZTVyQ0pRSHFBcUdMZDBCRGpV?=
 =?utf-8?B?QTBSUk15dHYrRDNIVG1aWEVJMGJDbzdIbWVCczZabzVydWpLUFVqN0tTRjlQ?=
 =?utf-8?B?aDhhdWZuY1ZkUGpaWjVnL3V3MlcrYjVieU9UZUo1bUtlMVNBL3ZNd0FRdFRK?=
 =?utf-8?B?eERPbDRuT25weVFEVkg3aWJLd3pMZG4zaXo3S0NjbVU3c0hPZGNUeVIwTWxC?=
 =?utf-8?B?dVErbmdlNitCRVZ3UEl3dkI0TW9aaHVHVUNCQTNGWks5anFNNHRWRnNxOXU5?=
 =?utf-8?B?WDFxWjNWV3d4ajR2R1lraDloWG5ZaWlySlBac3I2eStKUkpyaFJHcjYxMGV1?=
 =?utf-8?B?MEpQSURYMkFFR3JtL1lKbGx3c1lxcG1oVENFbVhkeHBrYkZCL3NIUlhKcWlZ?=
 =?utf-8?B?NkJVem1UZEV2QWh6aXJZZlV1L3Z6V1ltUHVmRmY1eFdKdVEyNVRiTHJmZ3Zt?=
 =?utf-8?B?cGZiVm5iRGxHaitQSDNDU2RjaXYyS0NmUFJFdVM1eUU4NUloMFVVZDJ5KzBZ?=
 =?utf-8?B?aEtzTUo2YXR4TlVUenhTTDdWcjlrYTU5dVI3bTVrcHhGc01rdXJMM1dYSi93?=
 =?utf-8?Q?525dnYqVbjZaV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzI1QzVRZFJFcWVhSmFONFdaTXVDYis1djdMcGNiSitneE1HRXY4YmdmK21V?=
 =?utf-8?B?MjJWQzR5OGlWVkdqNlF6ZmpVamZra28wNHh2NFVHdHQvb1N0NDYzTFZTbVpu?=
 =?utf-8?B?cWZtZzY2TlRGOGhIMWpBQk5UWlZPNWFXMWRPYndxaWVVdDlGSWtyZ1pCa0ZT?=
 =?utf-8?B?WTdLR1NXbDdubVlRWUZhbUxWdjlER0phbzBZYzErcnM0SnlWSmdXVDdBZVQw?=
 =?utf-8?B?ZnhSa1QzYmJteXcyd1pLa25nN3RYM29UcFEyT3JoWXhEeXhpOXZYQzc5NjRl?=
 =?utf-8?B?L2hwMVJnZTlPeXBpVnN0NUhHT0dKRHpjaE1oa2dodDlqZTFPV2NsSCt0RTZz?=
 =?utf-8?B?KzRKc1N0QWloTkRvWkZQTFFQa0QxSnhCUGFNZHV5RVd6eUdod21CbVdPQjZK?=
 =?utf-8?B?UWJjbkdvZkxHdUlnL0FFYzV2Ky9JOXVHS0JSUVpJTzlEWGtha0F6UUw1QThH?=
 =?utf-8?B?cmtnVWpEb25LNGg4b3NJVElWWitZZDBVY3VEeUNuR3VVNzZtTVVYdHpXNHE1?=
 =?utf-8?B?VXhQR2pRRVQ1WCtWZnUvQ2lFOWVGb0FGQ2dKS3FmTHN0c2JmV1dqNWxoc3h3?=
 =?utf-8?B?VW1xVUdtK2U5OTZ6M2F6dDd6eFBkdmhMNGlxWXFaY2JWek9KczdyUTBtYjVN?=
 =?utf-8?B?MUcwczJNOE0yTnhHb3pjMmovU0FFWU0vU1AwclFWRWl3MWlqNzJtMTdUYlVn?=
 =?utf-8?B?cWpHUkdvMm5zS3VCZVd5MVhES3p5WU5oZWNOVHZVaDZTeWxDNUdQZzNtQTAy?=
 =?utf-8?B?OHErNjBtdWVmTHU3MURwVjJ1RFZqbFNrUzdxVHdSMWMvejRnZnVqWWJobmtO?=
 =?utf-8?B?WkZub0RIOXhyWS9yem9KLzZ3SFp5dVVRL1BHbzNuZ2U3ZllCdEdGbVZIS3FC?=
 =?utf-8?B?ZCtRNjFCR2RRWGFTUnNTU2d3Tk5Mc2JJeWhZek4wdUFmVHdZcVdBZVNOZjJy?=
 =?utf-8?B?UnpWWk8zclVLUDMvYzFKeVRTemFCQzZyUVVUMWFBdVpObnlldUVkKzZTWWgx?=
 =?utf-8?B?anlRSjN4ZXNqR1JBcWp2RnJrQVFaSWNFakZ5NGFQMFIyTEQxTWZGek93K0Er?=
 =?utf-8?B?N3hDVXN2a2NKcURHeWp4aDZoOFlhQVNuK0VmVWtydlZNQ0FYOXhsdlRiOG5i?=
 =?utf-8?B?SUZMVDVlcDJzV1p3cDduSFdyeDFGT2duaEV6NzA5QVZBeHIxK3N4VlhKRFZq?=
 =?utf-8?B?Y25MYjJMTW5odTdRR1BvclRjRm5nb25ka3dDZmpUM2lOMjNGS0hVUXFvaDli?=
 =?utf-8?B?UkxIQXFpMG5wZUN5SEFMVUhPeFhrQjYrMHd2d3hKTzY4RVhvQU40REZtcHRH?=
 =?utf-8?B?eHJCNk5HS2xxMng1Y3RxUmlTVzlDdlUrRldPMUtxaHIyWE4vR1pxNk0yNk52?=
 =?utf-8?B?Y09RUXZpd0ZOeWNOZU45c044TWIxVlAzc2xtUWZ1aWU4cmxYQ1hDRkNKdmc2?=
 =?utf-8?B?ZzNvV0p4M2pnOTFUUWQ2cFRlSDBCRUZtcTd5aDk1NGQyam5rV3lZTGw2ZVk5?=
 =?utf-8?B?YnUyVkV0NzdYb3BPci9qcEhxK2VvL0ppbHBIYW9VU016bWRsS0FrZFlhSkR0?=
 =?utf-8?B?VzlYUk5oNXFwYmNXUGVHT1ZoVHVsTTZVdDhta3BXbXQ0ZktSQlFPYm1FVExP?=
 =?utf-8?B?UDBjQm1yVk9Rd1dRcmRpeU0wbmR1c25rd1N3SUNkRlkweFkrWWpMOWhhQThZ?=
 =?utf-8?B?dWtYNmM3ampyRWVGZWc2VWpmN3VVV0ErLzJsci90NENVd2VPVUVnT2FaYzFY?=
 =?utf-8?B?Z29HYW1xdWczeUMyWmQyYlhvZDFVM0hxYjJlZEpEOFQ5ZmlpZkdjVktGT3pK?=
 =?utf-8?B?bTRvQmtXOFVBNzJWeThKNE4wV0xQWklVN1dVSmhPMkJCcnRzMDQwVmtlNXVn?=
 =?utf-8?B?UWkwYWlEWGpIdWxIckZRZDZ0aGhVQmhncThzNHFjZVR0b2hLWkxXZFJmb1Nq?=
 =?utf-8?B?MXpraGVuZDRsb2h6UWhCbkJJRjVoeHNTazJkRGttbFB5eWw4azVoeThPNThu?=
 =?utf-8?B?VEVTOG5DbVJ4WC9BM3pWTzhXYlBLMU5FNlMyc2Z3VUpBTHhNSFM2WUlFV1JL?=
 =?utf-8?B?T3pWNGNndlh1VGMzWWxnOEpEQmhRaFpHbTc4ZWhRUThkSlo5dTVrS1ozaVFM?=
 =?utf-8?B?alVkWUJ0aUZra3Awdm1keHdmbmptaHppaExPMjVIRWxVSU5NUHZWcS9JOW96?=
 =?utf-8?Q?E92FEi9mK5ohxuvl6PdCuxVWou951N1+CW+tCib085Ri?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2af4d2a6-af34-4df0-1823-08dd67662243
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 04:17:31.5340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U0RpnMieOLrVbeetpSld+hJ+OuWlF9QYHVu7uQBv7V2XY1mgEYHYTzcW5DnDXbOLWVrBERDhRFFKkg6nqTztOxW0DrK2oybwuJFm0qmAREI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8665
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

SGksDQoNCldlIGFyZSB1bmFibGUgdG8gYWRkcmVzcyBmYWlsdXJlcyBkdWUgdG8gUHVibGljIENJ
IHNodXRkb3duLiBTbyB3aWxsIG5vdCBiZSBhYmxlIHRvIHJlLXJlcG9ydCB0aGlzIGZvciBub3cu
DQoNClBsZWFzZSBmaW5kIGJlbG93IG1haWwgZm9yIHJlZmVyZW5jZToNClRoZSBGcmVlZGVza3Rv
cCBjb21tdW5pdHkgaGFzIHNjaGVkdWxlZCBhIHRlbnRhdGl2ZSBkYXRlIHRvIGJlZ2luIGEgbWln
cmF0aW9uIG91dCBvZiBFcXVpbml4IE1ldGFsLiBUaGlzIG1pZ3JhdGlvbiBpcyBleHBlY3RlZCB0
byBzdGFydCBvbiBNYXJjaCAxNiwgMjAyNSAoU3VuZGF5KSBhbmQgbWF5IHRha2UgdXAgdG8gb25l
IHdlZWsgdG8gY29tcGxldGUuIER1cmluZyB0aGlzIHBlcmlvZCwgdGhlcmUgd2lsbCBiZSBhIHNo
dXRkb3duIG9mIFB1YmxpYyBDSSBhcyBrZXJuZWwsIElHVCwgYW5kIGluZnJhc3RydWN0dXJlIHNv
dXJjZSBjb2RlcyB3aWxsIG5vdCBiZSBhdmFpbGFibGUuDQogDQpObyBwcmVtZXJnZSBvciBwb3N0
bWVyZ2UgdGVzdGluZyB3aWxsIG9jY3VyIGZvciBhbnkgb2YgdGhlIHN1cHBvcnRlZCBwcm9qZWN0
czogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnLw0KTm8gdGVzdGluZyB3aWxsIGJl
IGNvbmR1Y3RlZCBmb3IgYW55IG90aGVyIHN1cHBvcnRlZCBmbG93cyAoc3VjaCBhcyBLb2J1aywg
ZHJtLW5leHQsIGRybS1maXhlcywgZXRjLikuDQogDQpGb3IgbW9yZSBkZXRhaWxzLCBwbGVhc2Ug
cmVmZXIgdG8gdGhlIGZvbGxvd2luZyBsaW5rOg0KLSBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZnJlZWRlc2t0b3AvZnJlZWRlc2t0b3AvLS9pc3N1ZXMvMjA3Ng0KDQpUaGFua3MgYW5k
IFJlZ2FyZHMsDQpSYXZhbGkgSnVwYWxseS4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IEk5MTUtY2ktaW5mcmEgPGk5MTUtY2ktaW5mcmEtYm91bmNlc0BsaXN0cy5mcmVlZGVz
a3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW51c3ogS3J6eXN6dG9maWsNClNlbnQ6IDE5IE1hcmNo
IDIwMjUgMjM6NDcNClRvOiBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFJlOiDinJcgaTkxNS5D
SS5GdWxsOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogRml4IGhhcm1mdWwgZHJpdmVyIHJlZ2lzdGVy
L3VucmVnaXN0ZXIgYXN5bW1ldHJ5DQoNCkhpIEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnLA0KDQpPbiBXZWRuZXNkYXksIDE5IE1hcmNoIDIwMjUgMTg6MTk6NDQgQ0VUIFBhdGNo
d29yayB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+IFNlcmllczogZHJtL2k5
MTU6IEZpeCBoYXJtZnVsIGRyaXZlciByZWdpc3Rlci91bnJlZ2lzdGVyIGFzeW1tZXRyeQ0KPiBV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ2MzM2Lw0K
PiBTdGF0ZSA6IGZhaWx1cmUNCj4gDQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cg
LSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE2MjkyX2Z1bGwgLT4gUGF0Y2h3b3JrXzE0NjMzNnYxX2Z1
bGwgDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0NCj4gDQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0KPiANCj4g
ICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ2MzM2djFf
ZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICAN
Cj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRv
IHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDYzMzZ2MV9m
dWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFp
bHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0K
PiAgIA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoMTEgLT4gMTApDQo+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBNaXNzaW5nICAgICgxKTogc2hhcmQtc25iLTAg
DQo+IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+
ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9k
dWNlZCBpbiBQYXRjaHdvcmtfMTQ2MzM2djFfZnVsbDoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAj
IyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiANCj4gICAqIGlndEBr
bXNfZmxpcEBiYXNpYy1mbGlwLXZzLXdmX3ZibGFua0BiLXZnYTE6DQo+ICAgICAtIHNoYXJkLXNu
YjogICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxXQ0KPiAgICBbMV06IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYzMzZ2MS9zaGFyZC1z
bmI2DQo+IC9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy13Zl92YmxhbmtAYi12Z2ExLmh0bWwN
Cg0KQ2hhbmdlcyBpbnRyb2R1Y2VkIGJ5IHRoZSBwYXRjaGVzIGNhbiBvbmx5IGFmZmVjdCBkcml2
ZXIgdW5iaW5kIC8gbW9kdWxlIHVubG9hZCBwYXRoLCB3aGlsZSB0aGlzIHRlc3QgZG9lc24ndCBw
ZXJmb3JtIHN1Y2ggb3BlcmF0aW9ucywgb25seSB1c2VzIHRoZSBkZXZpY2Ugd2l0aCB0aGUgZHJp
dmVyIGFscmVhZHkgYm91bmQgdG8gaXQuICBQbGVhc2UgdXBkYXRlIGZpbHRlcnMgYW5kIHJlLSBy
ZXBvcnQuDQoNClRoYW5rcywNCkphbnVzeg0KDQoNCg0K
