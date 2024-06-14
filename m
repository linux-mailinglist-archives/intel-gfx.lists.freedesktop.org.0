Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADABE909108
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 19:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F7510EDF6;
	Fri, 14 Jun 2024 17:07:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZwyYg0uE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9274410EDF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 17:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718384828; x=1749920828;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LPtT1PXBKo1wlJcZtZNoZOcOP2S+CSO/FipJznLbOk4=;
 b=ZwyYg0uEv5xWRzjAAbQ2bCsXo6Tuh0W4izXdFbFNtxs01ZpVG6pIDLZt
 hQ7VMPFHsAdPjIqCsF6BjXY2v9DTUb5Cp/B+CjEI2mWXoMw7tYozZ4tn4
 u8+z6zQpJhdARZT8c3lOZ86rZPPLi4eDN4am/53/cakQLFN1uEGXV2JyA
 fgJ3yVHVc3egmfEO6kTYl2pm6ymkJkJWvWi5wpz8Eu3FGHDcl5Euas/FD
 yUKMt1GAG5dLgLwGvDwAseb9sFgLL5J05wuSH/xuxPV66OQLk15H7WysD
 hUKfu10Fy360QmImiEJDzz4Hc71ItxzrSNOM3rM5mL5fJXDr/TtPYAbh+ w==;
X-CSE-ConnectionGUID: vYROXpCyRhikKFfzWRaiCQ==
X-CSE-MsgGUID: ORQ1+yTtTMGBXbRzruWLEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="32825447"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="32825447"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 10:07:07 -0700
X-CSE-ConnectionGUID: zgZGAuPMTjufGw0BWAboBg==
X-CSE-MsgGUID: YIjWbnK8S+eXZsCas+BHCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="44969244"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 10:07:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 10:07:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 10:07:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 10:07:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CPA4e2mSPt9ydBsUiaerDZSSV2p7e855+JENGE6EkJjJCbN/7KJUQacMGlrk6xLxEOvNDNKhHYg9S7wAfKFREvSpaMnkxooXMwu/2MZlkPJ89EbvcBwja27CBPKoI9PGhMRztY7a68bXFnXdUdKuc38m2ersW1QLIeaGVBL+JeT291s7JUSW++hAl3c9W0e8Qi+7kAlF3vybJ7Rk8/dN47k6xME1RAJ2yWeQB+WkWtdlMMqD2cYhgp0QjvqXe5laT3f7zT1mg5mS545wD8qwGD39ycLbcPPTnR03QEmrvyDzSXsnhvxW2tT0AYi0/3l6GamUfSe2y01yi7eQlXEamg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPtT1PXBKo1wlJcZtZNoZOcOP2S+CSO/FipJznLbOk4=;
 b=mVPDIeqVkanbToA7B0DYQ1pftJlasej8xNSpM9sx3wnSKpsJXklNfe1ufe0MzV5WfhqDbcYm9dSgxSDGMfM154bMm5ZhyU/Kq7SVjmSrNISgg5GRhVKXJ8dpNMbRjCzRvzu5qfwGpslSfveYWTR1rahESCKsNHf/SliTo+UdwLanxyBNaakfvy9zT5x/I8LfKYrS/eZqcY2IkrlFN2DbrIVrgvHmP5oXnY9mUGnGcbTPdD+Mr8k9i7nWSpKC8bZOWAbB1KN6qZRYwquFRHe1ZdttpFG71JevoRgi6fxL/KE6+JKWJMknkioaKGc2SJbr0HG3ZEXzwK2xIUVexCOUKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB7566.namprd11.prod.outlook.com (2603:10b6:806:34d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.21; Fri, 14 Jun
 2024 17:07:04 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 17:07:04 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 09/20] Revert "drm/i915/psr: Disable early transport by
 default"
Thread-Topic: [PATCH v8 09/20] Revert "drm/i915/psr: Disable early transport
 by default"
