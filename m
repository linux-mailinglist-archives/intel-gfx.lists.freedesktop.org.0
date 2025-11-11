Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCD8C4B767
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:35:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4191A10E311;
	Tue, 11 Nov 2025 04:35:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gnXy8rZE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8639A10E1ED;
 Tue, 11 Nov 2025 04:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762835728; x=1794371728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/ivdXsSHuqDAKOviBBlVDQmwmsDS6TsWXxPgEf9/ozM=;
 b=gnXy8rZEtN8Dua/JCiY5zFSzo83Cmd8baM3bZCJlHOTj3h2qCkIRKiEd
 ubl1Kz+wg0NszBnutThnWkMb4y+xlIJwTNriAmDga63MJIBNWa42kVK0g
 wB38JLEQXVuod2tY/UjIijvpOtivzM+4NsiEEoiXJUpvxFrBZioSCZiX0
 MwlywW6Np5DJuZOoqdZd07cpbfTT3FzmnUIfdvWjyXi1xdMEgkcJjCzf6
 iDGOP1ruZ4I5sH1R39Rl59fQAhaBmG3GqcRwJgNFwjHrcu68WHW9mCJSF
 y/UigUfTknhYrSg9XlYeYatAk1DLxwxe5msQRjF7ulpuicXyK02sSkwmG Q==;
X-CSE-ConnectionGUID: q6C44EF3ScKEKAl9xmmvaw==
X-CSE-MsgGUID: Y3UVmM/nS36jAnqDV5bPZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75997349"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="75997349"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:35:28 -0800
X-CSE-ConnectionGUID: 9pD7H51UQJKWo5+vY1iHbQ==
X-CSE-MsgGUID: JmqIGT88QcSQUudTCsWn1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="219510832"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:35:18 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:35:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:35:15 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:35:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k0e0lC1tGrkUiMfos4UUSZI5VDYSKwkNE/EFpegsUW8B3pFu6LqHPEugWn8jQWBWOYuVyMUUg14dLMmGGVKF6NDs8UI3z/df/UmOOmnPCX5kIqmst1NHv+aqf6Npd/+8Y8hN/CzpJdH7ZLdfzBpGvFrlJoeJ7g+N7jDpCkMHG2/YdqhLUopZhA5Am7NzrDVKtBpaN31ceC1QKBqyyzKPwPb00L7qqUF+U+GuHvb/4DkclyBf9D4MlvYKZVzGdPAqnuBd/PeEk3PfaQzfs95rfUNgXqp3I+cwRCMdPUNrOAu/WWSAcIipqBdae6NxN8gBLZ+VWsw2/gnup/9ACrxOaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ivdXsSHuqDAKOviBBlVDQmwmsDS6TsWXxPgEf9/ozM=;
 b=hwj7MT0jT0zzi6v9A1fmYcBz8f9UgwK8A1jrROVy790OILJeGczHyAp+IYpyjseX5OMocW/TaCqWMeyuMOkONRl1R6+3nblSIZo/JQ6V1iVf8pkxtZVSuD0MlAzHh4inkqcFjy1xs0898n2U/FQMD4yxWvyRLVXQsHVZo+pe3hT6aPMbdyR7AJF7uyLHG+HxDvuxZauo1u9AT0X9jVbX6yfUkqNzQIIspDY/HXC6cxecfPEMHvX4HNJK2zKs9IkPBEUZeEW+8Se2PgrteUiSlhz5lwX4tGwETMxJrAngQtOzD68Hg1RQX4JBOftaysZjBMgtkTuhGSJX9LCVBmvGIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB4831.namprd11.prod.outlook.com (2603:10b6:a03:2d2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:35:13 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:35:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 08/16] drm/i915/de: Introduce intel_de_wait_for_{set,
 clear}_us()
Thread-Topic: [PATCH 08/16] drm/i915/de: Introduce intel_de_wait_for_{set,
 clear}_us()
