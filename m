Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EDB98D2B0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 14:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA2410E0AD;
	Wed,  2 Oct 2024 12:04:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/nwPjvl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA79010E0AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 12:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727870676; x=1759406676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=32vr5XC+cVM08pcvp1r2+oKUczvvVgQgq0Mmi2O7EPs=;
 b=c/nwPjvljJO1AIT1E1ooeUHYWMUvQ2NxI8coV9PfA/TPmcmh/TibRfiP
 QaQ0moEjWhiVxh7ENbmhmY8nRDLVna2ZAcWH1mRmWEtxxdvbO2ho6kbdX
 xHjsfZWA+L4UwaUSUmkqwHn2ZLAADN3gt6XMS9nOp/x4D7C8mY/ZJ3CPk
 9YjuExsCUNo1vBg3BQbd+Dxi5sepTLBkIJGAVXGNdBHzRq1feMRjiIxPM
 xxPAUlKqaw5H+XqSFjxkl4vT5UqTOr3FZZGgpbk6ReBJC9mEohGG7Ax7s
 4cQSV7bMoytFuH3fUCInG7fJI4gow0+PZW6wPCxcEe+8de0vWOWVTuORw g==;
X-CSE-ConnectionGUID: tVTzjOjqRNiO+JJq0corIA==
X-CSE-MsgGUID: SgpGDehKSPe8/KvuEbtS2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="26535322"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="26535322"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 05:04:35 -0700
X-CSE-ConnectionGUID: 6OrWzZiLRPyIJYLi5OKJ8g==
X-CSE-MsgGUID: JtRuXtgrSNmnUlnjR0e1kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="74094175"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2024 05:04:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 05:04:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 2 Oct 2024 05:04:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 2 Oct 2024 05:04:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GVLO07hDJiy3leSLdX9n7i/+EURpLFEphFsmm+/L4RcnXmNpTkCakOFK2+tQFBOfWhigK0xRL//QzXbpH42Ka6DZ/IAIi4ob3Emhz5W+APv1bsHtoNdFMCceCbD91UwhIMF7CtOunMHzzIKYalgkfFeGKCEnyOJqGy06famHVoaOq744km53VFrYsksXCz4dLtI5wX7HfJfgNmkR3lbzkj0Jj0xjx/qiPXdzO9/s+XDZskzeWZVLB2UlAkV8egc65ctwhSsmkRXSrdRD0C77aB2R/Ro60tGy3WcVL+F7Gv8cqL1RXVO1TUP2qbYTpkU6vJJde6w74tBP0FUlhJ8Idg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=32vr5XC+cVM08pcvp1r2+oKUczvvVgQgq0Mmi2O7EPs=;
 b=L5CeNwGfNTJhwtXdHsrb5PMlkpLJd0IEqYNoyo67wXnQdfgBsivsN3qTjhUHbD5aSVHvHcDnSYremnLi1W5ePVRRWmQmDhvoOz5C+T/u8iSG243jFlDG2ILH+8IxaZDyrvmTsi06yQQ5/Lz0RvyYiyQYIdnj1uHeUuHZ4sp5Gs+qhPqyjBGNllRCDy7xOGzJ8oQCEJ74M6M7WtPiUeBBpdXTKC2K0DkdNs/gx1+tIA008ELK/aOe2huDbBhdJEZDAfS2Uq/Yje2WCs4maxOUE+E2yoWfhaKrus5Wm2/UXtsc9Q9Q9sit86r8mqwSincPsVEn5uMp6dTaLJe9bHXFcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB8363.namprd11.prod.outlook.com (2603:10b6:610:177::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Wed, 2 Oct
 2024 12:04:32 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8026.016; Wed, 2 Oct 2024
 12:04:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH v2 2/2] drm/i915/psr: Implement Wa 14019834836
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Implement Wa 14019834836
Thread-Index: AQHbD+A1yZkwxn29p0Gzwh1w76HZLLJzZmiw
Date: Wed, 2 Oct 2024 12:04:31 +0000
Message-ID: <MW4PR11MB7054D9AC5CE7A6BF7FDE646DEF702@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240926064759.1313335-1-jouni.hogander@intel.com>
 <20240926064759.1313335-3-jouni.hogander@intel.com>
