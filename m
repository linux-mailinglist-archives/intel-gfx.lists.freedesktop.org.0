Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFPHJdQ/wWlnRwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:27:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EB22F2E6D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C721E10E4BA;
	Mon, 23 Mar 2026 13:27:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfjJgSHF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2944710E4F5;
 Mon, 23 Mar 2026 13:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774272462; x=1805808462;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Cotrqxfo1Ax1ob4Vs7JLs3QhBhaRIg5PWw2fIMtnKgs=;
 b=MfjJgSHFGInhZp4lhhLnYLokRFAkj2UBeoHv3eOApGtY35bfw8g2ZSBm
 yaCMawqaJAcyUh8XpzQaWu0pfMGzCP9yoYMVOEaAWprIj0KxD7lbjTx6Q
 YwXxr+Ymeef3thbxQ5uxgkxqLmw8xJgXEuFqduLOsBfypsdS3qfh32ASX
 LUmGgqUXWC7PRSRYHYwPOn70ZC7uSNH/ud1MpjTmX3Cl6grweLeJItG5c
 VDXmhhE2CtvTzDiGheghj2OHihrUQFyT3ut7s7LwH045A2U1RCOegEOPq
 nKH3h2h29dOVAGbkbcTg9DWzKmA9G38Fj5ez/S63nCz9kOwORlvla173b w==;
X-CSE-ConnectionGUID: kdCu+MJISoOUjq9irOI7+g==
X-CSE-MsgGUID: r+nCwqmdTf2g299Ksi90oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75461110"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75461110"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:27:41 -0700
X-CSE-ConnectionGUID: x9/0GzPXR22/h/pn6/wRGA==
X-CSE-MsgGUID: mQQu1NazQoKjbJugSt48Cw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:27:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:27:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 06:27:40 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:27:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bLVDtEyCFxhDN8SSevkwO2Z/70MojWwqLcP8EQ80zTHi/r+gGoxt6qPuThx/tetXHBOf1o8Z4AHGxa1SKkhfYDYXGbYJbrecDs/nSiohFTyiCpiTXnJKaueGLz2dg+rd7cc4ijpQ3YBPXr1OS4G2jRkkb1Mow/UHFzt2HD7iJ91vokgZBcUXKl1y2IkchFutVUgWUkBBXLUkl6pu6fzkmaKbuWYH3RprERWgNQbtOpAdtXClfF5yxyHpmVsvUTo2E1zGxeX/DrxUaNTpyGEMEEQUEIl6r42N4kHg5zzx0GIxwRz/DvuFaJonvbhiMXCfqEfPtiSY98jQBKwEAGdXuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cotrqxfo1Ax1ob4Vs7JLs3QhBhaRIg5PWw2fIMtnKgs=;
 b=CCvt+3GhY7UNN7CPH5uRPdWNc7P1w+0mXbvHzXpWWy+Nh2Tp6VPxBOvOxVBPu9qV+nxJ13CRdnZjxTIaVX1N41x8xn+B3hB/LPgyp0Nl6/scOLe3THOk61UwxPUfZ/E69E5V7ns+8ErhkkCplNi5xscFzjasr33vb70QsQ9yCWTGvI4kp87HvVvQ3DOpWSzPe3thf5Ed5A7pozEoWJZvtqs7qHg2/MDbd220ey7vdmYGgAh3gCby1bcZ9po4ouiPtvC6JfBLKSKoCnRIULmK4qqqIbKvYl3kGgEszHNnqGXx28GZ/lIYfAm9l+Uv9fy1ebCibqzHnL/Rqh9AURsKIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4524.namprd11.prod.outlook.com (2603:10b6:303:2c::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.20; Mon, 23 Mar 2026 13:27:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 13:27:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v8 3/3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v8 3/3] drm/i915/display: Panel Replay BW optimization
 for DP2.0 tunneling
