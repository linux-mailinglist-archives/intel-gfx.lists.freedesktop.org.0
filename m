Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBC68D3B0D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 17:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5239B11299D;
	Wed, 29 May 2024 15:33:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoO285b+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91D92112376
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 15:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716996809; x=1748532809;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dEndAy+GEmPesYr95P8P+MWdYO6/gwljUj/GO3buniY=;
 b=aoO285b+kXvo37eFsNBH2LjObSugu2FwRQ9lP762wOVQHIrlt3s8uOu/
 etQJEC4leSD6bNBsB+ZN6paFXOz82qcQPB5GxCyWUaL28xxU/keyZe0iH
 iqOe/y+l335jltk8KbPf3l9Cheks77SG8BTkAUtX8moqCY9By3avKIEXT
 huv+5JOT7d/mRhTAHRZstRM4AhINypW0mMtZKtqmBBWoMVtzOQsJBZRjd
 +KUzVDEW9u6/9H1Ed3CHcA6tXOqlsS92147+GZDUeXojn8hZw8TGrumGt
 WgH7BqKOzfaI5/6gBClrxz1sZlo6cRN64Aa9IYjlqps2zB4f9KyDHJlkR A==;
X-CSE-ConnectionGUID: HDyDgytUSMKhyElmpaxkkw==
X-CSE-MsgGUID: pf6+3mDXQ6m0jzJnoMiLEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13641102"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="13641102"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 08:33:25 -0700
X-CSE-ConnectionGUID: nTYoJHBITMeNkaQWexojjg==
X-CSE-MsgGUID: 2Pkmb8hnRZ2ZgSIf3I+HJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="36020897"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 08:33:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 08:33:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 08:33:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 08:33:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 08:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cGU6jwdJoucw4nihu+SXB8dFjNaj7PwYJK0sUquytyJ12HG3TtlonXCvODX3NP/toIKRkWod090wktQB0DJWkiSxjtd57PKsRdf/p6Fi0Bu0NrSI7tsFo9fDxtMztNE6V4fsZWGGOhet/jKhNEEgSrSRwTtkP/oXUhqOqnolQ0Wspw10ObcM95MJlWHEcKnpK+PM4zZtdqx0uyhhWl68Tewm8FlpH1mFNo8yEVuJrgnnZboEiIKlfsteqZ7dpOOTIgIeOIB3n0c/dETUcscusqxpuWgSEO3J3KlAtZIuH/QGgcrmzFOvkpoQGJX50hI7JNF+692UyZT7OCegg3OTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dEndAy+GEmPesYr95P8P+MWdYO6/gwljUj/GO3buniY=;
 b=ekm3D4eLPhFN2Uwgo4R4wSglRbf7Ki97D0NWwnyMHk9yXQaSKN3mw+WU/iEqJ9kx349CKxeDXtW6C67oyi1B84kkLDDK3f2CWrQ2AA0p9P7Tn/BrTIOiSkRnVo9bJgSKfxIF1bVie0ySwi3iW2d7+4j8BtkRBVI1il0xSr0ntz7pMnUkN/PZfXf0VdtXOsEAQl/BMs1jn66hhlV2Vf3jDFGhzieRsgbJk3FjzJ2nM2bmVCNv8DIfGV4RD6axKqUpnv+f3NmG/LYyRjWAWTUkXqbSx/JwmolPMK/q6ULvKDmGagfMvLmwSRZaMSdcWzqzZW48mDw/tVB75RDeRi1IKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.19; Wed, 29 May
 2024 15:33:20 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%3]) with mapi id 15.20.7633.018; Wed, 29 May 2024
 15:33:20 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Williams, Dan J" <dan.j.williams@intel.com>, "Jiang, Dave"
 <dave.jiang@intel.com>, Bjorn Helgaas <bhelgaas@google.com>
Subject: RE: [core-for-CI PATCH] PCI: Make PCI cfg_access_lock lockdep key a
 singleton
