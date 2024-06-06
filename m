Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 944168FF508
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 20:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5B410EA6E;
	Thu,  6 Jun 2024 18:58:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g2Ww2L0B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46B2710EA6E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 18:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717700284; x=1749236284;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=djmertDplv++KfvUSUx6x/1PJOFroMs+Q81PZgSsB+4=;
 b=g2Ww2L0BqQtcDzz11+CzRs2wCdBWu02eevZXhv/BUzatSAeTBa4waMfL
 N4lh4ZW5li8ZaTuIVjkRfI4b0Rn7J6138/5y9SYq5XIc6Z8ddUNkYXgCq
 ke9SiM53GYf/5Nasw8Qeuoxs+k9bx+N/9vLn7n4jo2gSKFn45NSC6MkUi
 OimEuLKoLIBI+b79psOb4ddilid2vJnRO4eQNrLE0fym+k/yUn3Xo/9gs
 PCVJZHdvlhQW2ymNN1CY92CQBN6v+h36NQ8GIyfpS+CzLifw1kPZoD50W
 M9iBgqZQDuWSPbrUdHSdbPN1D9JzGRcFzIRXtjt8eZ+vxcnIH3vmO86nW g==;
X-CSE-ConnectionGUID: eQWV+nlkR2WC7ok1sH8wgA==
X-CSE-MsgGUID: LTByM0erTviLI0QATTKLBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14577385"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14577385"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 11:58:03 -0700
X-CSE-ConnectionGUID: jCsugD2lSPefDFriYF7kSQ==
X-CSE-MsgGUID: vX1R/HX5St6tEvgA21fjeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38148187"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 11:58:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:58:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:58:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 11:58:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 11:58:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZCD85UiQ0qgVAqMb7GKLyLKKe1hRW4VLKH6Lw4OsnkiudFtqL8OO5a2jhFbAlaf4I6hD2kLRvYz0beYauKFmJFjM/iR33Qu1usiYYGea1Gs13EhlDI09LLz/w8ci1VEGQtGSKW2r5aBQJ3dY8JVnRbd4GyLC2OQI4kedX8scRV1qN7qMbV7hDJfp1AIrNppjFtatT7HT6zF1Z6/MT3aneHlKEdvGfMQHDiyDp81Uv15COJMtMTNEpi2mPKW6ETF8Bygo6iUT7PawfWoU8WIKOjEpOfuiUm6q3tSy9gCNB0NOW17qoElSrdv7LEefOulQoVK07OokhAa/CoIc6FbUFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=djmertDplv++KfvUSUx6x/1PJOFroMs+Q81PZgSsB+4=;
 b=I/8Btq0aGyXyMsduqMKHc8RPA2OtyOXpvyT+wP7SX2loeq16XqDEkLr7Zi4cZpbY+i9a7soR6uHBQKwLluXvbaJyzUsd386SBGgtnsJFz/+Q28n6Ce83hc35ziYPOQL8w0R2saJp5mNCDSvDmyYKFH5i2x8DJ6hndRFRy67F2ixmqfyBamNixV8A6Yl8SJzq3Iv+cRSnS8WcFANeUobJXXDS6etgBYuBerIQdvQJeVYqHmwbT6vxji1iu60lpu8Hdh4Iv612XEIbBIWdnNQnhTDdaoJTcxz7Ws1i6rvoOLRXhPF/Nq/7A2Z2TxTKsFdvnARzommBkUoVJCjfOHITSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 18:57:55 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 18:57:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/4] drm/i915/dsb: Polish the DSB ID enum
Thread-Topic: [PATCH 1/4] drm/i915/dsb: Polish the DSB ID enum
Thread-Index: AQHas094+lgG3q+AWUyzo79IpufdLLG7HMGA
Date: Thu, 6 Jun 2024 18:57:55 +0000
Message-ID: <PH7PR11MB59819E0B7BC84BD99153D3EFF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
 <20240531114101.19994-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240531114101.19994-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7382:EE_