Thread-Index: AQHctrlhrXDeciU5ZUuiroQmQgyOqLW8JC0A
Date: Mon, 23 Mar 2026 13:27:37 +0000
Message-ID: <819b753eee3e843defda83d0fdd2f8eba7af8d40.camel@intel.com>
References: <20260318085642.3621166-1-animesh.manna@intel.com>
 <20260318085642.3621166-4-animesh.manna@intel.com>
In-Reply-To: <20260318085642.3621166-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4524:EE_
x-ms-office365-filtering-correlation-id: 91f59b86-a14a-4b07-5959-08de88dff34f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 1F5uVmWwLFI8sLFfcAQTk05Ec0X8oUZDxaT0JH9mJnXFKuVLugUNqGVIprMJ+k6I1Uw1EdalmtrgcB9gyOqhpMGfdlQOcfNTUWdicMddL09YGCtsOvVR4n43lnJl4riVA3P7MDURfgahW/qj5PQIoYgyQ8XZ5BdSiKOB0RG3ZT6axYg9xEWReU0gO4qm4Qgd917kEcZLuj5XIW5qJHjhMUzlnGWnriZ6ff9logFL93Q6Zpg5em9Xs4bzbXJGNO+mJX3bTz4gKoN0yb4yvUo8dajhIT2veCDtLLoR6sBNZfS7KIpX+nLe7WsgBB3vSpFSuyflCksHstkZfASlYEscwlHBXX60vRjIzCjRFma3+lzvYoR2tkPcOYltWFpZL8+2LaM9hulRbdSDPoVeTRhD9OUFHfV4R1rQ/jlBBkrCG24NGZUlGvutxjS1yCQGVqpoK9TVXWcsRQ2d48Yml5tq3c40MQNsNuPufwyFPPlAdwx/rzpgkD2XnHv7DER+p9tOhAWUJfUjx461JCH7YBBEreyfOGQiI09vapbMnRkznAqPzajbbZ5yc18EIuVtmfp3nMByUiGKjEhJ5DigZMvtBlQoU5lJGHj1hL4qs/GYA5waEl/23Zg7ff2S/N7wnNh8O55MkZuiPQGCRrpFe/bdwLLhsYLV0pdLODy2o2EZ12RHyWzr7YsNMe4gZDxE7Hu/TbNMvGTWe7gEgwRIeUw6gkEFOIC12HCFjZRsLWJNrEGxiNHVemEeeIwMoIC0h912t9kASAtOilVcrqhu5BeL0FrrRU7JP6ZQyRfyTYX/NUk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVNDSENxQlplWVFrNzluOVpBc2Rjcjd2V3NZZkxER2hBelN5QUpFYk9yTjYv?=
 =?utf-8?B?aHFaNDFKWTJmNGNMT0xvSnk1TGNyL3k5dXpMd1lSVmVzZVBNNXZBaDZxMGZZ?=
 =?utf-8?B?MTJCY212UlJYRXM4bUJaR3F6ZDBaYzVQYktUVGNZci9sSDNSRnhjMXkwQ1N6?=
 =?utf-8?B?TUxRNWMzdmQwSWxiV0MzbXNqMU5FQm1OUnVGNGgzMytzWnRjRE5KT0FlR3Vy?=
 =?utf-8?B?U2RSdGp2RG5mVjYyRU5pNVpHaVRhTDAyM2V6bHhOOUVWVGhrdkNUeVRIRFQ1?=
 =?utf-8?B?ZjlpQSthaGtYV1hSa0RFZHNGc2dtQWVycVo4aWl3MzZVUVdIUDYyK0xjV1o3?=
 =?utf-8?B?ejVUUytWWkUyUkw0VHNCWUwycE5EdFZhTEhFTDZXYkV1S3EyQUtDWm83Q0p0?=
 =?utf-8?B?d1Fqd0RycmRoNnROVFlSTy9WSzJjdHd4aUdibnpONEFTQWRORk1FYktSampt?=
 =?utf-8?B?c0RJMjNJZHRrazFPYWEreVFOZHNRdlJuZ1ZHV2JORHRtZUxvRDJ0ZlRhRUxu?=
 =?utf-8?B?Y0FiQzZwdFFmdlVXVVJSR2N6YU1xMm0wUnhtZmtSalAxUktmRTZXMndhdGxz?=
 =?utf-8?B?WEVxdjJML1RDQlorL25YdFBqSFNaZ2pnRmdXakE4bC9LZlFyYTFUcmo4Qnl4?=
 =?utf-8?B?YWkvMzNwaXY4TVN2OUpJUjM3ZENTM3AveGFHTXovUWw4NkRIZis1WnlveDA1?=
 =?utf-8?B?cGxwOXVwK2JJZEJGKzlJeC9nNlkwd05QZmV0VDlIRERGM1UxK3lwcW9nYWdY?=
 =?utf-8?B?MlRNYlZsNTlFdVdyMzMxa0xWaU9LQnRzRFNvZGJIcllmTVZnNTYrcXFCNVJj?=
 =?utf-8?B?bVNIYWlBR0djWCt5aFd5eVdvMjdreHMwb0t6WENSdFYxSExOdHlZV2FUNWk0?=
 =?utf-8?B?cHUxMDgwRFB3WFNVek5xbFBGWXVqZXkvTTFYczM5Tk9VdHVnRnJnYWFNT1BH?=
 =?utf-8?B?eGcrbXYwM0pVUnlnekVqZ0crYmlQaU5UZDUwSlFiSmJVVGZMYXBWalZNQ3lm?=
 =?utf-8?B?a1hZL2hEdXoxV0g0Ujk3alp1d3o5UDJHazZFbnkyQ2l5VWpLSWNMZmd6bkp6?=
 =?utf-8?B?UVpvZUpweWpWQloyL1ZUWjJOQk4weU9uUjRXSWpETVR5MjFFQnJ2Y2xlRk5o?=
 =?utf-8?B?ZHhYRE9sYnNpTGo2NzNpMXI0NzVFbnJxYy9ZOFc2Ymxsek9CN1pRYTl6emVt?=
 =?utf-8?B?V0ZndXZyOEw5aEwrUkdoMTBmMzdGYTJNUVg4UnNZd3FvU0N1a3lSN2EzUE5r?=
 =?utf-8?B?RnQ5c3ZySkM5ZTV1QThKbVFWMENDMmt5clZFajFRcHpXankvZlZ2ZDZQWXZX?=
 =?utf-8?B?RU9CbkxLTkFYcTVROTdkUjhTRy9YTlhKbVVTUldYWlZBY3BsVkQyalJKSUNn?=
 =?utf-8?B?SXBVU0NZbmpidzB4M1RFWlM1Smx1TFBLRU0vemFwcXY2R245akpmOEpNRDlD?=
 =?utf-8?B?VmpiRnRYNkNXZWd6UTdCWStubHNuaTJEcUo1Y2IvY2pUT1VjR3lNM1BUUmlL?=
 =?utf-8?B?cXZXNmFnOXVQV3pPSWxmbnQxNlhBUDJ0cVRYRGJva0pMd2orc1BjMko4U2tE?=
 =?utf-8?B?Z0NjUTByNlQ2TEh3NmFDUGowbERlQzAyWDJRVnBjZUpxcVljUnEwYkIyd282?=
 =?utf-8?B?azZ4TitQS2hyclMwSUtOL3BFa2FDUXpoYlRVci9NRWpxYzFSN3hmN1ZTMENG?=
 =?utf-8?B?SUhQbWJXMmtQdkJuVmpTMXJpcVF0cWJLNWZmMXRiQ2k3bnM0K0s3aHg4WUFQ?=
 =?utf-8?B?SlQxaXpMNS9zV2lXUWRUUFAxaFZvTGtjaXlxaXpNQnowaUtIRXA3ZVp5OUNH?=
 =?utf-8?B?YW5DSWF4MzFOdVc0Qjd4ZTY1SFpDcFliN2ZTSlBtbCtpWDZMc21tbFpiSVdX?=
 =?utf-8?B?YmlicjFpelV2Z1hEMG51WEtCdHFTWjBLNXBmTkM3K0FLdGxsamhQWm9NN0cv?=
 =?utf-8?B?MmR5czltbWh0Njd6M3FOMUJUckNmT05EUEpVL0Q1VGpjd2JMTVZYaG44T3py?=
 =?utf-8?B?ejFxTnhqWkVGOHVRaUdEV3RCMVFpMHZyRlZ6T2Y3U3ZkamdsZ1J1aHgvSCtv?=
 =?utf-8?B?Um9zVzFLQ2Vac1FWZVFScUlUcUpwcGMvTER3clk1Rmp2NE8wWlIzSEN2UlJL?=
 =?utf-8?B?elBqVkFyQnlaaEUxMGF0TklZQ25TUWJHWDRMY2F4enZoekNhL1F0cHVIbnhD?=
 =?utf-8?B?bkl1eHgxSGlsZzY5aGdDalcxNnVybmVpSXlESnhNVStDdFBVSjhiejNiZ2to?=
 =?utf-8?B?dEtvRGdlK043QlQweEkweVZ1UWJ1OVU5aDJMSjNHKzVnNzZ2Q0tjbjgwS1NP?=
 =?utf-8?B?WnlMRy9abVNxS01najVCZUliWGN5eHhaK0ZjRk52aTM4VTM0SUJpQXRBOHdC?=
 =?utf-8?Q?pCX6kQxlxvNHx/iSB/7gHCFhAQkGLw99j3trO/csaR0p9?=