In-Reply-To: <20240926064759.1313335-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB8363:EE_
x-ms-office365-filtering-correlation-id: 849bd740-aaf8-4712-7755-08dce2da5f82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YTRJcWEwTjJIclBvak9CSGlodDQvOXhRbXp1b2dIQ1BQMENyd0k3R2hoUWtR?=
 =?utf-8?B?dnAza1d1WFFJZkdoazEvT3UzbkRMa3NSTVRJQmtyRW5LVGhpOGRIVm93c1E0?=
 =?utf-8?B?ZEtNV25BYzBkSTk2NnBlc2JXNjJzaElMdUZLR0gxZ0p6Z0RyNEUyVWlXbWNO?=
 =?utf-8?B?NzRQcmtoaW90N0VqYThZOW4xdnRRaUU0OW1JaU85dHNUaFc4UnVOOTRTczVx?=
 =?utf-8?B?cnF6RWJGbDJlVEZRcWtOaWZiQTA4NHEzRHpJMlA1TlJFOHhGR2UvYjVzQjZB?=
 =?utf-8?B?T2RTUmJQMlNmdkxlYVVvMEljbnlEejZDRkpXL3JRSE9WMTY2bFBoSUVta1E4?=
 =?utf-8?B?NE1IYnA1UkFtb1gvUHNyTGYwaGlrQTNhSlEzeWJCKzdjNEh3VGUvT0tBTVJ1?=
 =?utf-8?B?eDdQc3NXeDdpbjR1Y2pqV2hjSStBeUxnbGROWi9DdVhqVlJwUEJKbzFOdVdQ?=
 =?utf-8?B?MExmcUhIR3MvYjN2TWZCT2hIbEE1V2cwKytzSFpBd1Y2dk5vMTFZaXI4T3dr?=
 =?utf-8?B?TWI3M1NWN3VaY0dFZUkvbmtQZUM0cytFRVVqQ0JKcGt2THgyaXloRCtqWVRu?=
 =?utf-8?B?NXZyN1o3RmNGUXB5NGZUOXQ1R2k2Q0FjanlxWGNPNFN0WHYzNU5Nc01MRnZV?=
 =?utf-8?B?N3dKTitkM0pZTStiZ1BqOU8rOTdqMGxiOStFMW45MTIvWHBJcDhPWWxrakJN?=
 =?utf-8?B?NEhZSnZCc3VpdzZodlZQWDVnUW5OOTJkQmlzMVRUN3Z5LzhIdUdEdmdIYnBM?=
 =?utf-8?B?OHA1VXVBNDhkdUxKNFd0S05MSGZ6Z2hrYnpNNi9jTU84dkNsdTVrN2pEL2tv?=
 =?utf-8?B?MEk2QzFEUnlxZ2RDMVRTelB1UUtTdGNEeXpIL1ArLzVJa1lYWStEVjBvUnha?=
 =?utf-8?B?aWtKa1lwZzVOaWErV1FHdGEvSVNwVlpGZTJrdjhtdlVxVysydjhaNVFBUFRG?=
 =?utf-8?B?Vmt1ZEJ0NmZqRjJBVGlvUTBtKzZjTnJKd1RIeHBDM25oVXgxb1Joanh3TDhQ?=
 =?utf-8?B?cUdyV1k4allDRmRwT0V5MFEwR3BDbHk0VzZHb1QycDNiOXB6aVBFM1MvaWZZ?=
 =?utf-8?B?WE45QlB2WTFpTUVDTDRpYk5DNTRmZlUrUUNLL29aM1BMYzJmelpJUXRzeWVt?=
 =?utf-8?B?WjNHMnFYYVhCbk8yVTRvYTh2OHc2Ly84WVN1QnNuYVI2N244aGFhd0dpaVFK?=
 =?utf-8?B?eW5MK05jNVBqQ1Z0S0x1NllSa3M0RERtT05oaFJDalR5QnJoak94aFRsWEdE?=
 =?utf-8?B?SDRZNXp1T1RCUHJYemxSUXNPZXpDMllYRzNBaUpzUGtmNWFmb0FsWGN1WlhR?=
 =?utf-8?B?amdRSVpTUHRFQ1dxWHNSZTlJeXd3aHlYNTNsRmxDN281THNEanppYUd4WWdq?=
 =?utf-8?B?Sm5ZT1BBQk5jSVgyajJ6Q0dBZzU5NmNJQWJzYmRNMGtLa29IOHU5RUt2d2pD?=
 =?utf-8?B?VG4wZm5WS0dRMk02RWZWbGhmR0dJSFJ2b09SMGlPTi9DU2ZRMEZ2K1hlQVhN?=
 =?utf-8?B?bVJGUWgyY0RvNnd3Sk90RUwxVk9mS2d2SXM4MXdQMG5aVWI2bTZJOTM4RnR3?=
 =?utf-8?B?TmdtcTZHT3VCcCt4QmZvcC9qSkdCRUEzYlE1c0g1TW05c24yYUFyVmp2N3BB?=
 =?utf-8?B?QkVZSnRpSWt4NEttU1o1allNUkt4blVFVW1VYkx0V2lQWUdEL3BveEtubW1u?=
 =?utf-8?B?NkZ4a2hCeURmSXdiU1B1MEJJVW9VNWdLQUpIWW9jRkg1aW9ISCsvRUFEWS9u?=
 =?utf-8?B?c2s1T3cyOWVzSGwzRHJFeU1YbkxXNzJJMWo5RXpOU2JIUmRIaHRZRnlvQWIy?=
 =?utf-8?B?a3IvYm1tbk9nVmVDbDVwUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjZXQXFLTHZUYk1UbkRybk1kL1B5cCtkS3ZvektRblQ4UmhlZnBzTEdOU1hG?=
 =?utf-8?B?eFNiUmltcmdQZHVYYWh5V2dMdDJPT3RNUTAraTNyK3h5YUlVaExCcXhzakRr?=
 =?utf-8?B?WndReHJTWVlxeG9ta3RaWkxpdTNQQlcxbUU2bWRmYmN6cG00SjVBeDBDNVZh?=
 =?utf-8?B?QTROZWdVM05JLzNHVldVU21zY29QdnRHeEpHQm54UjNNVGZOaXVZRTZGOUND?=
 =?utf-8?B?WWdRVkZDODlFaHMyQk5Da3dKaDVxSjhuN0J5OGFTbEhYeTdoblUwdWJDZ3NU?=
 =?utf-8?B?N0lMVUxNSmNQNGIwRmxsc0dEZUVrdXQzWFk1c3I3K3dYckVYbGpzU2N6QzV0?=
 =?utf-8?B?R2pvaXZpMHFsM3ZNL1VpWWpJblNoc1hEYTA3YkRiVnhJNXg1STh6UG9ob0Mx?=
 =?utf-8?B?S1I4YnQyaGtEbFJDUDBjbDB0OER6Tnk3bUdhaklPVHVzVnl5NUFDZWtSMUpF?=
 =?utf-8?B?bllCRGR1YWJSdTNGSkVQRnZ4YzRFVkp4T1Axc2wrU0lwbk5IQ0VZN0VjaFRG?=
 =?utf-8?B?NnZ1Z1h6Q3BOSXdMREtkSW10b05EaXNkaFIrWStHcTNNdzRRZTZtQmFsNDN6?=
 =?utf-8?B?bEFTYWJ1UjF4a2wyNldtV0lJNzZBWWFVaEhGU2U5U1ltVW15V0xVTnluQkZN?=
 =?utf-8?B?VXFPWGgzZlFkUVRSdzdLQ1ZkdkJwRlVLbUtlY1hyVnBYZFhvcDVNWEFjM1pr?=
 =?utf-8?B?cjFlOHFwMHlIL2NYYkF1NUFDM0JqZFhHTEpLZkpzdVRzbmd1b3UyR2o1ZDV0?=
 =?utf-8?B?aHpEdTVoYnhmZmd4cDdmcmtBaytCMXUzQ0o2K1BjWXMxaUxPRnVHNWcrMG1t?=
 =?utf-8?B?K215aE45ZWd1cHJXVFFuVUZlczB6QzNyb01Rc1pKZ0JxdzBHM3NCekFlKzd5?=
 =?utf-8?B?T2I2NWtpN3RqSUk3TUxHOVE4b2EzbWdHVzhENDFDN1BRdmFJMFN0L21zQzY5?=
 =?utf-8?B?aG5rWC9XZkJ2UUZ0dHBDdURZUkpOZ0JrTmsvSmt3U2ExR2dybXpOaEFmK3Bu?=
 =?utf-8?B?dzBRa1AyODhSYkxvNEpDMlhWaE5jNitrWENGTFVDSW5oOWxJckx3ZnF6YWNr?=
 =?utf-8?B?U3cwNmtkTG1CR3FnZE1sSGFYOVlvcEUvK0t2bGNURnV0U0dwZ0h1Um9XN2tL?=
 =?utf-8?B?bmtwdlo1KzRqVERNelFXQ2Y2TytvcnRUSmtVL2ZvZVhXaS9tZmhVek5BQkpx?=
 =?utf-8?B?Rmtja1NWc283U2l4Y3FWM3ZwZ2pHNlZsSzh2Z2lCY1JsOWg5Y3AvQ0xEeHNP?=
 =?utf-8?B?bDNDL0RVSnFOWFhjbHRXVHVkQlhFRTMvbWJvUWJteEkrU1pYNWExMG94QWc3?=
 =?utf-8?B?Y2wrOGEvcklxU002bStadHRvRDRRNlZxb0xuVlhZT08zZ28zMVMwRWx5cE1v?=
 =?utf-8?B?KzJBMktjWXlmZmk5QmdrdzJiYlJuR0xRSjdKbEZ4aHgrSWs2ZkRDTUROTzNU?=
 =?utf-8?B?Z1EzMWx5U0xXRXBCeUZpVEd6SE9sSDdpUXJ3SExYRFdnUGNkZmtjeU1Tc21L?=
 =?utf-8?B?bFNlUVh6c2dDOTRpR2V5RkJEb1ZiRytKVmNUbGNqeWdTN1hPZWpRNXB3UUZE?=
 =?utf-8?B?ZXdWR3N3WVRRZmdSOUdvalN0Qk51eEJOQ0lPcDFEMG5kK2Y3Q2VFUGxaK25x?=
 =?utf-8?B?QVVjMUxib2RxaUlRK2t3OHEwOHZ1cUV5VEhDRitQOHpJdm90dHpjZTYxOXJr?=
 =?utf-8?B?dlpkN2tZMmxzTlRpY2tLUFArN0VrSGdvTFRLd09jTnVkYVVrZ3gvNEN4S1VM?=
 =?utf-8?B?c2xtUlRvMmRTM2pkYWVKRFBGTGhST3Z2MWpyVEE4ZUVUQ3dqRS9zWGtZSWxZ?=
 =?utf-8?B?T1JMYkJTUE92QnFkT25xN1QxTVZaR2F3dWNaeFBQVTRGRUdQc21XRmdUbHc0?=
 =?utf-8?B?NTZvY2VPK2hVa1JPd1BJOFliTExKdTlGL1FFQUxjekVQZVhka2tsTk4yWHY0?=
 =?utf-8?B?Y21oR0hDWW96K2dDbTVtTEZXMzdkRytOdGI4SGpaYU1OUEpMZlFpelBxT29o?=
 =?utf-8?B?b1Y4THpnT2RoNitjR0ZyOGtaMDd2RVgwbDJlK0lWT3J0OGdXbkpJM3l4bmph?=
 =?utf-8?B?R0FrdUVFU29mUlZGdSs4ME9QczRsK0dzTnVSU3BEcm9NakJIYUQ2MmEyTXRO?=
 =?utf-8?Q?bxl3ebZ5Et4Ze0GiUh5s+zZsG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 849bd740-aaf8-4712-7755-08dce2da5f82
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2024 12:04:31.2341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H5eZsykEy1N8TszmoXhaKJu8y/SnYl8WLnuXD+pJcZRnMys3YNVxXddtQcfz80xDOVrtbCy7R1QaemjeN+JsdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8363
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIDI2IFNlcHRlbWJlciAy
MDI0IDkuNDgNCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEth
aG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgU291c2EsIEd1c3Rhdm8NCj4gPGd1
c3Rhdm8uc291c2FAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAyLzJdIGRybS9pOTE1L3BzcjogSW1wbGVt
ZW50IFdhIDE0MDE5ODM0ODM2DQo+IA0KPiBUaGlzIHBhdGNoIGltcGxlbWVudHMgSFcgd29ya2Fy
b3VuZCAxNDAxOTgzNDgzNiBmb3IgZGlzcGxheSB2ZXJzaW9uIDMwLg0KPiANCj4gdjI6DQo+ICAg
LSBtb3ZlIFdhIDE0MDE5ODM0ODM2IHRvIGl0J3Mgb3duIGZ1bmN0aW9uDQo+ICAgLSBhcHBseSBv
bmx5IGZvciBkaXNwbGF5IHZlcnNpb24gMzANCj4gDQoNCkxvb2tzIG9rIHRvIG1lLg0KDQpSZXZp
ZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMzYgKysrKysr
KysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4
IGYzZGIwZjk5N2VmMzEuLmVhYTNkZDQwZWZjOWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjYxMSw2ICsyNjExLDM4IEBAIHN0YXRpYyBi
b29sDQo+IHBzcjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjDQo+ICAJcmV0dXJuIHRydWU7DQo+ICB9DQo+IA0KPiArLyogV2Eg
MTQwMTk4MzQ4MzYgKi8NCj4gK3N0YXRpYyB2b2lkIGludGVsX3Bzcl9hcHBseV9wcl9saW5rX29u
X3N1X3dhKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRl
KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gKwlpbnQgaGFjdGl2ZV9s
aW1pdDsNCj4gKw0KPiArCWlmIChjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueTEgIT0gMCB8fA0K
PiArCSAgICBjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueTIgIT0gMCkNCj4gKwkJcmV0dXJuOw0K
PiArDQo+ICsJaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZP
Uk1BVF9ZQ0JDUjQyMCkNCj4gKwkJaGFjdGl2ZV9saW1pdCA9IGludGVsX2RwX2lzX3VoYnIoY3J0
Y19zdGF0ZSkgPyAxMjMwIDogNTQ2Ow0KPiArCWVsc2UNCj4gKwkJaGFjdGl2ZV9saW1pdCA9IGlu
dGVsX2RwX2lzX3VoYnIoY3J0Y19zdGF0ZSkgPyA2MTUgOiAyNzM7DQo+ICsNCj4gKwlpZiAoY3J0
Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5oZGlzcGxheSA8IGhhY3RpdmVfbGltaXQpDQo+ICsJ
CXJldHVybjsNCj4gKw0KPiArCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFza193aXRoX3Bzcihk
aXNwbGF5LT5kcm0sIGVuY29kZXIsDQo+ICsJCQkJCSAgICAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNv
ZGVyX21hc2spIHsNCj4gKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRl
bF9kcChlbmNvZGVyKTsNCj4gKw0KPiArCQlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkg
JiYNCj4gKwkJICAgIGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYNCj4gKwkJ
ICAgIGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKSB7DQo+ICsJCQljcnRjX3N0YXRl
LT5wc3IyX3N1X2FyZWEueTIrKzsNCj4gKwkJCXJldHVybjsNCj4gKwkJfQ0KPiArCX0NCj4gK30N
Cj4gKw0KPiAgc3RhdGljIHZvaWQNCj4gIGludGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dvcmthcm91
bmRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiBAQCAtMjYyMyw2
ICsyNjU1LDEwIEBAIGludGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dvcmthcm91bmRzKHN0cnVjdA0K
PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCSAgICAgIElTX0FMREVSTEFLRV9Q
KGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1KSkpICYmDQo+ICAJICAgIGNydGNfc3RhdGUtPnNw
bGl0dGVyLmVuYWJsZSkNCj4gIAkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkxID0gMDsNCj4g
Kw0KPiArCS8qIFdhIDE0MDE5ODM0ODM2ICovDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
ID09IDMwKQ0KPiArCQlpbnRlbF9wc3JfYXBwbHlfcHJfbGlua19vbl9zdV93YShjcnRjX3N0YXRl
KTsNCj4gIH0NCj4gDQo+ICBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAtLQ0KPiAyLjM0LjENCg0K
