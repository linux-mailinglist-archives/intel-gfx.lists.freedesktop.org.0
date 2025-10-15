Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC59BDD54B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E94410E03E;
	Wed, 15 Oct 2025 08:14:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFvT6tYz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA4B10E03E;
 Wed, 15 Oct 2025 08:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760516045; x=1792052045;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SKRbfvHflduTLBEz+0W4PQw9O7b2XHKcURML5KIYvr8=;
 b=OFvT6tYzv6J+QavgNAnBsY+rKUQT1k6y7odTda2+545G7n+nrQ5Wl2Vf
 bnk5ks2puGfnerKt9XR/q7KhaDrAXNRyz30ues6EOHZXiIHtFXYFvDc3C
 PjwB4eFlDw2Twqsti3q3AhZbPWMFXcr6ePC5is5uipiQyImJXJ5oeJa2j
 HwF3VFxqXIT/vwzWcl36sEnZFHgrf5jrm/YGcYam04b8wmfvsY3/PBu4t
 3mbTU8t8HT1Ej7f/dXfH8PzktW61zsl/vZ5Erfv2m+nBsNp3S+O9h1rfK
 ZOnK5pRjfzbHFg7csHvf87wqlSHxqW0nEVIf+GZmRmHK3y1bh/xEu5IOD A==;
X-CSE-ConnectionGUID: QbxxK1WTRWGc4KUVWZy4kw==
X-CSE-MsgGUID: 4peQoA5lTV2KR9NKlMBkKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="88151067"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="88151067"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:14:05 -0700
X-CSE-ConnectionGUID: TwxGZVlcRAOdVcgireOmVw==
X-CSE-MsgGUID: Ea/JJXxPSoqdmdQaEzwqaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="187191533"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:14:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:14:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 01:14:03 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:14:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sr28DbQbNKjEOZ9F3LA9MxONmFiIccEGu0nzfL7SaxmtKEp10le9fsZxguWmBLde3S+qDIGMSiB//Pj6QXuTOKxEmvL81Q3LfY5hMllGtxHvZXQ3ipKU3JZIAll2PddMtr2OiMPYIL2VTYu+2pF8u2UDVSW4vcWnOKzMxZ8VmwSH1GfhsiNLpNWuxwqqsQ6/hry7bGE4MoefSu2O9q+zQlUYvncOVkanr2GH6KvL+qO7Kqoc4sWCNPH0n6N15vjnN6/lWpD4XzdBeiOydYmoEUxhFx9lELPhoYZ4zy0n64wJ6qc2pHFF93Ks54i4XP9ui43Qq4UukTvDOffkXvireQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OP6GVKz9dWwJtXcJiY15MhkmV4B668Ce9tvPlQ83oCc=;
 b=g9NNwSK33y3iIZr/GlBLUEKsSsMJSX8kgp7TD/bGgsNAoc7VqVGsi4UcK4mXGBWgTUkf0mi8xGJ7J/Nr01AIPVEVm3MIKzba1fFusNPy0rfqwJo5zOtRY2+Xr689G5u3/GPBZeRqLQTwsfIFJdPv19Bn6MxpUMs3GNGUHi2vKf+3hx69IBTAjm8bnw+sPiFmw108wK0uipX/aPljvQ6FiJt9otjn7D2LjjXDhr9YztQmZ/TyUKIEtQtDNhpMvuuK1AKLGzlfhiRn8x7uUgTzb+joe1t/9hnt0vUjDGuTClEsDqKbGY/xrkB4Fu9cxPTf6NRqF1io8Zjr2/MeTuLGqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by SJ1PR11MB6250.namprd11.prod.outlook.com (2603:10b6:a03:459::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Wed, 15 Oct
 2025 08:14:00 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%5]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 08:14:00 +0000