x-ms-exchange-antispam-messagedata-1: GVwoocbAUl5dNCF2irwbXVe+opmhkhDIhd0=
Content-Type: text/plain; charset="utf-8"
Content-ID: <61CD396C1EE84D4B903A4465D63107D4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XqFIsUtvqOFYzeG0os8UJLlpiekf2vKcRQG0grF5G5KeoCX/xioae+92nS9CewY4jEdGEsGrnM6ym2iW5UHXPVFT6ZKNZ6yE2eTI7up7wVnI/R8YsNcsXZxqHShuddtugNMBzrKChxpON2EffZV721rHhD4ktFpYYfslDNpoj+Ig25aRWvZn3XxUIxGuMLopmP2KK3s6KnljvY2GyMsh+OcOFz16biC0Tp6N77UwYPRpbdfmv1EbCVJg1CAqjSj8tfcTmSmBidZZN0BiQBld/ReEGf2R1sB8e3Ja8zPR1c61R1Mc9IwiAfwZDwsYpIJ+GZjmkGEK0mFYJ2QOeV3aCA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91f59b86-a14a-4b07-5959-08de88dff34f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 13:27:37.4065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 00Z5uN4V3BvVwPQOkr+dKFPF1ZpPkLuPCBI0gM7J2enzVMJLDU0iSwAK+o+b93DhG4FdK/2x67QEWj/EXdn2W3yK3MBWs0MRWB6yM0XMV7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4524
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 39EB22F2E6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAzLTE4IGF0IDE0OjI2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRz
IGZvciBQYW5lbA0KPiBSZXBsYXkNCj4gZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mg
d2l0aCBsaW5rIG9uLiBFbmFibGUgc291cmNlIHRvDQo+IHJlcGxhY2UNCj4gZHVtbXkgZGF0YSBm
cm9tIHRoZSBkaXNwbGF5IHdpdGggZGF0YSBmcm9tIGFub3RoZXIgYWdlbnQgYnkNCj4gcHJvZ3Jh
bW1pbmcNCj4gVFJBTlNfRFAyX0NUTCBbUGFuZWwgUmVwbGF5IFR1bm5lbGluZyBFbmFibGVdLg0K
PiANCj4gdjI6DQo+IC0gRW5hYmxlIHByIGJ3IG9wdGltaXphdGlvbiBhbG9uZyB3aXRoIHBhbmVs
IHJlcGxheSBlbmFibGUuIFtKYW5pXQ0KPiANCj4gdjM6DQo+IC0gV3JpdGUgVFJBTlNfRFAyX0NU
TCBvbmNlIGZvciBib3RoIGJ3IG9wdGltaXphdGlvbiBhbmQgcGFuZWwgcmVwbGF5DQo+IGVuYWJs
ZS4gW0phbmldDQo+IA0KPiB2NDoNCj4gLSBSZWFkIERQQ0Qgb25jZSBpbiBpbml0KCkgYW5kIHN0
b3JlIGluIHBhbmVsX3JlcGxheV9jYXBzLiBbSm91bmldDQo+IA0KPiB2NToNCj4gLSBBdm9pZCBy
ZWFkaW5nIERQQ0QgZm9yIGVkcC4gW0pvdW5pXQ0KPiAtIFVzZSBkcm1fZHBfZHBjZF9yZWFkX2J5
dGUoKSBhbmQgc29tZSBjb3NtZXRpYyBjaGFuZ2VzLiBbSmFuaV0NCj4gDQo+IHY2Og0KPiAtIEV4
dGVuZCB0aGUgY29ycmVzcG9uZGluZyBpbnRlcmZhY2UgZGVmaW5lZCBpbiBkcm1fZHBfdHVubmVs
LmMNCj4gdG8gcXVlcnkgdGhlIFBhbmVsIFJlcGxheSBvcHRpbWl6YXRpb24gY2FwYWJpbGl0eS4g
W0ltcmVdDQo+IA0KPiBCc3BlYzogNjg5MjANCj4gUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5h
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oIHzCoCAxICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDE5DQo+ICsrKysrKysrKysrKysr
KysrLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9yZWdzLmgNCj4gaW5kZXggNDc0NmU5ZWJkOTIwLi5kYWRhOGRjMjdlYTQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdz
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiBAQCAtMjI2Myw2ICsyMjYzLDcgQEANCj4gwqAjZGVmaW5lIFRSQU5TX0RQMl9DVEwo
dHJhbnMpCQkJX01NSU9fVFJBTlModHJhbnMsDQo+IF9UUkFOU19EUDJfQ1RMX0EsIF9UUkFOU19E
UDJfQ1RMX0IpDQo+IMKgI2RlZmluZcKgIFRSQU5TX0RQMl8xMjhCMTMyQl9DSEFOTkVMX0NPRElO
RwlSRUdfQklUKDMxKQ0KPiDCoCNkZWZpbmXCoCBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJM
RQkJUkVHX0JJVCgzMCkNCj4gKyNkZWZpbmXCoCBUUkFOU19EUDJfUFJfVFVOTkVMSU5HX0VOQUJM
RQkJUkVHX0JJVCgyNikNCj4gwqAjZGVmaW5lwqAgVFJBTlNfRFAyX0RFQlVHX0VOQUJMRQkJCVJF
R19CSVQoMjMpDQo+IMKgDQo+IMKgI2RlZmluZSBfVFJBTlNfRFAyX1ZGUkVRSElHSF9BCQkJMHg2
MDBhNA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5k
ZXggYzEzMTE2ZTZmMTdmLi43ZTg5MWE4MDc4NmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNDQsNiArNDQsNyBAQA0KPiDCoCNpbmNsdWRl
ICJpbnRlbF9kbWMuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZHAuaCINCj4gwqAjaW5jbHVkZSAi
aW50ZWxfZHBfYXV4LmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZHBfdHVubmVsLmgiDQo+IMKgI2lu
Y2x1ZGUgImludGVsX2RzYi5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9mcm9udGJ1ZmZlci5oIg0K
PiDCoCNpbmNsdWRlICJpbnRlbF9oZG1pLmgiDQo+IEBAIC0xMDIzLDExICsxMDI0LDIzIEBAIHN0
YXRpYyB1OCBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+IMKgCXJldHVybiBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5Ow0KPiDCoH0NCj4gwqANCj4g
K3N0YXRpYyBib29sIGludGVsX3Bzcl9hbGxvd19wcl9id19vcHRpbWl6YXRpb24oc3RydWN0IGlu
dGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gK3sNCj4gKwlpZiAoIWludGVsX2RwX3R1bm5lbF9id19h
bGxvY19pc19lbmFibGVkKGludGVsX2RwKSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJ
aWYgKCFpbnRlbF9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChpbnRlbF9kcCkp
DQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiArCXJldHVybiB0cnVlOw0KPiArfQ0KPiArDQo+
IMKgc3RhdGljIHZvaWQgZGcyX2FjdGl2YXRlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gwqAJc3RydWN0IGludGVsX3BzciAqcHNyID0g
JmludGVsX2RwLT5wc3I7DQo+IMKgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGlu
dGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4gKwl1MzIgZHAyX2N0bF92YWwgPSBUUkFOU19EUDJf
UEFORUxfUkVQTEFZX0VOQUJMRTsNCj4gwqANCj4gwqAJaWYgKGludGVsX2RwX2lzX2VkcChpbnRl
bF9kcCkgJiYgcHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQpIHsNCj4gwqAJCXUzMiB2YWwgPSBwc3It
PnN1X3JlZ2lvbl9ldF9lbmFibGVkID8NCj4gQEAgLTEwNDAsMTIgKzEwNTMsMTQgQEAgc3RhdGlj
IHZvaWQgZGcyX2FjdGl2YXRlX3BhbmVsX3JlcGxheShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVs
X2RwKQ0KPiDCoAkJCcKgwqDCoMKgwqDCoCB2YWwpOw0KPiDCoAl9DQo+IMKgDQo+ICsJaWYgKCFp
bnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmDQoNCkhvdyBhYm91dCBtb3ZpbmcgaW50ZWxfZHBf
aXNfZWRwIGludG8NCmludGVsX3Bzcl9hbGxvd19wcl9id19vcHRpbWl6YXRpb24gYXMgd2VsbD8N
Cg0KPiBpbnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0aW9uKGludGVsX2RwKSkNCg0KDQo+
ICsJCWRwMl9jdGxfdmFsIHw9IFRSQU5TX0RQMl9QUl9UVU5ORUxJTkdfRU5BQkxFOw0KPiArDQo+
IMKgCWludGVsX2RlX3JtdyhkaXNwbGF5LA0KPiDCoAkJwqDCoMKgwqAgUFNSMl9NQU5fVFJLX0NU
TChkaXNwbGF5LCBpbnRlbF9kcC0NCj4gPnBzci50cmFuc2NvZGVyKSwNCj4gwqAJCcKgwqDCoMKg
IDAsDQo+IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5VT1NfRlVMTF9GUkFNRSk7DQo+
IMKgDQo+IC0JaW50ZWxfZGVfcm13KGRpc3BsYXksIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+
ID5wc3IudHJhbnNjb2RlciksIDAsDQo+IC0JCcKgwqDCoMKgIFRSQU5TX0RQMl9QQU5FTF9SRVBM
QVlfRU5BQkxFKTsNCj4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NUTChpbnRl
bF9kcC0NCj4gPnBzci50cmFuc2NvZGVyKSwgMCwgZHAyX2N0bF92YWwpOw0KDQpJcyBpdCBwb3Nz
aWJsZSB0aGF0IFRSQU5TX0RQMl9QUl9UVU5ORUxJTkdfRU5BQkxFIGlzIHNldCBieSBzb21lDQpl
YXJsaWVyIHBhbmVsIHJlcGxheSBhY3RpdmF0aW9uPyBXZSBjb3VsZCBjbGVhciBpdCBoZXJlIGlm
DQppbnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0aW9uID09IGZhbHNlPw0KDQpCUiwNCkpv
dW5pIEjDtmdhbmRlcg0KDQoNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIHZvaWQgaHN3X2FjdGl2
YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCg0K