Thread-Topic: [core-for-CI PATCH] PCI: Make PCI cfg_access_lock lockdep key a
 singleton
Thread-Index: AQHasb40/5Q3bl5wB0GpwjjM71p6I7GuVWKQ
Date: Wed, 29 May 2024 15:33:20 +0000
Message-ID: <DM8PR11MB5655BEBBF23ED44F62330AF7E0F22@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20240529114901.344655-1-imre.deak@intel.com>
In-Reply-To: <20240529114901.344655-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|IA1PR11MB6467:EE_
x-ms-office365-filtering-correlation-id: 24ad4b77-758f-4730-374b-08dc7ff4ab5c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?N2dyblBGRlMzTWFiQzd4WTBQNElXYjlrclkrNzRybjRPSHZ5dzJBZGFmYXl2?=
 =?utf-8?B?T0FUcHltSk9JUVBob3NpRGY1a0xKdGdqK2d0N21YQzlUQUhnWUhwTFY1Wmw5?=
 =?utf-8?B?OTFuTHdHak5sMW1ZSzFheHdNaHg2NEdTSTJQd3ZUZUNBdnhWNnpmOTVTZWE0?=
 =?utf-8?B?S0Vpc3Y5bWhaMThyM0FWaWsyaSs3cms0VG5vcldZNlloaWJBZ3dBcHN6S2sz?=
 =?utf-8?B?dUpIeW5OMU9kZ2VEalVoeDRsRnBDWHFQTFVIRHhGTnVpZ3pVYmlrNzQ4cXMv?=
 =?utf-8?B?Zjlnc0JBY2hDczkvZ2xlY21OZVhib0JpY0EvK2tKcGd2UllEZXhCRHJjaFlY?=
 =?utf-8?B?NHlPb3JVV004cDhPZzFObkFsYUJuME1MQ0F2bmdjYndINUI4bkl1QmlveHZz?=
 =?utf-8?B?ckExdGJNcGEwa01pamcvK2NkdC8vOS9yNWp3bnFqdGNyd0x3V25ONlN0OSti?=
 =?utf-8?B?ak15QjhaMzUxZnJEcUpBMWtFTU1aOTlXdE0xMks3dGQxRC9VYUlScitzS0Vy?=
 =?utf-8?B?ZWVjc2pQUnU2ZEVrVHFPQXhYdUxya3M0TFBOWlJKZTcwQkhLd01OMW9mbTc2?=
 =?utf-8?B?NS9Ba3JZbUl1b2hJSzFmWG1uR3pUT3lENWM3MFA3bmVvUGo1TEFqM2R5UmpV?=
 =?utf-8?B?V2szTW41QkZsWU8za0srSDNCQy9PMVVIMGsrRlJGK1FXbk5ES2ZpSFBzV1Bt?=
 =?utf-8?B?TWlxc24zZHllYyt1VEFaRm9OK3N0UmNDYzVLS3BtRHlYUnNCSmlTUHF5Lzk0?=
 =?utf-8?B?SGpFazM4SGNoVU1Ob1orUm85RThnMHhXWE9xOEl6ZVZvTzM3WVhWbENZN2RR?=
 =?utf-8?B?c20rU2p2aWpKVnF1TXVaV3QxQmlTUUY2OW9kSDJGZzlUWnBxTHVvUDJ4ak1Q?=
 =?utf-8?B?N21jdEEyLzFiY0FVMzNsT0NIS0orb0FxdGVkQXV1c3l6OFRodWVvS1NHZ29W?=
 =?utf-8?B?SFRpUlZ2K2JKSnZIeFlTNjhrcXdoSmliZ0FNc3dLbWtBK2JESktNRXVqV2l0?=
 =?utf-8?B?dGR3SHZOekRENHhHM0pwTXlRVVNTaGJKTFBTeEpCMzVrNi84V2R5OXp0Vnk3?=
 =?utf-8?B?bFk5Q0lUdXFoOHJqS0VMSG5hM2R3UEc1YncvU01ZeDZYWUJBQUJibllHN2VN?=
 =?utf-8?B?OHlMalh6NGN3OTdYYy84ZTZRTURDTGVwOXpyVzU3TzZISFY4RkJTYlJDWnF0?=
 =?utf-8?B?SmRBc3F6djV3THQ5ZXhDY3UwdW9qSUZLVytsR3BiSEFELy83ZEtLNGw5cTNx?=
 =?utf-8?B?ajZVYkZ2VVk4UnFLbUJ4WEtDVWwyOVJTTXVMVHduaWNMV0pENS9pOGl3WmdX?=
 =?utf-8?B?b1ZBUUZUQmZCT3hLWHl3UjRNcTdkdW9mbnRqYnNWQzRaNzhUYmFOWmZzR1JJ?=
 =?utf-8?B?NTBiN0RWa0N6RmdVaGZpR1VQd2svalZoeklyN1N2NnlCK1dpWFZXcXNzWVFS?=
 =?utf-8?B?S0FBemJJYjZuUkZNWnhaeE41V1hWNEpua0FQYzZUWXhlbnlhRGJib2pFc0Zq?=
 =?utf-8?B?UmgrR3c0Ty9GRTlHa2Q3Nm00WnpacjBVZjVHbjZuODY4SC9xWUEwRFFiODY2?=
 =?utf-8?B?S0pLWE1EM3BkdTdiWERJVkdqSThvUnU1U3V2Q1MzWDY3amswTFRMa1lwSWs2?=
 =?utf-8?B?LzJvdldGdWk5cS81cm1qYWRkbUxRRTlWamIzbytGamx1bnI0MlBRbmRrbmhk?=
 =?utf-8?B?Ujg3UmZOZFIrN1Z2TVBrcDlUeG5IWGgwb2xSblJyaFoyME1yTVVJaTlHQzRL?=
 =?utf-8?Q?A5jk0hcyH8NfViKMAc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ri90akdKSTdIbDdadXdpckd3YUZmck8rYktTV2NNSkFjR1VCejBLY0I4aTlH?=
 =?utf-8?B?Wkw4MDdNNldpZXZOVFlwd2tvcVY4SDNaRkx2VWZadXR6NDhGV0FWZWxCa2JM?=
 =?utf-8?B?aGI3angzOEtDeEQ1L0MxUlZsYm5UNWZKVzdCbFpENm9FVkM1bFFienR2Y01w?=
 =?utf-8?B?N3FHdUljbFNhcFhneU5Eamx4amkvSDArcEpaS3dTR2NCcUhMenErY0lkZS9N?=
 =?utf-8?B?NDBxbTJOempqaEdJd1hSS2RiTVJGSUlOUUtvQUJsd2V1VDkwNnF3TGdFL2Nk?=
 =?utf-8?B?TUJhOEREZTdIUDRvYXVuK0pDeXJBV1h2VnVjRVNrbmFhVTdQLzliRHFKRTY3?=
 =?utf-8?B?UkI1MnlQNFBuTnQ4Z01WYmp6Zi9tbEFKNmxnYUNtczU3NjVtdU5WOStkclU3?=
 =?utf-8?B?RXl0SkkwM0IwTGhJNFFoS0FiR2tEUmxLUWRpUm5teVBXZ29HWDhMd1Z4dStF?=
 =?utf-8?B?enNLVU9hMkJVbzdWOXJkR2VSK29UMDgzcGpGa3VROEZHZkcxc0VCaU1ldEla?=
 =?utf-8?B?YlNkZ1pTL1JURnNwcm05elNKcFVkYjJXamptZmFqeUlJWTRRU0hoL3V1d3ds?=
 =?utf-8?B?VXhuUm9UdHJJdFY1Y0RMaUFmWUtNUm5LUjcyRVl4N1VUekVHK1lHT2F5MWNu?=
 =?utf-8?B?WGwxTlgzWFhJYWxtSWVRWnRUQ2xWUVlCRnBOY0UvWnVIV0puaWlaOUp1aWNH?=
 =?utf-8?B?THVVQW1udWliMDc3NzdnRWVqa3Fnd1RvTk5wSlNKRFg2WHhDWURTWFlrT1dT?=
 =?utf-8?B?ckxVVldnNll6SDh2M0RTQ2x3dVZhaVFjK1lkaHN2R0h2d3l0THJhengzaFNz?=
 =?utf-8?B?K243VEdvTm8rQWVJR1NSRmVjMWVIWW5CNkNuMEF0TGR6NmY0d0RIK0xWdndD?=
 =?utf-8?B?U1RGNkZRQTRBQStteVdoeWFndTAwRklydGF0cjN2YjRDWUZJRm5Sd2EvcFVn?=
 =?utf-8?B?K3hwTVFhRUZwbjhBUzVHTVhIOFVHNFdsOTZSQVJ3ZXp0S0d2OWFGMG5RaHlW?=
 =?utf-8?B?OXE4WDFmVWF1a3dFQTJ1QzlYYThEYzd2dFNPalRhd1d3MUY4UDBUOG1NRW1E?=
 =?utf-8?B?Qjhza1c1QXRMMEdkMVlTMGxhejArTEZqSm5lOS95K0VRbUk0NGx2YjRReVBB?=
 =?utf-8?B?aUJPN3gwWm9KV2swQ2RuMnlveDRXVXc2K3ZOb1RiMTFEZk1PRFQwVG1HZ24r?=
 =?utf-8?B?endBdXdIL0VjQTFOMHZpOVJ3dXF0cURjd3FJTzNLK3NaM252V2I0S0pvZ1c5?=
 =?utf-8?B?MUhMdzB1cCswWHhBenhIQ1Y1Tkpac3U0b05lYm8rZnp5ODUyOTRWeS9PeTNS?=
 =?utf-8?B?UnRYRHQ4ZkF4OWt5dTcwdVA5ZW5oMUlYeDFNTWRXa1RhVUtML1VPUnRaSFVK?=
 =?utf-8?B?cThXZHROc3V5NDVoZ3liand2VGV5ZTk5cUc4dmJLdEVRbUZtVkdzWlk5VUlW?=
 =?utf-8?B?SkkveWQ2YW12dThCaE5zZktCc0VDQzhJWEE5OTVhV0dBbUpkUUNSQ1JCbG5N?=
 =?utf-8?B?NmErNGQ5a1hveStVeVJDZUQzNWJlSHJkZmJQV2J1L243eHprSFpqUTZSaVdo?=
 =?utf-8?B?VHNxZFlVeGRDUDRBTGZXOFBpM1ZNOUU3ejVWYW5tbUVDRWlVWlRwYnFOSEFk?=
 =?utf-8?B?K0NEVjNoZVhHekQ3OGJZNThsWDFUcHVFbFhlL3U5QTd5ajdKSk5sWEh3aXRT?=
 =?utf-8?B?b2dUdTRsdXFTRWhFMWlEdWIyRUx4WnREWTl2Q1htY25MVzRkb3U3eHo3Ujlw?=
 =?utf-8?B?UUdaU0l0dmduOHVjdzliamsxUkRoTHR1U3dnVytSaWZjUEYxc2ZKaEJzeXNt?=
 =?utf-8?B?b25uZFhvVFhmMXpoT3NTTWU2ZFRiNVpid01lV1N2am5IQ0NxMHJ6djNYMDMy?=
 =?utf-8?B?VXpiamtDVGEyUzVTdFVodUNYK2haZjVCaW96MG5FTWdzM0ptRVNEaVRNSWdj?=
 =?utf-8?B?d0o2M2RtT3RyU2tPZnFsemlJa2VnLy9uRzA0Wk8wdWxrT2VHWXM4WFBnV0wv?=
 =?utf-8?B?R1dmdWxpUG5wb0s0R0NzV1E1Q05Ed1Bna3p5YzU5Ymx5MmdYb3NjVElzaFBO?=
 =?utf-8?B?cFd1WEdSZmQ1eFAyMVpWWnp1OEV5bTBpU1QvRW9PSjVyWUQyQU4yc05hTU9w?=
 =?utf-8?Q?ZB43yNXNWtudAmiuhkSHkqqGq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ad4b77-758f-4730-374b-08dc7ff4ab5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2024 15:33:20.3069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bIa6eBh1RRWSN7cw7oB90eryXoHJotfiIg2KH9UNnUCgBq+bhSj5rTdSVa7SymwVr+47+vJ4YjhFJIY6oaUQtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6467
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