Message-ID: <b59ecaf6-38bf-4d7a-a51c-b5bdc339b0e6@intel.com>
Date: Wed, 15 Oct 2025 13:43:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/32] drm/i915/xe3p_lpd: Extend Wa_16025573575
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-21-d2d1e26520aa@intel.com>
Content-Language: en-US
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-21-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0236.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::10) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|SJ1PR11MB6250:EE_
X-MS-Office365-Filtering-Correlation-Id: f2dbb761-c15e-4d18-fb35-08de0bc2cbc8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTMyZGdtbkQvSXRaVXh4Q0h1SlA2SUNob2tZYmxrZlZDZGZSZUEwbVFISmJT?=
 =?utf-8?B?eS91ZFhUd0Zjcm9jdTk4ejdjaXkvOTlWd0FrQTNxNllJeU85V05KeG9FUGRD?=
 =?utf-8?B?akkwU3AxczU1Z3dzSDhmbFNtWlpLZCs1c3psVEh0VHViTFNSZ3ZYRUlmZ29T?=
 =?utf-8?B?b3BLWjkrT2FMMUFHVTZKejc2cTBoRlgwa1dmV2ZsVTd5THJMaERBYzdaZFpT?=
 =?utf-8?B?WmxIYTBySzF5OU05cmRLZitZY2UvbWU2NFZXL0hjSE9tZU4vRHFKYkhxMHIv?=
 =?utf-8?B?bDJxc24zT0VlZGo1Q0h0UXdZWVdZSVJMYzBWakdhTk0vM2Eza2ZuS3JxRDNQ?=
 =?utf-8?B?U1JIc0tDdU41Vng0bExzN2Njci9yTUpvaEN1VytoNHNtRHMydElBWEpxc1h2?=
 =?utf-8?B?NitpWVdVTVhqbENtRVFPVTZ4ME1SM2tKTFFIQitpOW02b0E2cUNNc2RYMG5v?=
 =?utf-8?B?NCs2RnpGTnJlT1F0V2JDNG5XN214TEJjVmV6MFF2a3FTNnlUbk5tcytDYXF5?=
 =?utf-8?B?bVJJWVh1MUZnMCtCRmlPa25tMW5RS0RFUVE5UDkvRFU4RHpHSm5WZTQzdkls?=
 =?utf-8?B?Zk5xbnArWHB2c2I0ZXBZb0RWWTVwMlNLVXhYMDFqS3B5R0xYd1Nld1kwOG9v?=
 =?utf-8?B?NFFlZS94ZkwvVWlIMTR6VlZSd2xTdjEyMldyOHRwMXdvSU1ldU9YbG44elpT?=
 =?utf-8?B?UTFhQ2hWK0pWZ2NTbWdGSm5jQXZqYktLd3JadzRac1J0S3Z3Y2xkZWZGcVhz?=
 =?utf-8?B?K2YrMklQdnBzOGpkbUJQWW43aUhxVmhkZ1RGRHNJMkdOUzJxRWk1VHJkeUt5?=
 =?utf-8?B?ZGtPVi9TSnN3bkgwWmtaazlzSWdXeGtmSjlFangzcitqeXhQT1h4QkdyUGg0?=
 =?utf-8?B?SDA0RmE4eU5ZZnRCQ3N2VDR5ZzRRRk1YSHdsK0ttczFNYjZGd3BqckY5Nm40?=
 =?utf-8?B?Y1ErVU9QNUFUd2hkbnlTczRIZEVTTXVBY2l0TG9Ta2QxU2I2d29zbWhGU3Fk?=
 =?utf-8?B?dTJLQjhXbU02dk5wSHhYTzdLN0lsN1gxMmIzZlV2WUJUdXpIN2N2amRXVDdr?=
 =?utf-8?B?aGw0M0lYV1c4UkpmaVYvRXFQZ091SGs4a1BxNU9LbW1PU0FpZStzbkt6YWdo?=
 =?utf-8?B?dVNhcmw3cVFUWWl0Z0czUEhuN2VaVytON2dUbVVVOFBwcExyazR6bkFwWlN6?=
 =?utf-8?B?UHBGem4vM1JOejhjWndDVUpvMFhzTGJPNUp0NFFOMWxuZ2VUek1lSWlOWlk5?=
 =?utf-8?B?aVkwcEx6SWRpbU5yN3gzcml6czNERDZ1aXF2b2ROWnlvdkdzZGV6UTRlRnlr?=
 =?utf-8?B?cmtUUlU0MkdzQ1J6eFVhQUFMM3hkV1piWlR4dVIycGdrM2JwamdQNitidGc3?=
 =?utf-8?B?ZXZoZFZMUjNwdXhCRE5FaTRidWtvYmJqbTdpamVLV3M4OFl0Z1gyN2FDd21i?=
 =?utf-8?B?TVdLRVNSd3EydnM0YkdFY2VNdHRUVVFnUXFtcWR1Zk1QNlNFVG9CRU1aZ1Ja?=
 =?utf-8?B?NEkxUXA3blNENndRYTNSaHZGNU54WCtMdFM4M0toZ3VQMEFzeVFnWjNNQkpD?=
 =?utf-8?B?UHhkc2kzZG5KcUY4azM0TVJoTVI4RS9wM0VJLzBsMjZKSlQ5NldJQXZvVk9t?=
 =?utf-8?B?cTNidjRxSVF2VzN5NzJWbXBzOGkzdE00MDZLKzMxMHViSkVPZ2tEdTRrdzR3?=
 =?utf-8?B?alVyMHRoVWhBUDJVWmVENWFrTVphTnc5YU1HTStnbmp2eFJ5VUk0ZE1sYmx4?=
 =?utf-8?B?bkFmS08rQXVUcVJ1TEh5UHJGd3c2MzEvWUZoN0xERjhrRTAyTDROL1JTYlNU?=
 =?utf-8?B?d3M4S0w1aVBGZm1UeHhGbkxWQnRzOHpTOXVKcmZydWQrQUhyczZlaHE4L0hr?=
 =?utf-8?B?N2tEOWhaQUErSjEzeEgwa1BHdUlEMWFsQm03MVZ2N2V3L2NxZS9QckZPWEEx?=
 =?utf-8?Q?eV6NSxTJVB+3ogtGqn1BKGmmBf7ngxju?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MU1CRmJGOVdhbU5VMExTS1FCMmM2YjVoSjdnV1d4SUpmR2JuT1ExenhqeStj?=
 =?utf-8?B?bFZMQVFMeDRLNzcrdHFmOVhaenJ3YjRZWG1sQ0oxcFUxd05icVpNSUVBc1RM?=
 =?utf-8?B?OTRBRmhkUUgxNFhFUHZnMUFyWGEySm1LaGJPQXhZeWg5QWRTeU1CbTJkeTdj?=
 =?utf-8?B?ZHkvWm1HOGwzZmxRVitTeVZwclBrQTVlNjZGWDNVWisxZ0hKRXdocEN6Q0Vx?=
 =?utf-8?B?ZVpXUEVLWkhRZGl2TmJISUYyUEZhbEM3cjA2UGtkNHBjRzRsVVZMZlZSaVdQ?=
 =?utf-8?B?M0ZwVmVwOVN0c0JYWCsxKzhMbE5yZmEzbHpOaCtLRWVUY1I0SlBqejAzQjZn?=
 =?utf-8?B?T29nVC92N2ErQ2xqcnVMYmpWZ0Z6cUw2cmZqbEViZ0p3SzcxR0V6VE8wenRj?=
 =?utf-8?B?L2Z5NzFoeUtCbWZBTG43aVQzaDFWTEJKdWd4TjRUd2M0MnVubnZTMkZ1Q2NG?=
 =?utf-8?B?M1UwNEpmOVovanloRmJFTGw1NXlMOU5NeUZ1ZUQrcDNZbXZPdElRSzE3Um44?=
 =?utf-8?B?OTdveUhUcUcwVWcwRnUrM1lJaGo5UGEzM01HNEN0R0pwczFia0MzbWVGWlJn?=
 =?utf-8?B?Z2NqUkxFbktTRG80Nm14enc1NkpBZW9sNFBIamFGbDk3UkdkOUs4NjYvd0ov?=
 =?utf-8?B?dmI3YW5mZDI3MG1LMU4zNG05K3MrVmZ4ODd4Z1JiN090Wk5tMnY5R2doTDNE?=
 =?utf-8?B?QzBBZDkzMDR3M0tjU1hjbmhsdFJ3eTVINk90YlYvcHhKbk1HaVhNRXdoZFlo?=
 =?utf-8?B?cXRLV0dqNS9OUmMxeWRzNzdYUjRFTG12a3dFVGQxeGMxQWptM0xWTEpkSWdN?=
 =?utf-8?B?WFdFV0tDZVNmd2NvOGNpb2VERXVBRjRDbGZNM1Jqa2hlKzBqeEpXQzVBNzNZ?=
 =?utf-8?B?ODVHWUVRSXZBWURzOTVPVVpyUmVvZFU0SFZEQWNlZjZaNnZ4SGtrRDdEVEho?=
 =?utf-8?B?VFplSG0xR0VBazlxQjAvL3U1MG16VGU3RWs3TGlBTk93OXduVG1jN1Yrc0M2?=
 =?utf-8?B?R3hQWGZ6Z1BpZGVaeVV2akdSbjFzeHQyWUpvMGRKQ2FwVTd2ZWIyQkJzYXdG?=
 =?utf-8?B?eUk1bStlUFR2Z044OVIzeW9teVNiZTJoUnBIUnM2VmxCM1FKV1p5ak9iTTZi?=
 =?utf-8?B?ZXRUYjFtajVKYTRReE9qaHUrVm4reHpndGQ5Qm0vdERRZ1FnTVF5MWlYTFUy?=
 =?utf-8?B?K1FvbkxCWEZOTGdDYkEyODNVV3FVNC9FZmlWaWtSeUwrMm1QWmxPTUpuWk4y?=
 =?utf-8?B?N3RrVjZGeXM3ZWJZTHNOeGthZlJlMjZ0Rm1XVlVyd3RGVStKWVV3WDVCais2?=
 =?utf-8?B?OSt2VGduU05wYkFmTGNGT2VicC9TMzVia3R4ekpaNWtVNk9wcGFYYkIyalFN?=
 =?utf-8?B?SnFSaEFWVkorNU5JRjk5L0lXV3JlYkIxVmpjSHY4Rkw3MjAwUUw4T1NUd2Fw?=
 =?utf-8?B?YURteU5ULzllK0MrRWF2b3FPTm5uZWdKVEYrWjlTSkVLSkF1LzQrdU05MitQ?=
 =?utf-8?B?bktIV21nUWVNaXRFUDdjOEErUFNLSDR4UUVQdGIrMncwLzhGTWtsRFM1N3hZ?=
 =?utf-8?B?bW1aN204SzhYMHk4QlQ3QUVTZ0w4enl3ZHVuL2p0YWREWUFneloxU2FtZ1kv?=
 =?utf-8?B?YU41RFNRRDFnOGs3MWtvYURvRzhOaERXK1J5NzdOb0czRWZKNFg0aUU3TXk0?=
 =?utf-8?B?VFVObTlTcEVLM1BXZnhuU1ZJZVVHQmxEQUJjR2VSNnl0U2o3MmpEL3ZHVGxP?=
 =?utf-8?B?NTFtK2lPNmtSRVdiV3hwVTFrdmpMTStrMTV1ZVY2dlBqdHF6NWJqbjAvalda?=
 =?utf-8?B?UTEvUjVhS2ZaVENmRUFRUk1BcUduanBjVHdwYysyTHVxbnU3ZGdHZnhoTE1p?=
 =?utf-8?B?YkZpbTE4SXhNTzVMQ2IzYkYxTzZLQVZGdDcvKzkxVjkwdXREdW5DcnFjRlV6?=
 =?utf-8?B?VUYzM3Q4VDA3bTk4dDhMUUh1Q08ycGI3RXVtOFdQT1pXaTY0cUwyblVFL21X?=
 =?utf-8?B?N0MzcWE3Wjl4TkhvK3Nya3A4Y25QS1pqWGNKZmRCVmt1dGlIUkZMN2ZJa2Vz?=
 =?utf-8?B?d0g4K05sUXJJOUtWMmlSakV0T2JiWEFPbXM3QUtRUUJBdDhIczNLRGdZY20z?=
 =?utf-8?B?cXZ1SGxhMjdOWDRlc1NzRWVlekNCaUxKUWNRQm9jUm5OelFrWGRNbU1PUXFW?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2dbb761-c15e-4d18-fb35-08de0bc2cbc8
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 08:14:00.5427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G/cwrmakjXnR8MRDbbw4OIdNtu9qoVzKEufuwPn/ClY+/sXl/0VwE2lARQVEi4dR2M+EoQO+3XNceZGACoPSaFexI5ZfzO7yDIunO8aM2/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6250
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


On 10/15/2025 8:45, Gustavo Sousa wrote:
> Wa_16025573575 also applies to Xe3p_LPD, so let's include it in the IP
> version checks.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
LGTM,
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_wa.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 31cd2c9cd488..f897ad3862f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -49,7 +49,8 @@ void intel_display_wa_apply(struct intel_display *display)
>    */
>   static bool intel_display_needs_wa_16025573575(struct intel_display *display)
>   {
> -	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
> +	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002 ||
> +		DISPLAY_VERx100(display) == 3500;
>   }
>   
>   /*
>
