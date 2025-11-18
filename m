Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60939C6911B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 12:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B7510E485;
	Tue, 18 Nov 2025 11:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1NdXniP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D602910E483;
 Tue, 18 Nov 2025 11:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763465324; x=1795001324;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N5XxvSUkUeHgezgBMgKKlHF6riuvRHTMuOCa7rJFrVg=;
 b=S1NdXniP4VxjrjIfEPKJUWDTplfg6BD/pwSUympMAuLxGICKawkvfz6Q
 18nZtAa6nhTvE4v3LsEMDWUbr7DD2aHXEkxrgsyWYq9BqbAqOWCgotftB
 BalUG+pOJf5Q7kAy6X2S29oU7Os2T4jQ+eRKhS7J38BPnsKTEes8RZ/BT
 yOru7/Tqfl4KfX0K9E/ylV6GfjN1stGOkBjPrwWj76Fo2PdDIn4NZttgC
 2QJVsT11UYGq0iRVZE8a06JcN8ufdqZXHrLHjLH0EvqmzHdxQf8wnhcmC
 q9k3TNe+OAI8/Y0bIVZc8HsWPSrWrRZzgZHNCAnw7SQAlIi7Z5/lKg6PW Q==;
X-CSE-ConnectionGUID: cESQcMytQ/aj3y2M9ekCgw==
X-CSE-MsgGUID: Lu14hFIQQ5SoA0AvjJfuqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65189320"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65189320"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 03:28:44 -0800
X-CSE-ConnectionGUID: bkMgXhJBQxygEjSLEmJEcQ==
X-CSE-MsgGUID: OIdM1FBaTwKndmIdoKVfIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190402215"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 03:28:43 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 03:28:42 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 03:28:42 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 03:28:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gut5V12tFYNQCUE2dPImKDKq4KM75NU5yKS2j6tYiB30zPRCpT5yjeogiuBo+Ac7J4RQ01UE6MuYXKmmCh1TM3pVk0H7CatN4AMn0eJ664Tske9LVM7MGTDIyfI5gyJ431+sAQ4/mzLHG7twOP7D1fXybmJDwMPE+0jV1bPS6LrhuBKN2kJDkqZI8AUmCsgQBsKkzFnnTO4krDnXskKrbeOz2TdK7VQZ95QF5KFQX492Hm5y9dFfrlojclKbaB5Os/VTnZIXQourlaMqSQT2UCAQD09FG23IBI06lqkiTV/sWo5kcazwzqIUIDjoqP7/wkt+hG6/+89ziStHYJ+ybw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N5XxvSUkUeHgezgBMgKKlHF6riuvRHTMuOCa7rJFrVg=;
 b=DPFpn/F7uM47SkN17kmltFlmt2WsJrocAvAYybPMnykhammvFbsWhJBJ6+MSIKbBUj54+klxuhQYNBj3TyBjDRjroehCs6xb/YM8+OxIuw22F2428wh3rlBN3NeuguBTXKHZqOjx+P/r/pvtooT1b10Z79+hoWyP8wnODYStb/gyT4tv+dnwdFi/rQ0FX5kkszOp1PF2eGJ+My1h/mUk06vDI0DulbUtJ7SXhxhoGdJ2SiCqoLL+SLJppHjyH4XsK/My2CEzFYpjx+drwagkTifTJ6y4IAoAHxN++wc+y6a5rl/ZfW2xm+OMgedrN4Yo5ij7zPk1J6+O4fIE2mu4Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH7PR11MB7594.namprd11.prod.outlook.com
 (2603:10b6:510:268::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 11:28:35 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 11:28:35 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Topic: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Index: AQHcV7FFZG1Fd86fxkC74zS4Y73cc7T31i0AgAB2uaA=
Date: Tue, 18 Nov 2025 11:28:35 +0000
Message-ID: <DS4PPF69154114F87E4BD68B05A797D378BEFD6A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-22-mika.kahola@intel.com>
 <DM3PPF208195D8DBE4AE64DE33D9372C5BBE3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DBE4AE64DE33D9372C5BBE3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH7PR11MB7594:EE_
x-ms-office365-filtering-correlation-id: 95caf474-2008-407c-8f6b-08de26959cb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NmVHTTErMDRTaFpFd2ZLZDc3L3ExOVhMYU9vUWFibndyOFJCd0JSeTQ5MGFD?=
 =?utf-8?B?akwyZnZtMHh1TFVSNjFISUdhTC9PMFdrTHhxa2h5K1JBUDFRTjMraWN0aEN0?=
 =?utf-8?B?OHZRbWMrckxWNGlZK2xiV3RjdzN3aEQ1L2x0VzBZbHlqTDNtVTA4NEE1L3hF?=
 =?utf-8?B?dEMrVTBzdHhid2o3akh4MENQTU55VWhtSEgxUVhIcFoyTmxPbit2enlGaytL?=
 =?utf-8?B?NkMzcXZrOENnOUZBU1grbWVaZVFBRDY2aUVWbkJ5TFFvQ2hoY3Q4WjhmclA5?=
 =?utf-8?B?b2ZyOGhmZGRnR0NTcUx1eGpnbG1SM1NCUllpZUpGQ3Y4UXJRRXRBVmV0YTFZ?=
 =?utf-8?B?SmgwaFdDSUhzM1RQK3A5Tll1YzVuOFdpQ0EzQWk0VVNCMXptQnkyNVZLMzZ0?=
 =?utf-8?B?c2NUUk5kbG5CKytWVjhIc0I3RGJhVkNjRXQ3V1pSQUh4eUdlWEhMdXl1YWpV?=
 =?utf-8?B?Sm1Ud2ZHNERwNUpod2o1N3ptSFgzRDBWb29vZ3VBQkpwYnVIOEVDMkFrMG9J?=
 =?utf-8?B?SUJ5eXlRZEh4My84Yk43UGNCaDVuOGMwWmJjaXRMdXZFWlVqS3pQbFBqRU53?=
 =?utf-8?B?dGx0aDlacUJuWWp1WmhlVmtHOXJyc2h0dzNDUGplWWdOWXhBYkRDSzl6Mnk2?=
 =?utf-8?B?eE53VndnR0hOb2pNaXg0aUhuaGhIYXRDVmZpRlZ2c0dkRyt6WlM4ZGd3Z0xU?=
 =?utf-8?B?eVJyY29PVWhuTEFNbjBiUkZMQ1dQalYrL2FERXdZWFZ1azh5bmJ2RW9CVU9G?=
 =?utf-8?B?NUtJR2hnaTQzZUNrbDhJQmFqY3g3YXczWVhkaDJHbUQreFFTVnNjTkJSY0VI?=
 =?utf-8?B?dDdMZi9OOXk0bFprd3E5bWxLUkFVa0NnQWYya3llWGhMak5kZ01XNitmVEZP?=
 =?utf-8?B?TWZsVUtGcUFpTW1FK1NYNWtLdnRzUFNBOEx0K3NUaHROZFQ5aVZvVVZZbTZp?=
 =?utf-8?B?UlJJRy8zRkwwbFYraDJWWUROWHhGWXNFM0JyNGwvcW1PYW9TKzY3VTVBWEpE?=
 =?utf-8?B?TEJVa2dDS0Y5SVV0b291QTVZcHRBYVovL0taMjhBSnFKa2tLbW5qUkRoMnpv?=
 =?utf-8?B?bm9HMXFmVGJDMUk3THBxYk1DeEVKZ1lWcXJIUXlQSDFma2RSUFE5Y3N3MEpo?=
 =?utf-8?B?VEh6WERTa3ZmOG50amplYzdPSVEyc2dnc2Q5Q2R2NFhSY1NKMGFjdHQzTEcv?=
 =?utf-8?B?S1ZHOGY0YjNhKy80RHM1RytOR1k2TDRuL21IVVFqMTltb1AyQ2xWajJ5MUpx?=
 =?utf-8?B?ak9CeWUvcWVxNlUrNGZlRm1wSCtER1RpSCtVMGdmWHJxbUFScTNKSFhidEpH?=
 =?utf-8?B?RW1CUk5GeEVpanN4RFhkdVhjK1o0R0J6ZVVEakF0czdCYStVNDgyVlh4Uld4?=
 =?utf-8?B?TVNhSUU4MTk5YW9odGZEYVVsMGtISURqQlREeUZnLy9PR05LSTExVU1EOWQ3?=
 =?utf-8?B?UTcvcDdTdklFSTI5L0pWc0pSd1lMamk3RVFGeG5LdEh1MlB2WnhZN3hNbUhS?=
 =?utf-8?B?bVJyRmgyZ09jVCtrTU1QM1h0d1hEQ1ZtbTVWY2tlL1pHV3hOME8vQ3BFYkt2?=
 =?utf-8?B?dTdVRzRIVjNXbVdGSUo1cW1qZFZqK0Z3VzU3M1BiUHllN2Y5VGhqNnhhbTIw?=
 =?utf-8?B?bDZSVmQ3K3VNUFZqK0JUMUVxbmdZSE92cVliYmpzRDFOZERFTG9tNUcxK2Jv?=
 =?utf-8?B?bzhKK2ROUDJPdWJpSzJWZUhCdGhRYmFZUVdpU1JjSEl3a1VneDZLdy9VVU9H?=
 =?utf-8?B?eUV4clI3UlV3eExZLzYvSVBJZ0I2UTF0bUwyTyt0dElITm1uVTdGWUtEWk41?=
 =?utf-8?B?U095d2xZT1E5Zno5a2h4WGw3R1o5YVBHcUNBdmVzd296YVVvbFF0TGc0ei84?=
 =?utf-8?B?Y2tTY0srQ1FNV2hSMnB6VkR0NGxHMGkzZjlBakFFQkJWTnVmTHQ1SmJnaUFw?=
 =?utf-8?B?Qk16VzdXQ3lwbi9OY2pVSlVNQ0ZRT3IrVlYvSHc4Z3c3aWNSaFhvcG5URk5a?=
 =?utf-8?B?bzlaL09pUzB5RGgySk9sa1VwMVlKa28yOUVpaVdGb1hRSkFVN0drc3pJMitp?=
 =?utf-8?Q?rHA3wf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmdhaVhjWUl2S0pvN2xob1QyeTl0SlA2WXhicmYzcm1WdEluditacmdpYlVn?=
 =?utf-8?B?bjlBK3FwMGNlaFVMYVBsRjROK0xaUkszdHY2dUtBRmNKRU1IZkE2RFV0Z1lC?=
 =?utf-8?B?SE1QcDlTZnJIZlBWcTJTWk5uVnhDVWlNYjZvLy9OWVN3OXczUGY3OWpMQmJl?=
 =?utf-8?B?NndvdEN1Ky9uanZ6TEFZQ2lXaVFRNlRrM3FQbU8yOVcyNXNHNGt3MUZvOGZL?=
 =?utf-8?B?ME11b3FwcmRySnd5cGpEeHh0TjNYN2UvQVJ5VTA3UHlmZEFPakxDc1BoWXYz?=
 =?utf-8?B?bXMwN1dGeEU3cjVncFNwRmhFZTYyUkIrQ1ArakgxT0lid1NOend3cDFOZnEv?=
 =?utf-8?B?d3hEODBFMkJRL2Nva1NDa0FrWUMyOGE0ZUJhKzkxUzdIWUhEQjAzTElIVVBD?=
 =?utf-8?B?VUk0eGVlY2ZLRDFtTTJBbTlValVhcGdkUE5pOHRyTGVjQUlUb09TUy96VlFL?=
 =?utf-8?B?bVltTU1VUVBQQVRqKzdHakJ2dDFFR1ExenI5RlJQanlJSVJzbGhSNkZwYXlO?=
 =?utf-8?B?aWpVZWVkSG5aN3preXFWa3pDNFkyd0djWklsUE4yUzVKdEdtei81WnpDc0Jn?=
 =?utf-8?B?Zzg3VXpxODZKdFd4SFlSWGpLdm42VUgwb215aVhlOUFITzRnUUh2a0RGMFNo?=
 =?utf-8?B?bG13bGlHWnRIWjlrZ05NUFhvcGFtVElNVEppTmZST2VDNXdIOTJzcFBZUnph?=
 =?utf-8?B?NE9qUGNhai80RDdwWTdGOTJLZSszYUMzZndOSTVpOGliTzNrcEE3VnBLUlJz?=
 =?utf-8?B?Sm1NZmdrTW13cWNVZks4bVQvSkFqT0xqajNaTktJMldrSnN2LzR3ek0vZmxM?=
 =?utf-8?B?eGZ2dEx6QVQ4Z0tmMVA1RTI5MEhWMkM4V2cxZENFK3BwZFZYRVFyeEREZTlO?=
 =?utf-8?B?bUg0bU5LaHJWcXRySlBheC9TWjlmeHZqVlRXdnFZNU5PdXdqNnl3TDVjV0lv?=
 =?utf-8?B?RjZhWjZHRjhFU0U1bE5HSnlKSFc3TW10TUxhWERycDVhRUwwK1RjdmdYODBM?=
 =?utf-8?B?UjlVVWwzUzRabjg0UEJBbTZSZ1NDWm83N0w3UitGalRId2F2ZFBoRlA4ZytL?=
 =?utf-8?B?c1RFNWpOS3NMNGcrL0pYeVcxeGxDTFMvRm5RbVYvdTA1RXR3SVduL24zNWNL?=
 =?utf-8?B?L1RJUjkwZ0t6Skt0UUVJeStjdWd4VVo3NnRnVS9OODgrczJoTVBSdG9BMzFU?=
 =?utf-8?B?WENqY0dFNWcwak54OTJpclBwVGptUDIrd1FCODdFTkVkUi9Bc3FmWDZZUW5r?=
 =?utf-8?B?VzZKVStKakM1R0NQejYrVFNLMU80bVV1S3ZrKzVJTDVOZDFsSit4SFhPL3ZD?=
 =?utf-8?B?ZGpTdXA4UmtWQTNxRzExUG5pb0pGUHIzZ0xuQllJMmxwY1ZjdnpUWUtHQ1Nh?=
 =?utf-8?B?cTJUNjVjU2kxTGI3K0lCUDFBRGoweHE3NVBmRmcxNjZ3cnE0Wi9qbUZFT3V6?=
 =?utf-8?B?WGh2SlY1NklrbWNJVHNIUC9SejhiY1VJblJsWkJLNHIyQVlML2RNL3Z4NzVZ?=
 =?utf-8?B?Y0phOXpGV1ZtMzJiRjNCUGhqNDhMamx3UTdKdFZCUjdxaGMrY25TSGV2cENr?=
 =?utf-8?B?NmxCNCttdXlSd2NVdWEzTmMzTEY1a0t1MDA3UDdka2M0SFdDT294NktxVjhZ?=
 =?utf-8?B?bERTYnFTUWZlTy9teHBDMkNxQjIxcU9jNjh1UVp5by9kUytscWNxRFhKT1ZM?=
 =?utf-8?B?dVBnd0xWdEdudHlwcDZWQlFEV3hWeWIwcTRVejYzS0pUR25zbFI0NllvdndN?=
 =?utf-8?B?YkVPaXU5L0NFYmdscGJmcHBOTGRyRk1FQmQ3Z1k0b2xRVjJNSU15ZDI3LzB6?=
 =?utf-8?B?RWJYcFJOVnVmakdNaVlrUkFLM1RUc3VWd0tTZ0hsVVVoMkVNRUxIL0pyTnFV?=
 =?utf-8?B?V3dvTmZkbXJGRzV0TzE5YTJXQmwxVEQ1dlRndGIxZVpnYmV1eldyb3M1SjlC?=
 =?utf-8?B?VVd4SWFUVWxUenJSZ09EMGdFQi95b2IrNlhMQjZrZlpuaGlSZjV6bnVPUmNt?=
 =?utf-8?B?OE1IdDBuOThuSlBud1FleGxMaFBtMFpNQjJDMjB0RzFzMEFvTWUrNE1kSkZ2?=
 =?utf-8?B?b1htVWNIejA0bjBVREdYbEJYS3lKN1lOSWNOOU15bXk5MERURThkVUdGOXl1?=
 =?utf-8?Q?aGrBhhlUDR1m4mw2ESXhootiH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95caf474-2008-407c-8f6b-08de26959cb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 11:28:35.4089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 35IirI5v0OwugiGhU0VrbHdgcP2kRs5CM/eEGskOSUeWh1YpL06mjqLAlNolRib1aS4EQIOIBmxnCilIQ6FgyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7594
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDE4IE5vdmVtYmVyIDIwMjUg
Ni4yMQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gU3ViamVjdDogUkU6IFtQQVRDSCB2MiAyMS8zMl0gZHJtL2k5MTUvY3gwOiBBZGQgTVRMKyAu
dXBkYXRlX2FjdGl2ZV9kcGxsIGhvb2sNCj4gDQo+ID4gU3ViamVjdDogW1BBVENIIHYyIDIxLzMy
XSBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC51cGRhdGVfYWN0aXZlX2RwbGwNCj4gPiBob29rDQo+
ID4NCj4gPiBBZGQgLnVwZGF0ZV9hY3RpdmVfZHBsbCBmdW5jdGlvbiBwb2ludGVyIHRvIHN1cHBv
cnQgZHBsbCBmcmFtZXdvcmsuDQo+ID4gUmV1c2UgSUNMIGZ1bmN0aW9uIHBvaW50ZXIuDQo+ID4N
Cj4gPiB2MjogQWRkIGNoZWNrIGZvciAhSEFTX0xUX1BIWSAoU3VyYWopDQo+IA0KPiBJIGRpZCBu
b3QgY29tbWVudCBhc2tpbmcgZm9yIHRoaXMgY2hhbmdlIGFsc28gYnJpbmdzIHNvbWUgcXVlc3Rp
b25zIGluIG15IG1pbmQgaGVyZQ0KDQpZZXMgdGhhdCdzIHJpZ2h0LiBZb3VyIGNvbW1lbnQgd2Fz
IGZvciB0aGUgbGFzdCBwYXRjaCBvZiB0aGUgc2VyaWVzIGJ1dCBJIGJlbGlldmUgdGhhdCB3ZSBz
aG91bGQgYWRkIHRoaXMgY2hlY2sgb24gdGhpcyBwYXRjaCBhcyB0aGlzIHBhdGNoIGFkZHMgLnVw
ZGF0ZV9hY3RpdmVfZHBsbCBob29rLiBIb3dldmVyLCB0aGlzIGNoZWNrIGNhdXNlZCBhIHJlZ3Jl
c3Npb24gb24gbXRsIHNvIHRoaXMgcGF0Y2ggaXMgYWJvdXQgdG8gYmUgdXBkYXRlZC4gSSBob2xk
IHlvdXIgci1iIGZvciB2ZXJzaW9uIDEgYnV0IHRoZSB1cGNvbWluZyB0aGlyZCB2ZXJzaW9uIHdp
bGwgbmVlZCBhIHJldmlldy4NCg0KLU1pa2EtDQoNCj4gDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBT
dXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMyArKysNCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMSArDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4IDAwMmNjZDQ3ODU2ZC4u
NmI0M2QzMjZlNTBjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jDQo+ID4gQEAgLTM2NzEsNiArMzY3MSw5IEBAIHZvaWQgaW50ZWxfZGRpX3VwZGF0
ZV9hY3RpdmVfZHBsbChzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+
ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0IHx8ICFpbnRlbF9lbmNvZGVyX2lzX3Rj
KGVuY29kZXIpKQ0KPiANCj4gU28gdGhpcyBjaGVjayBoZXJlIHdpbGwgbmV2ZXIgbGV0IHlvdSBj
YWxsIGRwbGxfbWdyLT51cGRhdGVfYWN0aXZlX2RwbGwgaG9vayBTbyBkbyB5b3Ugbm90IHdoYXQg
dG8gcmVtb3ZlIGl0Lg0KPiBJZiB0aGUgYW5zd2VyIGlzIHlvdSB3YW50IHRvIGtlZXAgdGhpcyBj
aGVjayB0aGVuIHlvdSBkbyBub3QgbmVlZCAoIUhBU19MVF9QSFkpIElmIHRoZSBhbnN3ZXIgaXMg
eW91IG5lZWQgdG8gZ2V0IHRoaXMNCj4gcmVtb3ZlZCBvbmx5IHRoZW4gZG9lcyBpdCBtYWtlIHNl
bnNlIHRvIGhhdmUgdGhpcyBjaGVjayBBbmQgdGhlIGNoZWNrIHNob3VsZCBiZSByZXR1cm4gaWYg
KEhBU19MVF9QSFkoKSkNCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRwYWwNCj4gDQo+ID4g
IAkJcmV0dXJuOw0KPiA+DQo+ID4gKwlpZiAoIUhBU19MVF9QSFkoZGlzcGxheSkpDQo+ID4gKwkJ
cmV0dXJuOw0KPiA+ICsNCj4gPiAgCWZvcl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKGRp
c3BsYXktPmRybSwgcGlwZV9jcnRjLA0KPiA+DQo+ID4gaW50ZWxfY3J0Y19qb2luZWRfcGlwZV9t
YXNrKGNydGNfc3RhdGUpKQ0KPiA+ICAJCWludGVsX2RwbGxfdXBkYXRlX2FjdGl2ZShzdGF0ZSwg
cGlwZV9jcnRjLCBlbmNvZGVyKTsgZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBpbmRleCBjNDVmMTgyMDFlZTguLmU2ZGQ2ZjEx
MjNkNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMNCj4gPiBAQCAtNDQ0OSw2ICs0NDQ5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF9kcGxsX21nciBtdGxfcGxsX21nciA9IHsNCj4gPiAgCS5jb21wdXRlX2RwbGxzID0g
bXRsX2NvbXB1dGVfZHBsbHMsDQo+ID4gIAkuZ2V0X2RwbGxzID0gbXRsX2dldF9kcGxscywNCj4g
PiAgCS5wdXRfZHBsbHMgPSBpY2xfcHV0X2RwbGxzLA0KPiA+ICsJLnVwZGF0ZV9hY3RpdmVfZHBs
bCA9IGljbF91cGRhdGVfYWN0aXZlX2RwbGwsDQo+ID4gIH07DQo+ID4NCj4gPiAgLyoqDQo+ID4g
LS0NCj4gPiAyLjM0LjENCg0K