SGksIA0KQ29tbWVudGluZyB0byBsaXN0IHRvby4gDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gRnJvbTogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gU2VudDog
V2VkbmVzZGF5LCAyOSBNYXkgMjAyNCAxNC40OQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogV2lsbGlhbXMsIERhbiBKIDxkYW4uai53aWxsaWFtc0BpbnRlbC5j
b20+OyBTYWFyaW5lbiwgSmFuaQ0KPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+OyBKaWFuZywg
RGF2ZSA8ZGF2ZS5qaWFuZ0BpbnRlbC5jb20+OyBCam9ybg0KPiBIZWxnYWFzIDxiaGVsZ2Fhc0Bn
b29nbGUuY29tPg0KPiBTdWJqZWN0OiBbY29yZS1mb3ItQ0kgUEFUQ0hdIFBDSTogTWFrZSBQQ0kg
Y2ZnX2FjY2Vzc19sb2NrIGxvY2tkZXAga2V5IGENCj4gc2luZ2xldG9uDQo+IA0KPiBGcm9tOiBE
YW4gV2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4NCj4gDQo+IFRoZSBuZXcgbG9j
a2RlcCBhbm5vdGF0aW9uIGZvciBjZmdfYWNjZXNzX2xvY2sgbmFpdmVseSByZWdpc3RlcmVkIGEg
bmV3IGtleQ0KPiBwZXIgZGV2aWNlLiBUaGlzIGlzIG92ZXJraWxsIGFuZCBsZWFkcyB0byB3YXJu
aW5ncyBvbiBoYXNoIGNvbGxpc2lvbnMgYXQNCj4gZHluYW1pYyByZWdpc3RyYXRpb24gdGltZToN
Cj4gDQo+ICBXQVJOSU5HOiBDUFU6IDAgUElEOiAxIGF0IGtlcm5lbC9sb2NraW5nL2xvY2tkZXAu
YzoxMjI2DQo+IGxvY2tkZXBfcmVnaXN0ZXJfa2V5KzB4YjAvMHgyNDANCj4gIFJJUDogMDAxMDps
b2NrZGVwX3JlZ2lzdGVyX2tleSsweGIwLzB4MjQwDQo+ICBbLi5dDQo+ICBDYWxsIFRyYWNlOg0K
PiAgIDxUQVNLPg0KPiAgID8gX193YXJuKzB4OGMvMHgxOTANCj4gICA/IGxvY2tkZXBfcmVnaXN0
ZXJfa2V5KzB4YjAvMHgyNDANCj4gICA/IHJlcG9ydF9idWcrMHgxZjgvMHgyMDANCj4gICA/IGhh
bmRsZV9idWcrMHgzYy8weDcwDQo+ICAgPyBleGNfaW52YWxpZF9vcCsweDE4LzB4NzANCj4gICA/
IGFzbV9leGNfaW52YWxpZF9vcCsweDFhLzB4MjANCj4gICA/IGxvY2tkZXBfcmVnaXN0ZXJfa2V5
KzB4YjAvMHgyNDANCj4gICBwY2lfZGV2aWNlX2FkZCsweDE0Yi8weDU2MA0KPiAgID8gcGNpX3Nl
dHVwX2RldmljZSsweDQyZS8weDZhMA0KPiAgIHBjaV9zY2FuX3NpbmdsZV9kZXZpY2UrMHhhNy8w
eGQwDQo+ICAgcDJzYl9zY2FuX2FuZF9jYWNoZV9kZXZmbisweGMvMHg5MA0KPiAgIHAyc2JfZnNf
aW5pdCsweDE1Zi8weDE3MA0KPiANCj4gU3dpdGNoIHRvIGEgc2hhcmVkIHN0YXRpYyBrZXkgZm9y
IGFsbCBpbnN0YW5jZXMuDQo+IA0KPiBGaXhlczogN2U4OWVmYzZlOWU0ICgiUENJOiBMb2NrIHVw
c3RyZWFtIGJyaWRnZSBmb3IgcGNpX3Jlc2V0X2Z1bmN0aW9uKCkiKQ0KPiBSZXBvcnRlZC1ieTog
SmFuaSBTYWFyaW5lbiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+IENsb3NlczogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTQ4MzQvYmF0LWFwbC0N
Cj4gMS9ib290MC50eHQNCj4gQ2M6IERhdmUgSmlhbmcgPGRhdmUuamlhbmdAaW50ZWwuY29tPg0K
PiBDYzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+DQoNClNlZSBwYXRjaCBz
ZW50IHRvIGludGVsLWdmeCBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzEzNDE4Ni8NCj0+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNDE4NnYxL2luZGV4Lmh0bWw/aG9zdHM9YXBsDQo9PiBObyB0YWludCBpbiB0aGUg
Ym9vdCBhbmQgc3lzdGVtIGRvZXMgdGVzdGluZyBhZ2FpbjogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MTg2djEvYmF0LWFsbC5odG1sP2hvc3Rz
PWFwbA0KDQpXaXRoIHRoYXQ6DQpUZXN0ZWQtQnk6IEphbmkgU2FhcmluZW4gPGphbmkuc2Fhcmlu
ZW5AaW50ZWwuY29tPiBvciBvdXIgQ0ksIHdoYXQgZXZlci4gVGhhbmtzLg0KQ291bGQgc29tZW9u
ZSBhY2sgdGhpcyB0byBnZXQgdGhpcyBtZXJnZWQgdG8gY29yZS1mb3ItY2kgdW50aWwgb2ZmaWNp
YWwgZml4IGxhbmRzPyANCg0KVXNlIHRoaXMgd2hpbGUgbWVyZ2luZyB0byBjb3JlLWZvci1jaTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8x
MTIyMyANCg0KQnIsDQpKYW5pDQo+IC0tLQ0KPiAgZHJpdmVycy9wY2kvcHJvYmUuYyB8IDcgKysr
Ky0tLQ0KPiAgaW5jbHVkZS9saW51eC9wY2kuaCB8IDEgLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvcHJvYmUuYyBiL2RyaXZlcnMvcGNpL3Byb2JlLmMgaW5kZXgNCj4gOGU2OTZlNTQ3NTY1
Yy4uMTUxNjg4ODFlYzk0MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9wY2kvcHJvYmUuYw0KPiAr
KysgYi9kcml2ZXJzL3BjaS9wcm9iZS5jDQo+IEBAIC0yNTMzLDYgKzI1MzMsOCBAQCBzdGF0aWMg
dm9pZCBwY2lfc2V0X21zaV9kb21haW4oc3RydWN0IHBjaV9kZXYNCj4gKmRldikNCj4gIAlkZXZf
c2V0X21zaV9kb21haW4oJmRldi0+ZGV2LCBkKTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgc3RydWN0
IGxvY2tfY2xhc3Nfa2V5IGNmZ19hY2Nlc3Nfa2V5Ow0KPiArDQo+ICB2b2lkIHBjaV9kZXZpY2Vf
YWRkKHN0cnVjdCBwY2lfZGV2ICpkZXYsIHN0cnVjdCBwY2lfYnVzICpidXMpICB7DQo+ICAJaW50
IHJldDsNCj4gQEAgLTI1NDYsOSArMjU0OCw4IEBAIHZvaWQgcGNpX2RldmljZV9hZGQoc3RydWN0
IHBjaV9kZXYgKmRldiwgc3RydWN0DQo+IHBjaV9idXMgKmJ1cykNCj4gIAlkZXYtPmRldi5kbWFf
bWFzayA9ICZkZXYtPmRtYV9tYXNrOw0KPiAgCWRldi0+ZGV2LmRtYV9wYXJtcyA9ICZkZXYtPmRt
YV9wYXJtczsNCj4gIAlkZXYtPmRldi5jb2hlcmVudF9kbWFfbWFzayA9IDB4ZmZmZmZmZmZ1bGw7
DQo+IC0JbG9ja2RlcF9yZWdpc3Rlcl9rZXkoJmRldi0+Y2ZnX2FjY2Vzc19rZXkpOw0KPiAtCWxv
Y2tkZXBfaW5pdF9tYXAoJmRldi0+Y2ZnX2FjY2Vzc19sb2NrLCBkZXZfbmFtZSgmZGV2LT5kZXYp
LA0KPiAtCQkJICZkZXYtPmNmZ19hY2Nlc3Nfa2V5LCAwKTsNCj4gKwlsb2NrZGVwX2luaXRfbWFw
KCZkZXYtPmNmZ19hY2Nlc3NfbG9jaywgIiZkZXYtPmNmZ19hY2Nlc3NfbG9jayIsDQo+ICsJCQkg
JmNmZ19hY2Nlc3Nfa2V5LCAwKTsNCj4gDQo+ICAJZG1hX3NldF9tYXhfc2VnX3NpemUoJmRldi0+
ZGV2LCA2NTUzNik7DQo+ICAJZG1hX3NldF9zZWdfYm91bmRhcnkoJmRldi0+ZGV2LCAweGZmZmZm
ZmZmKTsgZGlmZiAtLWdpdA0KPiBhL2luY2x1ZGUvbGludXgvcGNpLmggYi9pbmNsdWRlL2xpbnV4
L3BjaS5oIGluZGV4DQo+IGZiMDA0ZmQ0ZTg4OTAuLjViZWNlN2ZkMTFmODggMTAwNjQ0DQo+IC0t
LSBhL2luY2x1ZGUvbGludXgvcGNpLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9wY2kuaA0KPiBA
QCAtNDEzLDcgKzQxMyw2IEBAIHN0cnVjdCBwY2lfZGV2IHsNCj4gIAlzdHJ1Y3QgcmVzb3VyY2Ug
ZHJpdmVyX2V4Y2x1c2l2ZV9yZXNvdXJjZTsJIC8qIGRyaXZlciBleGNsdXNpdmUNCj4gcmVzb3Vy
Y2UgcmFuZ2VzICovDQo+IA0KPiAgCWJvb2wJCW1hdGNoX2RyaXZlcjsJCS8qIFNraXAgYXR0YWNo
aW5nIGRyaXZlciAqLw0KPiAtCXN0cnVjdCBsb2NrX2NsYXNzX2tleSBjZmdfYWNjZXNzX2tleTsN
Cj4gIAlzdHJ1Y3QgbG9ja2RlcF9tYXAgY2ZnX2FjY2Vzc19sb2NrOw0KPiANCj4gIAl1bnNpZ25l
ZCBpbnQJdHJhbnNwYXJlbnQ6MTsJCS8qIFN1YnRyYWN0aXZlIGRlY29kZSBicmlkZ2UNCj4gKi8N
Cj4gLS0NCj4gMi40My4zDQoNCg==