Thread-Index: AQHcUmisqqRIRBudUEe++8wKzMMelrTs5CzA
Date: Tue, 11 Nov 2025 04:35:13 +0000
Message-ID: <IA3PR11MB8937ADF2595482A762646DB3E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB4831:EE_
x-ms-office365-filtering-correlation-id: b7a6f63f-52cf-48af-3715-08de20dbb4b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZTBYOEhRZkJ2KzhpUmRVWHBlcmxFM0tBVDljNXFpU2ZuRXF4dXZrN1dZT0RR?=
 =?utf-8?B?cE16blY3aTRLVktIVG1SMGR2U2lyUTBVRUZ6a3pUNUNwbjdqZUpWLzhQTFFC?=
 =?utf-8?B?OWdYWFI3RkFLVUtYTUpnOG9UNXIrdlpsdk53TU9JVUJLYnFkRXcyNGtPN0Ix?=
 =?utf-8?B?dzdpekExd3FRSTcrYnJ0YXArWWl5VUNGL3FNSXdZOWQvMWh3NVdoTnl4SzhP?=
 =?utf-8?B?U3FraVZpenBMa3VIeGVSS0FhZHVub1ZVWkMzQmRNNUZtSHJCd0MzTkhlck9I?=
 =?utf-8?B?L1Fibm1pMm9ra21rbGd2NmREVHhOUDI4QnlwY0RwQjhKaXJnZjlBT3JrKysv?=
 =?utf-8?B?R2VleitxWXBJQlBUUXFDdllGTnlnYWc2emNYM0xOTk9ib0JzeldiY2JuWmNJ?=
 =?utf-8?B?TDk2V2EzMXVvM3l4NC9wWFF4Sy9ObFVxM2cvY3VCeWd2VlZacW1Gd2VJc1N2?=
 =?utf-8?B?UHJpaFgrV1FOcm5GWFJ5TE5uMzVlcE1HNEdmTzV3Vkl1Mm1oaFVza3pTOWFR?=
 =?utf-8?B?Q0JuMkU4UytyWnpSNXNXRXA5aFcxRjRJd0RCZFBIS1F4WDFvNXY5MFo0UnVO?=
 =?utf-8?B?NG81S1EzZkZ0dTZVMkprc0w1RWxCOW5abnc1N3N5azRRaDVEbE9teVI1cnVP?=
 =?utf-8?B?UFl1V1JONjhqdTdtTTlPbFIwcW1FR1VidDlFckxuVEdNTGI4c3c3SGtiNUhQ?=
 =?utf-8?B?NmwvLzlnRXBRcGlZTnVlV0VIY0JQT05KQk0wa0hmM2tmbmxYRFZVcG9ockZW?=
 =?utf-8?B?UVN6NS9ndDdWbEtidlhjcUxiZm5jNzlhVmF3ZnYzdkhZdzloOFI5cG1kM3FE?=
 =?utf-8?B?aElMVFg4NzBNRUFjcXdETXhXRjNMRitoMU1ZbmpCdC9BREFUb3AzZE13QVRt?=
 =?utf-8?B?Zm9hRnZXMmdCcVFkbitlSWZkVkFCZU9LZldzc1EzTTYwQjdlZTNMTVpwa2dP?=
 =?utf-8?B?N283SDRlMTFuQXZ4TXE1allVd2ZkVXhKc0o3UXN5aklzc3RUbjRnVDVXRTg5?=
 =?utf-8?B?YlBhZytGcHZEY0o1M3lZTG53UGtaL28xOE1TM0dabzUyUEtaMndaSm5uT3A3?=
 =?utf-8?B?dGVJa2NXd2YySmR0blJIeE54cWViaUlNaTV6Sko0WjhaQTJsbGZmMTZPLytU?=
 =?utf-8?B?eE9Gb29uRUdXS2FRRTlPa2syWjAyU1JDak4xVk5lRFU3cjV4RHBKNW9YVy9I?=
 =?utf-8?B?d0pMcHRub1RqZjFXMFlZNEx0ek5SMEtyVTFvUUJ4WmRUbkkzYWxxa2J4bytT?=
 =?utf-8?B?d0lyc2sxbjc4Yjk4RmtIaXU2eXE0VzNpOXdmYStCbzF3RVIySnlQVklzNDUr?=
 =?utf-8?B?Y2VKV1E5dWEzSnpaWk9LZS83SUdBWHhpZjBTeklJSERJZWtaTDNNN2ZzQkc5?=
 =?utf-8?B?cVpXUWQ2NHFLaXdOMGVsdnEyMUwwK2phVG1ONGRiV3hadGVnTzdjQTJzUXRW?=
 =?utf-8?B?N0RSWWdNdjZZbnI3Uk9FcFI5WGJoODdTbEZYK045M1VYOHlXZFRBSHM4M2pi?=
 =?utf-8?B?dXM4RkJWRUVpaHFvYnFzWmxJekJ2ME10Nk1oL202ZUdyQUhHU1B6SDU4c3lm?=
 =?utf-8?B?akwzT2RnUTA3UDJiZEozZ2c2RkNVS2k4aXhVMU03UzlNMEk2NmM3UCt4NWZR?=
 =?utf-8?B?NFhUdlozSnhJSHBiOTRLd2ZMT1kybGxzZDROVzJWZDhCajhSNWxzKzVhT1JU?=
 =?utf-8?B?MEFaSklqQVRpd1dnalJzazM1aXA5QnVlaWllYTBrbU9pTUtVdkwwU0wvNzkr?=
 =?utf-8?B?dGUyUnFyUlZVSUJ4Z3NUV1FOVEtYdVhQVmFEdTZlVDBkWlR3RU1BL0VVS3Fy?=
 =?utf-8?B?aUdOUnFFWm9KQ2JpNEptV2pNa0U3azdqWjZFc05kcVJKWmR0SDZmeERRMTln?=
 =?utf-8?B?RDhEcUZrcWMzemdOcjRPUks2dUhwMFIyZURzUCs3N0lFRzhrQlcxd2ZuQlJa?=
 =?utf-8?B?bGo2QW5TbFVFY1JXakkwM010ajBFZm83L09wL2Q5bVJOL2k1M1NxN3BzK21v?=
 =?utf-8?B?dVR2d3VmTHAzWUk5L1hlN1o4aXphM1J1cm42VFdyQzJvUjBpeDQxWDlrYjk0?=
 =?utf-8?Q?1UTBpC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0pvWkN0RlltUWxTaGVlbFYrUXVIR0QzTlRha0t5UzBEOUl6VFRZT2pFTUs4?=
 =?utf-8?B?enZjbXZ4YnVYMW5QNnUvYmRIYitJWWUvK0JQak8zeldmaWxWelQzb2MzcHFH?=
 =?utf-8?B?TVFJclZXb0lKc2RLWTFjaG9PNFBzSll2R0k2eXNiZk94eHdkRUVIVUR3b2g4?=
 =?utf-8?B?bXdWb21zK0tjY2FsVEhTWWNDOXc0TjBheXlkcU9FS1A4azRpZjlGdVJPMEhp?=
 =?utf-8?B?S2dzVlo4WVIvYjRCS2VOVlVwTlhqUDVWL2IzWTdxdjRJUmxBRnV5c1c5dFlo?=
 =?utf-8?B?bkRxeEdrbDQxcERhc2kyNjRHaUorV3VXT3lEaEJWWWpxR0E5Q0l6WkxJeFpp?=
 =?utf-8?B?dDVMaHJ0K1hYdlUySGszSjdIZjh2cThkOXVwak5xWTBPSnhjNHdEUEZoT1pX?=
 =?utf-8?B?UHh0QlBPcDQ5SGhPOUVMbnhOd1JKZEhXYnFpYjh2czJ3NE1ib2RpMUR1Qk5m?=
 =?utf-8?B?WFNyN2kyNFl2aS81WTB2dElWVHlLNGUxWDFMZ09sNXFmd2FKMm50eVlsZUkr?=
 =?utf-8?B?WFFDZlU2S1pkZWFkRjNEUXBudTVzdk82WTBSdHZCNzRYSnJITVE2RHRnNURi?=
 =?utf-8?B?dFlFZnJ6aFVZZkFBd3owdGdMQ0UvUGRpK1hGMHdzZjY2TGJqaWcwWG16ZjN0?=
 =?utf-8?B?SGNYOG5EdmIzTE1DVUp4VlpYbjZmMkxuS1NKbk5GQzhhbjdFY2tFWGN2elp3?=
 =?utf-8?B?ZXhGOHRpT2RWUXJMdFM4ZDFIV3NzSFlvTTlMSCtCRTVCdnBQTzZ1bXA0V3Y5?=
 =?utf-8?B?SStPVGJhRTJvcGFnNzBoMkpFQkJXbXJaZXRCbVViQVIyWU5TRituZlpySmVa?=
 =?utf-8?B?cktHSFkvMjFuYTk2SG1DZlVxS0xCNnczU1o4SlpUVFNVZm9wQnQwSi90Um1V?=
 =?utf-8?B?OFFIeGVUclFwMFhvSi8yeTZ6WWxSOHU1d1JXemlWSE5WQmJCSDRaQlU4eDlx?=
 =?utf-8?B?Y3F1QnVDOUYxUmMvcjVWa3g2ZzIvQ1MxSHpmS2N1a2wxcHBhY1NEZEJQTEh0?=
 =?utf-8?B?OFQ4SFFzUEJyYU1vTTZwajYwSXlNK09zM0tCcHNpOVZ2RFhvN1U0UytaTXRK?=
 =?utf-8?B?UU40MWl4RkdLMFJvaDRDSHdmY215TEFtZGRHNC9MamFKY0NKeXd1aUErUTdi?=
 =?utf-8?B?RXArRGZSbnBSbkgvTlJqMzB5OFY0ZnlFQzc0NjBaUEZNbDE3VVVBd1AxdnVy?=
 =?utf-8?B?KytwMXpDdFRIZHlLZmloS013U2lmQVM5T3JrcXY4TWpWeEZvMldqZUpjN3h0?=
 =?utf-8?B?dGRRNnZWOElUb05rQ1psaVVjZEcxQjBNNWVpM3NuUG01bTI0Qi9PeVlndVU4?=
 =?utf-8?B?Z3M1dm0xQk0zd0RiM3h1Z1dnNncxNHcyemJZNVVNY1lraGJXNyt3V256Z0pH?=
 =?utf-8?B?dW8xMWpVeXo3M2NKVE5HZGxwcHZiZy9UK2FEbkQ4TkRYOXZack9IczZDYXNN?=
 =?utf-8?B?TEM1cmxUdWtaVXRSMWdOdDBYWi9JdWpodGczTUJrTEJhM0gxK3VibWFXRDFl?=
 =?utf-8?B?QW14bDZsdzdzdnRiaVVHdXF4ZXhrTkZRWnZNa0NySWt6Rk1ia0xpZDgvOEZt?=
 =?utf-8?B?RlZkQWJnMmpCVEN0RndrRG1DdDdReExuSkNPdE1Geldray9XRVNmZXhEZVht?=
 =?utf-8?B?dEMyaEUrNzBtbnllYUNyc1pYenRnbm1XT0NMbnExQnlmcWtoSDd1WGV5WlIx?=
 =?utf-8?B?Qm82QWxSYWdma1hwTWdnM25uWFQ0b1RJbEhIcHFDSXBMNHJhWS9zYUlHeUZ0?=
 =?utf-8?B?ek9JVFpkdjhXc1hvdE5QeWpqbHRVMk1qZUt6YitjZ0FuaEVGVjBOSThKL1Na?=
 =?utf-8?B?SnFSRnpwei9teEN2VlllVjB1blkvd1MrRmlMQlNMa2U0TWhIcXhQZU1qNXZI?=
 =?utf-8?B?Q28wQi9XRkplN3JrbjhWcEwxT0JRNTh1MnNZY3NaTzYvQzBKZGJpbFhIQ05V?=
 =?utf-8?B?c3BYU1l0bWloL2hpalNYWlJrbnhSaEFXWHp6MWhRMW5YMG1ZcFJKd1hlR0xR?=
 =?utf-8?B?ZGRYdTQ4SWR1cG4xenVwYUZXc2RUMFBRUkdJWVFiVkxjcW1ydXdsYVRvTFpw?=
 =?utf-8?B?WkpiTWpXR041MlZKVDNGcTI0cjdkczcyZld2T0NpQ0ttYmJYaTV5eXI5bG4x?=
 =?utf-8?Q?TeqDAa3PcUqYzfCXyiRwrCJuE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7a6f63f-52cf-48af-3715-08de20dbb4b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:35:13.4066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cij7toaqpETkHYaK4JR2if1BGBApk+7Gtgg8LTaW2KeeilMHatX5vFZsWH0Ed+bJgX8oI3Rl/tLE/CccOD+BaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4831
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