Thread-Index: AQHavXS+DKcOiOop/UCPa8PfXToQDrHHf2gQ
Date: Fri, 14 Jun 2024 17:07:03 +0000
Message-ID: <PH7PR11MB59815BE47BFFC26C09562E71F9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-10-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-10-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB7566:EE_
x-ms-office365-filtering-correlation-id: c3ece31c-a1ea-46e1-3142-08dc8c9469e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?MDdSR3NsQldTMFpWdE9CMU1pMGNYenZkSmN2QVcxelEycFZoMUZXQ1JQcCt4?=
 =?utf-8?B?T0ZLYWNnakNjcFdHQzk0NWZ0b3lSTWdxNnhQVWQxaEJERytidjhVaS9qK1NK?=
 =?utf-8?B?RW9qd0doVnpwaSs1aHlvejlwS0V0L0wwVXAxcnhtQytIOW5pcXJFdHJYdHJQ?=
 =?utf-8?B?bTM4dHA5ckNGWXprSmRLM3ZIdkpia0lmeGM2d3BwNTA5UmtzOUIyUzRRMXpU?=
 =?utf-8?B?eUQvQkcvU0VKVCtPM3lLS0llZE5yZi91VnpwMVlhWTcrSlVzM3lmem9URStT?=
 =?utf-8?B?eEhFUE56ZUQ0ODIwZDRWOXVMSXh4OENFZWhqbTI5eTM1amsyUHdZWEVDbjZL?=
 =?utf-8?B?aW8zZWdHODdqNXlWVUNySXFETkVoUmN1T3FvQXI3TXdSeGRMNnZBeVJPcFYr?=
 =?utf-8?B?VVcwL0xvWnBPS0EvTjRQN3hScTBiSUxTQ0ZSTHpmRnBQSFRQOXp6MWFpVlZp?=
 =?utf-8?B?RmEzb09yMEhLNDQrNXE2U3dPOW9JZ1JZQmtPa2JrbUpDa2lwWXFkZWtsY3NB?=
 =?utf-8?B?dVlGL3NzN21hWlpIdzlBcFg4RzM0ZFA5UXB0dUJLT1J2cjA5OFNCV0ZTMlZP?=
 =?utf-8?B?anA5LzZpblBCNThDTHh6Zkg3a2E4QUNqWXJqcDhXTGRRMitYa0tleEIrMWh2?=
 =?utf-8?B?NFUzbnFZTG9QbzhTRG1BN0k5dDVIUEcydkYwdXR2dGJES3VvQzBwaTVUV3I2?=
 =?utf-8?B?eUFYNWVSMlVYU0RCaGR5TGhhL2E1ZllNMUh1RWNjSFV4ZFluRlpteWhRSGps?=
 =?utf-8?B?S1Q5RjNRblBjWDFuUjZYMUVGS2RmZHJQYmVIZlU2R0Y4K3BvNUpoS1RLcENx?=
 =?utf-8?B?OFd6WDk2eVdYZVlrVGVnWncydVBUS1g4UGJTUDZTdnlmN1RPTjZBb2dYZmNy?=
 =?utf-8?B?YjhJOEprL2pRNkRza2I2bDA2NHMxdnhqRnE4WERBcndSVnpJWDRqU1ZzaGJy?=
 =?utf-8?B?ZjFMZ25Mc2N2L1JDZ1FSeVZVYWhBU0xSQlFOZG9JM2FEUSt3enVxbEZPTGk0?=
 =?utf-8?B?ZlBZUTRSeHlNWi94VTgwWGZudHo0ZVNvNlBGdlR1VnlPd3FJZTVENlUxcnNj?=
 =?utf-8?B?TTdRRE01ODVMajVrV3FUWUMrY3lvYXpya0ZaY0huVVBtVHNkd1NDVnpZZmlq?=
 =?utf-8?B?YjJWcDI1c0VWNk52MTVkRDVDaXRqajhDaTc5cGdWcmpIR3IzRFhFSnhWUndE?=
 =?utf-8?B?czVwR1JiR2VVZCtVeWlmaXdUa1hBT21sK0c1NGd3S1AvVG8wMVJlb1ovQ0x6?=
 =?utf-8?B?Z3VzY0pqYmc2Q0pMVmc0a25Lem9SNFpub2FzQ0R6dXV3L3dTZ1NDL0VoS0tl?=
 =?utf-8?B?M1ZKYVBlcmNVREZUVVBhaGNlWjRjdThoR3RsS25qRnA1REdta2hXbXlpRGNw?=
 =?utf-8?B?UjlKcXAyb0hUNHJ1QmNxS050Tnp3OUF4cW85TktyenY3VVBoVFBkTW5idUtp?=
 =?utf-8?B?UTRsRktwOWtEUnkwQThxZXpHY1d1V0dHSm5CUzN4ZzhlNTZqZGhMRmZiQ2Nq?=
 =?utf-8?B?bXFWaDJveWQ0TGkwbnB5NTRaVnQ2aDVpcXNLeFpVS2pNWjNyT0pVb3pqcFJ6?=
 =?utf-8?B?RVRwVjJYWVFQNk9VMEdYVDBKTFJhRk5lS1F4TzlTaWpyaUhGLzNnbUtSSHlH?=
 =?utf-8?B?dERqbTF6bmZUc0tndU9wdkQvVWdWbzVsTlhWelpRZ3ZIMW95NjVNNS81NVdN?=
 =?utf-8?B?Q01HTS9LMXFEL0ZMUks1b2QvdjQzVDZWbWVXWU9HbXA3c1N6TFJ6UGl1UHdk?=
 =?utf-8?B?QWVwMUkzRGZkb3ZhV1REV0RRMEl3MWoxMFNLRHNrZjg3dkNGZ2trTWEvaGxG?=
 =?utf-8?Q?RK5BODqQEVhlKtMCYIAprJRkB7tpPvUyZ4Zuo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S25HNVlvTEd0SVRmSUhyNlQyS2Qwbmg4VDNHTWFsWG41OUpnazNHWHJlQkVI?=
 =?utf-8?B?NWd3Nkxka0JGRkxUanJWTHA1V3d0R3liNmtxaHpNR2lqOThxVlhVQk51ZDFY?=
 =?utf-8?B?TksvcDlJbGlsSFp6Z1dBMmcyYmR6emtuMEo1d1NsKy9aOTZkY2pvSHlzQ3Mx?=
 =?utf-8?B?TVYxUHFMc3Y1cmMxcE9wb2pGbXliTWNhbzk1U2RoQXpzdE1VVXJpakcyeWIr?=
 =?utf-8?B?VmFDWDl6UDFXbEhqRHQzcXg0ZTNqSVNYbW1tcDh6SnhldVNYU2lRZ3NNbE04?=
 =?utf-8?B?eVU5Z1duTndaS3VaajE5V1FkOXlDY09oYmt1aU5ST0Y5bUNRbjhwZC9pTTlH?=
 =?utf-8?B?TmpFN2gvT2hWWDRwcUkvc1lJVCtsb3VyRmZWTlpQVGJ0dE1zSGZLemRiQWNu?=
 =?utf-8?B?TUZrOU4xTE9MeTZrT084QzRlZHg4Yk5EM2hINFZOYWFhVTRjQURZQnFYbnZG?=
 =?utf-8?B?RS8zQWdXL1kxYXdvQVRndGJDQnUvYnhUMVhvRGlQcm9rM1NaRFpGOWVPL2Ur?=
 =?utf-8?B?VldETmJERnhNT3dndmRxV2d2RWZxU0ZaNUs5dnlEY1ZnbmwwS3dHQnJZQnRl?=
 =?utf-8?B?ZExDblFEN09Bd3ZKUHIyTEhjSFhpMXhyVEdnR3orQ1pkaEYyOUZ1Z2hZRDlB?=
 =?utf-8?B?eFEzaXpKVjBwVUpMTXovZ2RPV21UbVJQZnhTUW5vY1VvRnVxaHh1UzhNTUd5?=
 =?utf-8?B?WmxxdVZ6RVJQUXBaWGNCUkJZa3BvOVpLaFF3ZHpTaWVydE85Q205TjJ4WWhl?=
 =?utf-8?B?S2RKVFEyOW8zZ1daQjVpZysyQlRmRUNUY0dTYjc0SEV6RU1KK3h4dFpmaHh2?=
 =?utf-8?B?cGhZUDA1UDQ5TTlleHdwS2VXTkUzeWo4RXlzYUNhWmZHVDZ2KytvNXFDNXpH?=
 =?utf-8?B?cVZYaW9KUm9jNU5vNndCYy8xTmlQdmtqZ2UrdWNRbm0vSGFROVlPa0d0dlRU?=
 =?utf-8?B?L2s3VXdzbjI0VUk0SE0vb2czKzRJOGJTejR3Qld3bSt2aUNLRVlLV1ZsRWNO?=
 =?utf-8?B?V21JOHlXMk1rWWNRS2RRVkdCWkFHYm4zV2loRFNMT2huQjBTYTdOL2pYS012?=
 =?utf-8?B?YkdjZnhTOXU4MlZRVWQ3UHVXeFcyclJNOUZ5cmlSWjBGNVpDTDRoeGVCMUI0?=
 =?utf-8?B?QWRaY0hCTXJla0VpWGpPV29DVUk0Q256WklBUHB3MlVJSWNQUVVwcUMySFRZ?=
 =?utf-8?B?REVhazY3WCtQSUhhQkxLaVRtRUpoMkVDeUsvY3dWeEVRYmlscHlDbnVEQXpL?=
 =?utf-8?B?T2hYYUpoMG5KSUtZbzFLTm8yOVhvVGtrdU9URGlxMFZ6c2dka2tVRWZpMTdZ?=
 =?utf-8?B?RHNwdzFnaDN1MzVWdVFDcTBDeERiSU9lN2t0bWlsbTNrbzNLRS9PME4reksw?=
 =?utf-8?B?Q2V2Qkl2U3ptdmZxWU1hN1FHZzU2N0xzQUpTWEZDWjZ5eXl6YVRsc2hWbDBF?=
 =?utf-8?B?c1NwQkpKKzl1OEhra1dkUGZnWS9CUDRyZWx0MWRHMUdRaHRDOUNSYThJOXNk?=
 =?utf-8?B?cG0xbURpNUdFMk9aa3FDOU9XdlE5RTFEaE9UdUQ3UGlGWEdOSGtZUUQ5Rmpj?=
 =?utf-8?B?TTlNcHVZeCsydDhoYUtnTnlnRTNLSS95V1NMandnN2lmVktMc3dibTFBaUNZ?=
 =?utf-8?B?ZTFsRlVUeDI5cTJVd0ZLSjVWcHBIWE91UDhSYWkwU3R3K2FLTzRrZzNXNlhW?=
 =?utf-8?B?dEZYMS9sbURvM3U4ekIvUHNXUkVYS09nak9CMmRTbno3Q2d6VnBHNkpZYzgv?=
 =?utf-8?B?ckJWOElNRnJkSUhZcmxLNG1qbFh6OEwwYzBDaG51ZGVkYmxLNUkyQUw1aitv?=
 =?utf-8?B?bEc5SnIyb0Y0dFlGUkkwSHM2UDZnQmFQNURUUXhFMkFBN1BHSit0ZVdMLzFO?=
 =?utf-8?B?YU1SWFFwaDJ4bkhkSjVKSkpkUjNsckNTQTR2YkNVeG42akJteDE4UVJpTjdF?=
 =?utf-8?B?WEFRQURQUlR4TnR3VFlKdXV6WmNSbmtBbXRlaTNSSG1sM2FoSEU2dE1EZTJ5?=
 =?utf-8?B?a3FOcW5YT2xuRkV3SzVkNzFVREExQXBhbDB4K1NRS1ZuMVNBQTFUTGs1QXNB?=
 =?utf-8?B?bnp2RFUzdjFTemNCMGFJcnVlVS9kVzlDQytoYUx1WnY4QTV1clVMaFRUU1A3?=
 =?utf-8?Q?5/YXCXLUZwFacEUhXqekVNRRI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3ece31c-a1ea-46e1-3142-08dc8c9469e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 17:07:03.9000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YeKj73oVdFuLjDjUDYh9gz0KtmoS5TadFI0FAudI6tKHRNRPGeDVp/4vo3LFsLIN6OpYyyAjwqCMnSCetAB6zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7566
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwOS8yMF0gUmV2ZXJ0ICJkcm0vaTkx
NS9wc3I6IERpc2FibGUgZWFybHkgdHJhbnNwb3J0IGJ5DQo+IGRlZmF1bHQiDQo+IA0KPiBUaGlz
IHJldmVydHMgY29tbWl0IGYzYzIwMzFkYjdkZmRmNDcwYTJkOWJmM2JkMWVmYTZlZGZhNzJkOGQu
DQo+IA0KPiBXZSB3YW50IHRvIG5vdGljZSBwb3NzaWJsZSBpc3N1ZXMgZmFjZWQgd2l0aCBQU1Iy
IFJlZ2lvbiBFYXJseSBUcmFuc3BvcnQgYXMNCj4gZWFybHkgYXMgcG9zc2libGUgLT4gbGV0J3Mg
cmV2ZXJ0IHBhdGNoIGRpc2FibGluZyBSZWdpb24gRWFybHkgVHJhbnNwb3J0IGJ5DQo+IGRlZmF1
bHQuIEFsc28gZURQIDEuNSBQYW5lbCBSZXBsYXkgcmVxdWlyZXMgRWFybHkgVHJhbnNwb3J0Lg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCAzIC0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggY2Q3N2NmZWJh
Njc5Li5kYjVmOThlM2EwZGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBAQCAtMzExMCw5ICszMTEwLDYgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWVsc2UNCj4gIAkJaW50ZWxfZHAtPnBzci5z
b3VyY2Vfc3VwcG9ydCA9IHRydWU7DQo+IA0KPiAtCS8qIERpc2FibGUgZWFybHkgdHJhbnNwb3J0
IGZvciBub3cgKi8NCj4gLQlpbnRlbF9kcC0+cHNyLmRlYnVnIHw9IEk5MTVfUFNSX0RFQlVHX1NV
X1JFR0lPTl9FVF9ESVNBQkxFOw0KPiAtDQo+ICAJLyogU2V0IGxpbmtfc3RhbmRieSB4IGxpbmtf
b2ZmIGRlZmF1bHRzICovDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDEyKQ0KPiAg
CQkvKiBGb3IgbmV3IHBsYXRmb3JtcyB1cCB0byBUR0wgbGV0J3MgcmVzcGVjdCBWQlQgYmFjayBh
Z2Fpbg0KPiAqLw0KPiAtLQ0KPiAyLjM0LjENCg0K