x-ms-office365-filtering-correlation-id: 313c0851-8511-44a8-d7c0-08dc865a9363
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?RVlLZDZ4cVNvRUZIazVCRDFiY3o1SWtqdzBjSHh2cnBXZmg3NnpQRS94ZWo3?=
 =?utf-8?B?Q3M0d3I4ZE5sTlhsTllYS3VuTkFNTDgxNlZzemJXYVdmOFdvVXFuNEhjSTlZ?=
 =?utf-8?B?QUNoTmJzMy9YVDhwTzZBMWF3dnlYTTd3KzhndFIzUU5YOWNMMlpveVJKTnly?=
 =?utf-8?B?Z2EvYWxjMU9nRTViNXV2cUYxNGFOVmFWNEQyanoxcjZFZktSNUg4Y1E3bmYx?=
 =?utf-8?B?Yk9MWE5LUlZzeExoNkJWbmlMRVVmMG96NVJXQmFVZHJvcUxzM3pVZXZDemgv?=
 =?utf-8?B?bnpOZklyNmpFRGdMZldEUSt0UWREME9Cekc3clFKZFpTV2cxdC9qRGd1emZX?=
 =?utf-8?B?ZHFMZjlPQ0ZkUUNKYUV5SlVMU29PTlE5MFpwQUEyQnhQWnRDdExWbm8xazlw?=
 =?utf-8?B?d1hHR0NwSnNwR2NQYlp4RVE3YzQ1eXdQbUJIdVVhbVlBcngzaVZxVHdod0lN?=
 =?utf-8?B?eGJoZXg1QUhYbUFhVzVhZm54UDFwc3dMWmlGMmh3QmtkZjlTY1BiRmhUR0pY?=
 =?utf-8?B?dUkwUE5BSHkzeXhMTmVDbkUwNUxSSGNlTGI0UUxsRnM2OHpIdWtRaGlRVC8r?=
 =?utf-8?B?QUxCVnBoWWNuSFZiUnJieGs1UzFPU0ZCeHdwTDJHTVpkeDlCOXRVQTFLNUp0?=
 =?utf-8?B?bmFmcU9NS3N2My94d0hQcWdNNkRHVDVrOWdUKy8xL29wR0h5cjB1Sm8zQ0J6?=
 =?utf-8?B?azV2RUhqZTJQbUdyRUZiRzJoUmZsQ3VCdUNWa29mUFVHU2Y5Z1A1U3dFSGZu?=
 =?utf-8?B?elhkZEdIZXBGakt4MXVUUzBUbnhVMHZ1YWZkTFhJRHlIS1NqT1JHbXVFWXVY?=
 =?utf-8?B?TytpQ0V2MUdjVERFaDY5TUhuS1d4bWFCazBNN2MzakVhTUF2U2V5aTFjTnd1?=
 =?utf-8?B?ck41aWJRYmswdHRING01RzRvSS9nMkNXMENRQ1lnRjZEcDZrWENleWlLUEtN?=
 =?utf-8?B?ZHkzdCt5SkJrd0htUTJGaXJEUEpUU3loOGNmcC9GbWh0TjdZb3hudEl6ZWRZ?=
 =?utf-8?B?SjlQVkdITGpudVphYVNFSlVSVlBRVjAvaFZQcFFJVkJEOHJnNmY0ZmZndkFy?=
 =?utf-8?B?b2tNdlhOKy9KcEM5bDhacitzQVBaZUp3aXhaQ01xd3VxNGQzdTRZNVJuc1dv?=
 =?utf-8?B?L0hZbTVlLzY3WGZ1bzgraFUvY3A4cWNMbEZvTTRTOWtBTXVYNmk1TllUMHI1?=
 =?utf-8?B?cElkWXBQc3hQVmRqT2tVcnJSVTNqcVNCRjZWWHpVczFNVTk0bEZ1YnR1N29Z?=
 =?utf-8?B?dGZGT1hBd25hWk1tZU1ZWjFreUJYSXFjZGgvdHNEY21wZHVJcVVoMUh4QVRZ?=
 =?utf-8?B?STZpbDJYaXF5RUJhRXhLY09sMjFVN0dWN3ViaExSMDNraDlyUTlvMkdDWVZj?=
 =?utf-8?B?cEg0TDVZeFZWUmozdWtUSDREdGR0bFlKVXBnb1VaVGFHMmlOOFBLTkVTZnBi?=
 =?utf-8?B?WlFqMks4RlFPRk1sWG1qRjJzZVBJd3phdCtrMlFTZDh6bTYwWFhsUlVFMVYw?=
 =?utf-8?B?U0lTYjdyN0pQMGtYL2dxdk5sMTJzY0xrMFVFWG1PcnU1Y1hIRm5zYjVCTkJE?=
 =?utf-8?B?R24yZlJwZVEyV1h4ZDhZVDJ2ZkxQSnZRbzUvVk9sR1RzSWNEei9BbUJmbTBp?=
 =?utf-8?B?UUUrMThkeGZIdUU0Y3EwZ3BLNkNWWncvek5GZDM0Ty9jQ0srelI0bHRUTzR3?=
 =?utf-8?B?Q3NNdTRaQXJRcUs4OHJsMHVrTm1Kb2dmNmQrRHBiU05aSUhpcFpJd0dSYWcx?=
 =?utf-8?B?WVMwZ0ZaR0hxdWhHY3ROQTRHTjZja1dsN2lYUURLZCtNN0RieFppWXMvcDZG?=
 =?utf-8?Q?IfCyx6+50/nI4CLNu+DUsp9lI1P33lSJFfoPs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWlKZ0V6cVkreSs5RkNuMGViYjBMR1o1dnhiVkJnVjdjTXBFVTB3M09YTEhO?=
 =?utf-8?B?T1FlZ3hWa1BWeE9YbW5SRDc0NHNqdWlsdnZRRWpDS2FaWkZmTjVwdzBBVzVm?=
 =?utf-8?B?NE5oUlo1VnNmOTFCdWhZMmZaUDA2djFuenJXRU9hMFpOVVg3MnZybnJUc29v?=
 =?utf-8?B?Vm1QUFpCcGJ0aldCcU1tUmQ4ZVdubnVHeHR5VHI3L29HajlsSHY0RjNtYlNF?=
 =?utf-8?B?SGVuQzFQMm1QVWE2NU00SlJwYlJQd3oxdmNpa2JMQnFoOVRmRkRrODQ4c3NN?=
 =?utf-8?B?OS96emNad0ptWG5Ka0k4QXprSURBaXhLaXY2T0piNXlWWXllc1VTa3Y5MkUw?=
 =?utf-8?B?UjJ6RXpUaXNyR08xYWRJakN2dkNqTXl0TVJpeEh1aXEyejVBZ3RRdU12ZWRm?=
 =?utf-8?B?V0xXZFNRNkMvbHlxdEt6SmliTjdjNWpoY3I1d0Z4N0h0WC9zRjY1cjRhTmI4?=
 =?utf-8?B?MXRJMVc5dlRiNW9YWjBvbUUybVZiL1BwdEZvRU5oemlHQlg1K2lrMFJFeEdy?=
 =?utf-8?B?d1NNQVBHNTZOdFZzQlBmNE1jc2FxWVNTRGphcnNJN3pBMW1wbHAwczMyVkQ1?=
 =?utf-8?B?WHdEU2c0YW1kU2ZHT2lEdHR3dVZIU1RXN21xY2hCa2l2emNpYnlXdVNFSDdN?=
 =?utf-8?B?OHBFTW91c0wwd1Bhd08wVG16bDg0bDdES0k0Sm14NVYyeFg2M0l4NndUaStI?=
 =?utf-8?B?VGRma3I5SFFRSEQyTEc3d0hUZnlhQnVLOXNicXFpai9RUWVzZG11dE93bUxx?=
 =?utf-8?B?Rk5hRDd4SUwzKzYxaWxqU3lERmhaaVg3Y2s2cHdUM2NvUFZMMzlrU2Q5Yk9o?=
 =?utf-8?B?N3ppMlBEdS9ZMlZ0UnhselpaU25Wa3RnZ2VCV1JNK3ppZWlzdjhEN2hiS2NM?=
 =?utf-8?B?dFdIemE3MUNEMitJb1o3RkhKOEJ3Z3pNOFdNM0xkeGdRNmFHd1pRQWp0WXhD?=
 =?utf-8?B?eXpKbEhWYXIwc29QeUlMclA0V1JZT0JxUG03cUJWV2tibmdUQ3hrUVBDcktC?=
 =?utf-8?B?Q3E1WkpMZUQ1ZXNqbXdKTG12QUdmdzNUZFp0WkhDcyt6SkNSdmp6YnUwM2Mz?=
 =?utf-8?B?L3FYVDBxWEgyOTdVWHRhTkt1VUI3TlBtS0dSQnJxRS9BMzF4SG5lZEo4Ymg1?=
 =?utf-8?B?cnNNZzJiOTZVWjJPWFZ3elZzL0ZBd0U2aWVFTE94WDhPL1ZNa1pSbVhTOWNk?=
 =?utf-8?B?REI1djdpRkpNOGk2TndJVHZsVUpDd1RNYzllRklWWjYzZDJkajFMUXI5S2ds?=
 =?utf-8?B?VlcxMWw3UUJtTmNuUG0zMWFLeU9YamNGMzRXWmEvS1hvUElmT0l4TktVd3hk?=
 =?utf-8?B?WUVwTHZqcWwzOElyZExWOElmYWJvK1hhbloxbC8wanZmR245ZXRENm85bVZY?=
 =?utf-8?B?WGdCQ2h3MUJwbDBDaG82SEpKV29MUTZTN2M5eEtjeXhISElsV1hwWFIvL2p5?=
 =?utf-8?B?Sll2UmR6a0ZFRWVpT2xrL1hVNlh3MGloVk5YZTdLRkR5TkpFeVhZSzQ5ZGZO?=
 =?utf-8?B?RmhRdEl2MDNWODlleVIxNTc2VEhPekc5N0doTlVQVHdKdW1maGlkQWs2NUVG?=
 =?utf-8?B?aGNzcndrWGJYVkk3b2RmR01sNW1ZQ09jK1l3TGtXYktueitzbzJaSlRaTDhH?=
 =?utf-8?B?bnhCYnVvUzRieDdCQUl2MjNtMnJWaVN1YjNZV05CWEVLbUtNcUhWcTJKdkhK?=
 =?utf-8?B?R0hibU1YR1J0UlE4UHUvR1ZENURNMzBUUEFRczRHSDRRbnlsMEltY1doUDZJ?=
 =?utf-8?B?Mi9ieEtreW5LMGhtTzdkZkgyZEx5VW81bHY0T0pxamdtTHNEWHhLNkZWL0s3?=
 =?utf-8?B?Q3dIOWF0alQ5dWJvdVh1UDFIelJmcGR2WldYK2k2aWVVMHlCbXBsQkRIL21q?=
 =?utf-8?B?M2I1QkMvUlZRelRLQXNhN3AvUEQvemRINDlnSUErQlByTE1XYWJmMzdTY0U2?=
 =?utf-8?B?VytxL1ZKYXFWbE5JYTNsMi95MDc5VmxuU0Z3Wk1oNlpCS1VRL1Uxd2I5UXBq?=
 =?utf-8?B?dzRYNWR3aExLVjMyRnRGL0JEa0dVdXZTRDdKVU13alJVTTNjWXhyWlRaTnk1?=
 =?utf-8?B?V09BZVVkSlk1dytUcjJEUDNmODUrWXdRWi8zK1hjMSszWG14UzZidDJUOXR5?=
 =?utf-8?Q?ZNSH57Jvve8lMWEEU0bQfE+mt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 313c0851-8511-44a8-d7c0-08dc865a9363
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 18:57:55.7517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w7NGkqeJe1LszMEo9IOs2wRTPmIEGtXXgDWPelgZAit9ORPGirHs2t5QGG0WHdPArU2q1+AHGnbflcYDRCZ2Rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7382
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMxLCAyMDI0IDU6MTEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEvNF0gZHJt
L2k5MTUvZHNiOiBQb2xpc2ggdGhlIERTQiBJRCBlbnVtDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gTmFtZXNwYWNlIHRo
ZSBEU0IgSUQgZW51bSBwcm9wZXJseSwgYW5kIG1ha2UgdGhlIG5hbWluZyBtYXRjaCBvdGhlcg0K
PiBzdWNoIGVudW1zIGluIGdlbmVyYWwuIEFsc28gbWFrZSB0aGUgbmFtZXMgMCBiYXNlZCBhcyB0
aGF0J3Mgd2hhdCBCc3BlYw0KPiB1c2VzIGZvciBEU0IgKHVubGlrZSBlZy4gcGxhbmVzIHdoZXJl
IGl0IHVzZXMgMSBiYXNlZCBpbmRleGluZykuDQo+IA0KPiBXZSdsbCB0aHJvdyBvdXQgSU5WQUxJ
RF9EU0Igd2hpbGUgYXQgaXQgc2luY2Ugd2UgaGF2ZSBubyB1c2UgZm9yIGl0IGF0IHRoZQ0KPiBt
b21lbnQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KIA0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAyMiArKysrKysrKysrKy0tLS0tLS0tLS0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggMzE5ZmJl
YmQ3MDA4Li4wZTJiZDlhMmY5ZGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuYw0KPiBAQCAtMTksMTYgKzE5LDE2IEBADQo+IA0KPiAgI2RlZmluZSBDQUNI
RUxJTkVfQllURVMgNjQNCj4gDQo+IC1lbnVtIGRzYl9pZCB7DQo+IC0JSU5WQUxJRF9EU0IgPSAt
MSwNCj4gLQlEU0IxLA0KPiAtCURTQjIsDQo+IC0JRFNCMywNCj4gLQlNQVhfRFNCX1BFUl9QSVBF
DQo+ICtlbnVtIGludGVsX2RzYl9pZCB7DQo+ICsJSU5URUxfRFNCXzAsDQo+ICsJSU5URUxfRFNC
XzEsDQo+ICsJSU5URUxfRFNCXzIsDQo+ICsNCj4gKwlJOTE1X01BWF9EU0JTLA0KPiAgfTsNCj4g
DQo+ICBzdHJ1Y3QgaW50ZWxfZHNiIHsNCj4gLQllbnVtIGRzYl9pZCBpZDsNCj4gKwllbnVtIGlu
dGVsX2RzYl9pZCBpZDsNCj4gDQo+ICAJc3RydWN0IGludGVsX2RzYl9idWZmZXIgZHNiX2J1ZjsN
Cj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gQEAgLTEyMSw5ICsxMjEsOSBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9kc2JfZHVtcChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpICB9DQo+IA0KPiAg
c3RhdGljIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVu
dW0gcGlwZSBwaXBlLA0KPiAtCQkJZW51bSBkc2JfaWQgaWQpDQo+ICsJCQllbnVtIGludGVsX2Rz
Yl9pZCBkc2JfaWQpDQo+ICB7DQo+IC0JcmV0dXJuIGludGVsX2RlX3JlYWRfZncoaTkxNSwgRFNC
X0NUUkwocGlwZSwgaWQpKSAmDQo+IERTQl9TVEFUVVNfQlVTWTsNCj4gKwlyZXR1cm4gaW50ZWxf
ZGVfcmVhZF9mdyhpOTE1LCBEU0JfQ1RSTChwaXBlLCBkc2JfaWQpKSAmDQo+ICtEU0JfU1RBVFVT
X0JVU1k7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfZHNiX2VtaXQoc3RydWN0IGlu
dGVsX2RzYiAqZHNiLCB1MzIgbGR3LCB1MzIgdWR3KSBAQCAtDQo+IDQ4Miw3ICs0ODIsNyBAQCBz
dHJ1Y3QgaW50ZWxfZHNiICppbnRlbF9kc2JfcHJlcGFyZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gDQo+ICAJaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5
MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOw0KPiANCj4gLQlkc2ItPmlkID0gRFNCMTsNCj4gKwlk
c2ItPmlkID0gSU5URUxfRFNCXzA7DQo+ICAJZHNiLT5jcnRjID0gY3J0YzsNCj4gIAlkc2ItPnNp
emUgPSBzaXplIC8gNDsgLyogaW4gZHdvcmRzICovDQo+ICAJZHNiLT5mcmVlX3BvcyA9IDA7DQo+
IEBAIC00OTcsNyArNDk3LDcgQEAgc3RydWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUo
Y29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICBvdXQ6DQo+
ICAJZHJtX2luZm9fb25jZSgmaTkxNS0+ZHJtLA0KPiAgCQkgICAgICAiW0NSVEM6JWQ6JXNdIERT
QiAlZCBxdWV1ZSBzZXR1cCBmYWlsZWQsIHdpbGwgZmFsbGJhY2sgdG8NCj4gTU1JTyBmb3IgZGlz
cGxheSBIVyBwcm9ncmFtbWluZ1xuIiwNCj4gLQkJICAgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBj
cnRjLT5iYXNlLm5hbWUsIERTQjEpOw0KPiArCQkgICAgICBjcnRjLT5iYXNlLmJhc2UuaWQsIGNy
dGMtPmJhc2UubmFtZSwgSU5URUxfRFNCXzApOw0KPiANCj4gIAlyZXR1cm4gTlVMTDsNCj4gIH0N
Cj4gLS0NCj4gMi40NC4xDQoNCg==