PiBTdWJqZWN0OiBbUEFUQ0ggMDgvMTZdIGRybS9pOTE1L2RlOiBJbnRyb2R1Y2UgaW50ZWxfZGVf
d2FpdF9mb3Jfe3NldCwNCj4gY2xlYXJ9X3VzKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBBZGQgaW50ZWxfZGVfd2Fp
dF9mb3Jfc2V0X3VzKCkgYW5kIGludGVsX2RlX3dhaXRfZm9yX2NsZWFyX3VzKCkgYXMgdGhlDQo+
IG1pY3Jvc2Vjb25kIGNvdW50ZXJwYXJ0cyB0byBpbnRlbF9kZV93YWl0X2Zvcl9zZXRfbXMoKSBh
bmQNCj4gaW50ZWxfZGVfd2FpdF9mb3JfY2xlYXJfbXMoKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0s
DQpSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoN
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggfCAxNCAr
KysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gaW5kZXggMjU2NjA3
OWY2OTVlLi5hODJkYTY0NDNhZjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RlLmgNCj4gQEAgLTE2NSw2ICsxNjUsMjAgQEAgaW50ZWxfZGVfd2FpdF9md19tcyhz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gaTkxNV9yZWdfdCByZWcsDQo+ICAJcmV0
dXJuIHJldDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgaW5saW5lIGludA0KPiAraW50ZWxfZGVfd2Fp
dF9mb3Jfc2V0X3VzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBpOTE1X3JlZ190IHJl
ZywNCj4gKwkJCSB1MzIgbWFzaywgdW5zaWduZWQgaW50IHRpbWVvdXRfdXMpDQo+ICt7DQo+ICsJ
cmV0dXJuIGludGVsX2RlX3dhaXRfdXMoZGlzcGxheSwgcmVnLCBtYXNrLCBtYXNrLCB0aW1lb3V0
X3VzLCBOVUxMKTsNCj4gfQ0KPiArDQo+ICtzdGF0aWMgaW5saW5lIGludA0KPiAraW50ZWxfZGVf
d2FpdF9mb3JfY2xlYXJfdXMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGk5MTVfcmVn
X3QgcmVnLA0KPiArCQkJICAgdTMyIG1hc2ssIHVuc2lnbmVkIGludCB0aW1lb3V0X3VzKSB7DQo+
ICsJcmV0dXJuIGludGVsX2RlX3dhaXRfdXMoZGlzcGxheSwgcmVnLCBtYXNrLCAwLCB0aW1lb3V0
X3VzLCBOVUxMKTsgfQ0KPiArDQo+ICBzdGF0aWMgaW5saW5lIGludA0KPiAgaW50ZWxfZGVfd2Fp
dF9mb3Jfc2V0X21zKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBpOTE1X3JlZ190IHJl
ZywNCj4gIAkJCSB1MzIgbWFzaywgdW5zaWduZWQgaW50IHRpbWVvdXRfbXMpDQo+IC0tDQo+IDIu
NDkuMQ0KDQo=
